package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import androidx.media3.extractor.text.ttml.TtmlNode;
import defpackage.y45;
import java.util.List;

public final class lj<T extends ViewGroup> {
    private final Context a;
    private final ViewGroup b;
    private final jr0<T> c;
    private final hr0<T> d;
    private final kj<T> e;

    public lj(Context context, ViewGroup viewGroup, List list, ViewTreeObserver.OnPreDrawListener onPreDrawListener) {
        this(context, viewGroup, list, onPreDrawListener, new jr0(list), new hr0(), new kj(onPreDrawListener));
    }

    /* JADX WARN: Multi-variable type inference failed */
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
    public final boolean a(gz1 gz1Var) {
        ViewGroup viewGroupA;
        fr0<V> fr0VarA = this.c.a(this.a);
        if (fr0VarA == 0 || (viewGroupA = this.d.a(this.b, fr0VarA)) == null) {
            return false;
        }
        this.e.a(this.b, viewGroupA, fr0VarA, gz1Var);
        return true;
    }

    public final void a() {
        this.e.a();
    }

    public lj(Context context, ViewGroup viewGroup, List<fr0<T>> list, ViewTreeObserver.OnPreDrawListener onPreDrawListener, jr0<T> jr0Var, hr0<T> hr0Var, kj<T> kjVar) {
        y45.j(context, "context");
        y45.j(viewGroup, TtmlNode.RUBY_CONTAINER);
        y45.j(list, "designs");
        y45.j(onPreDrawListener, "preDrawListener");
        y45.j(jr0Var, "layoutDesignProvider");
        y45.j(hr0Var, "layoutDesignCreator");
        y45.j(kjVar, "layoutDesignBinder");
        this.a = context;
        this.b = viewGroup;
        this.c = jr0Var;
        this.d = hr0Var;
        this.e = kjVar;
    }
}
