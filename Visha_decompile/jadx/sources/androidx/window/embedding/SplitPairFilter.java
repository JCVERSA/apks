package androidx.window.embedding;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Intent;
import androidx.window.core.ActivityComponentInfo;
import defpackage.y45;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B!\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\u0002\u0010\u0007B!\b\u0000\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\t\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\u0002\u0010\u000bJ\u0013\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\b\u0010\u0014\u001a\u00020\u0015H\u0016J\u0016\u0010\u0016\u001a\u00020\u00122\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001aJ\u0016\u0010\u001b\u001a\u00020\u00122\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u001c\u001a\u00020\u0018J\b\u0010\u001d\u001a\u00020\u0006H\u0016R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\u0002\u001a\u00020\u00038F¢\u0006\u0006\u001a\u0004\b\f\u0010\rR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0011\u0010\u0004\u001a\u00020\u00038F¢\u0006\u0006\u001a\u0004\b\u0010\u0010\r¨\u0006\u001e"}, d2 = {"Landroidx/window/embedding/SplitPairFilter;", "", "primaryActivityName", "Landroid/content/ComponentName;", "secondaryActivityName", "secondaryActivityIntentAction", "", "(Landroid/content/ComponentName;Landroid/content/ComponentName;Ljava/lang/String;)V", "_primaryActivityName", "Landroidx/window/core/ActivityComponentInfo;", "_secondaryActivityName", "(Landroidx/window/core/ActivityComponentInfo;Landroidx/window/core/ActivityComponentInfo;Ljava/lang/String;)V", "getPrimaryActivityName", "()Landroid/content/ComponentName;", "getSecondaryActivityIntentAction", "()Ljava/lang/String;", "getSecondaryActivityName", "equals", "", "other", "hashCode", "", "matchesActivityIntentPair", "primaryActivity", "Landroid/app/Activity;", "secondaryActivityIntent", "Landroid/content/Intent;", "matchesActivityPair", "secondaryActivity", "toString", "window_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class SplitPairFilter {
    private final ActivityComponentInfo _primaryActivityName;
    private final ActivityComponentInfo _secondaryActivityName;

    private final String secondaryActivityAction;

    public SplitPairFilter(ActivityComponentInfo activityComponentInfo, ActivityComponentInfo activityComponentInfo2, String str) {
        y45.j(activityComponentInfo, "_primaryActivityName");
        y45.j(activityComponentInfo2, "_secondaryActivityName");
        this._primaryActivityName = activityComponentInfo;
        this._secondaryActivityName = activityComponentInfo2;
        this.secondaryActivityAction = str;
        MatcherUtils matcherUtils = MatcherUtils.INSTANCE;
        matcherUtils.validateComponentName$window_release(activityComponentInfo.getPackageName(), activityComponentInfo.getClassName());
        matcherUtils.validateComponentName$window_release(activityComponentInfo2.getPackageName(), activityComponentInfo2.getClassName());
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!y45.e(SplitPairFilter.class, other != null ? other.getClass() : null)) {
            return false;
        }
        y45.h(other, "null cannot be cast to non-null type androidx.window.embedding.SplitPairFilter");
        SplitPairFilter splitPairFilter = (SplitPairFilter) other;
        return y45.e(this._primaryActivityName, splitPairFilter._primaryActivityName) && y45.e(this._secondaryActivityName, splitPairFilter._secondaryActivityName) && y45.e(this.secondaryActivityAction, splitPairFilter.secondaryActivityAction);
    }

    public final ComponentName getPrimaryActivityName() {
        return new ComponentName(this._primaryActivityName.getPackageName(), this._primaryActivityName.getClassName());
    }

    public final String getSecondaryActivityAction() {
        return this.secondaryActivityAction;
    }

    public final ComponentName getSecondaryActivityName() {
        return new ComponentName(this._secondaryActivityName.getPackageName(), this._secondaryActivityName.getClassName());
    }

    public int hashCode() {
        int iHashCode = ((this._primaryActivityName.hashCode() * 31) + this._secondaryActivityName.hashCode()) * 31;
        String str = this.secondaryActivityAction;
        return iHashCode + (str != null ? str.hashCode() : 0);
    }

    public final boolean matchesActivityIntentPair(Activity primaryActivity, Intent secondaryActivityIntent) {
        y45.j(primaryActivity, "primaryActivity");
        y45.j(secondaryActivityIntent, "secondaryActivityIntent");
        MatcherUtils matcherUtils = MatcherUtils.INSTANCE;
        if (!matcherUtils.isActivityMatching$window_release(primaryActivity, this._primaryActivityName) || !matcherUtils.isIntentMatching$window_release(secondaryActivityIntent, this._secondaryActivityName)) {
            return false;
        }
        String str = this.secondaryActivityAction;
        return str == null || y45.e(str, secondaryActivityIntent.getAction());
    }

    public final boolean matchesActivityPair(Activity primaryActivity, Activity secondaryActivity) {
        y45.j(primaryActivity, "primaryActivity");
        y45.j(secondaryActivity, "secondaryActivity");
        MatcherUtils matcherUtils = MatcherUtils.INSTANCE;
        if (!matcherUtils.isActivityMatching$window_release(primaryActivity, this._primaryActivityName) || !matcherUtils.isActivityMatching$window_release(secondaryActivity, this._secondaryActivityName)) {
            return false;
        }
        String str = this.secondaryActivityAction;
        if (str != null) {
            Intent intent = secondaryActivity.getIntent();
            if (!y45.e(str, intent != null ? intent.getAction() : null)) {
                return false;
            }
        }
        return true;
    }

    public String toString() {
        return "SplitPairFilter{primaryActivityName=" + getPrimaryActivityName() + ", secondaryActivityName=" + getSecondaryActivityName() + ", secondaryActivityAction=" + this.secondaryActivityAction + '}';
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SplitPairFilter(ComponentName componentName, ComponentName componentName2, String str) {
        this(new ActivityComponentInfo(componentName), new ActivityComponentInfo(componentName2), str);
        y45.j(componentName, "primaryActivityName");
        y45.j(componentName2, "secondaryActivityName");
    }
}
