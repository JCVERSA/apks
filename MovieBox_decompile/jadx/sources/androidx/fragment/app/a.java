package androidx.fragment.app;

import android.util.Log;
import androidx.p009lifecycle.Lifecycle;
import java.io.PrintWriter;
import java.util.ArrayList;

final class a extends w implements FragmentManager.m {

    final FragmentManager f9110t;

    boolean f9111u;

    int f9112v;

    boolean f9113w;

    a(FragmentManager fragmentManager) {
        super(fragmentManager.w0(), fragmentManager.z0() != null ? fragmentManager.z0().f().getClassLoader() : null);
        this.f9112v = -1;
        this.f9113w = false;
        this.f9110t = fragmentManager;
    }

    void A() {
        int size = this.f9166c.size() - 1;
        while (size >= 0) {
            w.a aVar = (w.a) this.f9166c.get(size);
            if (aVar.f9185c) {
                if (aVar.f9183a == 8) {
                    aVar.f9185c = false;
                    this.f9166c.remove(size - 1);
                    size--;
                } else {
                    int i10 = aVar.f9184b.mContainerId;
                    aVar.f9183a = 2;
                    aVar.f9185c = false;
                    for (int i11 = size - 1; i11 >= 0; i11--) {
                        w.a aVar2 = (w.a) this.f9166c.get(i11);
                        if (aVar2.f9185c && aVar2.f9184b.mContainerId == i10) {
                            this.f9166c.remove(i11);
                            size--;
                        }
                    }
                }
            }
            size--;
        }
    }

    int B(boolean z10) {
        if (this.f9111u) {
            throw new IllegalStateException("commit already called");
        }
        if (FragmentManager.M0(2)) {
            Log.v("FragmentManager", "Commit: " + this);
            PrintWriter printWriter = new PrintWriter(new a0("FragmentManager"));
            C("  ", printWriter);
            printWriter.close();
        }
        this.f9111u = true;
        if (this.f9172i) {
            this.f9112v = this.f9110t.m();
        } else {
            this.f9112v = -1;
        }
        this.f9110t.a0(this, z10);
        return this.f9112v;
    }

    public void C(String str, PrintWriter printWriter) {
        D(str, printWriter, true);
    }

    public void D(String str, PrintWriter printWriter, boolean z10) {
        String str2;
        if (z10) {
            printWriter.print(str);
            printWriter.print("mName=");
            printWriter.print(this.f9174k);
            printWriter.print(" mIndex=");
            printWriter.print(this.f9112v);
            printWriter.print(" mCommitted=");
            printWriter.println(this.f9111u);
            if (this.f9171h != 0) {
                printWriter.print(str);
                printWriter.print("mTransition=#");
                printWriter.print(Integer.toHexString(this.f9171h));
            }
            if (this.f9167d != 0 || this.f9168e != 0) {
                printWriter.print(str);
                printWriter.print("mEnterAnim=#");
                printWriter.print(Integer.toHexString(this.f9167d));
                printWriter.print(" mExitAnim=#");
                printWriter.println(Integer.toHexString(this.f9168e));
            }
            if (this.f9169f != 0 || this.f9170g != 0) {
                printWriter.print(str);
                printWriter.print("mPopEnterAnim=#");
                printWriter.print(Integer.toHexString(this.f9169f));
                printWriter.print(" mPopExitAnim=#");
                printWriter.println(Integer.toHexString(this.f9170g));
            }
            if (this.f9175l != 0 || this.f9176m != null) {
                printWriter.print(str);
                printWriter.print("mBreadCrumbTitleRes=#");
                printWriter.print(Integer.toHexString(this.f9175l));
                printWriter.print(" mBreadCrumbTitleText=");
                printWriter.println(this.f9176m);
            }
            if (this.f9177n != 0 || this.f9178o != null) {
                printWriter.print(str);
                printWriter.print("mBreadCrumbShortTitleRes=#");
                printWriter.print(Integer.toHexString(this.f9177n));
                printWriter.print(" mBreadCrumbShortTitleText=");
                printWriter.println(this.f9178o);
            }
        }
        if (this.f9166c.isEmpty()) {
            return;
        }
        printWriter.print(str);
        printWriter.println("Operations:");
        int size = this.f9166c.size();
        for (int i10 = 0; i10 < size; i10++) {
            w.a aVar = (w.a) this.f9166c.get(i10);
            switch (aVar.f9183a) {
                case 0:
                    str2 = "NULL";
                    break;
                case 1:
                    str2 = "ADD";
                    break;
                case 2:
                    str2 = "REPLACE";
                    break;
                case 3:
                    str2 = "REMOVE";
                    break;
                case 4:
                    str2 = "HIDE";
                    break;
                case 5:
                    str2 = "SHOW";
                    break;
                case 6:
                    str2 = "DETACH";
                    break;
                case 7:
                    str2 = "ATTACH";
                    break;
                case 8:
                    str2 = "SET_PRIMARY_NAV";
                    break;
                case 9:
                    str2 = "UNSET_PRIMARY_NAV";
                    break;
                case 10:
                    str2 = "OP_SET_MAX_LIFECYCLE";
                    break;
                default:
                    str2 = "cmd=" + aVar.f9183a;
                    break;
            }
            printWriter.print(str);
            printWriter.print("  Op #");
            printWriter.print(i10);
            printWriter.print(": ");
            printWriter.print(str2);
            printWriter.print(" ");
            printWriter.println(aVar.f9184b);
            if (z10) {
                if (aVar.f9186d != 0 || aVar.f9187e != 0) {
                    printWriter.print(str);
                    printWriter.print("enterAnim=#");
                    printWriter.print(Integer.toHexString(aVar.f9186d));
                    printWriter.print(" exitAnim=#");
                    printWriter.println(Integer.toHexString(aVar.f9187e));
                }
                if (aVar.f9188f != 0 || aVar.f9189g != 0) {
                    printWriter.print(str);
                    printWriter.print("popEnterAnim=#");
                    printWriter.print(Integer.toHexString(aVar.f9188f));
                    printWriter.print(" popExitAnim=#");
                    printWriter.println(Integer.toHexString(aVar.f9189g));
                }
            }
        }
    }

    void E() {
        int size = this.f9166c.size();
        for (int i10 = 0; i10 < size; i10++) {
            w.a aVar = (w.a) this.f9166c.get(i10);
            Fragment fragment = aVar.f9184b;
            if (fragment != null) {
                fragment.mBeingSaved = this.f9113w;
                fragment.setPopDirection(false);
                fragment.setNextTransition(this.f9171h);
                fragment.setSharedElementNames(this.f9179p, this.f9180q);
            }
            switch (aVar.f9183a) {
                case 1:
                    fragment.setAnimations(aVar.f9186d, aVar.f9187e, aVar.f9188f, aVar.f9189g);
                    this.f9110t.D1(fragment, false);
                    this.f9110t.j(fragment);
                    break;
                case 2:
                default:
                    throw new IllegalArgumentException("Unknown cmd: " + aVar.f9183a);
                case 3:
                    fragment.setAnimations(aVar.f9186d, aVar.f9187e, aVar.f9188f, aVar.f9189g);
                    this.f9110t.q1(fragment);
                    break;
                case 4:
                    fragment.setAnimations(aVar.f9186d, aVar.f9187e, aVar.f9188f, aVar.f9189g);
                    this.f9110t.J0(fragment);
                    break;
                case 5:
                    fragment.setAnimations(aVar.f9186d, aVar.f9187e, aVar.f9188f, aVar.f9189g);
                    this.f9110t.D1(fragment, false);
                    this.f9110t.K1(fragment);
                    break;
                case 6:
                    fragment.setAnimations(aVar.f9186d, aVar.f9187e, aVar.f9188f, aVar.f9189g);
                    this.f9110t.y(fragment);
                    break;
                case 7:
                    fragment.setAnimations(aVar.f9186d, aVar.f9187e, aVar.f9188f, aVar.f9189g);
                    this.f9110t.D1(fragment, false);
                    this.f9110t.o(fragment);
                    break;
                case 8:
                    this.f9110t.I1(fragment);
                    break;
                case 9:
                    this.f9110t.I1(null);
                    break;
                case 10:
                    this.f9110t.H1(fragment, aVar.f9191i);
                    break;
            }
        }
    }

    void F() {
        for (int size = this.f9166c.size() - 1; size >= 0; size--) {
            w.a aVar = (w.a) this.f9166c.get(size);
            Fragment fragment = aVar.f9184b;
            if (fragment != null) {
                fragment.mBeingSaved = this.f9113w;
                fragment.setPopDirection(true);
                fragment.setNextTransition(FragmentManager.x1(this.f9171h));
                fragment.setSharedElementNames(this.f9180q, this.f9179p);
            }
            switch (aVar.f9183a) {
                case 1:
                    fragment.setAnimations(aVar.f9186d, aVar.f9187e, aVar.f9188f, aVar.f9189g);
                    this.f9110t.D1(fragment, true);
                    this.f9110t.q1(fragment);
                    break;
                case 2:
                default:
                    throw new IllegalArgumentException("Unknown cmd: " + aVar.f9183a);
                case 3:
                    fragment.setAnimations(aVar.f9186d, aVar.f9187e, aVar.f9188f, aVar.f9189g);
                    this.f9110t.j(fragment);
                    break;
                case 4:
                    fragment.setAnimations(aVar.f9186d, aVar.f9187e, aVar.f9188f, aVar.f9189g);
                    this.f9110t.K1(fragment);
                    break;
                case 5:
                    fragment.setAnimations(aVar.f9186d, aVar.f9187e, aVar.f9188f, aVar.f9189g);
                    this.f9110t.D1(fragment, true);
                    this.f9110t.J0(fragment);
                    break;
                case 6:
                    fragment.setAnimations(aVar.f9186d, aVar.f9187e, aVar.f9188f, aVar.f9189g);
                    this.f9110t.o(fragment);
                    break;
                case 7:
                    fragment.setAnimations(aVar.f9186d, aVar.f9187e, aVar.f9188f, aVar.f9189g);
                    this.f9110t.D1(fragment, true);
                    this.f9110t.y(fragment);
                    break;
                case 8:
                    this.f9110t.I1(null);
                    break;
                case 9:
                    this.f9110t.I1(fragment);
                    break;
                case 10:
                    this.f9110t.H1(fragment, aVar.f9190h);
                    break;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:34:0x00b6  */
    Fragment G(ArrayList arrayList, Fragment fragment) {
        Fragment fragment2 = fragment;
        int i10 = 0;
        while (i10 < this.f9166c.size()) {
            w.a aVar = (w.a) this.f9166c.get(i10);
            int i11 = aVar.f9183a;
            if (i11 == 1) {
                arrayList.add(aVar.f9184b);
            } else if (i11 == 2) {
                Fragment fragment3 = aVar.f9184b;
                int i12 = fragment3.mContainerId;
                boolean z10 = false;
                for (int size = arrayList.size() - 1; size >= 0; size--) {
                    Fragment fragment4 = (Fragment) arrayList.get(size);
                    if (fragment4.mContainerId == i12) {
                        if (fragment4 == fragment3) {
                            z10 = true;
                        } else {
                            if (fragment4 == fragment2) {
                                this.f9166c.add(i10, new w.a(9, fragment4, true));
                                i10++;
                                fragment2 = null;
                            }
                            w.a aVar2 = new w.a(3, fragment4, true);
                            aVar2.f9186d = aVar.f9186d;
                            aVar2.f9188f = aVar.f9188f;
                            aVar2.f9187e = aVar.f9187e;
                            aVar2.f9189g = aVar.f9189g;
                            this.f9166c.add(i10, aVar2);
                            arrayList.remove(fragment4);
                            i10++;
                        }
                    }
                }
                if (z10) {
                    this.f9166c.remove(i10);
                    i10--;
                } else {
                    aVar.f9183a = 1;
                    aVar.f9185c = true;
                    arrayList.add(fragment3);
                }
            } else if (i11 == 3 || i11 == 6) {
                arrayList.remove(aVar.f9184b);
                Fragment fragment5 = aVar.f9184b;
                if (fragment5 == fragment2) {
                    this.f9166c.add(i10, new w.a(9, fragment5));
                    i10++;
                    fragment2 = null;
                }
            } else if (i11 == 7) {
                arrayList.add(aVar.f9184b);
            } else if (i11 == 8) {
                this.f9166c.add(i10, new w.a(9, fragment2, true));
                aVar.f9185c = true;
                i10++;
                fragment2 = aVar.f9184b;
            }
            i10++;
        }
        return fragment2;
    }

    public String H() {
        return this.f9174k;
    }

    public void I() {
        if (this.f9182s != null) {
            for (int i10 = 0; i10 < this.f9182s.size(); i10++) {
                ((Runnable) this.f9182s.get(i10)).run();
            }
            this.f9182s = null;
        }
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0027  */
    /* JADX WARN: Code duplicated, block: B:14:0x002d  */
    Fragment J(ArrayList arrayList, Fragment fragment) {
        for (int size = this.f9166c.size() - 1; size >= 0; size--) {
            w.a aVar = (w.a) this.f9166c.get(size);
            int i10 = aVar.f9183a;
            if (i10 == 1) {
                arrayList.remove(aVar.f9184b);
            } else if (i10 != 3) {
                switch (i10) {
                    case 6:
                        arrayList.add(aVar.f9184b);
                        break;
                    case 7:
                        arrayList.remove(aVar.f9184b);
                        break;
                    case 8:
                        fragment = null;
                        break;
                    case 9:
                        fragment = aVar.f9184b;
                        break;
                    case 10:
                        aVar.f9191i = aVar.f9190h;
                        break;
                }
            } else {
                arrayList.add(aVar.f9184b);
            }
        }
        return fragment;
    }

    @Override
    public boolean a(ArrayList arrayList, ArrayList arrayList2) {
        if (FragmentManager.M0(2)) {
            Log.v("FragmentManager", "Run: " + this);
        }
        arrayList.add(this);
        arrayList2.add(Boolean.FALSE);
        if (!this.f9172i) {
            return true;
        }
        this.f9110t.i(this);
        return true;
    }

    @Override
    public int i() {
        return B(false);
    }

    @Override
    public int j() {
        return B(true);
    }

    @Override
    public void k() {
        n();
        this.f9110t.d0(this, false);
    }

    @Override
    public void l() {
        n();
        this.f9110t.d0(this, true);
    }

    @Override
    public w m(Fragment fragment) {
        FragmentManager fragmentManager = fragment.mFragmentManager;
        if (fragmentManager == null || fragmentManager == this.f9110t) {
            return super.m(fragment);
        }
        throw new IllegalStateException("Cannot detach Fragment attached to a different FragmentManager. Fragment " + fragment.toString() + " is already attached to a FragmentManager.");
    }

    @Override
    void o(int i10, Fragment fragment, String str, int i11) {
        super.o(i10, fragment, str, i11);
        fragment.mFragmentManager = this.f9110t;
    }

    @Override
    public w p(Fragment fragment) {
        FragmentManager fragmentManager = fragment.mFragmentManager;
        if (fragmentManager == null || fragmentManager == this.f9110t) {
            return super.p(fragment);
        }
        throw new IllegalStateException("Cannot hide Fragment attached to a different FragmentManager. Fragment " + fragment.toString() + " is already attached to a FragmentManager.");
    }

    @Override
    public boolean q() {
        return this.f9166c.isEmpty();
    }

    @Override
    public w r(Fragment fragment) {
        FragmentManager fragmentManager = fragment.mFragmentManager;
        if (fragmentManager == null || fragmentManager == this.f9110t) {
            return super.r(fragment);
        }
        throw new IllegalStateException("Cannot remove Fragment attached to a different FragmentManager. Fragment " + fragment.toString() + " is already attached to a FragmentManager.");
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder(128);
        sb2.append("BackStackEntry{");
        sb2.append(Integer.toHexString(System.identityHashCode(this)));
        if (this.f9112v >= 0) {
            sb2.append(" #");
            sb2.append(this.f9112v);
        }
        if (this.f9174k != null) {
            sb2.append(" ");
            sb2.append(this.f9174k);
        }
        sb2.append("}");
        return sb2.toString();
    }

    @Override
    public w v(Fragment fragment, Lifecycle.State state) {
        if (fragment.mFragmentManager != this.f9110t) {
            throw new IllegalArgumentException("Cannot setMaxLifecycle for Fragment not attached to FragmentManager " + this.f9110t);
        }
        if (state == Lifecycle.State.INITIALIZED && fragment.mState > -1) {
            throw new IllegalArgumentException("Cannot set maximum Lifecycle to " + state + " after the Fragment has been created");
        }
        if (state != Lifecycle.State.DESTROYED) {
            return super.v(fragment, state);
        }
        throw new IllegalArgumentException("Cannot set maximum Lifecycle to " + state + ". Use remove() to remove the fragment from the FragmentManager and trigger its destruction.");
    }

    @Override
    public w w(Fragment fragment) {
        FragmentManager fragmentManager;
        if (fragment == null || (fragmentManager = fragment.mFragmentManager) == null || fragmentManager == this.f9110t) {
            return super.w(fragment);
        }
        throw new IllegalStateException("Cannot setPrimaryNavigation for Fragment attached to a different FragmentManager. Fragment " + fragment.toString() + " is already attached to a FragmentManager.");
    }

    @Override
    public w y(Fragment fragment) {
        FragmentManager fragmentManager = fragment.mFragmentManager;
        if (fragmentManager == null || fragmentManager == this.f9110t) {
            return super.y(fragment);
        }
        throw new IllegalStateException("Cannot show Fragment attached to a different FragmentManager. Fragment " + fragment.toString() + " is already attached to a FragmentManager.");
    }

    void z(int i10) {
        if (this.f9172i) {
            if (FragmentManager.M0(2)) {
                Log.v("FragmentManager", "Bump nesting in " + this + " by " + i10);
            }
            int size = this.f9166c.size();
            for (int i11 = 0; i11 < size; i11++) {
                w.a aVar = (w.a) this.f9166c.get(i11);
                Fragment fragment = aVar.f9184b;
                if (fragment != null) {
                    fragment.mBackStackNesting += i10;
                    if (FragmentManager.M0(2)) {
                        Log.v("FragmentManager", "Bump nesting of " + aVar.f9184b + " to " + aVar.f9184b.mBackStackNesting);
                    }
                }
            }
        }
    }

    a(a aVar) {
        super(aVar.f9110t.w0(), aVar.f9110t.z0() != null ? aVar.f9110t.z0().f().getClassLoader() : null, aVar);
        this.f9112v = -1;
        this.f9113w = false;
        this.f9110t = aVar.f9110t;
        this.f9111u = aVar.f9111u;
        this.f9112v = aVar.f9112v;
        this.f9113w = aVar.f9113w;
    }
}
