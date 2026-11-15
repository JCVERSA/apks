package androidx.window.embedding;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Intent;
import androidx.window.core.ActivityComponentInfo;
import com.transsion.hubsdk.api.provider.TranSearchIndexablesContract;
import defpackage.g1a;
import defpackage.j1a;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\b\bÀ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u001f\u0010\b\u001a\u00020\u00072\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\b\u0010\tJ!\u0010\u000f\u001a\u00020\u00072\b\u0010\u000b\u001a\u0004\u0018\u00010\n2\u0006\u0010\f\u001a\u00020\nH\u0000¢\u0006\u0004\b\r\u0010\u000eJ\u001f\u0010\u0014\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\f\u001a\u00020\nH\u0000¢\u0006\u0004\b\u0012\u0010\u0013J\u001f\u0010\u0019\u001a\u00020\u00072\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\f\u001a\u00020\nH\u0000¢\u0006\u0004\b\u0017\u0010\u0018J\u001f\u0010\u001f\u001a\u00020\u001c2\u0006\u0010\u001a\u001a\u00020\u00042\u0006\u0010\u001b\u001a\u00020\u0004H\u0000¢\u0006\u0004\b\u001d\u0010\u001eR\u0014\u0010 \u001a\u00020\u00078\u0000X\u0080T¢\u0006\u0006\n\u0004\b \u0010!R\u0014\u0010\"\u001a\u00020\u00048\u0000X\u0080T¢\u0006\u0006\n\u0004\b\"\u0010#¨\u0006$"}, d2 = {"Landroidx/window/embedding/MatcherUtils;", "", MethodDecl.initName, "()V", "", "name", "pattern", "", "wildcardMatch", "(Ljava/lang/String;Ljava/lang/String;)Z", "Landroidx/window/core/ActivityComponentInfo;", "activityComponent", "ruleComponent", "areComponentsMatching$window_release", "(Landroidx/window/core/ActivityComponentInfo;Landroidx/window/core/ActivityComponentInfo;)Z", "areComponentsMatching", "Landroid/app/Activity;", "activity", "isActivityMatching$window_release", "(Landroid/app/Activity;Landroidx/window/core/ActivityComponentInfo;)Z", "isActivityMatching", "Landroid/content/Intent;", "intent", "isIntentMatching$window_release", "(Landroid/content/Intent;Landroidx/window/core/ActivityComponentInfo;)Z", "isIntentMatching", "packageName", TranSearchIndexablesContract.TranBaseColumns.COLUMN_CLASS_NAME, "Lzfb;", "validateComponentName$window_release", "(Ljava/lang/String;Ljava/lang/String;)V", "validateComponentName", "sDebugMatchers", "Z", "sMatchersTag", "Ljava/lang/String;", "window_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class MatcherUtils {
    public static final MatcherUtils INSTANCE = new MatcherUtils();
    public static final boolean sDebugMatchers = false;
    public static final String sMatchersTag = "SplitRuleResolution";

    private MatcherUtils() {
    }

    private final boolean wildcardMatch(String name, String pattern) {
        if (!j1a.X(pattern, "*", false, 2, null)) {
            return false;
        }
        if (y45.e(pattern, "*")) {
            return true;
        }
        if (j1a.m0(pattern, "*", 0, false, 6, null) != j1a.s0(pattern, "*", 0, false, 6, null) || !g1a.D(pattern, "*", false, 2, null)) {
            throw new IllegalArgumentException("Name pattern with a wildcard must only contain a single wildcard in the end");
        }
        String strSubstring = pattern.substring(0, pattern.length() - 1);
        y45.i(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
        return g1a.R(name, strSubstring, false, 2, null);
    }

    public final boolean areComponentsMatching$window_release(ActivityComponentInfo activityComponent, ActivityComponentInfo ruleComponent) {
        y45.j(ruleComponent, "ruleComponent");
        if (activityComponent == null) {
            return y45.e(ruleComponent.getPackageName(), "*") && y45.e(ruleComponent.getClassName(), "*");
        }
        if (j1a.X(activityComponent.toString(), "*", false, 2, null)) {
            throw new IllegalArgumentException("Wildcard can only be part of the rule.");
        }
        return (y45.e(activityComponent.getPackageName(), ruleComponent.getPackageName()) || wildcardMatch(activityComponent.getPackageName(), ruleComponent.getPackageName())) && (y45.e(activityComponent.getClassName(), ruleComponent.getClassName()) || wildcardMatch(activityComponent.getClassName(), ruleComponent.getClassName()));
    }

    public final boolean isActivityMatching$window_release(Activity activity, ActivityComponentInfo ruleComponent) {
        y45.j(activity, "activity");
        y45.j(ruleComponent, "ruleComponent");
        ComponentName componentName = activity.getComponentName();
        y45.i(componentName, "activity.componentName");
        if (areComponentsMatching$window_release(new ActivityComponentInfo(componentName), ruleComponent)) {
            return true;
        }
        Intent intent = activity.getIntent();
        if (intent != null) {
            return INSTANCE.isIntentMatching$window_release(intent, ruleComponent);
        }
        return false;
    }

    public final boolean isIntentMatching$window_release(Intent intent, ActivityComponentInfo ruleComponent) {
        String str;
        y45.j(intent, "intent");
        y45.j(ruleComponent, "ruleComponent");
        ComponentName component = intent.getComponent();
        if (areComponentsMatching$window_release(component != null ? new ActivityComponentInfo(component) : null, ruleComponent)) {
            return true;
        }
        if (intent.getComponent() == null && (str = intent.getPackage()) != null) {
            return (y45.e(str, ruleComponent.getPackageName()) || wildcardMatch(str, ruleComponent.getPackageName())) && y45.e(ruleComponent.getClassName(), "*");
        }
        return false;
    }

    public final void validateComponentName$window_release(String packageName, String className) {
        y45.j(packageName, "packageName");
        y45.j(className, TranSearchIndexablesContract.TranBaseColumns.COLUMN_CLASS_NAME);
        if (packageName.length() <= 0) {
            throw new IllegalArgumentException("Package name must not be empty");
        }
        if (className.length() <= 0) {
            throw new IllegalArgumentException("Activity class name must not be empty");
        }
        if (j1a.X(packageName, "*", false, 2, null) && j1a.m0(packageName, "*", 0, false, 6, null) != packageName.length() - 1) {
            throw new IllegalArgumentException("Wildcard in package name is only allowed at the end.");
        }
        if (j1a.X(className, "*", false, 2, null) && j1a.m0(className, "*", 0, false, 6, null) != className.length() - 1) {
            throw new IllegalArgumentException("Wildcard in class name is only allowed at the end.");
        }
    }
}
