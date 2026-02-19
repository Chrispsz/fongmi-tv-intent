# Minimalist FongMi TV ProGuard Rules
# Remove unused code for M3U8-only player

# === FIX: xpp3 XML parser conflict ===
-dontwarn org.xmlpull.v1.**
-keep class org.xmlpull.v1.** { *; }
-keep interface org.xmlpull.v1.** { *; }

# Keep essential classes
-keep class com.fongmi.android.tv.App { *; }
-keep class com.fongmi.android.tv.Setting { *; }
-keep class com.fongmi.android.tv.ui.activity.VideoActivity { *; }
-keep class com.fongmi.android.tv.ui.activity.ExternalPlayActivity { *; }
-keep class com.fongmi.android.tv.player.** { *; }

# Keep ExoPlayer (essential for M3U8 playback)
-keep class com.google.android.exoplayer2.** { *; }
-dontwarn com.google.android.exoplayer2.**

# === REMOVE FEATURES ===

# Remove Danmaku (Chinese comments)
-assumenosideeffects class com.fongmi.android.tv.ui.danmaku.** { *; }

# Remove Cast/Chromecast
-assumenosideeffects class com.google.android.gms.cast.** { *; }
-assumenosideeffects class androidx.mediarouter.** { *; }
-dontwarn com.google.android.gms.cast.**

# Remove Torrent/P2P/Spiders
-assumenosideeffects class com.github.catvod.spider.** { *; }
-assumenosideeffects class com.github.catvod.torrent.** { *; }
-dontwarn com.github.catvod.**

# Remove Chinese sources
-assumenosideeffects class com.fongmi.android.tv.api.** { *; }

# Remove EPG (TV Guide)
-assumenosideeffects class com.fongmi.android.tv.epg.** { *; }

# Remove unused activities
-assumenosideeffects class com.fongmi.android.tv.ui.activity.DetailActivity { *; }
-assumenosideeffects class com.fongmi.android.tv.ui.activity.SearchActivity { *; }
-assumenosideeffects class com.fongmi.android.tv.ui.activity.HistoryActivity { *; }
-assumenosideeffects class com.fongmi.android.tv.ui.activity.UpdateActivity { *; }

# === OPTIMIZATION ===

-optimizationpasses 5
-dontusemixedcaseclassnames
-verbose

# Remove logging
-assumenosideeffects class android.util.Log {
    public static int v(...);
    public static int i(...);
    public static int d(...);
    public static int w(...);
}

# Keep native methods
-keepclasseswithmembernames class * {
    native <methods>;
}

# Keep Parcelable/Serializable
-keepclassmembers class * implements android.os.Parcelable {
    public static final android.os.Parcelable$Creator CREATOR;
}
-keepclassmembers class * implements java.io.Serializable {
    static final long serialVersionUID;
}
