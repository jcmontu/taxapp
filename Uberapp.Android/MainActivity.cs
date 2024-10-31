﻿using System;

using Android.App;
using Android.Content.PM;
using Android.Runtime;
using Android.OS;
using Plugin.CurrentActivity;
using Android.Gms.Auth.Api.SignIn;
using Firebase;
using Android.Gms.Auth.Api;
using FFImageLoading.Forms.Platform;
using Messier16.Forms.Android.Controls;
using Plugin.Media;

namespace Uberapp.Droid
  {
  [Activity(Label = "Uberapp",Icon = "@mipmap/icoonuber",Theme = "@style/nuevotema",MainLauncher = true,ConfigurationChanges = ConfigChanges.ScreenSize|ConfigChanges.Orientation|ConfigChanges.UiMode|ConfigChanges.ScreenLayout|ConfigChanges.SmallestScreenSize)]
  public class MainActivity : global::Xamarin.Forms.Platform.Android.FormsAppCompatActivity
    {
    protected override async void OnCreate(Bundle savedInstanceState)
      {
      base.OnCreate(savedInstanceState);
      CrossCurrentActivity.Current.Init(this,savedInstanceState);
      Xamarin.Essentials.Platform.Init(this,savedInstanceState);
      global::Xamarin.Forms.Forms.Init(this,savedInstanceState);
      global::Xamarin.Forms.FormsMaterial.Init(this,savedInstanceState);
      Xamarin.FormsGoogleMaps.Init(this,savedInstanceState);
      CachedImageRenderer.Init(true);
      Rg.Plugins.Popup.Popup.Init(this);
      Messier16Controls.InitAll();
      await CrossMedia.Current.Initialize();
      LoadApplication(new App());
      }
    protected override void OnActivityResult(int requestCode,Result resultCode,Android.Content.Intent data)
      {
      base.OnActivityResult(requestCode,resultCode,data);
      if(requestCode==1)
        {
        GoogleSignInResult result = Auth.GoogleSignInApi.GetSignInResultFromIntent(data);
        GoogleManager.Instance.OnAuthCompleted(result);
        }
      }


    public override void OnRequestPermissionsResult(int requestCode,string[] permissions,[GeneratedEnum] Android.Content.PM.Permission[] grantResults)
      {
      Xamarin.Essentials.Platform.OnRequestPermissionsResult(requestCode,permissions,grantResults);

      base.OnRequestPermissionsResult(requestCode,permissions,grantResults);
      }
    }
  }