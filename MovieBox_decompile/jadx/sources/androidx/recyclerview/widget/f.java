package androidx.recyclerview.widget;

import android.util.Log;
import android.view.ViewGroup;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;

class f implements k.b {

    private final ConcatAdapter f14055a;

    private final v f14056b;

    private List f14057c = new ArrayList();

    private final IdentityHashMap f14058d = new IdentityHashMap();

    private List f14059e = new ArrayList();

    private a f14060f = new a();

    private final ConcatAdapter.Config.StableIdMode f14061g;

    private final s f14062h;

    static class a {

        k f14063a;

        int f14064b;

        boolean f14065c;

        a() {
        }
    }

    f(ConcatAdapter concatAdapter, ConcatAdapter.Config config) {
        this.f14055a = concatAdapter;
        if (config.f13779a) {
            this.f14056b = new v.a();
        } else {
            this.f14056b = new v.b();
        }
        ConcatAdapter.Config.StableIdMode stableIdMode = config.f13780b;
        this.f14061g = stableIdMode;
        if (stableIdMode == ConcatAdapter.Config.StableIdMode.NO_STABLE_IDS) {
            this.f14062h = new s.b();
        } else if (stableIdMode == ConcatAdapter.Config.StableIdMode.ISOLATED_STABLE_IDS) {
            this.f14062h = new s.a();
        } else {
            if (stableIdMode != ConcatAdapter.Config.StableIdMode.SHARED_STABLE_IDS) {
                throw new IllegalArgumentException("unknown stable id mode");
            }
            this.f14062h = new s.c();
        }
    }

    private void D(a aVar) {
        aVar.f14065c = false;
        aVar.f14063a = null;
        aVar.f14064b = -1;
        this.f14060f = aVar;
    }

    private void i() {
        RecyclerView.Adapter.StateRestorationPolicy stateRestorationPolicyJ = j();
        if (stateRestorationPolicyJ != this.f14055a.getStateRestorationPolicy()) {
            this.f14055a.h(stateRestorationPolicyJ);
        }
    }

    private RecyclerView.Adapter.StateRestorationPolicy j() {
        for (k kVar : this.f14059e) {
            RecyclerView.Adapter.StateRestorationPolicy stateRestorationPolicy = kVar.f14086c.getStateRestorationPolicy();
            RecyclerView.Adapter.StateRestorationPolicy stateRestorationPolicy2 = RecyclerView.Adapter.StateRestorationPolicy.PREVENT;
            if (stateRestorationPolicy == stateRestorationPolicy2) {
                return stateRestorationPolicy2;
            }
            if (stateRestorationPolicy == RecyclerView.Adapter.StateRestorationPolicy.PREVENT_WHEN_EMPTY && kVar.a() == 0) {
                return stateRestorationPolicy2;
            }
        }
        return RecyclerView.Adapter.StateRestorationPolicy.ALLOW;
    }

    private int k(k kVar) {
        k kVar2;
        Iterator it = this.f14059e.iterator();
        int iA = 0;
        while (it.hasNext() && (kVar2 = (k) it.next()) != kVar) {
            iA += kVar2.a();
        }
        return iA;
    }

    private a l(int i10) {
        a aVar = this.f14060f;
        if (aVar.f14065c) {
            aVar = new a();
        } else {
            aVar.f14065c = true;
        }
        int iA = i10;
        for (k kVar : this.f14059e) {
            if (kVar.a() > iA) {
                aVar.f14063a = kVar;
                aVar.f14064b = iA;
                break;
            }
            iA -= kVar.a();
        }
        if (aVar.f14063a != null) {
            return aVar;
        }
        throw new IllegalArgumentException("Cannot find wrapper for " + i10);
    }

    private k m(RecyclerView.Adapter adapter) {
        int iT = t(adapter);
        if (iT == -1) {
            return null;
        }
        return (k) this.f14059e.get(iT);
    }

    private k r(RecyclerView.a0 a0Var) {
        k kVar = (k) this.f14058d.get(a0Var);
        if (kVar != null) {
            return kVar;
        }
        throw new IllegalStateException("Cannot find wrapper for " + a0Var + ", seems like it is not bound by this adapter: " + this);
    }

    private int t(RecyclerView.Adapter adapter) {
        int size = this.f14059e.size();
        for (int i10 = 0; i10 < size; i10++) {
            if (((k) this.f14059e.get(i10)).f14086c == adapter) {
                return i10;
            }
        }
        return -1;
    }

    private boolean u(RecyclerView recyclerView) {
        Iterator it = this.f14057c.iterator();
        while (it.hasNext()) {
            if (((WeakReference) it.next()).get() == recyclerView) {
                return true;
            }
        }
        return false;
    }

    public void A(RecyclerView.a0 a0Var) {
        r(a0Var).f14086c.onViewAttachedToWindow(a0Var);
    }

    public void B(RecyclerView.a0 a0Var) {
        r(a0Var).f14086c.onViewDetachedFromWindow(a0Var);
    }

    public void C(RecyclerView.a0 a0Var) {
        k kVar = (k) this.f14058d.get(a0Var);
        if (kVar != null) {
            kVar.f14086c.onViewRecycled(a0Var);
            this.f14058d.remove(a0Var);
            return;
        }
        throw new IllegalStateException("Cannot find wrapper for " + a0Var + ", seems like it is not bound by this adapter: " + this);
    }

    @Override
    public void a(k kVar, int i10, int i11, Object obj) {
        this.f14055a.notifyItemRangeChanged(i10 + k(kVar), i11, obj);
    }

    @Override
    public void b(k kVar, int i10, int i11) {
        this.f14055a.notifyItemRangeInserted(i10 + k(kVar), i11);
    }

    @Override
    public void c(k kVar, int i10, int i11) {
        int iK = k(kVar);
        this.f14055a.notifyItemMoved(i10 + iK, i11 + iK);
    }

    @Override
    public void d(k kVar) {
        i();
    }

    @Override
    public void e(k kVar) {
        this.f14055a.notifyDataSetChanged();
        i();
    }

    @Override
    public void f(k kVar, int i10, int i11) {
        this.f14055a.notifyItemRangeRemoved(i10 + k(kVar), i11);
    }

    boolean g(int i10, RecyclerView.Adapter adapter) {
        if (i10 < 0 || i10 > this.f14059e.size()) {
            throw new IndexOutOfBoundsException("Index must be between 0 and " + this.f14059e.size() + ". Given:" + i10);
        }
        if (s()) {
            androidx.core.util.i.b(adapter.hasStableIds(), "All sub adapters must have stable ids when stable id mode is ISOLATED_STABLE_IDS or SHARED_STABLE_IDS");
        } else if (adapter.hasStableIds()) {
            Log.w("ConcatAdapter", "Stable ids in the adapter will be ignored as the ConcatAdapter is configured not to have stable ids");
        }
        if (m(adapter) != null) {
            return false;
        }
        k kVar = new k(adapter, this, this.f14056b, this.f14062h.a());
        this.f14059e.add(i10, kVar);
        Iterator it = this.f14057c.iterator();
        while (it.hasNext()) {
            RecyclerView recyclerView = (RecyclerView) ((WeakReference) it.next()).get();
            if (recyclerView != null) {
                adapter.onAttachedToRecyclerView(recyclerView);
            }
        }
        if (kVar.a() > 0) {
            this.f14055a.notifyItemRangeInserted(k(kVar), kVar.a());
        }
        i();
        return true;
    }

    boolean h(RecyclerView.Adapter adapter) {
        return g(this.f14059e.size(), adapter);
    }

    public long n(int i10) {
        a aVarL = l(i10);
        long jB = aVarL.f14063a.b(aVarL.f14064b);
        D(aVarL);
        return jB;
    }

    public int o(int i10) {
        a aVarL = l(i10);
        int iC = aVarL.f14063a.c(aVarL.f14064b);
        D(aVarL);
        return iC;
    }

    public int p(RecyclerView.Adapter adapter, RecyclerView.a0 a0Var, int i10) {
        k kVar = (k) this.f14058d.get(a0Var);
        if (kVar == null) {
            return -1;
        }
        int iK = i10 - k(kVar);
        int itemCount = kVar.f14086c.getItemCount();
        if (iK >= 0 && iK < itemCount) {
            return kVar.f14086c.findRelativeAdapterPositionIn(adapter, a0Var, iK);
        }
        throw new IllegalStateException("Detected inconsistent adapter updates. The local position of the view holder maps to " + iK + " which is out of bounds for the adapter with size " + itemCount + ".Make sure to immediately call notify methods in your adapter when you change the backing dataviewHolder:" + a0Var + "adapter:" + adapter);
    }

    public int q() {
        Iterator it = this.f14059e.iterator();
        int iA = 0;
        while (it.hasNext()) {
            iA += ((k) it.next()).a();
        }
        return iA;
    }

    public boolean s() {
        return this.f14061g != ConcatAdapter.Config.StableIdMode.NO_STABLE_IDS;
    }

    public void v(RecyclerView recyclerView) {
        if (u(recyclerView)) {
            return;
        }
        this.f14057c.add(new WeakReference(recyclerView));
        Iterator it = this.f14059e.iterator();
        while (it.hasNext()) {
            ((k) it.next()).f14086c.onAttachedToRecyclerView(recyclerView);
        }
    }

    public void w(RecyclerView.a0 a0Var, int i10) {
        a aVarL = l(i10);
        this.f14058d.put(a0Var, aVarL.f14063a);
        aVarL.f14063a.d(a0Var, aVarL.f14064b);
        D(aVarL);
    }

    public RecyclerView.a0 x(ViewGroup viewGroup, int i10) {
        return this.f14056b.a(i10).e(viewGroup, i10);
    }

    public void y(RecyclerView recyclerView) {
        for (int size = this.f14057c.size() - 1; size >= 0; size--) {
            WeakReference weakReference = (WeakReference) this.f14057c.get(size);
            if (weakReference.get() != null) {
                if (weakReference.get() == recyclerView) {
                    this.f14057c.remove(size);
                    break;
                }
            } else {
                this.f14057c.remove(size);
            }
        }
        Iterator it = this.f14059e.iterator();
        while (it.hasNext()) {
            ((k) it.next()).f14086c.onDetachedFromRecyclerView(recyclerView);
        }
    }

    public boolean z(RecyclerView.a0 a0Var) {
        k kVar = (k) this.f14058d.get(a0Var);
        if (kVar != null) {
            boolean zOnFailedToRecycleView = kVar.f14086c.onFailedToRecycleView(a0Var);
            this.f14058d.remove(a0Var);
            return zOnFailedToRecycleView;
        }
        throw new IllegalStateException("Cannot find wrapper for " + a0Var + ", seems like it is not bound by this adapter: " + this);
    }
}
