; ModuleID = 'obj\Debug\120\android\marshal_methods.arm64-v8a.ll'
source_filename = "obj\Debug\120\android\marshal_methods.arm64-v8a.ll"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-android"


%struct.MonoImage = type opaque

%struct.MonoClass = type opaque

%struct.MarshalMethodsManagedClass = type {
	i32,; uint32_t token
	%struct.MonoClass*; MonoClass* klass
}

%struct.MarshalMethodName = type {
	i64,; uint64_t id
	i8*; char* name
}

%class._JNIEnv = type opaque

%class._jobject = type {
	i8; uint8_t b
}

%class._jclass = type {
	i8; uint8_t b
}

%class._jstring = type {
	i8; uint8_t b
}

%class._jthrowable = type {
	i8; uint8_t b
}

%class._jarray = type {
	i8; uint8_t b
}

%class._jobjectArray = type {
	i8; uint8_t b
}

%class._jbooleanArray = type {
	i8; uint8_t b
}

%class._jbyteArray = type {
	i8; uint8_t b
}

%class._jcharArray = type {
	i8; uint8_t b
}

%class._jshortArray = type {
	i8; uint8_t b
}

%class._jintArray = type {
	i8; uint8_t b
}

%class._jlongArray = type {
	i8; uint8_t b
}

%class._jfloatArray = type {
	i8; uint8_t b
}

%class._jdoubleArray = type {
	i8; uint8_t b
}

; assembly_image_cache
@assembly_image_cache = local_unnamed_addr global [0 x %struct.MonoImage*] zeroinitializer, align 8
; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = local_unnamed_addr constant [334 x i64] [
	i64 2646484529726201, ; 0: FFImageLoading.Forms.Platform => 0x966f6b24c42f9 => 9
	i64 24362543149721218, ; 1: Xamarin.AndroidX.DynamicAnimation => 0x568d9a9a43a682 => 86
	i64 42346173088552875, ; 2: Messier16.Forms.Controls.dll => 0x96719ebc8a57ab => 20
	i64 45886493525149769, ; 3: Xamarin.Forms.Material => 0xa30585d28e0849 => 128
	i64 120698629574877762, ; 4: Mono.Android => 0x1accec39cafe242 => 25
	i64 210515253464952879, ; 5: Xamarin.AndroidX.Collection.dll => 0x2ebe681f694702f => 76
	i64 232391251801502327, ; 6: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 108
	i64 263803244706540312, ; 7: Rg.Plugins.Popup.dll => 0x3a937a743542b18 => 33
	i64 276473666272823710, ; 8: Xamarin.Forms.GoogleMaps => 0x3d63b55abf1099e => 127
	i64 286416576930729751, ; 9: Twilio => 0x3f98e5bf5bd4f17 => 53
	i64 295915112840604065, ; 10: Xamarin.AndroidX.SlidingPaneLayout => 0x41b4d3a3088a9a1 => 109
	i64 464346026994987652, ; 11: System.Reactive.dll => 0x671b04057e67284 => 46
	i64 634308326490598313, ; 12: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x8cd840fee8b6ba9 => 95
	i64 687654259221141486, ; 13: Xamarin.GooglePlayServices.Base => 0x98b09e7c92917ee => 138
	i64 702024105029695270, ; 14: System.Drawing.Common => 0x9be17343c0e7726 => 146
	i64 720058930071658100, ; 15: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x9fe29c82844de74 => 89
	i64 872800313462103108, ; 16: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 85
	i64 882314075566856093, ; 17: Uberapp.dll => 0xc3e9bfa1e7d579d => 54
	i64 940822596282819491, ; 18: System.Transactions => 0xd0e792aa81923a3 => 144
	i64 996343623809489702, ; 19: Xamarin.Forms.Platform => 0xdd3b93f3b63db26 => 131
	i64 1000557547492888992, ; 20: Mono.Security.dll => 0xde2b1c9cba651a0 => 165
	i64 1120440138749646132, ; 21: Xamarin.Google.Android.Material.dll => 0xf8c9a5eae431534 => 133
	i64 1279929495868730272, ; 22: Messier16.Forms.Android.Controls => 0x11c339185acceba0 => 19
	i64 1315114680217950157, ; 23: Xamarin.AndroidX.Arch.Core.Common.dll => 0x124039d5794ad7cd => 71
	i64 1342439039765371018, ; 24: Xamarin.Android.Support.Fragment => 0x12a14d31b1d4d88a => 61
	i64 1392315331768750440, ; 25: Xamarin.Firebase.Auth.Interop.dll => 0x13527f6add681168 => 122
	i64 1425944114962822056, ; 26: System.Runtime.Serialization.dll => 0x13c9f89e19eaf3a8 => 6
	i64 1465843056802068477, ; 27: Xamarin.Firebase.Components.dll => 0x1457b87e6928f7fd => 124
	i64 1476839205573959279, ; 28: System.Net.Primitives.dll => 0x147ec96ece9b1e6f => 156
	i64 1624659445732251991, ; 29: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 69
	i64 1628611045998245443, ; 30: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0x1699fd1e1a00b643 => 97
	i64 1636321030536304333, ; 31: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0x16b5614ec39e16cd => 90
	i64 1731380447121279447, ; 32: Newtonsoft.Json => 0x18071957e9b889d7 => 27
	i64 1743969030606105336, ; 33: System.Memory.dll => 0x1833d297e88f2af8 => 164
	i64 1744702963312407042, ; 34: Xamarin.Android.Support.v7.AppCompat => 0x18366e19eeceb202 => 63
	i64 1795316252682057001, ; 35: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 70
	i64 1836611346387731153, ; 36: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 108
	i64 1865037103900624886, ; 37: Microsoft.Bcl.AsyncInterfaces => 0x19e1f15d56eb87f6 => 21
	i64 1875917498431009007, ; 38: Xamarin.AndroidX.Annotation.dll => 0x1a08990699eb70ef => 67
	i64 1981742497975770890, ; 39: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 96
	i64 1984538867944326539, ; 40: FFImageLoading.Platform.dll => 0x1b8a7f95fac7058b => 10
	i64 1986553961460820075, ; 41: Xamarin.CommunityToolkit => 0x1b91a84d8004686b => 118
	i64 2040001226662520565, ; 42: System.Threading.Tasks.Extensions.dll => 0x1c4f8a4ea894a6f5 => 166
	i64 2133195048986300728, ; 43: Newtonsoft.Json.dll => 0x1d9aa1984b735138 => 27
	i64 2136356949452311481, ; 44: Xamarin.AndroidX.MultiDex.dll => 0x1da5dd539d8acbb9 => 101
	i64 2148470725164780602, ; 45: FFImageLoading.Svg.Forms => 0x1dd0e6bdcfc5cc3a => 11
	i64 2165725771938924357, ; 46: Xamarin.AndroidX.Browser => 0x1e0e341d75540745 => 74
	i64 2262844636196693701, ; 47: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 85
	i64 2270042405631800781, ; 48: Plugin.MaterialDesignControls.Android.dll => 0x1f80cf8a6cc1b5cd => 30
	i64 2284400282711631002, ; 49: System.Web.Services => 0x1fb3d1f42fd4249a => 149
	i64 2329709569556905518, ; 50: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 93
	i64 2335503487726329082, ; 51: System.Text.Encodings.Web => 0x2069600c4d9d1cfa => 49
	i64 2337758774805907496, ; 52: System.Runtime.CompilerServices.Unsafe => 0x207163383edbc828 => 47
	i64 2470498323731680442, ; 53: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 80
	i64 2479423007379663237, ; 54: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x2268ae16b2cba985 => 113
	i64 2497223385847772520, ; 55: System.Runtime => 0x22a7eb7046413568 => 48
	i64 2547086958574651984, ; 56: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 66
	i64 2592350477072141967, ; 57: System.Xml.dll => 0x23f9e10627330e8f => 51
	i64 2612152650457191105, ; 58: Microsoft.IdentityModel.Tokens.dll => 0x24403afeed9892c1 => 24
	i64 2624866290265602282, ; 59: mscorlib.dll => 0x246d65fbde2db8ea => 26
	i64 2694427813909235223, ; 60: Xamarin.AndroidX.Preference.dll => 0x256487d230fe0617 => 105
	i64 2744817300827175705, ; 61: Uberapp.Android => 0x26178ccadd267b19 => 0
	i64 2783046991838674048, ; 62: System.Runtime.CompilerServices.Unsafe.dll => 0x269f5e7e6dc37c80 => 47
	i64 2789714023057451704, ; 63: Microsoft.IdentityModel.JsonWebTokens.dll => 0x26b70e1f9943eab8 => 22
	i64 2801558180824670388, ; 64: Plugin.CurrentActivity.dll => 0x26e1225279a4e0b4 => 29
	i64 2863324215353042462, ; 65: FFImageLoading.Forms => 0x27bc92340ce4661e => 8
	i64 2954987430423977617, ; 66: Xamarin.GooglePlayServices.Auth.Base => 0x290239696a2a5e91 => 136
	i64 2960931600190307745, ; 67: Xamarin.Forms.Core => 0x2917579a49927da1 => 125
	i64 3017704767998173186, ; 68: Xamarin.Google.Android.Material => 0x29e10a7f7d88a002 => 133
	i64 3022227708164871115, ; 69: Xamarin.Android.Support.Media.Compat.dll => 0x29f11c168f8293cb => 62
	i64 3289520064315143713, ; 70: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 92
	i64 3303437397778967116, ; 71: Xamarin.AndroidX.Annotation.Experimental => 0x2dd82acf985b2a4c => 68
	i64 3311221304742556517, ; 72: System.Numerics.Vectors.dll => 0x2df3d23ba9e2b365 => 45
	i64 3364695309916733813, ; 73: Xamarin.Firebase.Common => 0x2eb1cc8eb5028175 => 123
	i64 3402534845034375023, ; 74: System.IdentityModel.Tokens.Jwt.dll => 0x2f383b6a0629a76f => 41
	i64 3411255996856937470, ; 75: Xamarin.GooglePlayServices.Basement => 0x2f5737416a942bfe => 139
	i64 3427548605411023127, ; 76: Xamarin.GooglePlayServices.Auth.Api.Phone.dll => 0x2f91194bf3e8d917 => 135
	i64 3493805808809882663, ; 77: Xamarin.AndroidX.Tracing.Tracing.dll => 0x307c7ddf444f3427 => 111
	i64 3522470458906976663, ; 78: Xamarin.AndroidX.SwipeRefreshLayout => 0x30e2543832f52197 => 110
	i64 3531994851595924923, ; 79: System.Numerics => 0x31042a9aade235bb => 44
	i64 3571415421602489686, ; 80: System.Runtime.dll => 0x319037675df7e556 => 48
	i64 3596565917252612164, ; 81: Xamarin.Forms.OpenWhatsApp => 0x31e991a5751e7044 => 129
	i64 3609787854626478660, ; 82: Plugin.CurrentActivity => 0x32188aeda587da44 => 29
	i64 3716579019761409177, ; 83: netstandard.dll => 0x3393f0ed5c8c5c99 => 1
	i64 3727469159507183293, ; 84: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 107
	i64 3772598417116884899, ; 85: Xamarin.AndroidX.DynamicAnimation.dll => 0x345af645b473efa3 => 86
	i64 3921656159949438693, ; 86: Twilio.dll => 0x366c857fe9023ee5 => 53
	i64 3936216335706411319, ; 87: Xamarin.Forms.GoogleMaps.dll => 0x36a03fe700ded137 => 127
	i64 3966267475168208030, ; 88: System.Memory => 0x370b03412596249e => 164
	i64 4056594422033399605, ; 89: PhoneNumbers.dll => 0x384beb225321bf35 => 28
	i64 4247996603072512073, ; 90: Xamarin.GooglePlayServices.Tasks => 0x3af3ea6755340049 => 142
	i64 4525561845656915374, ; 91: System.ServiceModel.Internals => 0x3ece06856b710dae => 150
	i64 4636684751163556186, ; 92: Xamarin.AndroidX.VersionedParcelable.dll => 0x4058d0370893015a => 115
	i64 4702770163853758138, ; 93: Xamarin.Firebase.Components => 0x4143988c34cf0eba => 124
	i64 4782108999019072045, ; 94: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0x425d76cc43bb0a2d => 73
	i64 4794310189461587505, ; 95: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 66
	i64 4795410492532947900, ; 96: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0x428cb86f8f9b7bbc => 110
	i64 5030912756753921902, ; 97: Messier16.Forms.Android.Controls.dll => 0x45d1647f524c776e => 19
	i64 5037027636527892517, ; 98: Plugin.MaterialDesignControls.Android => 0x45e71df2b7120825 => 30
	i64 5041158819495464279, ; 99: Sharpnado.Shadows.dll => 0x45f5cb3cb45acd57 => 35
	i64 5081566143765835342, ; 100: System.Resources.ResourceManager.dll => 0x4685597c05d06e4e => 4
	i64 5099468265966638712, ; 101: System.Resources.ResourceManager => 0x46c4f35ea8519678 => 4
	i64 5142919913060024034, ; 102: Xamarin.Forms.Platform.Android.dll => 0x475f52699e39bee2 => 130
	i64 5202753749449073649, ; 103: Plugin.Media => 0x4833e4f841be63f1 => 32
	i64 5203618020066742981, ; 104: Xamarin.Essentials => 0x4836f704f0e652c5 => 119
	i64 5205316157927637098, ; 105: Xamarin.AndroidX.LocalBroadcastManager => 0x483cff7778e0c06a => 99
	i64 5258427006098912452, ; 106: Xamarin.GooglePlayServices.Auth.Base.dll => 0x48f9af806fd8b4c4 => 136
	i64 5348796042099802469, ; 107: Xamarin.AndroidX.Media => 0x4a3abda9415fc165 => 100
	i64 5376510917114486089, ; 108: Xamarin.AndroidX.VectorDrawable.Animated => 0x4a9d3431719e5d49 => 113
	i64 5408338804355907810, ; 109: Xamarin.AndroidX.Transition => 0x4b0e477cea9840e2 => 112
	i64 5424404247311656595, ; 110: Xamarin.GooglePlayServices.SafetyNet.dll => 0x4b475aec5721a693 => 141
	i64 5439315836349573567, ; 111: Xamarin.Android.Support.Animated.Vector.Drawable.dll => 0x4b7c54ef36c5e9bf => 56
	i64 5446034149219586269, ; 112: System.Diagnostics.Debug => 0x4b94333452e150dd => 155
	i64 5451019430259338467, ; 113: Xamarin.AndroidX.ConstraintLayout.dll => 0x4ba5e94a845c2ce3 => 79
	i64 5507995362134886206, ; 114: System.Core.dll => 0x4c705499688c873e => 39
	i64 5677062998536355858, ; 115: WeakEvent.dll => 0x4ec8fab803460012 => 55
	i64 5692067934154308417, ; 116: Xamarin.AndroidX.ViewPager2.dll => 0x4efe49a0d4a8bb41 => 117
	i64 5757522595884336624, ; 117: Xamarin.AndroidX.Concurrent.Futures.dll => 0x4fe6d44bd9f885f0 => 77
	i64 5767696078500135884, ; 118: Xamarin.Android.Support.Annotations.dll => 0x500af9065b6a03cc => 57
	i64 5814345312393086621, ; 119: Xamarin.AndroidX.Preference => 0x50b0b44182a5c69d => 105
	i64 5896680224035167651, ; 120: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x51d5376bfbafdda3 => 94
	i64 6085203216496545422, ; 121: Xamarin.Forms.Platform.dll => 0x5472fc15a9574e8e => 131
	i64 6086316965293125504, ; 122: FormsViewGroup.dll => 0x5476f10882baef80 => 15
	i64 6222399776351216807, ; 123: System.Text.Json.dll => 0x565a67a0ffe264a7 => 50
	i64 6319713645133255417, ; 124: Xamarin.AndroidX.Lifecycle.Runtime => 0x57b42213b45b52f9 => 95
	i64 6401687960814735282, ; 125: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 93
	i64 6403742896930319886, ; 126: Xamarin.Firebase.Auth.dll => 0x58deaa3c7c766e0e => 121
	i64 6405879832841858445, ; 127: Xamarin.Android.Support.Vector.Drawable.dll => 0x58e641c4a660ad8d => 65
	i64 6504860066809920875, ; 128: Xamarin.AndroidX.Browser.dll => 0x5a45e7c43bd43d6b => 74
	i64 6548213210057960872, ; 129: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 83
	i64 6591024623626361694, ; 130: System.Web.Services.dll => 0x5b7805f9751a1b5e => 149
	i64 6659513131007730089, ; 131: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0x5c6b57e8b6c3e1a9 => 89
	i64 6671798237668743565, ; 132: SkiaSharp => 0x5c96fd260152998d => 36
	i64 6876862101832370452, ; 133: System.Xml.Linq => 0x5f6f85a57d108914 => 52
	i64 6894844156784520562, ; 134: System.Numerics.Vectors => 0x5faf683aead1ad72 => 45
	i64 6975328107116786489, ; 135: Xamarin.Firebase.Annotations => 0x60cd57f4e07e7339 => 120
	i64 7036436454368433159, ; 136: Xamarin.AndroidX.Legacy.Support.V4.dll => 0x61a671acb33d5407 => 91
	i64 7103753931438454322, ; 137: Xamarin.AndroidX.Interpolator.dll => 0x62959a90372c7632 => 88
	i64 7141281584637745974, ; 138: Xamarin.GooglePlayServices.Maps.dll => 0x631aedc3dd5f1b36 => 140
	i64 7141577505875122296, ; 139: System.Runtime.InteropServices.WindowsRuntime.dll => 0x631bfae7659b5878 => 3
	i64 7270811800166795866, ; 140: System.Linq => 0x64e71ccf51a90a5a => 161
	i64 7330419912715392478, ; 141: Xamarin.Forms.GoogleMaps.Android => 0x65bae21287d9d5de => 126
	i64 7338192458477945005, ; 142: System.Reflection => 0x65d67f295d0740ad => 152
	i64 7488575175965059935, ; 143: System.Xml.Linq.dll => 0x67ecc3724534ab5f => 52
	i64 7489048572193775167, ; 144: System.ObjectModel => 0x67ee71ff6b419e3f => 162
	i64 7496222613193209122, ; 145: System.IdentityModel.Tokens.Jwt => 0x6807eec000a1b522 => 41
	i64 7511925841239773387, ; 146: Uberapp.Android.dll => 0x683fb8c0b22c90cb => 0
	i64 7602111570124318452, ; 147: System.Reactive => 0x698020320025a6f4 => 46
	i64 7635363394907363464, ; 148: Xamarin.Forms.Core.dll => 0x69f6428dc4795888 => 125
	i64 7637365915383206639, ; 149: Xamarin.Essentials.dll => 0x69fd5fd5e61792ef => 119
	i64 7654504624184590948, ; 150: System.Net.Http => 0x6a3a4366801b8264 => 43
	i64 7820441508502274321, ; 151: System.Data => 0x6c87ca1e14ff8111 => 143
	i64 7836164640616011524, ; 152: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 69
	i64 7879037620440914030, ; 153: Xamarin.Android.Support.v7.AppCompat.dll => 0x6d57f6f88a51d86e => 63
	i64 8044118961405839122, ; 154: System.ComponentModel.Composition => 0x6fa2739369944712 => 148
	i64 8064050204834738623, ; 155: System.Collections.dll => 0x6fe942efa61731bf => 151
	i64 8083354569033831015, ; 156: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 92
	i64 8084909493235303812, ; 157: Plugin.MaterialDesignControls.dll => 0x70335e5931794584 => 31
	i64 8086960272581648811, ; 158: Plugin.MaterialDesignControls => 0x703aa78577ece1ab => 31
	i64 8101777744205214367, ; 159: Xamarin.Android.Support.Annotations => 0x706f4beeec84729f => 57
	i64 8103644804370223335, ; 160: System.Data.DataSetExtensions.dll => 0x7075ee03be6d50e7 => 145
	i64 8113615946733131500, ; 161: System.Reflection.Extensions => 0x70995ab73cf916ec => 5
	i64 8167236081217502503, ; 162: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 16
	i64 8185542183669246576, ; 163: System.Collections => 0x7198e33f4794aa70 => 151
	i64 8195406069771384777, ; 164: Firebase.Storage.dll => 0x71bbee663acdb7c9 => 14
	i64 8290740647658429042, ; 165: System.Runtime.Extensions => 0x730ea0b15c929a72 => 158
	i64 8398329775253868912, ; 166: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x748cdc6f3097d170 => 78
	i64 8400357532724379117, ; 167: Xamarin.AndroidX.Navigation.UI.dll => 0x749410ab44503ded => 104
	i64 8402617192447357659, ; 168: PhoneNumbers => 0x749c17d14b6a32db => 28
	i64 8518412311883997971, ; 169: System.Collections.Immutable => 0x76377add7c28e313 => 38
	i64 8601935802264776013, ; 170: Xamarin.AndroidX.Transition.dll => 0x7760370982b4ed4d => 112
	i64 8626175481042262068, ; 171: Java.Interop => 0x77b654e585b55834 => 16
	i64 8639588376636138208, ; 172: Xamarin.AndroidX.Navigation.Runtime => 0x77e5fbdaa2fda2e0 => 103
	i64 8684531736582871431, ; 173: System.IO.Compression.FileSystem => 0x7885a79a0fa0d987 => 147
	i64 8702320156596882678, ; 174: Firebase.dll => 0x78c4da1357adccf6 => 13
	i64 9043227163227252164, ; 175: Xamarin.GooglePlayServices.SafetyNet => 0x7d7fff311f52e5c4 => 141
	i64 9057635389615298436, ; 176: LiteDB => 0x7db32f65bf06d784 => 18
	i64 9114191852432800567, ; 177: FFImageLoading.dll => 0x7e7c1d3363043b37 => 7
	i64 9238306115887712111, ; 178: FFImageLoading.Forms.dll => 0x80350e773bce476f => 8
	i64 9290408134796603763, ; 179: Xamarin.Forms.Material.dll => 0x80ee28f9d4f37173 => 128
	i64 9296667808972889535, ; 180: LiteDB.dll => 0x8104661dcca35dbf => 18
	i64 9312692141327339315, ; 181: Xamarin.AndroidX.ViewPager2 => 0x813d54296a634f33 => 117
	i64 9324707631942237306, ; 182: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 70
	i64 9427266486299436557, ; 183: Microsoft.IdentityModel.Logging.dll => 0x82d460ebe6d2a60d => 23
	i64 9584643793929893533, ; 184: System.IO.dll => 0x85037ebfbbd7f69d => 154
	i64 9659729154652888475, ; 185: System.Text.RegularExpressions => 0x860e407c9991dd9b => 160
	i64 9662334977499516867, ; 186: System.Numerics.dll => 0x8617827802b0cfc3 => 44
	i64 9678050649315576968, ; 187: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 80
	i64 9711637524876806384, ; 188: Xamarin.AndroidX.Media.dll => 0x86c6aadfd9a2c8f0 => 100
	i64 9808709177481450983, ; 189: Mono.Android.dll => 0x881f890734e555e7 => 25
	i64 9825649861376906464, ; 190: Xamarin.AndroidX.Concurrent.Futures => 0x885bb87d8abc94e0 => 77
	i64 9834056768316610435, ; 191: System.Transactions.dll => 0x8879968718899783 => 144
	i64 9875200773399460291, ; 192: Xamarin.GooglePlayServices.Base.dll => 0x890bc2c8482339c3 => 138
	i64 9998632235833408227, ; 193: Mono.Security => 0x8ac2470b209ebae3 => 165
	i64 10038780035334861115, ; 194: System.Net.Http.dll => 0x8b50e941206af13b => 43
	i64 10081247976478476887, ; 195: WeakEvent => 0x8be7c99f32a00a57 => 55
	i64 10144742755892837524, ; 196: Firebase => 0x8cc95dc98eb5bc94 => 13
	i64 10229024438826829339, ; 197: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 83
	i64 10360651442923773544, ; 198: System.Text.Encoding => 0x8fc86d98211c1e68 => 159
	i64 10376576884623852283, ; 199: Xamarin.AndroidX.Tracing.Tracing => 0x900101b2f888c2fb => 111
	i64 10430153318873392755, ; 200: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 81
	i64 10447083246144586668, ; 201: Microsoft.Bcl.AsyncInterfaces.dll => 0x90fb7edc816203ac => 21
	i64 10449150309996502479, ; 202: Messier16.Forms.Controls => 0x9102d6d850011dcf => 20
	i64 10549908655231907690, ; 203: Xamarin.Forms.OpenWhatsApp.dll => 0x9268ce06afeab76a => 129
	i64 10566960649245365243, ; 204: System.Globalization.dll => 0x92a562b96dcd13fb => 163
	i64 10714184849103829812, ; 205: System.Runtime.Extensions.dll => 0x94b06e5aa4b4bb34 => 158
	i64 10785150219063592792, ; 206: System.Net.Primitives => 0x95ac8cfb68830758 => 156
	i64 10847732767863316357, ; 207: Xamarin.AndroidX.Arch.Core.Common => 0x968ae37a86db9f85 => 71
	i64 10902231749748351953, ; 208: JimBobBennett.AnimatedProgress => 0x974c82038ebc63d1 => 17
	i64 11023048688141570732, ; 209: System.Core => 0x98f9bc61168392ac => 39
	i64 11037814507248023548, ; 210: System.Xml => 0x992e31d0412bf7fc => 51
	i64 11122995063473561350, ; 211: Xamarin.CommunityToolkit.dll => 0x9a5cd113fcc3df06 => 118
	i64 11162124722117608902, ; 212: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 116
	i64 11340910727871153756, ; 213: Xamarin.AndroidX.CursorAdapter => 0x9d630238642d465c => 82
	i64 11376351552967644903, ; 214: Xamarin.Firebase.Annotations.dll => 0x9de0eb76829996e7 => 120
	i64 11376461258732682436, ; 215: Xamarin.Android.Support.Compat => 0x9de14f3d5fc13cc4 => 58
	i64 11392833485892708388, ; 216: Xamarin.AndroidX.Print.dll => 0x9e1b79b18fcf6824 => 106
	i64 11395105072750394936, ; 217: Xamarin.Android.Support.v7.CardView => 0x9e238bb09789fe38 => 64
	i64 11529969570048099689, ; 218: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 116
	i64 11578238080964724296, ; 219: Xamarin.AndroidX.Legacy.Support.V4 => 0xa0ae2a30c4cd8648 => 91
	i64 11580057168383206117, ; 220: Xamarin.AndroidX.Annotation => 0xa0b4a0a4103262e5 => 67
	i64 11597940890313164233, ; 221: netstandard => 0xa0f429ca8d1805c9 => 1
	i64 11672361001936329215, ; 222: Xamarin.AndroidX.Interpolator => 0xa1fc8e7d0a8999ff => 88
	i64 11743665907891708234, ; 223: System.Threading.Tasks => 0xa2f9e1ec30c0214a => 153
	i64 11822910948729314402, ; 224: JimBobBennett.AnimatedProgress.dll => 0xa4136ade0e165c62 => 17
	i64 12013962889899020729, ; 225: Xamarin.GooglePlayServices.Auth => 0xa6ba2b987d2811b9 => 137
	i64 12102847907131387746, ; 226: System.Buffers => 0xa7f5f40c43256f62 => 37
	i64 12123043025855404482, ; 227: System.Reflection.Extensions.dll => 0xa83db366c0e359c2 => 5
	i64 12137774235383566651, ; 228: Xamarin.AndroidX.VectorDrawable => 0xa872095bbfed113b => 114
	i64 12145679461940342714, ; 229: System.Text.Json => 0xa88e1f1ebcb62fba => 50
	i64 12269460666702402136, ; 230: System.Collections.Immutable.dll => 0xaa45e178506c9258 => 38
	i64 12336928085371509187, ; 231: Xamarin.GooglePlayServices.Auth.Api.Phone => 0xab3592bad41bd9c3 => 135
	i64 12414299427252656003, ; 232: Xamarin.Android.Support.Compat.dll => 0xac48738e28bad783 => 58
	i64 12439275739440478309, ; 233: Microsoft.IdentityModel.JsonWebTokens => 0xaca12f61007bf865 => 22
	i64 12451044538927396471, ; 234: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 87
	i64 12466513435562512481, ; 235: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 98
	i64 12487638416075308985, ; 236: Xamarin.AndroidX.DocumentFile.dll => 0xad4d00fa21b0bfb9 => 84
	i64 12538491095302438457, ; 237: Xamarin.AndroidX.CardView.dll => 0xae01ab382ae67e39 => 75
	i64 12550732019250633519, ; 238: System.IO.Compression => 0xae2d28465e8e1b2f => 42
	i64 12559163541709922900, ; 239: Xamarin.Android.Support.v7.CardView.dll => 0xae4b1cb32ba82254 => 64
	i64 12700543734426720211, ; 240: Xamarin.AndroidX.Collection => 0xb041653c70d157d3 => 76
	i64 12708238894395270091, ; 241: System.IO => 0xb05cbbf17d3ba3cb => 154
	i64 12718618097672088706, ; 242: Uberapp => 0xb0819bc611996c82 => 54
	i64 12952608645614506925, ; 243: Xamarin.Android.Support.Core.Utils => 0xb3c0e8eff48193ad => 60
	i64 12963446364377008305, ; 244: System.Drawing.Common.dll => 0xb3e769c8fd8548b1 => 146
	i64 13291835053457086558, ; 245: Xamarin.Forms.GoogleMaps.Android.dll => 0xb876158ed665185e => 126
	i64 13358059602087096138, ; 246: Xamarin.Android.Support.Fragment.dll => 0xb9615c6f1ee5af4a => 61
	i64 13370592475155966277, ; 247: System.Runtime.Serialization => 0xb98de304062ea945 => 6
	i64 13401370062847626945, ; 248: Xamarin.AndroidX.VectorDrawable.dll => 0xb9fb3b1193964ec1 => 114
	i64 13404347523447273790, ; 249: Xamarin.AndroidX.ConstraintLayout.Core => 0xba05cf0da4f6393e => 78
	i64 13454009404024712428, ; 250: Xamarin.Google.Guava.ListenableFuture => 0xbab63e4543a86cec => 134
	i64 13491513212026656886, ; 251: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0xbb3b7bc905569876 => 72
	i64 13572454107664307259, ; 252: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 107
	i64 13643785327914841093, ; 253: Plugin.Media.dll => 0xbd587677c60cf405 => 32
	i64 13647894001087880694, ; 254: System.Data.dll => 0xbd670f48cb071df6 => 143
	i64 13959074834287824816, ; 255: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 87
	i64 13967638549803255703, ; 256: Xamarin.Forms.Platform.Android => 0xc1d70541e0134797 => 130
	i64 14124974489674258913, ; 257: Xamarin.AndroidX.CardView => 0xc405fd76067d19e1 => 75
	i64 14125464355221830302, ; 258: System.Threading.dll => 0xc407bafdbc707a9e => 157
	i64 14164783236351491542, ; 259: FFImageLoading.Svg.Platform.dll => 0xc4936b4e23237dd6 => 12
	i64 14165531176311179688, ; 260: Xamarin.Firebase.Auth => 0xc496138d7abfc9a8 => 121
	i64 14172845254133543601, ; 261: Xamarin.AndroidX.MultiDex => 0xc4b00faaed35f2b1 => 101
	i64 14190423439118552299, ; 262: Sharpnado.Shadows.Android.dll => 0xc4ee82ef0d09cceb => 34
	i64 14212104595480609394, ; 263: System.Security.Cryptography.Cng.dll => 0xc53b89d4a4518272 => 2
	i64 14252460695396124839, ; 264: FFImageLoading.Svg.Forms.dll => 0xc5cae97d5c4d88a7 => 11
	i64 14261073672896646636, ; 265: Xamarin.AndroidX.Print => 0xc5e982f274ae0dec => 106
	i64 14327695147300244862, ; 266: System.Reflection.dll => 0xc6d632d338eb4d7e => 152
	i64 14351688324393849239, ; 267: Sharpnado.Shadows.Android => 0xc72b707e169dd197 => 34
	i64 14369828458497533121, ; 268: Xamarin.Android.Support.Vector.Drawable => 0xc76be2d9300b64c1 => 65
	i64 14382082037123372364, ; 269: Xamarin.Firebase.Auth.Interop => 0xc7976b69c943d54c => 122
	i64 14400856865250966808, ; 270: Xamarin.Android.Support.Core.UI => 0xc7da1f051a877d18 => 59
	i64 14486659737292545672, ; 271: Xamarin.AndroidX.Lifecycle.LiveData => 0xc90af44707469e88 => 94
	i64 14551742072151931844, ; 272: System.Text.Encodings.Web.dll => 0xc9f22c50f1b8fbc4 => 49
	i64 14644440854989303794, ; 273: Xamarin.AndroidX.LocalBroadcastManager.dll => 0xcb3b815e37daeff2 => 99
	i64 14789919016435397935, ; 274: Xamarin.Firebase.Common.dll => 0xcd4058fc2f6d352f => 123
	i64 14792063746108907174, ; 275: Xamarin.Google.Guava.ListenableFuture.dll => 0xcd47f79af9c15ea6 => 134
	i64 14852515768018889994, ; 276: Xamarin.AndroidX.CursorAdapter.dll => 0xce1ebc6625a76d0a => 82
	i64 14987728460634540364, ; 277: System.IO.Compression.dll => 0xcfff1ba06622494c => 42
	i64 14988210264188246988, ; 278: Xamarin.AndroidX.DocumentFile => 0xd000d1d307cddbcc => 84
	i64 15076659072870671916, ; 279: System.ObjectModel.dll => 0xd13b0d8c1620662c => 162
	i64 15133485256822086103, ; 280: System.Linq.dll => 0xd204f0a9127dd9d7 => 161
	i64 15370334346939861994, ; 281: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 81
	i64 15398511348637731642, ; 282: FFImageLoading.Forms.Platform.dll => 0xd5b2807c9d5f8b3a => 9
	i64 15404322903526314552, ; 283: FFImageLoading.Svg.Platform => 0xd5c72610ae199238 => 12
	i64 15457813392950723921, ; 284: Xamarin.Android.Support.Media.Compat => 0xd6852f61c31a8551 => 62
	i64 15526743539506359484, ; 285: System.Text.Encoding.dll => 0xd77a12fc26de2cbc => 159
	i64 15582737692548360875, ; 286: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xd841015ed86f6aab => 97
	i64 15609085926864131306, ; 287: System.dll => 0xd89e9cf3334914ea => 40
	i64 15777549416145007739, ; 288: Xamarin.AndroidX.SlidingPaneLayout.dll => 0xdaf51d99d77eb47b => 109
	i64 15810740023422282496, ; 289: Xamarin.Forms.Xaml => 0xdb6b08484c22eb00 => 132
	i64 15817206913877585035, ; 290: System.Threading.Tasks.dll => 0xdb8201e29086ac8b => 153
	i64 15918850920779038429, ; 291: Sharpnado.Shadows => 0xdceb1e921d6f3edd => 35
	i64 15930129725311349754, ; 292: Xamarin.GooglePlayServices.Tasks.dll => 0xdd1330956f12f3fa => 142
	i64 15937190497610202713, ; 293: System.Security.Cryptography.Cng => 0xdd2c465197c97e59 => 2
	i64 15963349826457351533, ; 294: System.Threading.Tasks.Extensions => 0xdd893616f748b56d => 166
	i64 15987609494471769098, ; 295: Firebase.Storage => 0xdddf662115a6fc0a => 14
	i64 16154507427712707110, ; 296: System => 0xe03056ea4e39aa26 => 40
	i64 16324796876805858114, ; 297: SkiaSharp.dll => 0xe28d5444586b6342 => 36
	i64 16565028646146589191, ; 298: System.ComponentModel.Composition.dll => 0xe5e2cdc9d3bcc207 => 148
	i64 16621146507174665210, ; 299: Xamarin.AndroidX.ConstraintLayout => 0xe6aa2caf87dedbfa => 79
	i64 16677317093839702854, ; 300: Xamarin.AndroidX.Navigation.UI => 0xe771bb8960dd8b46 => 104
	i64 16822611501064131242, ; 301: System.Data.DataSetExtensions => 0xe975ec07bb5412aa => 145
	i64 16833383113903931215, ; 302: mscorlib => 0xe99c30c1484d7f4f => 26
	i64 16866861824412579935, ; 303: System.Runtime.InteropServices.WindowsRuntime => 0xea132176ffb5785f => 3
	i64 16890310621557459193, ; 304: System.Text.RegularExpressions.dll => 0xea66700587f088f9 => 160
	i64 16932527889823454152, ; 305: Xamarin.Android.Support.Core.Utils.dll => 0xeafc6c67465253c8 => 60
	i64 17009591894298689098, ; 306: Xamarin.Android.Support.Animated.Vector.Drawable => 0xec0e35b50a097e4a => 56
	i64 17024911836938395553, ; 307: Xamarin.AndroidX.Annotation.Experimental.dll => 0xec44a31d250e5fa1 => 68
	i64 17031351772568316411, ; 308: Xamarin.AndroidX.Navigation.Common.dll => 0xec5b843380a769fb => 102
	i64 17037200463775726619, ; 309: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xec704b8e0a78fc1b => 90
	i64 17137864900836977098, ; 310: Microsoft.IdentityModel.Tokens => 0xedd5ed53b705e9ca => 24
	i64 17285063141349522879, ; 311: Rg.Plugins.Popup => 0xefe0e158cc55fdbf => 33
	i64 17310799966561153083, ; 312: Xamarin.GooglePlayServices.Auth.dll => 0xf03c50da60b8b03b => 137
	i64 17428701562824544279, ; 313: Xamarin.Android.Support.Core.UI.dll => 0xf1df2fbaec73d017 => 59
	i64 17544493274320527064, ; 314: Xamarin.AndroidX.AsyncLayoutInflater => 0xf37a8fada41aded8 => 73
	i64 17627500474728259406, ; 315: System.Globalization => 0xf4a176498a351f4e => 163
	i64 17643123953373031521, ; 316: FFImageLoading => 0xf4d8f7c220fc2c61 => 7
	i64 17685921127322830888, ; 317: System.Diagnostics.Debug.dll => 0xf571038fafa74828 => 155
	i64 17704177640604968747, ; 318: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 98
	i64 17710060891934109755, ; 319: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 96
	i64 17790600151040787804, ; 320: Microsoft.IdentityModel.Logging => 0xf6e4e89427cc055c => 23
	i64 17838668724098252521, ; 321: System.Buffers.dll => 0xf78faeb0f5bf3ee9 => 37
	i64 17882897186074144999, ; 322: FormsViewGroup => 0xf82cd03e3ac830e7 => 15
	i64 17892495832318972303, ; 323: Xamarin.Forms.Xaml.dll => 0xf84eea293687918f => 132
	i64 17928294245072900555, ; 324: System.IO.Compression.FileSystem.dll => 0xf8ce18a0b24011cb => 147
	i64 17947624217716767869, ; 325: FFImageLoading.Platform => 0xf912c522ab34bc7d => 10
	i64 17969331831154222830, ; 326: Xamarin.GooglePlayServices.Maps => 0xf95fe418471126ee => 140
	i64 17986907704309214542, ; 327: Xamarin.GooglePlayServices.Basement.dll => 0xf99e554223166d4e => 139
	i64 18025913125965088385, ; 328: System.Threading => 0xfa28e87b91334681 => 157
	i64 18116111925905154859, ; 329: Xamarin.AndroidX.Arch.Core.Runtime => 0xfb695bd036cb632b => 72
	i64 18121036031235206392, ; 330: Xamarin.AndroidX.Navigation.Common => 0xfb7ada42d3d42cf8 => 102
	i64 18129453464017766560, ; 331: System.ServiceModel.Internals.dll => 0xfb98c1df1ec108a0 => 150
	i64 18305135509493619199, ; 332: Xamarin.AndroidX.Navigation.Runtime.dll => 0xfe08e7c2d8c199ff => 103
	i64 18380184030268848184 ; 333: Xamarin.AndroidX.VersionedParcelable => 0xff1387fe3e7b7838 => 115
], align 8
@assembly_image_cache_indices = local_unnamed_addr constant [334 x i32] [
	i32 9, i32 86, i32 20, i32 128, i32 25, i32 76, i32 108, i32 33, ; 0..7
	i32 127, i32 53, i32 109, i32 46, i32 95, i32 138, i32 146, i32 89, ; 8..15
	i32 85, i32 54, i32 144, i32 131, i32 165, i32 133, i32 19, i32 71, ; 16..23
	i32 61, i32 122, i32 6, i32 124, i32 156, i32 69, i32 97, i32 90, ; 24..31
	i32 27, i32 164, i32 63, i32 70, i32 108, i32 21, i32 67, i32 96, ; 32..39
	i32 10, i32 118, i32 166, i32 27, i32 101, i32 11, i32 74, i32 85, ; 40..47
	i32 30, i32 149, i32 93, i32 49, i32 47, i32 80, i32 113, i32 48, ; 48..55
	i32 66, i32 51, i32 24, i32 26, i32 105, i32 0, i32 47, i32 22, ; 56..63
	i32 29, i32 8, i32 136, i32 125, i32 133, i32 62, i32 92, i32 68, ; 64..71
	i32 45, i32 123, i32 41, i32 139, i32 135, i32 111, i32 110, i32 44, ; 72..79
	i32 48, i32 129, i32 29, i32 1, i32 107, i32 86, i32 53, i32 127, ; 80..87
	i32 164, i32 28, i32 142, i32 150, i32 115, i32 124, i32 73, i32 66, ; 88..95
	i32 110, i32 19, i32 30, i32 35, i32 4, i32 4, i32 130, i32 32, ; 96..103
	i32 119, i32 99, i32 136, i32 100, i32 113, i32 112, i32 141, i32 56, ; 104..111
	i32 155, i32 79, i32 39, i32 55, i32 117, i32 77, i32 57, i32 105, ; 112..119
	i32 94, i32 131, i32 15, i32 50, i32 95, i32 93, i32 121, i32 65, ; 120..127
	i32 74, i32 83, i32 149, i32 89, i32 36, i32 52, i32 45, i32 120, ; 128..135
	i32 91, i32 88, i32 140, i32 3, i32 161, i32 126, i32 152, i32 52, ; 136..143
	i32 162, i32 41, i32 0, i32 46, i32 125, i32 119, i32 43, i32 143, ; 144..151
	i32 69, i32 63, i32 148, i32 151, i32 92, i32 31, i32 31, i32 57, ; 152..159
	i32 145, i32 5, i32 16, i32 151, i32 14, i32 158, i32 78, i32 104, ; 160..167
	i32 28, i32 38, i32 112, i32 16, i32 103, i32 147, i32 13, i32 141, ; 168..175
	i32 18, i32 7, i32 8, i32 128, i32 18, i32 117, i32 70, i32 23, ; 176..183
	i32 154, i32 160, i32 44, i32 80, i32 100, i32 25, i32 77, i32 144, ; 184..191
	i32 138, i32 165, i32 43, i32 55, i32 13, i32 83, i32 159, i32 111, ; 192..199
	i32 81, i32 21, i32 20, i32 129, i32 163, i32 158, i32 156, i32 71, ; 200..207
	i32 17, i32 39, i32 51, i32 118, i32 116, i32 82, i32 120, i32 58, ; 208..215
	i32 106, i32 64, i32 116, i32 91, i32 67, i32 1, i32 88, i32 153, ; 216..223
	i32 17, i32 137, i32 37, i32 5, i32 114, i32 50, i32 38, i32 135, ; 224..231
	i32 58, i32 22, i32 87, i32 98, i32 84, i32 75, i32 42, i32 64, ; 232..239
	i32 76, i32 154, i32 54, i32 60, i32 146, i32 126, i32 61, i32 6, ; 240..247
	i32 114, i32 78, i32 134, i32 72, i32 107, i32 32, i32 143, i32 87, ; 248..255
	i32 130, i32 75, i32 157, i32 12, i32 121, i32 101, i32 34, i32 2, ; 256..263
	i32 11, i32 106, i32 152, i32 34, i32 65, i32 122, i32 59, i32 94, ; 264..271
	i32 49, i32 99, i32 123, i32 134, i32 82, i32 42, i32 84, i32 162, ; 272..279
	i32 161, i32 81, i32 9, i32 12, i32 62, i32 159, i32 97, i32 40, ; 280..287
	i32 109, i32 132, i32 153, i32 35, i32 142, i32 2, i32 166, i32 14, ; 288..295
	i32 40, i32 36, i32 148, i32 79, i32 104, i32 145, i32 26, i32 3, ; 296..303
	i32 160, i32 60, i32 56, i32 68, i32 102, i32 90, i32 24, i32 33, ; 304..311
	i32 137, i32 59, i32 73, i32 163, i32 7, i32 155, i32 98, i32 96, ; 312..319
	i32 23, i32 37, i32 15, i32 132, i32 147, i32 10, i32 140, i32 139, ; 320..327
	i32 157, i32 72, i32 102, i32 150, i32 103, i32 115 ; 328..333
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 8; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 8

; Function attributes: "frame-pointer"="non-leaf" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics" uwtable willreturn writeonly
define void @xamarin_app_init (void (i32, i32, i32, i8**)* %fn) local_unnamed_addr #0
{
	store void (i32, i32, i32, i8**)* %fn, void (i32, i32, i32, i8**)** @get_function_pointer, align 8
	ret void
}

; Names of classes in which marshal methods reside
@mm_class_names = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 8
@__MarshalMethodName_name.0 = internal constant [1 x i8] c"\00", align 1

; mm_method_names
@mm_method_names = local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	; 0
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		i8* getelementptr inbounds ([1 x i8], [1 x i8]* @__MarshalMethodName_name.0, i32 0, i32 0); name
	}
], align 8; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="non-leaf" "target-cpu"="generic" "target-features"="+neon,+outline-atomics" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="non-leaf" "target-cpu"="generic" "target-features"="+neon,+outline-atomics" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"branch-target-enforcement", i32 0}
!3 = !{i32 1, !"sign-return-address", i32 0}
!4 = !{i32 1, !"sign-return-address-all", i32 0}
!5 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!6 = !{!"Xamarin.Android remotes/origin/d17-5 @ 45b0e144f73b2c8747d8b5ec8cbd3b55beca67f0"}
!llvm.linker.options = !{}
