package androidx.appcompat.view.menu;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;

public abstract class b implements l {

    protected Context f1099a;

    protected Context f1100b;

    protected f f1101c;

    protected LayoutInflater f1102d;

    protected LayoutInflater f1103e;

    private l.a f1104f;

    private int f1105g;

    private int f1106h;

    protected m f1107i;

    private int f1108j;

    public b(Context context, int i10, int i11) {
        this.f1099a = context;
        this.f1102d = LayoutInflater.from(context);
        this.f1105g = i10;
        this.f1106h = i11;
    }

    protected void a(View view, int i10) {
        ViewGroup viewGroup = (ViewGroup) view.getParent();
        if (viewGroup != null) {
            viewGroup.removeView(view);
        }
        ((ViewGroup) this.f1107i).addView(view, i10);
    }

    @Override
    public void b(f fVar, boolean z10) {
        l.a aVar = this.f1104f;
        if (aVar != null) {
            aVar.b(fVar, z10);
        }
    }

    @Override
    public boolean c(f fVar, h hVar) {
        return false;
    }

    @Override
    public void d(l.a aVar) {
        this.f1104f = aVar;
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override
    public boolean f(q qVar) {
        l.a aVar = this.f1104f;
        f fVar = qVar;
        if (aVar == null) {
            return false;
        }
        if (qVar == null) {
            fVar = this.f1101c;
        }
        return aVar.c(fVar);
    }

    @Override
    public int getId() {
        return this.f1108j;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void h(boolean z10) {
        ViewGroup viewGroup = (ViewGroup) this.f1107i;
        if (viewGroup == null) {
            return;
        }
        f fVar = this.f1101c;
        int i10 = 0;
        if (fVar != null) {
            fVar.t();
            ArrayList arrayListG = this.f1101c.G();
            int size = arrayListG.size();
            int i11 = 0;
            for (int i12 = 0; i12 < size; i12++) {
                h hVar = (h) arrayListG.get(i12);
                if (s(i11, hVar)) {
                    View childAt = viewGroup.getChildAt(i11);
                    h itemData = childAt instanceof m.a ? ((m.a) childAt).getItemData() : null;
                    View viewP = p(hVar, childAt, viewGroup);
                    if (hVar != itemData) {
                        viewP.setPressed(false);
                        viewP.jumpDrawablesToCurrentState();
                    }
                    if (viewP != childAt) {
                        a(viewP, i11);
                    }
                    i11++;
                }
            }
            i10 = i11;
        }
        while (i10 < viewGroup.getChildCount()) {
            if (!n(viewGroup, i10)) {
                i10++;
            }
        }
    }

    @Override
    public boolean j(f fVar, h hVar) {
        return false;
    }

    @Override
    public void k(Context context, f fVar) {
        this.f1100b = context;
        this.f1103e = LayoutInflater.from(context);
        this.f1101c = fVar;
    }

    public abstract void l(h hVar, m.a aVar);

    public m.a m(ViewGroup viewGroup) {
        return (m.a) this.f1102d.inflate(this.f1106h, viewGroup, false);
    }

    protected boolean n(ViewGroup viewGroup, int i10) {
        viewGroup.removeViewAt(i10);
        return true;
    }

    public l.a o() {
        return this.f1104f;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public View p(h hVar, View view, ViewGroup viewGroup) {
        m.a aVarM = view instanceof m.a ? (m.a) view : m(viewGroup);
        l(hVar, aVarM);
        return (View) aVarM;
    }

    public m q(ViewGroup viewGroup) {
        if (this.f1107i == null) {
            m mVar = (m) this.f1102d.inflate(this.f1105g, viewGroup, false);
            this.f1107i = mVar;
            mVar.initialize(this.f1101c);
            h(true);
        }
        return this.f1107i;
    }

    public void r(int i10) {
        this.f1108j = i10;
    }

    public abstract boolean s(int i10, h hVar);
}
