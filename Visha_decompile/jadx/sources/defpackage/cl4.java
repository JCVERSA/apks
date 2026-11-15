package defpackage;

import android.app.Activity;
import android.graphics.Rect;
import android.os.Handler;
import android.os.Message;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import androidx.core.app.NotificationCompat;
import com.wh.stat.layout.StatLayout;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class cl4 {
    public View a;
    public fx9 b;
    public boolean c;
    public e e;
    public ArrayList d = new ArrayList();
    public Handler f = new c();

    public class a implements ViewTreeObserver.OnWindowFocusChangeListener {
        public a() {
        }

        @Override
        public void onWindowFocusChanged(boolean z) {
            if (z) {
                cl4.this.o();
            }
        }
    }

    public class b implements ViewTreeObserver.OnScrollChangedListener {
        public b() {
        }

        @Override
        public void onScrollChanged() {
            boolean z = cl4.this.c;
        }
    }

    public class c extends Handler {
        public c() {
        }

        @Override
        public void handleMessage(Message message) {
            super.handleMessage(message);
            int i = message.what;
            if (i == 1) {
                cl4.this.n();
            } else if (i == 2) {
                cl4.this.o();
            }
        }
    }

    public static class d {
        public static final cl4 a = new cl4();
    }

    public interface e {
        void a(ArrayList arrayList);
    }

    public static cl4 f() {
        return d.a;
    }

    public void a(Activity activity) {
        if (j(activity)) {
            this.a = activity.getWindow().getDecorView().getRootView();
            if (this.b.g()) {
                this.a.getViewTreeObserver().addOnWindowFocusChangeListener(new a());
            }
            this.a.getViewTreeObserver().addOnScrollChangedListener(new b());
        }
    }

    public void b() {
        this.c = false;
        this.f.removeCallbacksAndMessages(null);
    }

    public void c() {
        ArrayList arrayList = this.d;
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        this.d.clear();
    }

    public StatLayout d() {
        View view = this.a;
        if (!(view instanceof ViewGroup)) {
            return null;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = viewGroup.getChildAt(i);
            if (childAt instanceof StatLayout) {
                return (StatLayout) childAt;
            }
        }
        return null;
    }

    public fx9 e() {
        return this.b;
    }

    public int g() {
        return this.b.e();
    }

    public int h() {
        return this.b.a;
    }

    public void i(fx9 fx9Var) {
        if (fx9Var == null) {
            throw new NullPointerException("请使用StatBuilder构建类进行初始化");
        }
        this.b = fx9Var;
        if (fx9Var.e() == 0) {
            throw new NullPointerException("StatBuilder在构建时需要初始化ID：setTagId(R.id.xxx)");
        }
        g5 g5Var = new g5();
        if (!(this.b.a() instanceof lu4)) {
            throw new ClassCastException("Application没有实现IContext接口");
        }
        ((lu4) this.b.a()).registerActivityLifecycleCallbacks(g5Var);
        DisplayMetrics displayMetrics = new DisplayMetrics();
        ((WindowManager) this.b.a().getSystemService("window")).getDefaultDisplay().getRealMetrics(displayMetrics);
        if (this.b.d() == null) {
            this.b.o(new Rect(0, 0, displayMetrics.widthPixels, displayMetrics.heightPixels));
        }
    }

    public boolean j(Activity activity) {
        List listC = this.b.c();
        if (listC == null || listC.isEmpty()) {
            return true;
        }
        String canonicalName = activity.getClass().getCanonicalName();
        return canonicalName != null && listC.contains(canonicalName);
    }

    public boolean k(View view) {
        return m(view);
    }

    public final boolean l() {
        return this.b.i();
    }

    public boolean m(View view) {
        return view.getTag(g()) != null;
    }

    public void n() {
        StatLayout statLayoutD = d();
        if (statLayoutD != null) {
            ArrayList arrayList = new ArrayList();
            for (View view : statLayoutD.findDisplayView(this.a)) {
                view.getId();
                if (k(view) && statLayoutD.isViewValidRange(view)) {
                    if (l()) {
                        arrayList.add(view);
                    } else if (((String) view.getTag(h())) == null) {
                        arrayList.add(view);
                        view.setTag(h(), NotificationCompat.CATEGORY_MESSAGE);
                    }
                }
            }
            if (arrayList.size() <= 0) {
                this.d.clear();
                return;
            }
            ArrayList arrayList2 = new ArrayList();
            arrayList2.clear();
            arrayList2.addAll(arrayList);
            Iterator it = this.d.iterator();
            while (it.hasNext()) {
                arrayList2.remove((View) it.next());
            }
            this.d.clear();
            this.d.addAll(arrayList);
            e eVar = this.e;
            if (eVar != null) {
                eVar.a(arrayList2);
            }
        }
    }

    public void o() {
        b();
        this.c = false;
        this.f.sendEmptyMessageDelayed(1, this.b.b());
    }

    public void p() {
        b();
        this.c = true;
        this.f.sendEmptyMessageDelayed(2, this.b.b);
    }

    public void q(e eVar) {
        this.e = eVar;
    }

    public void r() {
        this.a = null;
    }
}
