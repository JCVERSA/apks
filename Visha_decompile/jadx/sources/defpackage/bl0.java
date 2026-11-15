package defpackage;

import android.app.Activity;
import android.app.Fragment;
import android.text.TextUtils;
import android.view.View;
import com.app.hubert.guide.core.Controller;
import com.app.hubert.guide.model.a;
import java.util.ArrayList;
import java.util.List;

public class bl0 {
    public Activity a;
    public Fragment b;
    public androidx.fragment.app.Fragment c;
    public String d;
    public boolean e;
    public View f;
    public se7 h;
    public int g = 1;
    public List i = new ArrayList();

    public bl0(androidx.fragment.app.Fragment fragment) {
        this.c = fragment;
        this.a = fragment.getActivity();
    }

    public bl0 a(a aVar) {
        this.i.add(aVar);
        return this;
    }

    public bl0 b(boolean z) {
        this.e = z;
        return this;
    }

    public Controller c() {
        d();
        return new Controller(this);
    }

    public final void d() {
        if (TextUtils.isEmpty(this.d)) {
            throw new IllegalArgumentException("the param 'label' is missing, please call setLabel()");
        }
        if (this.a == null) {
            if (this.b != null || this.c != null) {
                throw new IllegalStateException("activity is null, please make sure that fragment is showing when call NewbieGuide");
            }
        }
    }

    public bl0 e(String str) {
        this.d = str;
        return this;
    }

    public bl0 f(se7 se7Var) {
        this.h = se7Var;
        return this;
    }
}
