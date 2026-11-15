package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.IntentSender;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.Looper;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import androidx.activity.OnBackPressedDispatcher;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.ActivityResultRegistry;
import androidx.activity.result.IntentSenderRequest;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.InputDeviceCompat;
import androidx.core.view.MenuHost;
import androidx.core.view.MenuProvider;
import androidx.fragment.R$id;
import androidx.fragment.app.strictmode.FragmentStrictMode;
import androidx.p009lifecycle.Lifecycle;
import androidx.p009lifecycle.x0;
import androidx.p009lifecycle.y0;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicInteger;

public abstract class FragmentManager {
    private static boolean S;
    private androidx.activity.result.b D;
    private androidx.activity.result.b E;
    private androidx.activity.result.b F;
    private boolean H;
    private boolean I;
    private boolean J;
    private boolean K;
    private boolean L;
    private ArrayList M;
    private ArrayList N;
    private ArrayList O;
    private r P;
    private FragmentStrictMode.b Q;

    private boolean f8996b;

    ArrayList f8998d;

    private ArrayList f8999e;

    private OnBackPressedDispatcher f9001g;

    private ArrayList f9007m;

    private androidx.fragment.app.i f9016v;

    private androidx.fragment.app.f f9017w;

    private Fragment f9018x;

    Fragment f9019y;

    private final ArrayList f8995a = new ArrayList();

    private final v f8997c = new v();

    private final androidx.fragment.app.j f9000f = new androidx.fragment.app.j(this);

    private final androidx.activity.u f9002h = new b(false);

    private final AtomicInteger f9003i = new AtomicInteger();

    private final Map f9004j = Collections.synchronizedMap(new HashMap());

    private final Map f9005k = Collections.synchronizedMap(new HashMap());

    private final Map f9006l = Collections.synchronizedMap(new HashMap());

    private final androidx.fragment.app.k f9008n = new androidx.fragment.app.k(this);

    private final CopyOnWriteArrayList f9009o = new CopyOnWriteArrayList();

    private final androidx.core.util.a f9010p = new androidx.core.util.a() {
        @Override
        public final void accept(Object obj) {
            this.f9133a.V0((Configuration) obj);
        }
    };

    private final androidx.core.util.a f9011q = new androidx.core.util.a() {
        @Override
        public final void accept(Object obj) {
            this.f9134a.W0((Integer) obj);
        }
    };

    private final androidx.core.util.a f9012r = new androidx.core.util.a() {
        @Override
        public final void accept(Object obj) {
            this.f9135a.X0((androidx.core.app.m) obj);
        }
    };

    private final androidx.core.util.a f9013s = new androidx.core.util.a() {
        @Override
        public final void accept(Object obj) {
            this.f9136a.Y0((androidx.core.app.x) obj);
        }
    };

    private final MenuProvider f9014t = new c();

    int f9015u = -1;

    private androidx.fragment.app.h f9020z = null;
    private androidx.fragment.app.h A = new d();
    private b0 B = null;
    private b0 C = new e();
    ArrayDeque G = new ArrayDeque();
    private Runnable R = new Runnable() {
        @Override
        public void run() {
            FragmentManager.this.c0(true);
        }
    };

    class a implements androidx.activity.result.a {
        a() {
        }

        @Override
        public void a(Map map) {
            String[] strArr = (String[]) map.keySet().toArray(new String[0]);
            ArrayList arrayList = new ArrayList(map.values());
            int[] iArr = new int[arrayList.size()];
            for (int i10 = 0; i10 < arrayList.size(); i10++) {
                iArr[i10] = ((Boolean) arrayList.get(i10)).booleanValue() ? 0 : -1;
            }
            LaunchedFragmentInfo launchedFragmentInfo = (LaunchedFragmentInfo) FragmentManager.this.G.pollFirst();
            if (launchedFragmentInfo == null) {
                Log.w("FragmentManager", "No permissions were requested for " + this);
                return;
            }
            String str = launchedFragmentInfo.f9021a;
            int i11 = launchedFragmentInfo.f9022b;
            Fragment fragmentI = FragmentManager.this.f8997c.i(str);
            if (fragmentI != null) {
                fragmentI.onRequestPermissionsResult(i11, strArr, iArr);
                return;
            }
            Log.w("FragmentManager", "Permission request result delivered for unknown Fragment " + str);
        }
    }

    class b extends androidx.activity.u {
        b(boolean z10) {
            super(z10);
        }

        @Override
        public void handleOnBackPressed() {
            FragmentManager.this.I0();
        }
    }

    class c implements MenuProvider {
        c() {
        }

        @Override
        public void onCreateMenu(Menu menu, MenuInflater menuInflater) {
            FragmentManager.this.E(menu, menuInflater);
        }

        @Override
        public void onMenuClosed(Menu menu) {
            FragmentManager.this.M(menu);
        }

        @Override
        public boolean onMenuItemSelected(MenuItem menuItem) {
            return FragmentManager.this.L(menuItem);
        }

        @Override
        public void onPrepareMenu(Menu menu) {
            FragmentManager.this.Q(menu);
        }
    }

    class d extends androidx.fragment.app.h {
        d() {
        }

        @Override
        public Fragment instantiate(ClassLoader classLoader, String str) {
            return FragmentManager.this.z0().b(FragmentManager.this.z0().f(), str, null);
        }
    }

    class e implements b0 {
        e() {
        }

        @Override
        public SpecialEffectsController a(ViewGroup viewGroup) {
            return new DefaultSpecialEffectsController(viewGroup);
        }
    }

    class f implements androidx.p009lifecycle.r {

        final String f9028a;

        final t f9029b;

        final Lifecycle f9030c;

        f(String str, t tVar, Lifecycle lifecycle) {
            this.f9028a = str;
            this.f9029b = tVar;
            this.f9030c = lifecycle;
        }

        @Override
        public void onStateChanged(androidx.p009lifecycle.u uVar, Lifecycle.Event event) {
            Bundle bundle;
            if (event == Lifecycle.Event.ON_START && (bundle = (Bundle) FragmentManager.this.f9005k.get(this.f9028a)) != null) {
                this.f9029b.a(this.f9028a, bundle);
                FragmentManager.this.u(this.f9028a);
            }
            if (event == Lifecycle.Event.ON_DESTROY) {
                this.f9030c.d(this);
                FragmentManager.this.f9006l.remove(this.f9028a);
            }
        }
    }

    class g implements s {

        final Fragment f9032a;

        g(Fragment fragment) {
            this.f9032a = fragment;
        }

        @Override
        public void a(FragmentManager fragmentManager, Fragment fragment) {
            this.f9032a.onAttachFragment(fragment);
        }
    }

    class h implements androidx.activity.result.a {
        h() {
        }

        @Override
        public void a(ActivityResult activityResult) {
            LaunchedFragmentInfo launchedFragmentInfo = (LaunchedFragmentInfo) FragmentManager.this.G.pollFirst();
            if (launchedFragmentInfo == null) {
                Log.w("FragmentManager", "No Activities were started for result for " + this);
                return;
            }
            String str = launchedFragmentInfo.f9021a;
            int i10 = launchedFragmentInfo.f9022b;
            Fragment fragmentI = FragmentManager.this.f8997c.i(str);
            if (fragmentI != null) {
                fragmentI.onActivityResult(i10, activityResult.getResultCode(), activityResult.getData());
                return;
            }
            Log.w("FragmentManager", "Activity result delivered for unknown Fragment " + str);
        }
    }

    class i implements androidx.activity.result.a {
        i() {
        }

        @Override
        public void a(ActivityResult activityResult) {
            LaunchedFragmentInfo launchedFragmentInfo = (LaunchedFragmentInfo) FragmentManager.this.G.pollFirst();
            if (launchedFragmentInfo == null) {
                Log.w("FragmentManager", "No IntentSenders were started for " + this);
                return;
            }
            String str = launchedFragmentInfo.f9021a;
            int i10 = launchedFragmentInfo.f9022b;
            Fragment fragmentI = FragmentManager.this.f8997c.i(str);
            if (fragmentI != null) {
                fragmentI.onActivityResult(i10, activityResult.getResultCode(), activityResult.getData());
                return;
            }
            Log.w("FragmentManager", "Intent Sender result delivered for unknown Fragment " + str);
        }
    }

    static class j extends f.a {
        j() {
        }

        @Override
        public Intent a(Context context, IntentSenderRequest intentSenderRequest) {
            Bundle bundleExtra;
            Intent intent = new Intent("androidx.activity.result.contract.action.INTENT_SENDER_REQUEST");
            Intent fillInIntent = intentSenderRequest.getFillInIntent();
            if (fillInIntent != null && (bundleExtra = fillInIntent.getBundleExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE")) != null) {
                intent.putExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE", bundleExtra);
                fillInIntent.removeExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE");
                if (fillInIntent.getBooleanExtra("androidx.fragment.extra.ACTIVITY_OPTIONS_BUNDLE", false)) {
                    intentSenderRequest = new IntentSenderRequest.a(intentSenderRequest.getIntentSender()).b(null).c(intentSenderRequest.getFlagsValues(), intentSenderRequest.getFlagsMask()).a();
                }
            }
            intent.putExtra("androidx.activity.result.contract.extra.INTENT_SENDER_REQUEST", intentSenderRequest);
            if (FragmentManager.M0(2)) {
                Log.v("FragmentManager", "CreateIntent created the following intent: " + intent);
            }
            return intent;
        }

        @Override
        public ActivityResult c(int i10, Intent intent) {
            return new ActivityResult(i10, intent);
        }
    }

    private static class l implements t {

        private final Lifecycle f9036a;

        private final t f9037b;

        private final androidx.p009lifecycle.r f9038c;

        l(Lifecycle lifecycle, t tVar, androidx.p009lifecycle.r rVar) {
            this.f9036a = lifecycle;
            this.f9037b = tVar;
            this.f9038c = rVar;
        }

        @Override
        public void a(String str, Bundle bundle) {
            this.f9037b.a(str, bundle);
        }

        public boolean b(Lifecycle.State state) {
            return this.f9036a.b().isAtLeast(state);
        }

        public void c() {
            this.f9036a.d(this.f9038c);
        }
    }

    interface m {
        boolean a(ArrayList arrayList, ArrayList arrayList2);
    }

    private class n implements m {

        final String f9039a;

        final int f9040b;

        final int f9041c;

        n(String str, int i10, int i11) {
            this.f9039a = str;
            this.f9040b = i10;
            this.f9041c = i11;
        }

        @Override
        public boolean a(ArrayList arrayList, ArrayList arrayList2) {
            Fragment fragment = FragmentManager.this.f9019y;
            if (fragment == null || this.f9040b >= 0 || this.f9039a != null || !fragment.getChildFragmentManager().j1()) {
                return FragmentManager.this.n1(arrayList, arrayList2, this.f9039a, this.f9040b, this.f9041c);
            }
            return false;
        }
    }

    private class o implements m {

        private final String f9043a;

        o(String str) {
            this.f9043a = str;
        }

        @Override
        public boolean a(ArrayList arrayList, ArrayList arrayList2) {
            return FragmentManager.this.v1(arrayList, arrayList2, this.f9043a);
        }
    }

    private class p implements m {

        private final String f9045a;

        p(String str) {
            this.f9045a = str;
        }

        @Override
        public boolean a(ArrayList arrayList, ArrayList arrayList2) {
            return FragmentManager.this.A1(arrayList, arrayList2, this.f9045a);
        }
    }

    static Fragment G0(View view) {
        Object tag = view.getTag(R$id.fragment_container_view_tag);
        if (tag instanceof Fragment) {
            return (Fragment) tag;
        }
        return null;
    }

    private void J1(Fragment fragment) {
        ViewGroup viewGroupV0 = v0(fragment);
        if (viewGroupV0 == null || fragment.getEnterAnim() + fragment.getExitAnim() + fragment.getPopEnterAnim() + fragment.getPopExitAnim() <= 0) {
            return;
        }
        if (viewGroupV0.getTag(R$id.visible_removing_fragment_view_tag) == null) {
            viewGroupV0.setTag(R$id.visible_removing_fragment_view_tag, fragment);
        }
        ((Fragment) viewGroupV0.getTag(R$id.visible_removing_fragment_view_tag)).setPopDirection(fragment.getPopDirection());
    }

    private void L1() {
        Iterator it = this.f8997c.k().iterator();
        while (it.hasNext()) {
            f1((u) it.next());
        }
    }

    public static boolean M0(int i10) {
        return S || Log.isLoggable("FragmentManager", i10);
    }

    private void M1(RuntimeException runtimeException) {
        Log.e("FragmentManager", runtimeException.getMessage());
        Log.e("FragmentManager", "Activity state:");
        PrintWriter printWriter = new PrintWriter(new a0("FragmentManager"));
        androidx.fragment.app.i iVar = this.f9016v;
        if (iVar != null) {
            try {
                iVar.h("  ", null, printWriter, new String[0]);
                throw runtimeException;
            } catch (Exception e10) {
                Log.e("FragmentManager", "Failed dumping state", e10);
                throw runtimeException;
            }
        }
        try {
            Y("  ", null, printWriter, new String[0]);
            throw runtimeException;
        } catch (Exception e11) {
            Log.e("FragmentManager", "Failed dumping state", e11);
            throw runtimeException;
        }
    }

    private void N(Fragment fragment) {
        if (fragment == null || !fragment.equals(h0(fragment.mWho))) {
            return;
        }
        fragment.performPrimaryNavigationFragmentChanged();
    }

    private boolean N0(Fragment fragment) {
        return (fragment.mHasMenu && fragment.mMenuVisible) || fragment.mChildFragmentManager.q();
    }

    private boolean O0() {
        Fragment fragment = this.f9018x;
        if (fragment == null) {
            return true;
        }
        return fragment.isAdded() && this.f9018x.getParentFragmentManager().O0();
    }

    private void O1() {
        synchronized (this.f8995a) {
            try {
                if (this.f8995a.isEmpty()) {
                    this.f9002h.setEnabled(r0() > 0 && R0(this.f9018x));
                } else {
                    this.f9002h.setEnabled(true);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private void U(int i10) {
        try {
            this.f8996b = true;
            this.f8997c.d(i10);
            c1(i10, false);
            Iterator it = v().iterator();
            while (it.hasNext()) {
                ((SpecialEffectsController) it.next()).j();
            }
            this.f8996b = false;
            c0(true);
        } catch (Throwable th2) {
            this.f8996b = false;
            throw th2;
        }
    }

    public void V0(Configuration configuration) {
        if (O0()) {
            B(configuration, false);
        }
    }

    public void W0(Integer num) {
        if (O0() && num.intValue() == 80) {
            H(false);
        }
    }

    private void X() {
        if (this.L) {
            this.L = false;
            L1();
        }
    }

    public void X0(androidx.core.app.m mVar) {
        if (O0()) {
            I(mVar.a(), false);
        }
    }

    public void Y0(androidx.core.app.x xVar) {
        if (O0()) {
            P(xVar.a(), false);
        }
    }

    private void Z() {
        Iterator it = v().iterator();
        while (it.hasNext()) {
            ((SpecialEffectsController) it.next()).j();
        }
    }

    private void b0(boolean z10) {
        if (this.f8996b) {
            throw new IllegalStateException("FragmentManager is already executing transactions");
        }
        if (this.f9016v == null) {
            if (!this.K) {
                throw new IllegalStateException("FragmentManager has not been attached to a host.");
            }
            throw new IllegalStateException("FragmentManager has been destroyed");
        }
        if (Looper.myLooper() != this.f9016v.g().getLooper()) {
            throw new IllegalStateException("Must be called from main thread of fragment host");
        }
        if (!z10) {
            r();
        }
        if (this.M == null) {
            this.M = new ArrayList();
            this.N = new ArrayList();
        }
    }

    private static void e0(ArrayList arrayList, ArrayList arrayList2, int i10, int i11) {
        while (i10 < i11) {
            androidx.fragment.app.a aVar = (androidx.fragment.app.a) arrayList.get(i10);
            if (((Boolean) arrayList2.get(i10)).booleanValue()) {
                aVar.z(-1);
                aVar.F();
            } else {
                aVar.z(1);
                aVar.E();
            }
            i10++;
        }
    }

    private void f0(ArrayList arrayList, ArrayList arrayList2, int i10, int i11) {
        boolean z10 = ((androidx.fragment.app.a) arrayList.get(i10)).f9181r;
        ArrayList arrayList3 = this.O;
        if (arrayList3 == null) {
            this.O = new ArrayList();
        } else {
            arrayList3.clear();
        }
        this.O.addAll(this.f8997c.o());
        Fragment fragmentD0 = D0();
        boolean z11 = false;
        for (int i12 = i10; i12 < i11; i12++) {
            androidx.fragment.app.a aVar = (androidx.fragment.app.a) arrayList.get(i12);
            fragmentD0 = !((Boolean) arrayList2.get(i12)).booleanValue() ? aVar.G(this.O, fragmentD0) : aVar.J(this.O, fragmentD0);
            z11 = z11 || aVar.f9172i;
        }
        this.O.clear();
        if (!z10 && this.f9015u >= 1) {
            for (int i13 = i10; i13 < i11; i13++) {
                Iterator it = ((androidx.fragment.app.a) arrayList.get(i13)).f9166c.iterator();
                while (it.hasNext()) {
                    Fragment fragment = ((w.a) it.next()).f9184b;
                    if (fragment != null && fragment.mFragmentManager != null) {
                        this.f8997c.r(x(fragment));
                    }
                }
            }
        }
        e0(arrayList, arrayList2, i10, i11);
        boolean zBooleanValue = ((Boolean) arrayList2.get(i11 - 1)).booleanValue();
        for (int i14 = i10; i14 < i11; i14++) {
            androidx.fragment.app.a aVar2 = (androidx.fragment.app.a) arrayList.get(i14);
            if (zBooleanValue) {
                for (int size = aVar2.f9166c.size() - 1; size >= 0; size--) {
                    Fragment fragment2 = ((w.a) aVar2.f9166c.get(size)).f9184b;
                    if (fragment2 != null) {
                        x(fragment2).m();
                    }
                }
            } else {
                Iterator it2 = aVar2.f9166c.iterator();
                while (it2.hasNext()) {
                    Fragment fragment3 = ((w.a) it2.next()).f9184b;
                    if (fragment3 != null) {
                        x(fragment3).m();
                    }
                }
            }
        }
        c1(this.f9015u, true);
        for (SpecialEffectsController specialEffectsController : w(arrayList, i10, i11)) {
            specialEffectsController.r(zBooleanValue);
            specialEffectsController.p();
            specialEffectsController.g();
        }
        while (i10 < i11) {
            androidx.fragment.app.a aVar3 = (androidx.fragment.app.a) arrayList.get(i10);
            if (((Boolean) arrayList2.get(i10)).booleanValue() && aVar3.f9112v >= 0) {
                aVar3.f9112v = -1;
            }
            aVar3.I();
            i10++;
        }
        if (z11) {
            t1();
        }
    }

    private int i0(String str, int i10, boolean z10) {
        ArrayList arrayList = this.f8998d;
        if (arrayList == null || arrayList.isEmpty()) {
            return -1;
        }
        if (str == null && i10 < 0) {
            if (z10) {
                return 0;
            }
            return this.f8998d.size() - 1;
        }
        int size = this.f8998d.size() - 1;
        while (size >= 0) {
            androidx.fragment.app.a aVar = (androidx.fragment.app.a) this.f8998d.get(size);
            if ((str != null && str.equals(aVar.H())) || (i10 >= 0 && i10 == aVar.f9112v)) {
                break;
            }
            size--;
        }
        if (size < 0) {
            return size;
        }
        if (!z10) {
            if (size == this.f8998d.size() - 1) {
                return -1;
            }
            return size + 1;
        }
        while (size > 0) {
            androidx.fragment.app.a aVar2 = (androidx.fragment.app.a) this.f8998d.get(size - 1);
            if ((str == null || !str.equals(aVar2.H())) && (i10 < 0 || i10 != aVar2.f9112v)) {
                return size;
            }
            size--;
        }
        return size;
    }

    static FragmentManager m0(View view) {
        FragmentActivity fragmentActivity;
        Fragment fragmentN0 = n0(view);
        if (fragmentN0 != null) {
            if (fragmentN0.isAdded()) {
                return fragmentN0.getChildFragmentManager();
            }
            throw new IllegalStateException("The Fragment " + fragmentN0 + " that owns View " + view + " has already been destroyed. Nested fragments should always use the child FragmentManager.");
        }
        Context context = view.getContext();
        while (true) {
            if (!(context instanceof ContextWrapper)) {
                fragmentActivity = null;
                break;
            }
            if (context instanceof FragmentActivity) {
                fragmentActivity = (FragmentActivity) context;
                break;
            }
            context = ((ContextWrapper) context).getBaseContext();
        }
        if (fragmentActivity != null) {
            return fragmentActivity.getSupportFragmentManager();
        }
        throw new IllegalStateException("View " + view + " is not within a subclass of FragmentActivity.");
    }

    private boolean m1(String str, int i10, int i11) {
        c0(false);
        b0(true);
        Fragment fragment = this.f9019y;
        if (fragment != null && i10 < 0 && str == null && fragment.getChildFragmentManager().j1()) {
            return true;
        }
        boolean zN1 = n1(this.M, this.N, str, i10, i11);
        if (zN1) {
            this.f8996b = true;
            try {
                r1(this.M, this.N);
                s();
            } catch (Throwable th2) {
                s();
                throw th2;
            }
        }
        O1();
        X();
        this.f8997c.b();
        return zN1;
    }

    private static Fragment n0(View view) {
        while (view != null) {
            Fragment fragmentG0 = G0(view);
            if (fragmentG0 != null) {
                return fragmentG0;
            }
            Object parent = view.getParent();
            view = parent instanceof View ? (View) parent : null;
        }
        return null;
    }

    private void o0() {
        Iterator it = v().iterator();
        while (it.hasNext()) {
            ((SpecialEffectsController) it.next()).k();
        }
    }

    private boolean p0(ArrayList arrayList, ArrayList arrayList2) {
        synchronized (this.f8995a) {
            if (this.f8995a.isEmpty()) {
                return false;
            }
            try {
                int size = this.f8995a.size();
                boolean zA = false;
                for (int i10 = 0; i10 < size; i10++) {
                    zA |= ((m) this.f8995a.get(i10)).a(arrayList, arrayList2);
                }
                this.f8995a.clear();
                this.f9016v.g().removeCallbacks(this.R);
                return zA;
            } catch (Throwable th2) {
                this.f8995a.clear();
                this.f9016v.g().removeCallbacks(this.R);
                throw th2;
            }
        }
    }

    private void r() {
        if (T0()) {
            throw new IllegalStateException("Can not perform this action after onSaveInstanceState");
        }
    }

    private void r1(ArrayList arrayList, ArrayList arrayList2) {
        if (arrayList.isEmpty()) {
            return;
        }
        if (arrayList.size() != arrayList2.size()) {
            throw new IllegalStateException("Internal error with the back stack records");
        }
        int size = arrayList.size();
        int i10 = 0;
        int i11 = 0;
        while (i10 < size) {
            if (!((androidx.fragment.app.a) arrayList.get(i10)).f9181r) {
                if (i11 != i10) {
                    f0(arrayList, arrayList2, i11, i10);
                }
                i11 = i10 + 1;
                if (((Boolean) arrayList2.get(i10)).booleanValue()) {
                    while (i11 < size && ((Boolean) arrayList2.get(i11)).booleanValue() && !((androidx.fragment.app.a) arrayList.get(i11)).f9181r) {
                        i11++;
                    }
                }
                f0(arrayList, arrayList2, i10, i11);
                i10 = i11 - 1;
            }
            i10++;
        }
        if (i11 != size) {
            f0(arrayList, arrayList2, i11, size);
        }
    }

    private void s() {
        this.f8996b = false;
        this.N.clear();
        this.M.clear();
    }

    private r s0(Fragment fragment) {
        return this.P.g(fragment);
    }

    private void t() {
        boolean zK;
        androidx.fragment.app.i iVar = this.f9016v;
        if (iVar instanceof y0) {
            zK = this.f8997c.p().k();
        } else {
            zK = iVar.f() instanceof Activity ? !((Activity) this.f9016v.f()).isChangingConfigurations() : true;
        }
        if (zK) {
            Iterator it = this.f9004j.values().iterator();
            while (it.hasNext()) {
                Iterator it2 = ((BackStackState) it.next()).f8916a.iterator();
                while (it2.hasNext()) {
                    this.f8997c.p().d((String) it2.next());
                }
            }
        }
    }

    private void t1() {
        ArrayList arrayList = this.f9007m;
        if (arrayList == null || arrayList.size() <= 0) {
            return;
        }
        android.support.v4.media.session.c.a(this.f9007m.get(0));
        throw null;
    }

    private Set v() {
        HashSet hashSet = new HashSet();
        Iterator it = this.f8997c.k().iterator();
        while (it.hasNext()) {
            ViewGroup viewGroup = ((u) it.next()).k().mContainer;
            if (viewGroup != null) {
                hashSet.add(SpecialEffectsController.o(viewGroup, E0()));
            }
        }
        return hashSet;
    }

    private ViewGroup v0(Fragment fragment) {
        ViewGroup viewGroup = fragment.mContainer;
        if (viewGroup != null) {
            return viewGroup;
        }
        if (fragment.mContainerId > 0 && this.f9017w.d()) {
            View viewC = this.f9017w.c(fragment.mContainerId);
            if (viewC instanceof ViewGroup) {
                return (ViewGroup) viewC;
            }
        }
        return null;
    }

    private Set w(ArrayList arrayList, int i10, int i11) {
        ViewGroup viewGroup;
        HashSet hashSet = new HashSet();
        while (i10 < i11) {
            Iterator it = ((androidx.fragment.app.a) arrayList.get(i10)).f9166c.iterator();
            while (it.hasNext()) {
                Fragment fragment = ((w.a) it.next()).f9184b;
                if (fragment != null && (viewGroup = fragment.mContainer) != null) {
                    hashSet.add(SpecialEffectsController.n(viewGroup, this));
                }
            }
            i10++;
        }
        return hashSet;
    }

    static int x1(int i10) {
        int i11 = 4097;
        if (i10 == 4097) {
            return InputDeviceCompat.SOURCE_MOUSE;
        }
        if (i10 != 8194) {
            i11 = 8197;
            if (i10 == 8197) {
                return TaErrorCode.CODE_AD_UNIT_CONFIG_IS_EMPTY;
            }
            if (i10 == 4099) {
                return 4099;
            }
            if (i10 != 4100) {
                return 0;
            }
        }
        return i11;
    }

    void A() {
        this.I = false;
        this.J = false;
        this.P.m(false);
        U(0);
    }

    LayoutInflater.Factory2 A0() {
        return this.f9000f;
    }

    boolean A1(ArrayList arrayList, ArrayList arrayList2, String str) {
        int i10;
        int iI0 = i0(str, -1, true);
        if (iI0 < 0) {
            return false;
        }
        for (int i11 = iI0; i11 < this.f8998d.size(); i11++) {
            androidx.fragment.app.a aVar = (androidx.fragment.app.a) this.f8998d.get(i11);
            if (!aVar.f9181r) {
                M1(new IllegalArgumentException("saveBackStack(\"" + str + "\") included FragmentTransactions must use setReorderingAllowed(true) to ensure that the back stack can be restored as an atomic operation. Found " + aVar + " that did not use setReorderingAllowed(true)."));
            }
        }
        HashSet hashSet = new HashSet();
        for (int i12 = iI0; i12 < this.f8998d.size(); i12++) {
            androidx.fragment.app.a aVar2 = (androidx.fragment.app.a) this.f8998d.get(i12);
            HashSet hashSet2 = new HashSet();
            HashSet hashSet3 = new HashSet();
            for (w.a aVar3 : aVar2.f9166c) {
                Fragment fragment = aVar3.f9184b;
                if (fragment != null) {
                    if (!aVar3.f9185c || (i10 = aVar3.f9183a) == 1 || i10 == 2 || i10 == 8) {
                        hashSet.add(fragment);
                        hashSet2.add(fragment);
                    }
                    int i13 = aVar3.f9183a;
                    if (i13 == 1 || i13 == 2) {
                        hashSet3.add(fragment);
                    }
                }
            }
            hashSet2.removeAll(hashSet3);
            if (!hashSet2.isEmpty()) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("saveBackStack(\"");
                sb2.append(str);
                sb2.append("\") must be self contained and not reference fragments from non-saved FragmentTransactions. Found reference to fragment");
                sb2.append(hashSet2.size() == 1 ? " " + hashSet2.iterator().next() : "s " + hashSet2);
                sb2.append(" in ");
                sb2.append(aVar2);
                sb2.append(" that were previously added to the FragmentManager through a separate FragmentTransaction.");
                M1(new IllegalArgumentException(sb2.toString()));
            }
        }
        ArrayDeque arrayDeque = new ArrayDeque(hashSet);
        while (!arrayDeque.isEmpty()) {
            Fragment fragment2 = (Fragment) arrayDeque.removeFirst();
            if (fragment2.mRetainInstance) {
                StringBuilder sb3 = new StringBuilder();
                sb3.append("saveBackStack(\"");
                sb3.append(str);
                sb3.append("\") must not contain retained fragments. Found ");
                sb3.append(hashSet.contains(fragment2) ? "direct reference to retained " : "retained child ");
                sb3.append("fragment ");
                sb3.append(fragment2);
                M1(new IllegalArgumentException(sb3.toString()));
            }
            for (Fragment fragment3 : fragment2.mChildFragmentManager.q0()) {
                if (fragment3 != null) {
                    arrayDeque.addLast(fragment3);
                }
            }
        }
        ArrayList arrayList3 = new ArrayList();
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            arrayList3.add(((Fragment) it.next()).mWho);
        }
        ArrayList arrayList4 = new ArrayList(this.f8998d.size() - iI0);
        for (int i14 = iI0; i14 < this.f8998d.size(); i14++) {
            arrayList4.add(null);
        }
        BackStackState backStackState = new BackStackState(arrayList3, arrayList4);
        for (int size = this.f8998d.size() - 1; size >= iI0; size--) {
            androidx.fragment.app.a aVar4 = (androidx.fragment.app.a) this.f8998d.remove(size);
            androidx.fragment.app.a aVar5 = new androidx.fragment.app.a(aVar4);
            aVar5.A();
            arrayList4.set(size - iI0, new BackStackRecordState(aVar5));
            aVar4.f9113w = true;
            arrayList.add(aVar4);
            arrayList2.add(Boolean.TRUE);
        }
        this.f9004j.put(str, backStackState);
        return true;
    }

    void B(Configuration configuration, boolean z10) {
        if (z10 && (this.f9016v instanceof androidx.core.content.d)) {
            M1(new IllegalStateException("Do not call dispatchConfigurationChanged() on host. Host implements OnConfigurationChangedProvider and automatically dispatches configuration changes to fragments."));
        }
        for (Fragment fragment : this.f8997c.o()) {
            if (fragment != null) {
                fragment.performConfigurationChanged(configuration);
                if (z10) {
                    fragment.mChildFragmentManager.B(configuration, true);
                }
            }
        }
    }

    androidx.fragment.app.k B0() {
        return this.f9008n;
    }

    public Fragment.SavedState B1(Fragment fragment) {
        u uVarN = this.f8997c.n(fragment.mWho);
        if (uVarN == null || !uVarN.k().equals(fragment)) {
            M1(new IllegalStateException("Fragment " + fragment + " is not currently in the FragmentManager"));
        }
        return uVarN.r();
    }

    boolean C(MenuItem menuItem) {
        if (this.f9015u < 1) {
            return false;
        }
        for (Fragment fragment : this.f8997c.o()) {
            if (fragment != null && fragment.performContextItemSelected(menuItem)) {
                return true;
            }
        }
        return false;
    }

    Fragment C0() {
        return this.f9018x;
    }

    void C1() {
        synchronized (this.f8995a) {
            try {
                if (this.f8995a.size() == 1) {
                    this.f9016v.g().removeCallbacks(this.R);
                    this.f9016v.g().post(this.R);
                    O1();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    void D() {
        this.I = false;
        this.J = false;
        this.P.m(false);
        U(1);
    }

    public Fragment D0() {
        return this.f9019y;
    }

    void D1(Fragment fragment, boolean z10) {
        ViewGroup viewGroupV0 = v0(fragment);
        if (viewGroupV0 == null || !(viewGroupV0 instanceof FragmentContainerView)) {
            return;
        }
        ((FragmentContainerView) viewGroupV0).setDrawDisappearingViewsLast(!z10);
    }

    boolean E(Menu menu, MenuInflater menuInflater) {
        if (this.f9015u < 1) {
            return false;
        }
        ArrayList arrayList = null;
        boolean z10 = false;
        for (Fragment fragment : this.f8997c.o()) {
            if (fragment != null && Q0(fragment) && fragment.performCreateOptionsMenu(menu, menuInflater)) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(fragment);
                z10 = true;
            }
        }
        if (this.f8999e != null) {
            for (int i10 = 0; i10 < this.f8999e.size(); i10++) {
                Fragment fragment2 = (Fragment) this.f8999e.get(i10);
                if (arrayList == null || !arrayList.contains(fragment2)) {
                    fragment2.onDestroyOptionsMenu();
                }
            }
        }
        this.f8999e = arrayList;
        return z10;
    }

    b0 E0() {
        b0 b0Var = this.B;
        if (b0Var != null) {
            return b0Var;
        }
        Fragment fragment = this.f9018x;
        return fragment != null ? fragment.mFragmentManager.E0() : this.C;
    }

    public void E1(androidx.fragment.app.h hVar) {
        this.f9020z = hVar;
    }

    void F() {
        this.K = true;
        c0(true);
        Z();
        t();
        U(-1);
        Object obj = this.f9016v;
        if (obj instanceof androidx.core.content.e) {
            ((androidx.core.content.e) obj).removeOnTrimMemoryListener(this.f9011q);
        }
        Object obj2 = this.f9016v;
        if (obj2 instanceof androidx.core.content.d) {
            ((androidx.core.content.d) obj2).removeOnConfigurationChangedListener(this.f9010p);
        }
        Object obj3 = this.f9016v;
        if (obj3 instanceof androidx.core.app.u) {
            ((androidx.core.app.u) obj3).removeOnMultiWindowModeChangedListener(this.f9012r);
        }
        Object obj4 = this.f9016v;
        if (obj4 instanceof androidx.core.app.v) {
            ((androidx.core.app.v) obj4).removeOnPictureInPictureModeChangedListener(this.f9013s);
        }
        Object obj5 = this.f9016v;
        if (obj5 instanceof MenuHost) {
            ((MenuHost) obj5).removeMenuProvider(this.f9014t);
        }
        this.f9016v = null;
        this.f9017w = null;
        this.f9018x = null;
        if (this.f9001g != null) {
            this.f9002h.remove();
            this.f9001g = null;
        }
        androidx.activity.result.b bVar = this.D;
        if (bVar != null) {
            bVar.c();
            this.E.c();
            this.F.c();
        }
    }

    public FragmentStrictMode.b F0() {
        return this.Q;
    }

    public final void F1(String str, Bundle bundle) {
        l lVar = (l) this.f9006l.get(str);
        if (lVar == null || !lVar.b(Lifecycle.State.STARTED)) {
            this.f9005k.put(str, bundle);
        } else {
            lVar.a(str, bundle);
        }
        if (M0(2)) {
            Log.v("FragmentManager", "Setting fragment result with key " + str + " and result " + bundle);
        }
    }

    void G() {
        U(1);
    }

    public final void G1(String str, androidx.p009lifecycle.u uVar, t tVar) {
        Lifecycle lifecycle = uVar.getLifecycle();
        if (lifecycle.b() == Lifecycle.State.DESTROYED) {
            return;
        }
        f fVar = new f(str, tVar, lifecycle);
        lifecycle.a(fVar);
        l lVar = (l) this.f9006l.put(str, new l(lifecycle, tVar, fVar));
        if (lVar != null) {
            lVar.c();
        }
        if (M0(2)) {
            Log.v("FragmentManager", "Setting FragmentResultListener with key " + str + " lifecycleOwner " + lifecycle + " and listener " + tVar);
        }
    }

    void H(boolean z10) {
        if (z10 && (this.f9016v instanceof androidx.core.content.e)) {
            M1(new IllegalStateException("Do not call dispatchLowMemory() on host. Host implements OnTrimMemoryProvider and automatically dispatches low memory callbacks to fragments."));
        }
        for (Fragment fragment : this.f8997c.o()) {
            if (fragment != null) {
                fragment.performLowMemory();
                if (z10) {
                    fragment.mChildFragmentManager.H(true);
                }
            }
        }
    }

    x0 H0(Fragment fragment) {
        return this.P.j(fragment);
    }

    void H1(Fragment fragment, Lifecycle.State state) {
        if (fragment.equals(h0(fragment.mWho)) && (fragment.mHost == null || fragment.mFragmentManager == this)) {
            fragment.mMaxState = state;
            return;
        }
        throw new IllegalArgumentException("Fragment " + fragment + " is not an active fragment of FragmentManager " + this);
    }

    void I(boolean z10, boolean z11) {
        if (z11 && (this.f9016v instanceof androidx.core.app.u)) {
            M1(new IllegalStateException("Do not call dispatchMultiWindowModeChanged() on host. Host implements OnMultiWindowModeChangedProvider and automatically dispatches multi-window mode changes to fragments."));
        }
        for (Fragment fragment : this.f8997c.o()) {
            if (fragment != null) {
                fragment.performMultiWindowModeChanged(z10);
                if (z11) {
                    fragment.mChildFragmentManager.I(z10, true);
                }
            }
        }
    }

    void I0() {
        c0(true);
        if (this.f9002h.isEnabled()) {
            j1();
        } else {
            this.f9001g.l();
        }
    }

    void I1(Fragment fragment) {
        if (fragment == null || (fragment.equals(h0(fragment.mWho)) && (fragment.mHost == null || fragment.mFragmentManager == this))) {
            Fragment fragment2 = this.f9019y;
            this.f9019y = fragment;
            N(fragment2);
            N(this.f9019y);
            return;
        }
        throw new IllegalArgumentException("Fragment " + fragment + " is not an active fragment of FragmentManager " + this);
    }

    void J(Fragment fragment) {
        Iterator it = this.f9009o.iterator();
        while (it.hasNext()) {
            ((s) it.next()).a(this, fragment);
        }
    }

    void J0(Fragment fragment) {
        if (M0(2)) {
            Log.v("FragmentManager", "hide: " + fragment);
        }
        if (fragment.mHidden) {
            return;
        }
        fragment.mHidden = true;
        fragment.mHiddenChanged = true ^ fragment.mHiddenChanged;
        J1(fragment);
    }

    void K() {
        for (Fragment fragment : this.f8997c.l()) {
            if (fragment != null) {
                fragment.onHiddenChanged(fragment.isHidden());
                fragment.mChildFragmentManager.K();
            }
        }
    }

    void K0(Fragment fragment) {
        if (fragment.mAdded && N0(fragment)) {
            this.H = true;
        }
    }

    void K1(Fragment fragment) {
        if (M0(2)) {
            Log.v("FragmentManager", "show: " + fragment);
        }
        if (fragment.mHidden) {
            fragment.mHidden = false;
            fragment.mHiddenChanged = !fragment.mHiddenChanged;
        }
    }

    boolean L(MenuItem menuItem) {
        if (this.f9015u < 1) {
            return false;
        }
        for (Fragment fragment : this.f8997c.o()) {
            if (fragment != null && fragment.performOptionsItemSelected(menuItem)) {
                return true;
            }
        }
        return false;
    }

    public boolean L0() {
        return this.K;
    }

    void M(Menu menu) {
        if (this.f9015u < 1) {
            return;
        }
        for (Fragment fragment : this.f8997c.o()) {
            if (fragment != null) {
                fragment.performOptionsMenuClosed(menu);
            }
        }
    }

    public void N1(k kVar) {
        this.f9008n.p(kVar);
    }

    void O() {
        U(5);
    }

    void P(boolean z10, boolean z11) {
        if (z11 && (this.f9016v instanceof androidx.core.app.v)) {
            M1(new IllegalStateException("Do not call dispatchPictureInPictureModeChanged() on host. Host implements OnPictureInPictureModeChangedProvider and automatically dispatches picture-in-picture mode changes to fragments."));
        }
        for (Fragment fragment : this.f8997c.o()) {
            if (fragment != null) {
                fragment.performPictureInPictureModeChanged(z10);
                if (z11) {
                    fragment.mChildFragmentManager.P(z10, true);
                }
            }
        }
    }

    boolean P0(Fragment fragment) {
        if (fragment == null) {
            return false;
        }
        return fragment.isHidden();
    }

    boolean Q(Menu menu) {
        boolean z10 = false;
        if (this.f9015u < 1) {
            return false;
        }
        for (Fragment fragment : this.f8997c.o()) {
            if (fragment != null && Q0(fragment) && fragment.performPrepareOptionsMenu(menu)) {
                z10 = true;
            }
        }
        return z10;
    }

    boolean Q0(Fragment fragment) {
        if (fragment == null) {
            return true;
        }
        return fragment.isMenuVisible();
    }

    void R() {
        O1();
        N(this.f9019y);
    }

    boolean R0(Fragment fragment) {
        if (fragment == null) {
            return true;
        }
        FragmentManager fragmentManager = fragment.mFragmentManager;
        return fragment.equals(fragmentManager.D0()) && R0(fragmentManager.f9018x);
    }

    void S() {
        this.I = false;
        this.J = false;
        this.P.m(false);
        U(7);
    }

    boolean S0(int i10) {
        return this.f9015u >= i10;
    }

    void T() {
        this.I = false;
        this.J = false;
        this.P.m(false);
        U(5);
    }

    public boolean T0() {
        return this.I || this.J;
    }

    void V() {
        this.J = true;
        this.P.m(true);
        U(4);
    }

    void W() {
        U(2);
    }

    public void Y(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        int size;
        int size2;
        String str2 = str + "    ";
        this.f8997c.e(str, fileDescriptor, printWriter, strArr);
        ArrayList arrayList = this.f8999e;
        if (arrayList != null && (size2 = arrayList.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Fragments Created Menus:");
            for (int i10 = 0; i10 < size2; i10++) {
                Fragment fragment = (Fragment) this.f8999e.get(i10);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i10);
                printWriter.print(": ");
                printWriter.println(fragment.toString());
            }
        }
        ArrayList arrayList2 = this.f8998d;
        if (arrayList2 != null && (size = arrayList2.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Back Stack:");
            for (int i11 = 0; i11 < size; i11++) {
                androidx.fragment.app.a aVar = (androidx.fragment.app.a) this.f8998d.get(i11);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i11);
                printWriter.print(": ");
                printWriter.println(aVar.toString());
                aVar.C(str2, printWriter);
            }
        }
        printWriter.print(str);
        printWriter.println("Back Stack Index: " + this.f9003i.get());
        synchronized (this.f8995a) {
            try {
                int size3 = this.f8995a.size();
                if (size3 > 0) {
                    printWriter.print(str);
                    printWriter.println("Pending Actions:");
                    for (int i12 = 0; i12 < size3; i12++) {
                        m mVar = (m) this.f8995a.get(i12);
                        printWriter.print(str);
                        printWriter.print("  #");
                        printWriter.print(i12);
                        printWriter.print(": ");
                        printWriter.println(mVar);
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        printWriter.print(str);
        printWriter.println("FragmentManager misc state:");
        printWriter.print(str);
        printWriter.print("  mHost=");
        printWriter.println(this.f9016v);
        printWriter.print(str);
        printWriter.print("  mContainer=");
        printWriter.println(this.f9017w);
        if (this.f9018x != null) {
            printWriter.print(str);
            printWriter.print("  mParent=");
            printWriter.println(this.f9018x);
        }
        printWriter.print(str);
        printWriter.print("  mCurState=");
        printWriter.print(this.f9015u);
        printWriter.print(" mStateSaved=");
        printWriter.print(this.I);
        printWriter.print(" mStopped=");
        printWriter.print(this.J);
        printWriter.print(" mDestroyed=");
        printWriter.println(this.K);
        if (this.H) {
            printWriter.print(str);
            printWriter.print("  mNeedMenuInvalidate=");
            printWriter.println(this.H);
        }
    }

    void Z0(Fragment fragment, String[] strArr, int i10) {
        if (this.F == null) {
            this.f9016v.k(fragment, strArr, i10);
            return;
        }
        this.G.addLast(new LaunchedFragmentInfo(fragment.mWho, i10));
        this.F.a(strArr);
    }

    void a0(m mVar, boolean z10) {
        if (!z10) {
            if (this.f9016v == null) {
                if (!this.K) {
                    throw new IllegalStateException("FragmentManager has not been attached to a host.");
                }
                throw new IllegalStateException("FragmentManager has been destroyed");
            }
            r();
        }
        synchronized (this.f8995a) {
            try {
                if (this.f9016v == null) {
                    if (!z10) {
                        throw new IllegalStateException("Activity has been destroyed");
                    }
                } else {
                    this.f8995a.add(mVar);
                    C1();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    void a1(Fragment fragment, Intent intent, int i10, Bundle bundle) {
        if (this.D == null) {
            this.f9016v.m(fragment, intent, i10, bundle);
            return;
        }
        this.G.addLast(new LaunchedFragmentInfo(fragment.mWho, i10));
        if (intent != null && bundle != null) {
            intent.putExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE", bundle);
        }
        this.D.a(intent);
    }

    void b1(Fragment fragment, IntentSender intentSender, int i10, Intent intent, int i11, int i12, int i13, Bundle bundle) {
        Intent intent2;
        if (this.E == null) {
            this.f9016v.n(fragment, intentSender, i10, intent, i11, i12, i13, bundle);
            return;
        }
        if (bundle != null) {
            if (intent == null) {
                intent2 = new Intent();
                intent2.putExtra("androidx.fragment.extra.ACTIVITY_OPTIONS_BUNDLE", true);
            } else {
                intent2 = intent;
            }
            if (M0(2)) {
                Log.v("FragmentManager", "ActivityOptions " + bundle + " were added to fillInIntent " + intent2 + " for fragment " + fragment);
            }
            intent2.putExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE", bundle);
        } else {
            intent2 = intent;
        }
        IntentSenderRequest intentSenderRequestA = new IntentSenderRequest.a(intentSender).b(intent2).c(i12, i11).a();
        this.G.addLast(new LaunchedFragmentInfo(fragment.mWho, i10));
        if (M0(2)) {
            Log.v("FragmentManager", "Fragment " + fragment + "is launching an IntentSender for result ");
        }
        this.E.a(intentSenderRequestA);
    }

    boolean c0(boolean z10) {
        b0(z10);
        boolean z11 = false;
        while (p0(this.M, this.N)) {
            z11 = true;
            this.f8996b = true;
            try {
                r1(this.M, this.N);
                s();
            } catch (Throwable th2) {
                s();
                throw th2;
            }
        }
        O1();
        X();
        this.f8997c.b();
        return z11;
    }

    void c1(int i10, boolean z10) {
        androidx.fragment.app.i iVar;
        if (this.f9016v == null && i10 != -1) {
            throw new IllegalStateException("No activity");
        }
        if (z10 || i10 != this.f9015u) {
            this.f9015u = i10;
            this.f8997c.t();
            L1();
            if (this.H && (iVar = this.f9016v) != null && this.f9015u == 7) {
                iVar.o();
                this.H = false;
            }
        }
    }

    void d0(m mVar, boolean z10) {
        if (z10 && (this.f9016v == null || this.K)) {
            return;
        }
        b0(z10);
        if (mVar.a(this.M, this.N)) {
            this.f8996b = true;
            try {
                r1(this.M, this.N);
                s();
            } catch (Throwable th2) {
                s();
                throw th2;
            }
        }
        O1();
        X();
        this.f8997c.b();
    }

    void d1() {
        if (this.f9016v == null) {
            return;
        }
        this.I = false;
        this.J = false;
        this.P.m(false);
        for (Fragment fragment : this.f8997c.o()) {
            if (fragment != null) {
                fragment.noteStateNotSaved();
            }
        }
    }

    void e1(FragmentContainerView fragmentContainerView) {
        View view;
        for (u uVar : this.f8997c.k()) {
            Fragment fragmentK = uVar.k();
            if (fragmentK.mContainerId == fragmentContainerView.getId() && (view = fragmentK.mView) != null && view.getParent() == null) {
                fragmentK.mContainer = fragmentContainerView;
                uVar.b();
            }
        }
    }

    void f1(u uVar) {
        Fragment fragmentK = uVar.k();
        if (fragmentK.mDeferStart) {
            if (this.f8996b) {
                this.L = true;
            } else {
                fragmentK.mDeferStart = false;
                uVar.m();
            }
        }
    }

    public boolean g0() {
        boolean zC0 = c0(true);
        o0();
        return zC0;
    }

    public void g1() {
        a0(new n(null, -1, 0), false);
    }

    Fragment h0(String str) {
        return this.f8997c.f(str);
    }

    void h1(int i10, int i11, boolean z10) {
        if (i10 >= 0) {
            a0(new n(null, i10, i11), z10);
            return;
        }
        throw new IllegalArgumentException("Bad id: " + i10);
    }

    void i(androidx.fragment.app.a aVar) {
        if (this.f8998d == null) {
            this.f8998d = new ArrayList();
        }
        this.f8998d.add(aVar);
    }

    public void i1(String str, int i10) {
        a0(new n(str, -1, i10), false);
    }

    u j(Fragment fragment) {
        String str = fragment.mPreviousWho;
        if (str != null) {
            FragmentStrictMode.f(fragment, str);
        }
        if (M0(2)) {
            Log.v("FragmentManager", "add: " + fragment);
        }
        u uVarX = x(fragment);
        fragment.mFragmentManager = this;
        this.f8997c.r(uVarX);
        if (!fragment.mDetached) {
            this.f8997c.a(fragment);
            fragment.mRemoving = false;
            if (fragment.mView == null) {
                fragment.mHiddenChanged = false;
            }
            if (N0(fragment)) {
                this.H = true;
            }
        }
        return uVarX;
    }

    public Fragment j0(int i10) {
        return this.f8997c.g(i10);
    }

    public boolean j1() {
        return m1(null, -1, 0);
    }

    public void k(s sVar) {
        this.f9009o.add(sVar);
    }

    public Fragment k0(String str) {
        return this.f8997c.h(str);
    }

    public boolean k1(int i10, int i11) {
        if (i10 >= 0) {
            return m1(null, i10, i11);
        }
        throw new IllegalArgumentException("Bad id: " + i10);
    }

    void l(Fragment fragment) {
        this.P.b(fragment);
    }

    Fragment l0(String str) {
        return this.f8997c.i(str);
    }

    public boolean l1(String str, int i10) {
        return m1(str, -1, i10);
    }

    int m() {
        return this.f9003i.getAndIncrement();
    }

    /* JADX WARN: Multi-variable type inference failed */
    void n(androidx.fragment.app.i iVar, androidx.fragment.app.f fVar, Fragment fragment) {
        String str;
        androidx.p009lifecycle.u uVar;
        if (this.f9016v != null) {
            throw new IllegalStateException("Already attached");
        }
        this.f9016v = iVar;
        this.f9017w = fVar;
        this.f9018x = fragment;
        if (fragment != null) {
            k(new g(fragment));
        } else if (iVar instanceof s) {
            k((s) iVar);
        }
        if (this.f9018x != null) {
            O1();
        }
        if (iVar instanceof androidx.activity.x) {
            androidx.activity.x xVar = (androidx.activity.x) iVar;
            OnBackPressedDispatcher onBackPressedDispatcher = xVar.getOnBackPressedDispatcher();
            this.f9001g = onBackPressedDispatcher;
            if (fragment != null) {
                uVar = xVar;
                uVar = fragment;
            }
            uVar = xVar;
            onBackPressedDispatcher.i(uVar, this.f9002h);
        }
        if (fragment != null) {
            this.P = fragment.mFragmentManager.s0(fragment);
        } else if (iVar instanceof y0) {
            this.P = r.h(((y0) iVar).getViewModelStore());
        } else {
            this.P = new r(false);
        }
        this.P.m(T0());
        this.f8997c.A(this.P);
        Object obj = this.f9016v;
        if ((obj instanceof androidx.p010savedstate.e) && fragment == null) {
            androidx.p010savedstate.c savedStateRegistry = ((androidx.p010savedstate.e) obj).getSavedStateRegistry();
            savedStateRegistry.h("android:support:fragments", new androidx.p010savedstate.c.InterfaceC0116c() {
                @Override
                public final Bundle saveState() {
                    return this.f9137a.U0();
                }
            });
            Bundle bundleB = savedStateRegistry.b("android:support:fragments");
            if (bundleB != null) {
                w1(bundleB);
            }
        }
        Object obj2 = this.f9016v;
        if (obj2 instanceof androidx.activity.result.d) {
            ActivityResultRegistry activityResultRegistry = ((androidx.activity.result.d) obj2).getActivityResultRegistry();
            if (fragment != null) {
                str = fragment.mWho + ":";
            } else {
                str = "";
            }
            String str2 = "FragmentManager:" + str;
            this.D = activityResultRegistry.m(str2 + "StartActivityForResult", new f.j(), new h());
            this.E = activityResultRegistry.m(str2 + "StartIntentSenderForResult", new j(), new i());
            this.F = activityResultRegistry.m(str2 + "RequestPermissions", new f.h(), new a());
        }
        Object obj3 = this.f9016v;
        if (obj3 instanceof androidx.core.content.d) {
            ((androidx.core.content.d) obj3).addOnConfigurationChangedListener(this.f9010p);
        }
        Object obj4 = this.f9016v;
        if (obj4 instanceof androidx.core.content.e) {
            ((androidx.core.content.e) obj4).addOnTrimMemoryListener(this.f9011q);
        }
        Object obj5 = this.f9016v;
        if (obj5 instanceof androidx.core.app.u) {
            ((androidx.core.app.u) obj5).addOnMultiWindowModeChangedListener(this.f9012r);
        }
        Object obj6 = this.f9016v;
        if (obj6 instanceof androidx.core.app.v) {
            ((androidx.core.app.v) obj6).addOnPictureInPictureModeChangedListener(this.f9013s);
        }
        Object obj7 = this.f9016v;
        if ((obj7 instanceof MenuHost) && fragment == null) {
            ((MenuHost) obj7).addMenuProvider(this.f9014t);
        }
    }

    boolean n1(ArrayList arrayList, ArrayList arrayList2, String str, int i10, int i11) {
        int iI0 = i0(str, i10, (i11 & 1) != 0);
        if (iI0 < 0) {
            return false;
        }
        for (int size = this.f8998d.size() - 1; size >= iI0; size--) {
            arrayList.add((androidx.fragment.app.a) this.f8998d.remove(size));
            arrayList2.add(Boolean.TRUE);
        }
        return true;
    }

    void o(Fragment fragment) {
        if (M0(2)) {
            Log.v("FragmentManager", "attach: " + fragment);
        }
        if (fragment.mDetached) {
            fragment.mDetached = false;
            if (fragment.mAdded) {
                return;
            }
            this.f8997c.a(fragment);
            if (M0(2)) {
                Log.v("FragmentManager", "add from attach: " + fragment);
            }
            if (N0(fragment)) {
                this.H = true;
            }
        }
    }

    public void o1(Bundle bundle, String str, Fragment fragment) {
        if (fragment.mFragmentManager != this) {
            M1(new IllegalStateException("Fragment " + fragment + " is not currently in the FragmentManager"));
        }
        bundle.putString(str, fragment.mWho);
    }

    public w p() {
        return new androidx.fragment.app.a(this);
    }

    public void p1(k kVar, boolean z10) {
        this.f9008n.o(kVar, z10);
    }

    boolean q() {
        boolean zN0 = false;
        for (Fragment fragment : this.f8997c.l()) {
            if (fragment != null) {
                zN0 = N0(fragment);
            }
            if (zN0) {
                return true;
            }
        }
        return false;
    }

    List q0() {
        return this.f8997c.l();
    }

    void q1(Fragment fragment) {
        if (M0(2)) {
            Log.v("FragmentManager", "remove: " + fragment + " nesting=" + fragment.mBackStackNesting);
        }
        boolean zIsInBackStack = fragment.isInBackStack();
        if (fragment.mDetached && zIsInBackStack) {
            return;
        }
        this.f8997c.u(fragment);
        if (N0(fragment)) {
            this.H = true;
        }
        fragment.mRemoving = true;
        J1(fragment);
    }

    public int r0() {
        ArrayList arrayList = this.f8998d;
        if (arrayList != null) {
            return arrayList.size();
        }
        return 0;
    }

    void s1(Fragment fragment) {
        this.P.l(fragment);
    }

    androidx.fragment.app.f t0() {
        return this.f9017w;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder(128);
        sb2.append("FragmentManager{");
        sb2.append(Integer.toHexString(System.identityHashCode(this)));
        sb2.append(" in ");
        Fragment fragment = this.f9018x;
        if (fragment != null) {
            sb2.append(fragment.getClass().getSimpleName());
            sb2.append("{");
            sb2.append(Integer.toHexString(System.identityHashCode(this.f9018x)));
            sb2.append("}");
        } else {
            androidx.fragment.app.i iVar = this.f9016v;
            if (iVar != null) {
                sb2.append(iVar.getClass().getSimpleName());
                sb2.append("{");
                sb2.append(Integer.toHexString(System.identityHashCode(this.f9016v)));
                sb2.append("}");
            } else {
                sb2.append("null");
            }
        }
        sb2.append("}}");
        return sb2.toString();
    }

    public final void u(String str) {
        this.f9005k.remove(str);
        if (M0(2)) {
            Log.v("FragmentManager", "Clearing fragment result with key " + str);
        }
    }

    public Fragment u0(Bundle bundle, String str) {
        String string = bundle.getString(str);
        if (string == null) {
            return null;
        }
        Fragment fragmentH0 = h0(string);
        if (fragmentH0 == null) {
            M1(new IllegalStateException("Fragment no longer exists for key " + str + ": unique id " + string));
        }
        return fragmentH0;
    }

    public void u1(String str) {
        a0(new o(str), false);
    }

    boolean v1(ArrayList arrayList, ArrayList arrayList2, String str) {
        BackStackState backStackState = (BackStackState) this.f9004j.remove(str);
        if (backStackState == null) {
            return false;
        }
        HashMap map = new HashMap();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            androidx.fragment.app.a aVar = (androidx.fragment.app.a) it.next();
            if (aVar.f9113w) {
                Iterator it2 = aVar.f9166c.iterator();
                while (it2.hasNext()) {
                    Fragment fragment = ((w.a) it2.next()).f9184b;
                    if (fragment != null) {
                        map.put(fragment.mWho, fragment);
                    }
                }
            }
        }
        Iterator it3 = backStackState.a(this, map).iterator();
        while (true) {
            boolean z10 = false;
            while (it3.hasNext()) {
                if (((androidx.fragment.app.a) it3.next()).a(arrayList, arrayList2) || z10) {
                    z10 = true;
                }
            }
            return z10;
        }
    }

    public androidx.fragment.app.h w0() {
        androidx.fragment.app.h hVar = this.f9020z;
        if (hVar != null) {
            return hVar;
        }
        Fragment fragment = this.f9018x;
        return fragment != null ? fragment.mFragmentManager.w0() : this.A;
    }

    void w1(Parcelable parcelable) {
        u uVar;
        Bundle bundle;
        Bundle bundle2;
        if (parcelable == null) {
            return;
        }
        Bundle bundle3 = (Bundle) parcelable;
        for (String str : bundle3.keySet()) {
            if (str.startsWith("result_") && (bundle2 = bundle3.getBundle(str)) != null) {
                bundle2.setClassLoader(this.f9016v.f().getClassLoader());
                this.f9005k.put(str.substring(7), bundle2);
            }
        }
        ArrayList arrayList = new ArrayList();
        for (String str2 : bundle3.keySet()) {
            if (str2.startsWith("fragment_") && (bundle = bundle3.getBundle(str2)) != null) {
                bundle.setClassLoader(this.f9016v.f().getClassLoader());
                arrayList.add((FragmentState) bundle.getParcelable("state"));
            }
        }
        this.f8997c.x(arrayList);
        FragmentManagerState fragmentManagerState = (FragmentManagerState) bundle3.getParcelable("state");
        if (fragmentManagerState == null) {
            return;
        }
        this.f8997c.v();
        Iterator it = fragmentManagerState.f9047a.iterator();
        while (it.hasNext()) {
            FragmentState fragmentStateB = this.f8997c.B((String) it.next(), null);
            if (fragmentStateB != null) {
                Fragment fragmentF = this.P.f(fragmentStateB.f9056b);
                if (fragmentF != null) {
                    if (M0(2)) {
                        Log.v("FragmentManager", "restoreSaveState: re-attaching retained " + fragmentF);
                    }
                    uVar = new u(this.f9008n, this.f8997c, fragmentF, fragmentStateB);
                } else {
                    uVar = new u(this.f9008n, this.f8997c, this.f9016v.f().getClassLoader(), w0(), fragmentStateB);
                }
                Fragment fragmentK = uVar.k();
                fragmentK.mFragmentManager = this;
                if (M0(2)) {
                    Log.v("FragmentManager", "restoreSaveState: active (" + fragmentK.mWho + "): " + fragmentK);
                }
                uVar.o(this.f9016v.f().getClassLoader());
                this.f8997c.r(uVar);
                uVar.u(this.f9015u);
            }
        }
        for (Fragment fragment : this.P.i()) {
            if (!this.f8997c.c(fragment.mWho)) {
                if (M0(2)) {
                    Log.v("FragmentManager", "Discarding retained Fragment " + fragment + " that was not found in the set of active Fragments " + fragmentManagerState.f9047a);
                }
                this.P.l(fragment);
                fragment.mFragmentManager = this;
                u uVar2 = new u(this.f9008n, this.f8997c, fragment);
                uVar2.u(1);
                uVar2.m();
                fragment.mRemoving = true;
                uVar2.m();
            }
        }
        this.f8997c.w(fragmentManagerState.f9048b);
        if (fragmentManagerState.f9049c != null) {
            this.f8998d = new ArrayList(fragmentManagerState.f9049c.length);
            int i10 = 0;
            while (true) {
                BackStackRecordState[] backStackRecordStateArr = fragmentManagerState.f9049c;
                if (i10 >= backStackRecordStateArr.length) {
                    break;
                }
                androidx.fragment.app.a aVarB = backStackRecordStateArr[i10].b(this);
                if (M0(2)) {
                    Log.v("FragmentManager", "restoreAllState: back stack #" + i10 + " (index " + aVarB.f9112v + "): " + aVarB);
                    PrintWriter printWriter = new PrintWriter(new a0("FragmentManager"));
                    aVarB.D("  ", printWriter, false);
                    printWriter.close();
                }
                this.f8998d.add(aVarB);
                i10++;
            }
        } else {
            this.f8998d = null;
        }
        this.f9003i.set(fragmentManagerState.f9050d);
        String str3 = fragmentManagerState.f9051e;
        if (str3 != null) {
            Fragment fragmentH0 = h0(str3);
            this.f9019y = fragmentH0;
            N(fragmentH0);
        }
        ArrayList arrayList2 = fragmentManagerState.f9052f;
        if (arrayList2 != null) {
            for (int i11 = 0; i11 < arrayList2.size(); i11++) {
                this.f9004j.put((String) arrayList2.get(i11), (BackStackState) fragmentManagerState.f9053g.get(i11));
            }
        }
        this.G = new ArrayDeque(fragmentManagerState.f9054h);
    }

    u x(Fragment fragment) {
        u uVarN = this.f8997c.n(fragment.mWho);
        if (uVarN != null) {
            return uVarN;
        }
        u uVar = new u(this.f9008n, this.f8997c, fragment);
        uVar.o(this.f9016v.f().getClassLoader());
        uVar.u(this.f9015u);
        return uVar;
    }

    v x0() {
        return this.f8997c;
    }

    void y(Fragment fragment) {
        if (M0(2)) {
            Log.v("FragmentManager", "detach: " + fragment);
        }
        if (fragment.mDetached) {
            return;
        }
        fragment.mDetached = true;
        if (fragment.mAdded) {
            if (M0(2)) {
                Log.v("FragmentManager", "remove from detach: " + fragment);
            }
            this.f8997c.u(fragment);
            if (N0(fragment)) {
                this.H = true;
            }
            J1(fragment);
        }
    }

    public List y0() {
        return this.f8997c.o();
    }

    public Bundle U0() {
        BackStackRecordState[] backStackRecordStateArr;
        int size;
        Bundle bundle = new Bundle();
        o0();
        Z();
        c0(true);
        this.I = true;
        this.P.m(true);
        ArrayList arrayListY = this.f8997c.y();
        ArrayList<FragmentState> arrayListM = this.f8997c.m();
        if (!arrayListM.isEmpty()) {
            ArrayList arrayListZ = this.f8997c.z();
            ArrayList arrayList = this.f8998d;
            if (arrayList == null || (size = arrayList.size()) <= 0) {
                backStackRecordStateArr = null;
            } else {
                backStackRecordStateArr = new BackStackRecordState[size];
                for (int i10 = 0; i10 < size; i10++) {
                    backStackRecordStateArr[i10] = new BackStackRecordState((androidx.fragment.app.a) this.f8998d.get(i10));
                    if (M0(2)) {
                        Log.v("FragmentManager", "saveAllState: adding back stack #" + i10 + ": " + this.f8998d.get(i10));
                    }
                }
            }
            FragmentManagerState fragmentManagerState = new FragmentManagerState();
            fragmentManagerState.f9047a = arrayListY;
            fragmentManagerState.f9048b = arrayListZ;
            fragmentManagerState.f9049c = backStackRecordStateArr;
            fragmentManagerState.f9050d = this.f9003i.get();
            Fragment fragment = this.f9019y;
            if (fragment != null) {
                fragmentManagerState.f9051e = fragment.mWho;
            }
            fragmentManagerState.f9052f.addAll(this.f9004j.keySet());
            fragmentManagerState.f9053g.addAll(this.f9004j.values());
            fragmentManagerState.f9054h = new ArrayList(this.G);
            bundle.putParcelable("state", fragmentManagerState);
            for (String str : this.f9005k.keySet()) {
                bundle.putBundle("result_" + str, (Bundle) this.f9005k.get(str));
            }
            for (FragmentState fragmentState : arrayListM) {
                Bundle bundle2 = new Bundle();
                bundle2.putParcelable("state", fragmentState);
                bundle.putBundle("fragment_" + fragmentState.f9056b, bundle2);
            }
        } else if (M0(2)) {
            Log.v("FragmentManager", "saveAllState: no fragments!");
        }
        return bundle;
    }

    void z() {
        this.I = false;
        this.J = false;
        this.P.m(false);
        U(4);
    }

    public androidx.fragment.app.i z0() {
        return this.f9016v;
    }

    public void z1(String str) {
        a0(new p(str), false);
    }

    @SuppressLint({"BanParcelableUsage"})
    static class LaunchedFragmentInfo implements Parcelable {
        public static final Parcelable.Creator<LaunchedFragmentInfo> CREATOR = new a();

        String f9021a;

        int f9022b;

        class a implements Parcelable.Creator {
            a() {
            }

            @Override
            public LaunchedFragmentInfo createFromParcel(Parcel parcel) {
                return new LaunchedFragmentInfo(parcel);
            }

            @Override
            public LaunchedFragmentInfo[] newArray(int i10) {
                return new LaunchedFragmentInfo[i10];
            }
        }

        LaunchedFragmentInfo(String str, int i10) {
            this.f9021a = str;
            this.f9022b = i10;
        }

        @Override
        public int describeContents() {
            return 0;
        }

        @Override
        public void writeToParcel(Parcel parcel, int i10) {
            parcel.writeString(this.f9021a);
            parcel.writeInt(this.f9022b);
        }

        LaunchedFragmentInfo(Parcel parcel) {
            this.f9021a = parcel.readString();
            this.f9022b = parcel.readInt();
        }
    }

    public static abstract class k {
        public void onFragmentDestroyed(@NonNull FragmentManager fragmentManager, @NonNull Fragment fragment) {
        }

        public void onFragmentDetached(@NonNull FragmentManager fragmentManager, @NonNull Fragment fragment) {
        }

        public void onFragmentPaused(@NonNull FragmentManager fragmentManager, @NonNull Fragment fragment) {
        }

        public void onFragmentResumed(@NonNull FragmentManager fragmentManager, @NonNull Fragment fragment) {
        }

        public void onFragmentStarted(@NonNull FragmentManager fragmentManager, @NonNull Fragment fragment) {
        }

        public void onFragmentStopped(@NonNull FragmentManager fragmentManager, @NonNull Fragment fragment) {
        }

        public void onFragmentViewDestroyed(@NonNull FragmentManager fragmentManager, @NonNull Fragment fragment) {
        }

        @Deprecated
        public void onFragmentActivityCreated(@NonNull FragmentManager fragmentManager, @NonNull Fragment fragment, @Nullable Bundle bundle) {
        }

        public void onFragmentAttached(@NonNull FragmentManager fragmentManager, @NonNull Fragment fragment, @NonNull Context context) {
        }

        public void onFragmentCreated(@NonNull FragmentManager fragmentManager, @NonNull Fragment fragment, @Nullable Bundle bundle) {
        }

        public void onFragmentPreAttached(@NonNull FragmentManager fragmentManager, @NonNull Fragment fragment, @NonNull Context context) {
        }

        public void onFragmentPreCreated(@NonNull FragmentManager fragmentManager, @NonNull Fragment fragment, @Nullable Bundle bundle) {
        }

        public void onFragmentSaveInstanceState(@NonNull FragmentManager fragmentManager, @NonNull Fragment fragment, @NonNull Bundle bundle) {
        }

        public void onFragmentViewCreated(FragmentManager fragmentManager, Fragment fragment, View view, Bundle bundle) {
        }
    }
}
