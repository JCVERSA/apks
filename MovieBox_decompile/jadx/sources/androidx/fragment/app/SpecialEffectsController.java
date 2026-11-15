package androidx.fragment.app;

import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.core.view.ViewCompat;
import androidx.fragment.R$id;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

abstract class SpecialEffectsController {

    private final ViewGroup f9094a;

    final ArrayList f9095b = new ArrayList();

    final ArrayList f9096c = new ArrayList();

    boolean f9097d = false;

    boolean f9098e = false;

    static class a {

        static final int[] f9107a;

        static final int[] f9108b;

        static {
            int[] iArr = new int[Operation.LifecycleImpact.values().length];
            f9108b = iArr;
            try {
                iArr[Operation.LifecycleImpact.ADDING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f9108b[Operation.LifecycleImpact.REMOVING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f9108b[Operation.LifecycleImpact.NONE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            int[] iArr2 = new int[Operation.State.values().length];
            f9107a = iArr2;
            try {
                iArr2[Operation.State.REMOVED.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f9107a[Operation.State.VISIBLE.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f9107a[Operation.State.GONE.ordinal()] = 3;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f9107a[Operation.State.INVISIBLE.ordinal()] = 4;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    private static class b extends Operation {

        private final u f9109h;

        b(Operation.State state, Operation.LifecycleImpact lifecycleImpact, u uVar, androidx.core.os.e eVar) {
            super(state, lifecycleImpact, uVar.k(), eVar);
            this.f9109h = uVar;
        }

        @Override
        public void c() {
            super.c();
            this.f9109h.m();
        }

        @Override
        void l() {
            if (g() != Operation.LifecycleImpact.ADDING) {
                if (g() == Operation.LifecycleImpact.REMOVING) {
                    Fragment fragmentK = this.f9109h.k();
                    View viewRequireView = fragmentK.requireView();
                    if (FragmentManager.M0(2)) {
                        Log.v("FragmentManager", "Clearing focus " + viewRequireView.findFocus() + " on view " + viewRequireView + " for Fragment " + fragmentK);
                    }
                    viewRequireView.clearFocus();
                    return;
                }
                return;
            }
            Fragment fragmentK2 = this.f9109h.k();
            View viewFindFocus = fragmentK2.mView.findFocus();
            if (viewFindFocus != null) {
                fragmentK2.setFocusedView(viewFindFocus);
                if (FragmentManager.M0(2)) {
                    Log.v("FragmentManager", "requestFocus: Saved focused view " + viewFindFocus + " for Fragment " + fragmentK2);
                }
            }
            View viewRequireView2 = f().requireView();
            if (viewRequireView2.getParent() == null) {
                this.f9109h.b();
                viewRequireView2.setAlpha(0.0f);
            }
            if (viewRequireView2.getAlpha() == 0.0f && viewRequireView2.getVisibility() == 0) {
                viewRequireView2.setVisibility(4);
            }
            viewRequireView2.setAlpha(fragmentK2.getPostOnViewCreatedAlpha());
        }
    }

    SpecialEffectsController(ViewGroup viewGroup) {
        this.f9094a = viewGroup;
    }

    private void a(Operation.State state, Operation.LifecycleImpact lifecycleImpact, u uVar) {
        synchronized (this.f9095b) {
            try {
                androidx.core.os.e eVar = new androidx.core.os.e();
                Operation operationH = h(uVar.k());
                if (operationH != null) {
                    operationH.k(state, lifecycleImpact);
                    return;
                }
                final b bVar = new b(state, lifecycleImpact, uVar, eVar);
                this.f9095b.add(bVar);
                bVar.a(new Runnable() {
                    @Override
                    public void run() {
                        if (SpecialEffectsController.this.f9095b.contains(bVar)) {
                            bVar.e().applyState(bVar.f().mView);
                        }
                    }
                });
                bVar.a(new Runnable() {
                    @Override
                    public void run() {
                        SpecialEffectsController.this.f9095b.remove(bVar);
                        SpecialEffectsController.this.f9096c.remove(bVar);
                    }
                });
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private Operation h(Fragment fragment) {
        for (Operation operation : this.f9095b) {
            if (operation.f().equals(fragment) && !operation.h()) {
                return operation;
            }
        }
        return null;
    }

    private Operation i(Fragment fragment) {
        for (Operation operation : this.f9096c) {
            if (operation.f().equals(fragment) && !operation.h()) {
                return operation;
            }
        }
        return null;
    }

    static SpecialEffectsController n(ViewGroup viewGroup, FragmentManager fragmentManager) {
        return o(viewGroup, fragmentManager.E0());
    }

    static SpecialEffectsController o(ViewGroup viewGroup, b0 b0Var) {
        Object tag = viewGroup.getTag(R$id.special_effects_controller_view_tag);
        if (tag instanceof SpecialEffectsController) {
            return (SpecialEffectsController) tag;
        }
        SpecialEffectsController specialEffectsControllerA = b0Var.a(viewGroup);
        viewGroup.setTag(R$id.special_effects_controller_view_tag, specialEffectsControllerA);
        return specialEffectsControllerA;
    }

    private void q() {
        for (Operation operation : this.f9095b) {
            if (operation.g() == Operation.LifecycleImpact.ADDING) {
                operation.k(Operation.State.from(operation.f().requireView().getVisibility()), Operation.LifecycleImpact.NONE);
            }
        }
    }

    void b(Operation.State state, u uVar) {
        if (FragmentManager.M0(2)) {
            Log.v("FragmentManager", "SpecialEffectsController: Enqueuing add operation for fragment " + uVar.k());
        }
        a(state, Operation.LifecycleImpact.ADDING, uVar);
    }

    void c(u uVar) {
        if (FragmentManager.M0(2)) {
            Log.v("FragmentManager", "SpecialEffectsController: Enqueuing hide operation for fragment " + uVar.k());
        }
        a(Operation.State.GONE, Operation.LifecycleImpact.NONE, uVar);
    }

    void d(u uVar) {
        if (FragmentManager.M0(2)) {
            Log.v("FragmentManager", "SpecialEffectsController: Enqueuing remove operation for fragment " + uVar.k());
        }
        a(Operation.State.REMOVED, Operation.LifecycleImpact.REMOVING, uVar);
    }

    void e(u uVar) {
        if (FragmentManager.M0(2)) {
            Log.v("FragmentManager", "SpecialEffectsController: Enqueuing show operation for fragment " + uVar.k());
        }
        a(Operation.State.VISIBLE, Operation.LifecycleImpact.NONE, uVar);
    }

    abstract void f(List list, boolean z10);

    void g() {
        if (this.f9098e) {
            return;
        }
        if (!ViewCompat.isAttachedToWindow(this.f9094a)) {
            j();
            this.f9097d = false;
            return;
        }
        synchronized (this.f9095b) {
            try {
                if (!this.f9095b.isEmpty()) {
                    ArrayList<Operation> arrayList = new ArrayList(this.f9096c);
                    this.f9096c.clear();
                    for (Operation operation : arrayList) {
                        if (FragmentManager.M0(2)) {
                            Log.v("FragmentManager", "SpecialEffectsController: Cancelling operation " + operation);
                        }
                        operation.b();
                        if (!operation.i()) {
                            this.f9096c.add(operation);
                        }
                    }
                    q();
                    ArrayList arrayList2 = new ArrayList(this.f9095b);
                    this.f9095b.clear();
                    this.f9096c.addAll(arrayList2);
                    if (FragmentManager.M0(2)) {
                        Log.v("FragmentManager", "SpecialEffectsController: Executing pending operations");
                    }
                    Iterator it = arrayList2.iterator();
                    while (it.hasNext()) {
                        ((Operation) it.next()).l();
                    }
                    f(arrayList2, this.f9097d);
                    this.f9097d = false;
                    if (FragmentManager.M0(2)) {
                        Log.v("FragmentManager", "SpecialEffectsController: Finished executing pending operations");
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    void j() {
        if (FragmentManager.M0(2)) {
            Log.v("FragmentManager", "SpecialEffectsController: Forcing all operations to complete");
        }
        boolean zIsAttachedToWindow = ViewCompat.isAttachedToWindow(this.f9094a);
        synchronized (this.f9095b) {
            try {
                q();
                Iterator it = this.f9095b.iterator();
                while (it.hasNext()) {
                    ((Operation) it.next()).l();
                }
                for (Operation operation : new ArrayList(this.f9096c)) {
                    if (FragmentManager.M0(2)) {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("SpecialEffectsController: ");
                        sb2.append(zIsAttachedToWindow ? "" : "Container " + this.f9094a + " is not attached to window. ");
                        sb2.append("Cancelling running operation ");
                        sb2.append(operation);
                        Log.v("FragmentManager", sb2.toString());
                    }
                    operation.b();
                }
                for (Operation operation2 : new ArrayList(this.f9095b)) {
                    if (FragmentManager.M0(2)) {
                        StringBuilder sb3 = new StringBuilder();
                        sb3.append("SpecialEffectsController: ");
                        sb3.append(zIsAttachedToWindow ? "" : "Container " + this.f9094a + " is not attached to window. ");
                        sb3.append("Cancelling pending operation ");
                        sb3.append(operation2);
                        Log.v("FragmentManager", sb3.toString());
                    }
                    operation2.b();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    void k() {
        if (this.f9098e) {
            if (FragmentManager.M0(2)) {
                Log.v("FragmentManager", "SpecialEffectsController: Forcing postponed operations");
            }
            this.f9098e = false;
            g();
        }
    }

    Operation.LifecycleImpact l(u uVar) {
        Operation operationH = h(uVar.k());
        Operation.LifecycleImpact lifecycleImpactG = operationH != null ? operationH.g() : null;
        Operation operationI = i(uVar.k());
        return (operationI == null || !(lifecycleImpactG == null || lifecycleImpactG == Operation.LifecycleImpact.NONE)) ? lifecycleImpactG : operationI.g();
    }

    public ViewGroup m() {
        return this.f9094a;
    }

    void p() {
        synchronized (this.f9095b) {
            try {
                q();
                this.f9098e = false;
                for (int size = this.f9095b.size() - 1; size >= 0; size--) {
                    Operation operation = (Operation) this.f9095b.get(size);
                    Operation.State stateFrom = Operation.State.from(operation.f().mView);
                    Operation.State stateE = operation.e();
                    Operation.State state = Operation.State.VISIBLE;
                    if (stateE == state && stateFrom != state) {
                        this.f9098e = operation.f().isPostponed();
                        break;
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    void r(boolean z10) {
        this.f9097d = z10;
    }

    static class Operation {

        private State f9099a;

        private LifecycleImpact f9100b;

        private final Fragment f9101c;

        private final List f9102d = new ArrayList();

        private final HashSet f9103e = new HashSet();

        private boolean f9104f = false;

        private boolean f9105g = false;

        enum LifecycleImpact {
            NONE,
            ADDING,
            REMOVING
        }

        class a implements androidx.core.os.e.a {
            a() {
            }

            @Override
            public void onCancel() {
                Operation.this.b();
            }
        }

        Operation(State state, LifecycleImpact lifecycleImpact, Fragment fragment, androidx.core.os.e eVar) {
            this.f9099a = state;
            this.f9100b = lifecycleImpact;
            this.f9101c = fragment;
            eVar.b(new a());
        }

        final void a(Runnable runnable) {
            this.f9102d.add(runnable);
        }

        final void b() {
            if (h()) {
                return;
            }
            this.f9104f = true;
            if (this.f9103e.isEmpty()) {
                c();
                return;
            }
            Iterator it = new ArrayList(this.f9103e).iterator();
            while (it.hasNext()) {
                ((androidx.core.os.e) it.next()).a();
            }
        }

        public void c() {
            if (this.f9105g) {
                return;
            }
            if (FragmentManager.M0(2)) {
                Log.v("FragmentManager", "SpecialEffectsController: " + this + " has called complete.");
            }
            this.f9105g = true;
            Iterator it = this.f9102d.iterator();
            while (it.hasNext()) {
                ((Runnable) it.next()).run();
            }
        }

        public final void d(androidx.core.os.e eVar) {
            if (this.f9103e.remove(eVar) && this.f9103e.isEmpty()) {
                c();
            }
        }

        public State e() {
            return this.f9099a;
        }

        public final Fragment f() {
            return this.f9101c;
        }

        LifecycleImpact g() {
            return this.f9100b;
        }

        final boolean h() {
            return this.f9104f;
        }

        final boolean i() {
            return this.f9105g;
        }

        public final void j(androidx.core.os.e eVar) {
            l();
            this.f9103e.add(eVar);
        }

        final void k(State state, LifecycleImpact lifecycleImpact) {
            int i10 = a.f9108b[lifecycleImpact.ordinal()];
            if (i10 == 1) {
                if (this.f9099a == State.REMOVED) {
                    if (FragmentManager.M0(2)) {
                        Log.v("FragmentManager", "SpecialEffectsController: For fragment " + this.f9101c + " mFinalState = REMOVED -> VISIBLE. mLifecycleImpact = " + this.f9100b + " to ADDING.");
                    }
                    this.f9099a = State.VISIBLE;
                    this.f9100b = LifecycleImpact.ADDING;
                    return;
                }
                return;
            }
            if (i10 == 2) {
                if (FragmentManager.M0(2)) {
                    Log.v("FragmentManager", "SpecialEffectsController: For fragment " + this.f9101c + " mFinalState = " + this.f9099a + " -> REMOVED. mLifecycleImpact  = " + this.f9100b + " to REMOVING.");
                }
                this.f9099a = State.REMOVED;
                this.f9100b = LifecycleImpact.REMOVING;
                return;
            }
            if (i10 == 3 && this.f9099a != State.REMOVED) {
                if (FragmentManager.M0(2)) {
                    Log.v("FragmentManager", "SpecialEffectsController: For fragment " + this.f9101c + " mFinalState = " + this.f9099a + " -> " + state + ". ");
                }
                this.f9099a = state;
            }
        }

        abstract void l();

        public String toString() {
            return "Operation {" + Integer.toHexString(System.identityHashCode(this)) + "} {mFinalState = " + this.f9099a + "} {mLifecycleImpact = " + this.f9100b + "} {mFragment = " + this.f9101c + "}";
        }

        enum State {
            REMOVED,
            VISIBLE,
            GONE,
            INVISIBLE;

            @NonNull
            static State from(@NonNull View view) {
                return (view.getAlpha() == 0.0f && view.getVisibility() == 0) ? INVISIBLE : from(view.getVisibility());
            }

            void applyState(@NonNull View view) {
                int i10 = a.f9107a[ordinal()];
                if (i10 == 1) {
                    ViewGroup viewGroup = (ViewGroup) view.getParent();
                    if (viewGroup != null) {
                        if (FragmentManager.M0(2)) {
                            Log.v("FragmentManager", "SpecialEffectsController: Removing view " + view + " from container " + viewGroup);
                        }
                        viewGroup.removeView(view);
                        return;
                    }
                    return;
                }
                if (i10 == 2) {
                    if (FragmentManager.M0(2)) {
                        Log.v("FragmentManager", "SpecialEffectsController: Setting view " + view + " to VISIBLE");
                    }
                    view.setVisibility(0);
                    return;
                }
                if (i10 == 3) {
                    if (FragmentManager.M0(2)) {
                        Log.v("FragmentManager", "SpecialEffectsController: Setting view " + view + " to GONE");
                    }
                    view.setVisibility(8);
                    return;
                }
                if (i10 != 4) {
                    return;
                }
                if (FragmentManager.M0(2)) {
                    Log.v("FragmentManager", "SpecialEffectsController: Setting view " + view + " to INVISIBLE");
                }
                view.setVisibility(4);
            }

            @NonNull
            static State from(int i10) {
                if (i10 == 0) {
                    return VISIBLE;
                }
                if (i10 == 4) {
                    return INVISIBLE;
                }
                if (i10 == 8) {
                    return GONE;
                }
                throw new IllegalArgumentException("Unknown visibility " + i10);
            }
        }
    }
}
