package androidx.p003activity;

import android.content.res.Resources;
import android.graphics.Color;
import android.os.Build;
import android.view.View;
import android.view.Window;
import androidx.annotation.VisibleForTesting;
import defpackage.e74;
import defpackage.y45;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a'\u0010\u0007\u001a\u00020\u0004*\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00012\b\b\u0002\u0010\u0003\u001a\u00020\u0001H\u0007¢\u0006\u0004\b\u0005\u0010\u0006\" \u0010\t\u001a\u00020\b8\u0000X\u0081\u0004¢\u0006\u0012\n\u0004\b\t\u0010\n\u0012\u0004\b\r\u0010\u000e\u001a\u0004\b\u000b\u0010\f\" \u0010\u000f\u001a\u00020\b8\u0000X\u0081\u0004¢\u0006\u0012\n\u0004\b\u000f\u0010\n\u0012\u0004\b\u0011\u0010\u000e\u001a\u0004\b\u0010\u0010\f\"\u0018\u0010\u0013\u001a\u0004\u0018\u00010\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014¨\u0006\u0015"}, d2 = {"Landroidx/activity/ComponentActivity;", "Landroidx/activity/SystemBarStyle;", "statusBarStyle", "navigationBarStyle", "Lzfb;", "enable", "(Landroidx/activity/ComponentActivity;Landroidx/activity/SystemBarStyle;Landroidx/activity/SystemBarStyle;)V", "enableEdgeToEdge", "", "DefaultLightScrim", "I", "getDefaultLightScrim", "()I", "getDefaultLightScrim$annotations", "()V", "DefaultDarkScrim", "getDefaultDarkScrim", "getDefaultDarkScrim$annotations", "Landroidx/activity/EdgeToEdgeImpl;", "Impl", "Landroidx/activity/EdgeToEdgeImpl;", "activity_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
public final class EdgeToEdge {
    private static EdgeToEdgeImpl Impl;
    private static final int DefaultLightScrim = Color.argb(230, 255, 255, 255);
    private static final int DefaultDarkScrim = Color.argb(128, 27, 27, 27);

    public static final void enable(ComponentActivity componentActivity) {
        y45.j(componentActivity, "<this>");
        enable$default(componentActivity, null, null, 3, null);
    }

    public static void enable$default(ComponentActivity componentActivity, SystemBarStyle systemBarStyle, SystemBarStyle systemBarStyle2, int i, Object obj) {
        if ((i & 1) != 0) {
            systemBarStyle = SystemBarStyle.Companion.auto$default(SystemBarStyle.INSTANCE, 0, 0, null, 4, null);
        }
        if ((i & 2) != 0) {
            systemBarStyle2 = SystemBarStyle.Companion.auto$default(SystemBarStyle.INSTANCE, DefaultLightScrim, DefaultDarkScrim, null, 4, null);
        }
        enable(componentActivity, systemBarStyle, systemBarStyle2);
    }

    public static final int getDefaultDarkScrim() {
        return DefaultDarkScrim;
    }

    @VisibleForTesting
    public static void getDefaultDarkScrim$annotations() {
    }

    public static final int getDefaultLightScrim() {
        return DefaultLightScrim;
    }

    @VisibleForTesting
    public static void getDefaultLightScrim$annotations() {
    }

    public static final void enable(ComponentActivity componentActivity, SystemBarStyle systemBarStyle) {
        y45.j(componentActivity, "<this>");
        y45.j(systemBarStyle, "statusBarStyle");
        enable$default(componentActivity, systemBarStyle, null, 2, null);
    }

    public static final void enable(ComponentActivity componentActivity, SystemBarStyle systemBarStyle, SystemBarStyle systemBarStyle2) {
        y45.j(componentActivity, "<this>");
        y45.j(systemBarStyle, "statusBarStyle");
        y45.j(systemBarStyle2, "navigationBarStyle");
        View decorView = componentActivity.getWindow().getDecorView();
        y45.i(decorView, "window.decorView");
        e74 detectDarkMode = systemBarStyle.getDetectDarkMode();
        Resources resources = decorView.getResources();
        y45.i(resources, "view.resources");
        boolean zBooleanValue = ((Boolean) detectDarkMode.invoke(resources)).booleanValue();
        e74 detectDarkMode2 = systemBarStyle2.getDetectDarkMode();
        Resources resources2 = decorView.getResources();
        y45.i(resources2, "view.resources");
        boolean zBooleanValue2 = ((Boolean) detectDarkMode2.invoke(resources2)).booleanValue();
        EdgeToEdgeImpl edgeToEdgeApi29 = Impl;
        if (edgeToEdgeApi29 == null) {
            if (Build.VERSION.SDK_INT >= 30) {
                edgeToEdgeApi29 = new EdgeToEdgeApi30();
            } else {
                edgeToEdgeApi29 = new EdgeToEdgeApi29();
            }
        }
        Window window = componentActivity.getWindow();
        y45.i(window, "window");
        edgeToEdgeApi29.setUp(systemBarStyle, systemBarStyle2, window, decorView, zBooleanValue, zBooleanValue2);
        Window window2 = componentActivity.getWindow();
        y45.i(window2, "window");
        edgeToEdgeApi29.adjustLayoutInDisplayCutoutMode(window2);
    }
}
