package io.appmetrica.analytics.coreutils.internal.services;

import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import io.appmetrica.analytics.coreutils.internal.reflection.ReflectionUtils;
import io.appmetrica.analytics.plugins.PluginErrorDetails;

public class FrameworkDetector {
    private static final String a = new FrameworkDetector().detectFramework();

    @VisibleForTesting
    public FrameworkDetector() {
    }

    @NonNull
    public static String framework() {
        return a;
    }

    public static boolean isNative() {
        return PluginErrorDetails.Platform.NATIVE.equals(a);
    }

    @NonNull
    @VisibleForTesting
    public String detectFramework() {
        if (ReflectionUtils.detectClassExists("com.unity3d.player.UnityPlayer")) {
            return PluginErrorDetails.Platform.UNITY;
        }
        if (ReflectionUtils.detectClassExists("mono.MonoPackageManager")) {
            return PluginErrorDetails.Platform.XAMARIN;
        }
        if (ReflectionUtils.detectClassExists("org.apache.cordova.CordovaPlugin")) {
            return PluginErrorDetails.Platform.CORDOVA;
        }
        if (ReflectionUtils.detectClassExists("com.facebook.react.ReactRootView")) {
            return "react";
        }
        return ReflectionUtils.detectClassExists("io.flutter.embedding.engine.FlutterEngine") ? PluginErrorDetails.Platform.FLUTTER : PluginErrorDetails.Platform.NATIVE;
    }
}
