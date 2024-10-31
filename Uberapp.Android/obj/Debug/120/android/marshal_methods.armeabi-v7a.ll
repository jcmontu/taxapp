; ModuleID = 'obj\Debug\120\android\marshal_methods.armeabi-v7a.ll'
source_filename = "obj\Debug\120\android\marshal_methods.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android"


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
@assembly_image_cache = local_unnamed_addr global [0 x %struct.MonoImage*] zeroinitializer, align 4
; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = local_unnamed_addr constant [334 x i32] [
	i32 32687329, ; 0: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 95
	i32 34715100, ; 1: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 134
	i32 39109920, ; 2: Newtonsoft.Json.dll => 0x254c520 => 27
	i32 57263871, ; 3: Xamarin.Forms.Core.dll => 0x369c6ff => 125
	i32 101534019, ; 4: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 109
	i32 103834273, ; 5: Xamarin.Firebase.Annotations.dll => 0x63062a1 => 120
	i32 120558881, ; 6: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 109
	i32 159945363, ; 7: WeakEvent => 0x9889293 => 55
	i32 165246403, ; 8: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 76
	i32 166922606, ; 9: Xamarin.Android.Support.Compat.dll => 0x9f3096e => 58
	i32 182336117, ; 10: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 110
	i32 209399409, ; 11: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 74
	i32 220171995, ; 12: System.Diagnostics.Debug => 0xd1f8edb => 155
	i32 229671048, ; 13: Messier16.Forms.Controls.dll => 0xdb08088 => 20
	i32 230216969, ; 14: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 90
	i32 231814094, ; 15: System.Globalization => 0xdd133ce => 163
	i32 232815796, ; 16: System.Web.Services => 0xde07cb4 => 149
	i32 261689757, ; 17: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 79
	i32 278686392, ; 18: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 94
	i32 280482487, ; 19: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 88
	i32 293936332, ; 20: Xamarin.GooglePlayServices.Auth.Api.Phone.dll => 0x11851ccc => 135
	i32 318968648, ; 21: Xamarin.AndroidX.Activity.dll => 0x13031348 => 66
	i32 321597661, ; 22: System.Numerics => 0x132b30dd => 44
	i32 342366114, ; 23: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 92
	i32 347099307, ; 24: Uberapp => 0x14b050ab => 54
	i32 381494705, ; 25: Xamarin.Forms.Material => 0x16bd25b1 => 128
	i32 385762202, ; 26: System.Memory.dll => 0x16fe439a => 164
	i32 388313361, ; 27: Xamarin.Android.Support.Animated.Vector.Drawable => 0x17253111 => 56
	i32 389971796, ; 28: Xamarin.Android.Support.Core.UI => 0x173e7f54 => 59
	i32 393699800, ; 29: Firebase => 0x177761d8 => 13
	i32 435670173, ; 30: WeakEvent.dll => 0x19f7cc9d => 55
	i32 437821906, ; 31: Xamarin.GooglePlayServices.SafetyNet => 0x1a18a1d2 => 141
	i32 441335492, ; 32: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 78
	i32 442521989, ; 33: Xamarin.Essentials => 0x1a605985 => 119
	i32 442565967, ; 34: System.Collections => 0x1a61054f => 151
	i32 450948140, ; 35: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 87
	i32 465846621, ; 36: mscorlib => 0x1bc4415d => 26
	i32 469710990, ; 37: System.dll => 0x1bff388e => 40
	i32 476646585, ; 38: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 88
	i32 486930444, ; 39: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 99
	i32 495216268, ; 40: Uberapp.Android => 0x1d84668c => 0
	i32 498788369, ; 41: System.ObjectModel => 0x1dbae811 => 162
	i32 514659665, ; 42: Xamarin.Android.Support.Compat => 0x1ead1551 => 58
	i32 520798577, ; 43: FFImageLoading.Platform => 0x1f0ac171 => 10
	i32 525008092, ; 44: SkiaSharp.dll => 0x1f4afcdc => 36
	i32 526420162, ; 45: System.Transactions.dll => 0x1f6088c2 => 144
	i32 545304856, ; 46: System.Runtime.Extensions => 0x2080b118 => 158
	i32 548916678, ; 47: Microsoft.Bcl.AsyncInterfaces => 0x20b7cdc6 => 21
	i32 577335427, ; 48: System.Security.Cryptography.Cng => 0x22697083 => 2
	i32 581545823, ; 49: FFImageLoading.Svg.Forms => 0x22a9af5f => 11
	i32 589597883, ; 50: Xamarin.GooglePlayServices.Auth.Api.Phone => 0x23248cbb => 135
	i32 605376203, ; 51: System.IO.Compression.FileSystem => 0x24154ecb => 147
	i32 610194910, ; 52: System.Reactive.dll => 0x245ed5de => 46
	i32 624701593, ; 53: JimBobBennett.AnimatedProgress => 0x253c3099 => 17
	i32 627609679, ; 54: Xamarin.AndroidX.CustomView => 0x2568904f => 83
	i32 642461022, ; 55: PhoneNumbers.dll => 0x264b2d5e => 28
	i32 662205335, ; 56: System.Text.Encodings.Web.dll => 0x27787397 => 49
	i32 663517072, ; 57: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 115
	i32 666292255, ; 58: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 71
	i32 678752588, ; 59: Sharpnado.Shadows.dll => 0x2874f14c => 35
	i32 690569205, ; 60: System.Xml.Linq.dll => 0x29293ff5 => 52
	i32 692692150, ; 61: Xamarin.Android.Support.Annotations => 0x2949a4b6 => 57
	i32 775507847, ; 62: System.IO.Compression => 0x2e394f87 => 42
	i32 809851609, ; 63: System.Drawing.Common.dll => 0x30455ad9 => 146
	i32 843511501, ; 64: Xamarin.AndroidX.Print => 0x3246f6cd => 106
	i32 843871832, ; 65: FFImageLoading.Svg.Forms.dll => 0x324c7658 => 11
	i32 877678880, ; 66: System.Globalization.dll => 0x34505120 => 163
	i32 902159924, ; 67: Rg.Plugins.Popup => 0x35c5de34 => 33
	i32 928116545, ; 68: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 134
	i32 955402788, ; 69: Newtonsoft.Json => 0x38f24a24 => 27
	i32 957807352, ; 70: Plugin.CurrentActivity => 0x3916faf8 => 29
	i32 958213972, ; 71: Xamarin.Android.Support.Media.Compat => 0x391d2f54 => 62
	i32 967690846, ; 72: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 92
	i32 974778368, ; 73: FormsViewGroup.dll => 0x3a19f000 => 15
	i32 992768348, ; 74: System.Collections.dll => 0x3b2c715c => 151
	i32 1012816738, ; 75: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 108
	i32 1035644815, ; 76: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 70
	i32 1042160112, ; 77: Xamarin.Forms.Platform.dll => 0x3e1e19f0 => 131
	i32 1052210849, ; 78: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 96
	i32 1098259244, ; 79: System => 0x41761b2c => 40
	i32 1104002344, ; 80: Plugin.Media => 0x41cdbd28 => 32
	i32 1110581358, ; 81: Xamarin.Firebase.Auth => 0x4232206e => 121
	i32 1141741498, ; 82: Sharpnado.Shadows => 0x440d97ba => 35
	i32 1175144683, ; 83: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 113
	i32 1178241025, ; 84: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 103
	i32 1204270330, ; 85: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 71
	i32 1267360935, ; 86: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 114
	i32 1283555170, ; 87: Xamarin.Forms.OpenWhatsApp.dll => 0x4c817f62 => 129
	i32 1293217323, ; 88: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 85
	i32 1324164729, ; 89: System.Linq => 0x4eed2679 => 161
	i32 1333047053, ; 90: Xamarin.Firebase.Common => 0x4f74af0d => 123
	i32 1354490624, ; 91: Xamarin.Forms.GoogleMaps.dll => 0x50bbe300 => 127
	i32 1364015309, ; 92: System.IO => 0x514d38cd => 154
	i32 1365406463, ; 93: System.ServiceModel.Internals.dll => 0x516272ff => 150
	i32 1371845985, ; 94: Xamarin.Forms.GoogleMaps.Android => 0x51c4b561 => 126
	i32 1376866003, ; 95: Xamarin.AndroidX.SavedState => 0x52114ed3 => 108
	i32 1379779777, ; 96: System.Resources.ResourceManager => 0x523dc4c1 => 4
	i32 1395857551, ; 97: Xamarin.AndroidX.Media.dll => 0x5333188f => 100
	i32 1406073936, ; 98: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 80
	i32 1411638395, ; 99: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 47
	i32 1411702249, ; 100: Xamarin.Firebase.Auth.Interop.dll => 0x5424dde9 => 122
	i32 1445445088, ; 101: Xamarin.Android.Support.Fragment => 0x5627bde0 => 61
	i32 1457743152, ; 102: System.Runtime.Extensions.dll => 0x56e36530 => 158
	i32 1460219004, ; 103: Xamarin.Forms.Xaml => 0x57092c7c => 132
	i32 1460893475, ; 104: System.IdentityModel.Tokens.Jwt => 0x57137723 => 41
	i32 1461234159, ; 105: System.Collections.Immutable.dll => 0x5718a9ef => 38
	i32 1462112819, ; 106: System.IO.Compression.dll => 0x57261233 => 42
	i32 1469204771, ; 107: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 69
	i32 1479771757, ; 108: System.Collections.Immutable => 0x5833866d => 38
	i32 1498168481, ; 109: Microsoft.IdentityModel.JsonWebTokens.dll => 0x594c3ca1 => 22
	i32 1516649851, ; 110: Xamarin.Forms.OpenWhatsApp => 0x5a663d7b => 129
	i32 1530772511, ; 111: FFImageLoading.Forms.Platform => 0x5b3dbc1f => 9
	i32 1536837071, ; 112: Twilio.dll => 0x5b9a45cf => 53
	i32 1543031311, ; 113: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 160
	i32 1550322496, ; 114: System.Reflection.Extensions.dll => 0x5c680b40 => 5
	i32 1574652163, ; 115: Xamarin.Android.Support.Core.Utils.dll => 0x5ddb4903 => 60
	i32 1582372066, ; 116: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 84
	i32 1592978981, ; 117: System.Runtime.Serialization.dll => 0x5ef2ee25 => 6
	i32 1618727494, ; 118: Messier16.Forms.Android.Controls => 0x607bd246 => 19
	i32 1622152042, ; 119: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 98
	i32 1624863272, ; 120: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 117
	i32 1636350590, ; 121: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 82
	i32 1639515021, ; 122: System.Net.Http.dll => 0x61b9038d => 43
	i32 1639986890, ; 123: System.Text.RegularExpressions => 0x61c036ca => 160
	i32 1657153582, ; 124: System.Runtime => 0x62c6282e => 48
	i32 1658241508, ; 125: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 111
	i32 1658251792, ; 126: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 133
	i32 1662014763, ; 127: Xamarin.Android.Support.Vector.Drawable => 0x6310552b => 65
	i32 1670060433, ; 128: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 79
	i32 1677501392, ; 129: System.Net.Primitives.dll => 0x63fca3d0 => 156
	i32 1698767786, ; 130: JimBobBennett.AnimatedProgress.dll => 0x654123aa => 17
	i32 1701541528, ; 131: System.Diagnostics.Debug.dll => 0x656b7698 => 155
	i32 1726116996, ; 132: System.Reflection.dll => 0x66e27484 => 152
	i32 1729485958, ; 133: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 75
	i32 1765942094, ; 134: System.Reflection.Extensions => 0x6942234e => 5
	i32 1766324549, ; 135: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 110
	i32 1776026572, ; 136: System.Core.dll => 0x69dc03cc => 39
	i32 1788241197, ; 137: Xamarin.AndroidX.Fragment => 0x6a96652d => 87
	i32 1793089559, ; 138: FFImageLoading.Forms.dll => 0x6ae06017 => 8
	i32 1796167890, ; 139: Microsoft.Bcl.AsyncInterfaces.dll => 0x6b0f58d2 => 21
	i32 1808609942, ; 140: Xamarin.AndroidX.Loader => 0x6bcd3296 => 98
	i32 1813201214, ; 141: Xamarin.Google.Android.Material => 0x6c13413e => 133
	i32 1818569960, ; 142: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 104
	i32 1840964413, ; 143: FFImageLoading.Forms => 0x6dbae33d => 8
	i32 1867746548, ; 144: Xamarin.Essentials.dll => 0x6f538cf4 => 119
	i32 1875053220, ; 145: Xamarin.Firebase.Auth.Interop => 0x6fc30aa4 => 122
	i32 1877905662, ; 146: Plugin.MaterialDesignControls => 0x6fee90fe => 31
	i32 1878053835, ; 147: Xamarin.Forms.Xaml.dll => 0x6ff0d3cb => 132
	i32 1885316902, ; 148: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 72
	i32 1900610850, ; 149: System.Resources.ResourceManager.dll => 0x71490522 => 4
	i32 1904755420, ; 150: System.Runtime.InteropServices.WindowsRuntime.dll => 0x718842dc => 3
	i32 1908813208, ; 151: Xamarin.GooglePlayServices.Basement => 0x71c62d98 => 139
	i32 1919157823, ; 152: Xamarin.AndroidX.MultiDex.dll => 0x7264063f => 101
	i32 1986222447, ; 153: Microsoft.IdentityModel.Tokens.dll => 0x7663596f => 24
	i32 2011961780, ; 154: System.Buffers.dll => 0x77ec19b4 => 37
	i32 2019465201, ; 155: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 96
	i32 2048185678, ; 156: Plugin.Media.dll => 0x7a14d54e => 32
	i32 2055257422, ; 157: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 93
	i32 2066383596, ; 158: FFImageLoading.Svg.Platform => 0x7b2a82ec => 12
	i32 2079903147, ; 159: System.Runtime.dll => 0x7bf8cdab => 48
	i32 2090596640, ; 160: System.Numerics.Vectors => 0x7c9bf920 => 45
	i32 2095474518, ; 161: Xamarin.GooglePlayServices.Auth.Base => 0x7ce66756 => 136
	i32 2097448633, ; 162: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x7d0486b9 => 89
	i32 2126786730, ; 163: Xamarin.Forms.Platform.Android => 0x7ec430aa => 130
	i32 2129483829, ; 164: Xamarin.GooglePlayServices.Base.dll => 0x7eed5835 => 138
	i32 2166116741, ; 165: Xamarin.Android.Support.Core.Utils => 0x811c5185 => 60
	i32 2174878672, ; 166: Xamarin.Firebase.Annotations => 0x81a203d0 => 120
	i32 2193016926, ; 167: System.ObjectModel.dll => 0x82b6c85e => 162
	i32 2201231467, ; 168: System.Net.Http => 0x8334206b => 43
	i32 2217644978, ; 169: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 113
	i32 2225974570, ; 170: Twilio => 0x84adad2a => 53
	i32 2244775296, ; 171: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 99
	i32 2256548716, ; 172: Xamarin.AndroidX.MultiDex => 0x8680336c => 101
	i32 2261435625, ; 173: Xamarin.AndroidX.Legacy.Support.V4.dll => 0x86cac4e9 => 91
	i32 2279755925, ; 174: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 107
	i32 2282845319, ; 175: Messier16.Forms.Android.Controls.dll => 0x88117487 => 19
	i32 2315684594, ; 176: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 67
	i32 2330457430, ; 177: Xamarin.Android.Support.Core.UI.dll => 0x8ae7f556 => 59
	i32 2340826669, ; 178: FFImageLoading.dll => 0x8b862e2d => 7
	i32 2353062107, ; 179: System.Net.Primitives => 0x8c40e0db => 156
	i32 2369706906, ; 180: Microsoft.IdentityModel.Logging => 0x8d3edb9a => 23
	i32 2373288475, ; 181: Xamarin.Android.Support.Fragment.dll => 0x8d75821b => 61
	i32 2382033717, ; 182: Xamarin.Firebase.Auth.dll => 0x8dfaf335 => 121
	i32 2409053734, ; 183: Xamarin.AndroidX.Preference.dll => 0x8f973e26 => 105
	i32 2445024337, ; 184: Xamarin.Forms.GoogleMaps.Android.dll => 0x91bc1c51 => 126
	i32 2454642406, ; 185: System.Text.Encoding.dll => 0x924edee6 => 159
	i32 2465532216, ; 186: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 78
	i32 2471841756, ; 187: netstandard.dll => 0x93554fdc => 1
	i32 2475788418, ; 188: Java.Interop.dll => 0x93918882 => 16
	i32 2501346920, ; 189: System.Data.DataSetExtensions => 0x95178668 => 145
	i32 2505896520, ; 190: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 95
	i32 2570120770, ; 191: System.Text.Encodings.Web => 0x9930ee42 => 49
	i32 2581819634, ; 192: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 114
	i32 2620871830, ; 193: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 82
	i32 2624644809, ; 194: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 86
	i32 2633051222, ; 195: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 94
	i32 2640290731, ; 196: Microsoft.IdentityModel.Logging.dll => 0x9d5fa3ab => 23
	i32 2677814565, ; 197: Plugin.MaterialDesignControls.Android.dll => 0x9f9c3525 => 30
	i32 2693849962, ; 198: System.IO.dll => 0xa090e36a => 154
	i32 2701096212, ; 199: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 111
	i32 2715334215, ; 200: System.Threading.Tasks.dll => 0xa1d8b647 => 153
	i32 2719963679, ; 201: System.Security.Cryptography.Cng.dll => 0xa21f5a1f => 2
	i32 2732626843, ; 202: Xamarin.AndroidX.Activity => 0xa2e0939b => 66
	i32 2737747696, ; 203: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 69
	i32 2766581644, ; 204: Xamarin.Forms.Core => 0xa4e6af8c => 125
	i32 2778768386, ; 205: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 116
	i32 2804607052, ; 206: Xamarin.Firebase.Components.dll => 0xa72ae84c => 124
	i32 2806986428, ; 207: Plugin.CurrentActivity.dll => 0xa74f36bc => 29
	i32 2810250172, ; 208: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 80
	i32 2819470561, ; 209: System.Xml.dll => 0xa80db4e1 => 51
	i32 2842369275, ; 210: FFImageLoading.Forms.Platform.dll => 0xa96b1cfb => 9
	i32 2844402757, ; 211: Sharpnado.Shadows.Android.dll => 0xa98a2445 => 34
	i32 2847418871, ; 212: Xamarin.GooglePlayServices.Base => 0xa9b829f7 => 138
	i32 2853208004, ; 213: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 116
	i32 2855708567, ; 214: Xamarin.AndroidX.Transition => 0xaa36a797 => 112
	i32 2861816565, ; 215: Rg.Plugins.Popup.dll => 0xaa93daf5 => 33
	i32 2873222696, ; 216: FFImageLoading => 0xab41e628 => 7
	i32 2901442782, ; 217: System.Reflection => 0xacf080de => 152
	i32 2903344695, ; 218: System.ComponentModel.Composition => 0xad0d8637 => 148
	i32 2905242038, ; 219: mscorlib.dll => 0xad2a79b6 => 26
	i32 2916838712, ; 220: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 117
	i32 2919462931, ; 221: System.Numerics.Vectors.dll => 0xae037813 => 45
	i32 2921128767, ; 222: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 68
	i32 2922925221, ; 223: Xamarin.Android.Support.Vector.Drawable.dll => 0xae384ca5 => 65
	i32 2978675010, ; 224: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 85
	i32 3004003036, ; 225: Plugin.MaterialDesignControls.dll => 0xb30d72dc => 31
	i32 3017076677, ; 226: Xamarin.GooglePlayServices.Maps => 0xb3d4efc5 => 140
	i32 3024354802, ; 227: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 90
	i32 3044182254, ; 228: FormsViewGroup => 0xb57288ee => 15
	i32 3057625584, ; 229: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 102
	i32 3058099980, ; 230: Xamarin.GooglePlayServices.Tasks => 0xb646e70c => 142
	i32 3066684652, ; 231: Xamarin.GooglePlayServices.SafetyNet.dll => 0xb6c9e4ec => 141
	i32 3071899978, ; 232: Xamarin.Firebase.Common.dll => 0xb719794a => 123
	i32 3075834255, ; 233: System.Threading.Tasks => 0xb755818f => 153
	i32 3084678329, ; 234: Microsoft.IdentityModel.Tokens => 0xb7dc74b9 => 24
	i32 3092211740, ; 235: Xamarin.Android.Support.Media.Compat.dll => 0xb84f681c => 62
	i32 3111772706, ; 236: System.Runtime.Serialization => 0xb979e222 => 6
	i32 3124832203, ; 237: System.Threading.Tasks.Extensions => 0xba4127cb => 166
	i32 3204380047, ; 238: System.Data.dll => 0xbefef58f => 143
	i32 3211777861, ; 239: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 84
	i32 3220365878, ; 240: System.Threading => 0xbff2e236 => 157
	i32 3230466174, ; 241: Xamarin.GooglePlayServices.Basement.dll => 0xc08d007e => 139
	i32 3247949154, ; 242: Mono.Security => 0xc197c562 => 165
	i32 3258312781, ; 243: Xamarin.AndroidX.CardView => 0xc235e84d => 75
	i32 3265893370, ; 244: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 166
	i32 3267021929, ; 245: Xamarin.AndroidX.AsyncLayoutInflater => 0xc2bacc69 => 73
	i32 3299363146, ; 246: System.Text.Encoding => 0xc4a8494a => 159
	i32 3312457198, ; 247: Microsoft.IdentityModel.JsonWebTokens => 0xc57015ee => 22
	i32 3317135071, ; 248: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 83
	i32 3317144872, ; 249: System.Data => 0xc5b79d28 => 143
	i32 3322403133, ; 250: Firebase.dll => 0xc607d93d => 13
	i32 3340387945, ; 251: SkiaSharp => 0xc71a4669 => 36
	i32 3340431453, ; 252: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 72
	i32 3346324047, ; 253: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 103
	i32 3352979087, ; 254: Messier16.Forms.Controls => 0xc7da668f => 20
	i32 3353484488, ; 255: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0xc7e21cc8 => 89
	i32 3353544232, ; 256: Xamarin.CommunityToolkit.dll => 0xc7e30628 => 118
	i32 3358260929, ; 257: System.Text.Json => 0xc82afec1 => 50
	i32 3362522851, ; 258: Xamarin.AndroidX.Core => 0xc86c06e3 => 81
	i32 3366347497, ; 259: Java.Interop => 0xc8a662e9 => 16
	i32 3374999561, ; 260: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 107
	i32 3395150330, ; 261: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 47
	i32 3404865022, ; 262: System.ServiceModel.Internals => 0xcaf21dfe => 150
	i32 3407215217, ; 263: Xamarin.CommunityToolkit => 0xcb15fa71 => 118
	i32 3429136800, ; 264: System.Xml => 0xcc6479a0 => 51
	i32 3430777524, ; 265: netstandard => 0xcc7d82b4 => 1
	i32 3437230454, ; 266: Uberapp.Android.dll => 0xccdff976 => 0
	i32 3439690031, ; 267: Xamarin.Android.Support.Annotations.dll => 0xcd05812f => 57
	i32 3441283291, ; 268: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 86
	i32 3459516321, ; 269: Xamarin.Forms.GoogleMaps => 0xce3407a1 => 127
	i32 3465947803, ; 270: Xamarin.GooglePlayServices.Auth.dll => 0xce962a9b => 137
	i32 3476120550, ; 271: Mono.Android => 0xcf3163e6 => 25
	i32 3485117614, ; 272: System.Text.Json.dll => 0xcfbaacae => 50
	i32 3486566296, ; 273: System.Transactions => 0xcfd0c798 => 144
	i32 3493954962, ; 274: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 77
	i32 3498942916, ; 275: Xamarin.Android.Support.v7.CardView.dll => 0xd08da1c4 => 64
	i32 3501239056, ; 276: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0xd0b0ab10 => 73
	i32 3509114376, ; 277: System.Xml.Linq => 0xd128d608 => 52
	i32 3536029504, ; 278: Xamarin.Forms.Platform.Android.dll => 0xd2c38740 => 130
	i32 3567349600, ; 279: System.ComponentModel.Composition.dll => 0xd4a16f60 => 148
	i32 3596207933, ; 280: LiteDB.dll => 0xd659c73d => 18
	i32 3602216706, ; 281: PhoneNumbers => 0xd6b57702 => 28
	i32 3608519521, ; 282: System.Linq.dll => 0xd715a361 => 161
	i32 3618140916, ; 283: Xamarin.AndroidX.Preference => 0xd7a872f4 => 105
	i32 3627220390, ; 284: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 106
	i32 3629588173, ; 285: LiteDB => 0xd8571ecd => 18
	i32 3632359727, ; 286: Xamarin.Forms.Platform => 0xd881692f => 131
	i32 3633644679, ; 287: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 68
	i32 3641597786, ; 288: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 93
	i32 3645653950, ; 289: Uberapp.dll => 0xd94c43be => 54
	i32 3655481159, ; 290: Firebase.Storage => 0xd9e23747 => 14
	i32 3672681054, ; 291: Mono.Android.dll => 0xdae8aa5e => 25
	i32 3676310014, ; 292: System.Web.Services.dll => 0xdb2009fe => 149
	i32 3678221644, ; 293: Xamarin.Android.Support.v7.AppCompat => 0xdb3d354c => 63
	i32 3682565725, ; 294: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 74
	i32 3684561358, ; 295: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 77
	i32 3684933406, ; 296: System.Runtime.InteropServices.WindowsRuntime => 0xdba39f1e => 3
	i32 3685813676, ; 297: Xamarin.Forms.Material.dll => 0xdbb10dac => 128
	i32 3689375977, ; 298: System.Drawing.Common => 0xdbe768e9 => 146
	i32 3718463572, ; 299: Xamarin.Android.Support.Animated.Vector.Drawable.dll => 0xdda34054 => 56
	i32 3718780102, ; 300: Xamarin.AndroidX.Annotation => 0xdda814c6 => 67
	i32 3724971120, ; 301: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 102
	i32 3729924096, ; 302: Xamarin.GooglePlayServices.Auth => 0xde522000 => 137
	i32 3731644420, ; 303: System.Reactive => 0xde6c6004 => 46
	i32 3758932259, ; 304: Xamarin.AndroidX.Legacy.Support.V4 => 0xe00cc123 => 91
	i32 3779127884, ; 305: Plugin.MaterialDesignControls.Android => 0xe140ea4c => 30
	i32 3786282454, ; 306: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 76
	i32 3788547076, ; 307: Sharpnado.Shadows.Android => 0xe1d0a404 => 34
	i32 3822602673, ; 308: Xamarin.AndroidX.Media => 0xe3d849b1 => 100
	i32 3829621856, ; 309: System.Numerics.dll => 0xe4436460 => 44
	i32 3883175360, ; 310: Xamarin.Android.Support.v7.AppCompat.dll => 0xe7748dc0 => 63
	i32 3885922214, ; 311: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 112
	i32 3896760992, ; 312: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 81
	i32 3912468689, ; 313: FFImageLoading.Svg.Platform.dll => 0xe93388d1 => 12
	i32 3920810846, ; 314: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 147
	i32 3921031405, ; 315: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 115
	i32 3929187773, ; 316: Firebase.Storage.dll => 0xea32a5bd => 14
	i32 3931092270, ; 317: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 104
	i32 3945713374, ; 318: System.Data.DataSetExtensions.dll => 0xeb2ecede => 145
	i32 3955647286, ; 319: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 70
	i32 3970018735, ; 320: Xamarin.GooglePlayServices.Tasks.dll => 0xeca1adaf => 142
	i32 3991193666, ; 321: Xamarin.GooglePlayServices.Auth.Base.dll => 0xede4c842 => 136
	i32 4025784931, ; 322: System.Memory => 0xeff49a63 => 164
	i32 4073602200, ; 323: System.Threading.dll => 0xf2ce3c98 => 157
	i32 4105002889, ; 324: Mono.Security.dll => 0xf4ad5f89 => 165
	i32 4151237749, ; 325: System.Core => 0xf76edc75 => 39
	i32 4182413190, ; 326: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 97
	i32 4184283386, ; 327: FFImageLoading.Platform.dll => 0xf96718fa => 10
	i32 4219003402, ; 328: Xamarin.Android.Support.v7.CardView => 0xfb78e20a => 64
	i32 4260525087, ; 329: System.Buffers => 0xfdf2741f => 37
	i32 4263231520, ; 330: System.IdentityModel.Tokens.Jwt.dll => 0xfe1bc020 => 41
	i32 4278134329, ; 331: Xamarin.GooglePlayServices.Maps.dll => 0xfeff2639 => 140
	i32 4284549794, ; 332: Xamarin.Firebase.Components => 0xff610aa2 => 124
	i32 4292120959 ; 333: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 97
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [334 x i32] [
	i32 95, i32 134, i32 27, i32 125, i32 109, i32 120, i32 109, i32 55, ; 0..7
	i32 76, i32 58, i32 110, i32 74, i32 155, i32 20, i32 90, i32 163, ; 8..15
	i32 149, i32 79, i32 94, i32 88, i32 135, i32 66, i32 44, i32 92, ; 16..23
	i32 54, i32 128, i32 164, i32 56, i32 59, i32 13, i32 55, i32 141, ; 24..31
	i32 78, i32 119, i32 151, i32 87, i32 26, i32 40, i32 88, i32 99, ; 32..39
	i32 0, i32 162, i32 58, i32 10, i32 36, i32 144, i32 158, i32 21, ; 40..47
	i32 2, i32 11, i32 135, i32 147, i32 46, i32 17, i32 83, i32 28, ; 48..55
	i32 49, i32 115, i32 71, i32 35, i32 52, i32 57, i32 42, i32 146, ; 56..63
	i32 106, i32 11, i32 163, i32 33, i32 134, i32 27, i32 29, i32 62, ; 64..71
	i32 92, i32 15, i32 151, i32 108, i32 70, i32 131, i32 96, i32 40, ; 72..79
	i32 32, i32 121, i32 35, i32 113, i32 103, i32 71, i32 114, i32 129, ; 80..87
	i32 85, i32 161, i32 123, i32 127, i32 154, i32 150, i32 126, i32 108, ; 88..95
	i32 4, i32 100, i32 80, i32 47, i32 122, i32 61, i32 158, i32 132, ; 96..103
	i32 41, i32 38, i32 42, i32 69, i32 38, i32 22, i32 129, i32 9, ; 104..111
	i32 53, i32 160, i32 5, i32 60, i32 84, i32 6, i32 19, i32 98, ; 112..119
	i32 117, i32 82, i32 43, i32 160, i32 48, i32 111, i32 133, i32 65, ; 120..127
	i32 79, i32 156, i32 17, i32 155, i32 152, i32 75, i32 5, i32 110, ; 128..135
	i32 39, i32 87, i32 8, i32 21, i32 98, i32 133, i32 104, i32 8, ; 136..143
	i32 119, i32 122, i32 31, i32 132, i32 72, i32 4, i32 3, i32 139, ; 144..151
	i32 101, i32 24, i32 37, i32 96, i32 32, i32 93, i32 12, i32 48, ; 152..159
	i32 45, i32 136, i32 89, i32 130, i32 138, i32 60, i32 120, i32 162, ; 160..167
	i32 43, i32 113, i32 53, i32 99, i32 101, i32 91, i32 107, i32 19, ; 168..175
	i32 67, i32 59, i32 7, i32 156, i32 23, i32 61, i32 121, i32 105, ; 176..183
	i32 126, i32 159, i32 78, i32 1, i32 16, i32 145, i32 95, i32 49, ; 184..191
	i32 114, i32 82, i32 86, i32 94, i32 23, i32 30, i32 154, i32 111, ; 192..199
	i32 153, i32 2, i32 66, i32 69, i32 125, i32 116, i32 124, i32 29, ; 200..207
	i32 80, i32 51, i32 9, i32 34, i32 138, i32 116, i32 112, i32 33, ; 208..215
	i32 7, i32 152, i32 148, i32 26, i32 117, i32 45, i32 68, i32 65, ; 216..223
	i32 85, i32 31, i32 140, i32 90, i32 15, i32 102, i32 142, i32 141, ; 224..231
	i32 123, i32 153, i32 24, i32 62, i32 6, i32 166, i32 143, i32 84, ; 232..239
	i32 157, i32 139, i32 165, i32 75, i32 166, i32 73, i32 159, i32 22, ; 240..247
	i32 83, i32 143, i32 13, i32 36, i32 72, i32 103, i32 20, i32 89, ; 248..255
	i32 118, i32 50, i32 81, i32 16, i32 107, i32 47, i32 150, i32 118, ; 256..263
	i32 51, i32 1, i32 0, i32 57, i32 86, i32 127, i32 137, i32 25, ; 264..271
	i32 50, i32 144, i32 77, i32 64, i32 73, i32 52, i32 130, i32 148, ; 272..279
	i32 18, i32 28, i32 161, i32 105, i32 106, i32 18, i32 131, i32 68, ; 280..287
	i32 93, i32 54, i32 14, i32 25, i32 149, i32 63, i32 74, i32 77, ; 288..295
	i32 3, i32 128, i32 146, i32 56, i32 67, i32 102, i32 137, i32 46, ; 296..303
	i32 91, i32 30, i32 76, i32 34, i32 100, i32 44, i32 63, i32 112, ; 304..311
	i32 81, i32 12, i32 147, i32 115, i32 14, i32 104, i32 145, i32 70, ; 312..319
	i32 142, i32 136, i32 164, i32 157, i32 165, i32 39, i32 97, i32 10, ; 320..327
	i32 64, i32 37, i32 41, i32 140, i32 124, i32 97 ; 328..333
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 4; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 4

; Function attributes: "frame-pointer"="all" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" uwtable willreturn writeonly
define void @xamarin_app_init (void (i32, i32, i32, i8**)* %fn) local_unnamed_addr #0
{
	store void (i32, i32, i32, i8**)* %fn, void (i32, i32, i32, i8**)** @get_function_pointer, align 4
	ret void
}

; Names of classes in which marshal methods reside
@mm_class_names = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 4
@__MarshalMethodName_name.0 = internal constant [1 x i8] c"\00", align 1

; mm_method_names
@mm_method_names = local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	; 0
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		i8* getelementptr inbounds ([1 x i8], [1 x i8]* @__MarshalMethodName_name.0, i32 0, i32 0); name
	}
], align 8; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="all" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="all" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"min_enum_size", i32 4}
!3 = !{!"Xamarin.Android remotes/origin/d17-5 @ 45b0e144f73b2c8747d8b5ec8cbd3b55beca67f0"}
!llvm.linker.options = !{}
