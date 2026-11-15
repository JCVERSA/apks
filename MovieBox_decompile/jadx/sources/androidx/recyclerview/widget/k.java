package androidx.recyclerview.widget;

import android.view.ViewGroup;

class k {

    private final v.c f14084a;

    private final s.d f14085b;

    public final RecyclerView.Adapter f14086c;

    final b f14087d;

    int f14088e;

    private RecyclerView.g f14089f = new a();

    class a extends RecyclerView.g {
        a() {
        }

        @Override
        public void onChanged() {
            k kVar = k.this;
            kVar.f14088e = kVar.f14086c.getItemCount();
            k kVar2 = k.this;
            kVar2.f14087d.e(kVar2);
        }

        @Override
        public void onItemRangeChanged(int i10, int i11) {
            k kVar = k.this;
            kVar.f14087d.a(kVar, i10, i11, null);
        }

        @Override
        public void onItemRangeInserted(int i10, int i11) {
            k kVar = k.this;
            kVar.f14088e += i11;
            kVar.f14087d.b(kVar, i10, i11);
            k kVar2 = k.this;
            if (kVar2.f14088e <= 0 || kVar2.f14086c.getStateRestorationPolicy() != RecyclerView.Adapter.StateRestorationPolicy.PREVENT_WHEN_EMPTY) {
                return;
            }
            k kVar3 = k.this;
            kVar3.f14087d.d(kVar3);
        }

        @Override
        public void onItemRangeMoved(int i10, int i11, int i12) {
            androidx.core.util.i.b(i12 == 1, "moving more than 1 item is not supported in RecyclerView");
            k kVar = k.this;
            kVar.f14087d.c(kVar, i10, i11);
        }

        @Override
        public void onItemRangeRemoved(int i10, int i11) {
            k kVar = k.this;
            kVar.f14088e -= i11;
            kVar.f14087d.f(kVar, i10, i11);
            k kVar2 = k.this;
            if (kVar2.f14088e >= 1 || kVar2.f14086c.getStateRestorationPolicy() != RecyclerView.Adapter.StateRestorationPolicy.PREVENT_WHEN_EMPTY) {
                return;
            }
            k kVar3 = k.this;
            kVar3.f14087d.d(kVar3);
        }

        @Override
        public void onStateRestorationPolicyChanged() {
            k kVar = k.this;
            kVar.f14087d.d(kVar);
        }

        @Override
        public void onItemRangeChanged(int i10, int i11, Object obj) {
            k kVar = k.this;
            kVar.f14087d.a(kVar, i10, i11, obj);
        }
    }

    interface b {
        void a(k kVar, int i10, int i11, Object obj);

        void b(k kVar, int i10, int i11);

        void c(k kVar, int i10, int i11);

        void d(k kVar);

        void e(k kVar);

        void f(k kVar, int i10, int i11);
    }

    k(RecyclerView.Adapter adapter, b bVar, v vVar, s.d dVar) {
        this.f14086c = adapter;
        this.f14087d = bVar;
        this.f14084a = vVar.b(this);
        this.f14085b = dVar;
        this.f14088e = adapter.getItemCount();
        adapter.registerAdapterDataObserver(this.f14089f);
    }

    int a() {
        return this.f14088e;
    }

    public long b(int i10) {
        return this.f14085b.a(this.f14086c.getItemId(i10));
    }

    int c(int i10) {
        return this.f14084a.b(this.f14086c.getItemViewType(i10));
    }

    void d(RecyclerView.a0 a0Var, int i10) {
        this.f14086c.bindViewHolder(a0Var, i10);
    }

    RecyclerView.a0 e(ViewGroup viewGroup, int i10) {
        return this.f14086c.onCreateViewHolder(viewGroup, this.f14084a.a(i10));
    }
}
