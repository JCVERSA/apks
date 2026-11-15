package androidx.core.app;

import android.app.Activity;
import android.app.ActivityOptions;
import android.content.Context;
import android.os.Bundle;
import android.util.Pair;
import android.view.View;

public abstract class c {

    private static class a extends c {

        private final ActivityOptions f7758a;

        a(ActivityOptions activityOptions) {
            this.f7758a = activityOptions;
        }

        @Override
        public Bundle c() {
            return this.f7758a.toBundle();
        }
    }

    protected c() {
    }

    public static c a(Context context, int i10, int i11) {
        return new a(ActivityOptions.makeCustomAnimation(context, i10, i11));
    }

    public static c b(Activity activity, androidx.core.util.e... eVarArr) {
        Pair[] pairArr;
        if (eVarArr != null) {
            pairArr = new Pair[eVarArr.length];
            for (int i10 = 0; i10 < eVarArr.length; i10++) {
                androidx.core.util.e eVar = eVarArr[i10];
                pairArr[i10] = Pair.create((View) eVar.f7958a, (String) eVar.f7959b);
            }
        } else {
            pairArr = null;
        }
        return new a(ActivityOptions.makeSceneTransitionAnimation(activity, pairArr));
    }

    public abstract Bundle c();
}
