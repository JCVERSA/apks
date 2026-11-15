package androidx.window.embedding;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Intent;
import androidx.window.core.ActivityComponentInfo;
import com.transsion.hubsdk.api.provider.TranSearchIndexablesContract;
import defpackage.y45;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0019\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006B\u0019\b\u0000\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\tJ\u0013\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\b\u0010\u0013\u001a\u00020\u0014H\u0016J\u000e\u0010\u0015\u001a\u00020\u00112\u0006\u0010\u0016\u001a\u00020\u0017J\u000e\u0010\u0018\u001a\u00020\u00112\u0006\u0010\u0019\u001a\u00020\u001aJ\b\u0010\u001b\u001a\u00020\u0005H\u0016R\u0014\u0010\u0007\u001a\u00020\bX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0002\u001a\u00020\u00038F¢\u0006\u0006\u001a\u0004\b\f\u0010\rR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u001c"}, d2 = {"Landroidx/window/embedding/ActivityFilter;", "", "componentName", "Landroid/content/ComponentName;", TranSearchIndexablesContract.TranBaseColumns.COLUMN_INTENT_ACTION, "", "(Landroid/content/ComponentName;Ljava/lang/String;)V", "activityComponentInfo", "Landroidx/window/core/ActivityComponentInfo;", "(Landroidx/window/core/ActivityComponentInfo;Ljava/lang/String;)V", "getActivityComponentInfo$window_release", "()Landroidx/window/core/ActivityComponentInfo;", "getComponentName", "()Landroid/content/ComponentName;", "getIntentAction", "()Ljava/lang/String;", "equals", "", "other", "hashCode", "", "matchesActivity", "activity", "Landroid/app/Activity;", "matchesIntent", "intent", "Landroid/content/Intent;", "toString", "window_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class ActivityFilter {

    private final ActivityComponentInfo componentName;
    private final String intentAction;

    public ActivityFilter(ActivityComponentInfo activityComponentInfo, String str) {
        y45.j(activityComponentInfo, "activityComponentInfo");
        this.componentName = activityComponentInfo;
        this.intentAction = str;
        MatcherUtils.INSTANCE.validateComponentName$window_release(activityComponentInfo.getPackageName(), activityComponentInfo.getClassName());
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ActivityFilter)) {
            return false;
        }
        ActivityFilter activityFilter = (ActivityFilter) other;
        return y45.e(this.componentName, activityFilter.componentName) && y45.e(this.intentAction, activityFilter.intentAction);
    }

    public final ActivityComponentInfo getComponentName() {
        return this.componentName;
    }

    public final ComponentName getComponentName() {
        return new ComponentName(this.componentName.getPackageName(), this.componentName.getClassName());
    }

    public final String getIntentAction() {
        return this.intentAction;
    }

    public int hashCode() {
        int iHashCode = this.componentName.hashCode() * 31;
        String str = this.intentAction;
        return iHashCode + (str != null ? str.hashCode() : 0);
    }

    public final boolean matchesActivity(Activity activity) {
        y45.j(activity, "activity");
        if (MatcherUtils.INSTANCE.isActivityMatching$window_release(activity, this.componentName)) {
            String str = this.intentAction;
            if (str != null) {
                Intent intent = activity.getIntent();
                if (y45.e(str, intent != null ? intent.getAction() : null)) {
                }
            }
            return true;
        }
        return false;
    }

    public final boolean matchesIntent(Intent intent) {
        y45.j(intent, "intent");
        if (!MatcherUtils.INSTANCE.isIntentMatching$window_release(intent, this.componentName)) {
            return false;
        }
        String str = this.intentAction;
        return str == null || y45.e(str, intent.getAction());
    }

    public String toString() {
        return "ActivityFilter(componentName=" + this.componentName + ", intentAction=" + this.intentAction + ')';
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ActivityFilter(ComponentName componentName, String str) {
        this(new ActivityComponentInfo(componentName), str);
        y45.j(componentName, "componentName");
    }
}
