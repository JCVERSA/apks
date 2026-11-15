package androidx.fragment.app;

import android.view.ViewGroup;
import androidx.fragment.app.strictmode.FragmentStrictMode;
import androidx.p009lifecycle.Lifecycle;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Iterator;

public abstract class w {

    private final h f9164a;

    private final ClassLoader f9165b;

    ArrayList f9166c;

    int f9167d;

    int f9168e;

    int f9169f;

    int f9170g;

    int f9171h;

    boolean f9172i;

    boolean f9173j;

    String f9174k;

    int f9175l;

    CharSequence f9176m;

    int f9177n;

    CharSequence f9178o;

    ArrayList f9179p;

    ArrayList f9180q;

    boolean f9181r;

    ArrayList f9182s;

    static final class a {

        int f9183a;

        Fragment f9184b;

        boolean f9185c;

        int f9186d;

        int f9187e;

        int f9188f;

        int f9189g;

        Lifecycle.State f9190h;

        Lifecycle.State f9191i;

        a() {
        }

        a(int i10, Fragment fragment) {
            this.f9183a = i10;
            this.f9184b = fragment;
            this.f9185c = false;
            Lifecycle.State state = Lifecycle.State.RESUMED;
            this.f9190h = state;
            this.f9191i = state;
        }

        a(int i10, Fragment fragment, boolean z10) {
            this.f9183a = i10;
            this.f9184b = fragment;
            this.f9185c = z10;
            Lifecycle.State state = Lifecycle.State.RESUMED;
            this.f9190h = state;
            this.f9191i = state;
        }

        a(int i10, Fragment fragment, Lifecycle.State state) {
            this.f9183a = i10;
            this.f9184b = fragment;
            this.f9185c = false;
            this.f9190h = fragment.mMaxState;
            this.f9191i = state;
        }

        a(a aVar) {
            this.f9183a = aVar.f9183a;
            this.f9184b = aVar.f9184b;
            this.f9185c = aVar.f9185c;
            this.f9186d = aVar.f9186d;
            this.f9187e = aVar.f9187e;
            this.f9188f = aVar.f9188f;
            this.f9189g = aVar.f9189g;
            this.f9190h = aVar.f9190h;
            this.f9191i = aVar.f9191i;
        }
    }

    @Deprecated
    public w() {
        this.f9166c = new ArrayList();
        this.f9173j = true;
        this.f9181r = false;
        this.f9164a = null;
        this.f9165b = null;
    }

    public w b(int i10, Fragment fragment) {
        o(i10, fragment, null, 1);
        return this;
    }

    public w c(int i10, Fragment fragment, String str) {
        o(i10, fragment, str, 1);
        return this;
    }

    w d(ViewGroup viewGroup, Fragment fragment, String str) {
        fragment.mContainer = viewGroup;
        return c(viewGroup.getId(), fragment, str);
    }

    public w e(Fragment fragment, String str) {
        o(0, fragment, str, 1);
        return this;
    }

    void f(a aVar) {
        this.f9166c.add(aVar);
        aVar.f9186d = this.f9167d;
        aVar.f9187e = this.f9168e;
        aVar.f9188f = this.f9169f;
        aVar.f9189g = this.f9170g;
    }

    public w g(String str) {
        if (!this.f9173j) {
            throw new IllegalStateException("This FragmentTransaction is not allowed to be added to the back stack.");
        }
        this.f9172i = true;
        this.f9174k = str;
        return this;
    }

    public w h(Fragment fragment) {
        f(new a(7, fragment));
        return this;
    }

    public abstract int i();

    public abstract int j();

    public abstract void k();

    public abstract void l();

    public w m(Fragment fragment) {
        f(new a(6, fragment));
        return this;
    }

    public w n() {
        if (this.f9172i) {
            throw new IllegalStateException("This transaction is already being added to the back stack");
        }
        this.f9173j = false;
        return this;
    }

    void o(int i10, Fragment fragment, String str, int i11) {
        String str2 = fragment.mPreviousWho;
        if (str2 != null) {
            FragmentStrictMode.f(fragment, str2);
        }
        Class<?> cls = fragment.getClass();
        int modifiers = cls.getModifiers();
        if (cls.isAnonymousClass() || !Modifier.isPublic(modifiers) || (cls.isMemberClass() && !Modifier.isStatic(modifiers))) {
            throw new IllegalStateException("Fragment " + cls.getCanonicalName() + " must be a public static class to be  properly recreated from instance state.");
        }
        if (str != null) {
            String str3 = fragment.mTag;
            if (str3 != null && !str.equals(str3)) {
                throw new IllegalStateException("Can't change tag of fragment " + fragment + ": was " + fragment.mTag + " now " + str);
            }
            fragment.mTag = str;
        }
        if (i10 != 0) {
            if (i10 == -1) {
                throw new IllegalArgumentException("Can't add fragment " + fragment + " with tag " + str + " to container view with no id");
            }
            int i12 = fragment.mFragmentId;
            if (i12 != 0 && i12 != i10) {
                throw new IllegalStateException("Can't change container ID of fragment " + fragment + ": was " + fragment.mFragmentId + " now " + i10);
            }
            fragment.mFragmentId = i10;
            fragment.mContainerId = i10;
        }
        f(new a(i11, fragment));
    }

    public w p(Fragment fragment) {
        f(new a(4, fragment));
        return this;
    }

    public boolean q() {
        return this.f9166c.isEmpty();
    }

    public w r(Fragment fragment) {
        f(new a(3, fragment));
        return this;
    }

    public w s(int i10, Fragment fragment) {
        return t(i10, fragment, null);
    }

    public w t(int i10, Fragment fragment, String str) {
        if (i10 == 0) {
            throw new IllegalArgumentException("Must use non-zero containerViewId");
        }
        o(i10, fragment, str, 2);
        return this;
    }

    public w u(int i10, int i11, int i12, int i13) {
        this.f9167d = i10;
        this.f9168e = i11;
        this.f9169f = i12;
        this.f9170g = i13;
        return this;
    }

    public w v(Fragment fragment, Lifecycle.State state) {
        f(new a(10, fragment, state));
        return this;
    }

    public w w(Fragment fragment) {
        f(new a(8, fragment));
        return this;
    }

    public w x(boolean z10) {
        this.f9181r = z10;
        return this;
    }

    public w y(Fragment fragment) {
        f(new a(5, fragment));
        return this;
    }

    w(h hVar, ClassLoader classLoader) {
        this.f9166c = new ArrayList();
        this.f9173j = true;
        this.f9181r = false;
        this.f9164a = hVar;
        this.f9165b = classLoader;
    }

    w(h hVar, ClassLoader classLoader, w wVar) {
        this(hVar, classLoader);
        Iterator it = wVar.f9166c.iterator();
        while (it.hasNext()) {
            this.f9166c.add(new a((a) it.next()));
        }
        this.f9167d = wVar.f9167d;
        this.f9168e = wVar.f9168e;
        this.f9169f = wVar.f9169f;
        this.f9170g = wVar.f9170g;
        this.f9171h = wVar.f9171h;
        this.f9172i = wVar.f9172i;
        this.f9173j = wVar.f9173j;
        this.f9174k = wVar.f9174k;
        this.f9177n = wVar.f9177n;
        this.f9178o = wVar.f9178o;
        this.f9175l = wVar.f9175l;
        this.f9176m = wVar.f9176m;
        if (wVar.f9179p != null) {
            ArrayList arrayList = new ArrayList();
            this.f9179p = arrayList;
            arrayList.addAll(wVar.f9179p);
        }
        if (wVar.f9180q != null) {
            ArrayList arrayList2 = new ArrayList();
            this.f9180q = arrayList2;
            arrayList2.addAll(wVar.f9180q);
        }
        this.f9181r = wVar.f9181r;
    }
}
