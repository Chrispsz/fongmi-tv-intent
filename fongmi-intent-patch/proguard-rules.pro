# Minimalist FongMi TV ProGuard Rules
# Remove unused code for M3U8-only player
# NO SUBTITLES - Closed Caption comes embedded in stream

# Keep essential classes
-keep class com.fongmi.android.tv.App { *; }
-keep class com.fongmi.android.tv.Setting { *; }
-keep class com.fongmi.android.tv.ui.activity.VideoActivity { *; }
-keep class com.fongmi.android.tv.ui.activity.ExternalPlayActivity { *; }
-keep class com.fongmi.android.tv.player.** { *; }

# Keep ExoPlayer (essential for M3U8 playback)
-keep class com.google.android.exoplayer2.** { *; }

# === REMOVE FEATURES ===

# Remove Subtitle System (use embedded CC only)
-assumenosideeffects class com.fongmi.android.tv.ui.subtitle.** {
    *;
}
-assumenosideeffects class com.fongmi.android.tv.player.subtitle.** {
    *;
}
# Remove subtitle parsers (.srt, .ass, .vtt)
-assumenosideeffects class com.google.android.exoplayer2.text.** {
    *;
}
-assumenosideeffects class com.google.android.exoplayer2.text.srt.** {
    *;
}
-assumenosideeffects class com.google.android.exoplayer2.text.ass.** {
    *;
}
-assumenosideeffects class com.google.android.exoplayer2.text.webvtt.** {
    *;
}

# Remove Danmaku (Chinese comments)
-assumenosideeffects class com.fongmi.android.tv.ui.danmaku.** {
    *;
}

# Remove Cast/Chromecast
-assumenosideeffects class com.google.android.gms.cast.** {
    *;
}
-assumenosideeffects class androidx.mediarouter.** {
    *;
}

# Remove Torrent/P2P
-assumenosideeffects class com.github.catvod.spider.** {
    *;
}
-assumenosideeffects class com.github.catvod.torrent.** {
    *;
}

# Remove Chinese spiders and sources
-assumenosideeffects class com.fongmi.android.tv.api.** {
    *;
}

# Remove EPG (TV Guide)
-assumenosideeffects class com.fongmi.android.tv.epg.** {
    *;
}

# Remove unused activities
-assumenosideeffects class com.fongmi.android.tv.ui.activity.DetailActivity {
    *;
}
-assumenosideeffects class com.fongmi.android.tv.ui.activity.SearchActivity {
    *;
}
-assumenosideeffects class com.fongmi.android.tv.ui.activity.HistoryActivity {
    *;
}

# Remove update checker
-assumenosideeffects class com.fongmi.android.tv.ui.activity.UpdateActivity {
    *;
}

# === OPTIMIZATION ===

# Optimize aggressively
-optimizationpasses 5
-dontusemixedcaseclassnames
-dontskipnonpubliclibraryclasses
-verbose

# Optimization settings
-optimizations !code/simplification/arithmetic,!field/*,!class/merging/*,!code/allocation/variable

# Remove logging in release
-assumenosideeffects class android.util.Log {
    public static boolean isLoggable(java.lang.String, int);
    public static int v(...);
    public static int i(...);
    public static int w(...);
    public static int d(...);
}

# Keep native methods
-keepclasseswithmembernames class * {
    native <methods>;
}

# Keep custom views (except subtitle/danmaku)
-keep public class * extends android.view.View {
    public <init>(android.content.Context);
    public <init>(android.content.Context, android.util.AttributeSet);
    public <init>(android.content.Context, android.util.AttributeSet, int);
}

# Keep Parcelable
-keepclassmembers class * implements android.os.Parcelable {
    public static final android.os.Parcelable$Creator CREATOR;
}

# Keep Serializable
-keepclassmembers class * implements java.io.Serializable {
    static final long serialVersionUID;
    private static final java.io.ObjectStreamField[] serialPersistentFields;
    private void writeObject(java.io.ObjectOutputStream);
    private void readObject(java.io.ObjectInputStream);
    java.lang.Object writeReplace();
    java.lang.Object readResolve();
}
