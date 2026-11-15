package androidx.window.core;

import android.content.ComponentName;
import com.transsion.hubsdk.api.provider.TranSearchIndexablesContract;
import defpackage.y45;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0000\u0018\u00002\u00020\u0001B\u000f\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004B\u0015\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0002\u0010\bJ\u0013\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\b\u0010\u000f\u001a\u00020\u0010H\u0016J\b\u0010\u0011\u001a\u00020\u0006H\u0016R\u0011\u0010\u0007\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\n¨\u0006\u0012"}, d2 = {"Landroidx/window/core/ActivityComponentInfo;", "", "componentName", "Landroid/content/ComponentName;", "(Landroid/content/ComponentName;)V", "packageName", "", TranSearchIndexablesContract.TranBaseColumns.COLUMN_CLASS_NAME, "(Ljava/lang/String;Ljava/lang/String;)V", "getClassName", "()Ljava/lang/String;", "getPackageName", "equals", "", "other", "hashCode", "", "toString", "window_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class ActivityComponentInfo {
    private final String className;
    private final String packageName;

    public ActivityComponentInfo(String str, String str2) {
        y45.j(str, "packageName");
        y45.j(str2, TranSearchIndexablesContract.TranBaseColumns.COLUMN_CLASS_NAME);
        this.packageName = str;
        this.className = str2;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!y45.e(ActivityComponentInfo.class, other != null ? other.getClass() : null)) {
            return false;
        }
        y45.h(other, "null cannot be cast to non-null type androidx.window.core.ActivityComponentInfo");
        ActivityComponentInfo activityComponentInfo = (ActivityComponentInfo) other;
        return y45.e(this.packageName, activityComponentInfo.packageName) && y45.e(this.className, activityComponentInfo.className);
    }

    public final String getClassName() {
        return this.className;
    }

    public final String getPackageName() {
        return this.packageName;
    }

    public int hashCode() {
        return (this.packageName.hashCode() * 31) + this.className.hashCode();
    }

    public String toString() {
        return "ClassInfo { packageName: " + this.packageName + ", className: " + this.className + " }";
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public ActivityComponentInfo(ComponentName componentName) {
        y45.j(componentName, "componentName");
        String packageName = componentName.getPackageName();
        y45.i(packageName, "componentName.packageName");
        String className = componentName.getClassName();
        y45.i(className, "componentName.className");
        this(packageName, className);
    }
}
