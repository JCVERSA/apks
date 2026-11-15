package com.yandex.div.core.view2.errors;

import android.content.Context;
import android.view.ViewGroup;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.recyclerview.widget.DiffUtil;
import androidx.recyclerview.widget.ListAdapter;
import androidx.recyclerview.widget.RecyclerView;
import defpackage.e74;
import defpackage.u74;
import defpackage.y45;
import defpackage.ynb;
import defpackage.zfb;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import org.apache.commons.io.IOUtils;

public final class VariableAdapter extends ListAdapter {
    public final u74 o;

    @Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0007\u0018\u00002\u00020\u0001B3\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\"\u0010\b\u001a\u001e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004j\u0002`\u0007¢\u0006\u0004\b\t\u0010\nJ\u0015\u0010\r\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\r\u0010\u000eJ\u0013\u0010\u000f\u001a\u00020\u0005*\u00020\u000bH\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\u0013\u0010\u0012\u001a\u00020\u0011*\u00020\u000bH\u0002¢\u0006\u0004\b\u0012\u0010\u0013R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R0\u0010\b\u001a\u001e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004j\u0002`\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017¨\u0006\u0018"}, d2 = {"Lcom/yandex/div/core/view2/errors/VariableAdapter$VariableViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/yandex/div/core/view2/errors/VariableView;", "root", "Lkotlin/Function3;", "", "Lzfb;", "Lcom/yandex/div/core/view2/errors/VariableMutator;", "variableMutator", MethodDecl.initName, "(Lcom/yandex/div/core/view2/errors/VariableView;Lu74;)V", "Lynb;", "variable", "b", "(Lynb;)V", "c", "(Lynb;)Ljava/lang/String;", "", "d", "(Lynb;)I", TtmlNode.TAG_P, "Lcom/yandex/div/core/view2/errors/VariableView;", "q", "Lu74;", "div_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class VariableViewHolder extends RecyclerView.ViewHolder {

        public final VariableView root;

        public final u74 variableMutator;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public VariableViewHolder(VariableView variableView, u74 u74Var) {
            super(variableView);
            y45.j(variableView, "root");
            y45.j(u74Var, "variableMutator");
            this.root = variableView;
            this.variableMutator = u74Var;
        }

        public final void b(final ynb variable) {
            y45.j(variable, "variable");
            VariableView variableView = this.root;
            variableView.g().setText(c(variable));
            variableView.h().setText(variable.c());
            variableView.i().setText(variable.d());
            variableView.i().setInputType(d(variable));
            variableView.j(new e74() {
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override
                public Object invoke(Object obj) {
                    invoke((String) obj);
                    return zfb.a;
                }

                public final void invoke(String str) {
                    y45.j(str, "newValue");
                    this.this$0.variableMutator.invoke(variable.a(), variable.b(), str);
                }
            });
        }

        public final String c(ynb ynbVar) {
            if (ynbVar.b().length() <= 0) {
                return ynbVar.a();
            }
            return ynbVar.b() + IOUtils.DIR_SEPARATOR_UNIX + ynbVar.a();
        }

        public final int d(ynb ynbVar) {
            String strC = ynbVar.c();
            return y45.e(strC, "number") ? true : y45.e(strC, TypedValues.Custom.S_INT) ? 2 : 1;
        }
    }

    public static final class a extends DiffUtil.ItemCallback {
        @Override
        public boolean areContentsTheSame(ynb ynbVar, ynb ynbVar2) {
            y45.j(ynbVar, "oldItem");
            y45.j(ynbVar2, "newItem");
            return y45.e(ynbVar.d(), ynbVar2.d());
        }

        @Override
        public boolean areItemsTheSame(ynb ynbVar, ynb ynbVar2) {
            y45.j(ynbVar, "oldItem");
            y45.j(ynbVar2, "newItem");
            return y45.e(ynbVar.a(), ynbVar2.a());
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VariableAdapter(u74 u74Var) {
        super(new a());
        y45.j(u74Var, "variableMutator");
        this.o = u74Var;
    }

    @Override
    public void onBindViewHolder(VariableViewHolder variableViewHolder, int i) {
        y45.j(variableViewHolder, "holder");
        Object obj = getCurrentList().get(i);
        y45.i(obj, "currentList[position]");
        variableViewHolder.b((ynb) obj);
    }

    @Override
    public VariableViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        y45.j(viewGroup, "parent");
        Context context = viewGroup.getContext();
        y45.i(context, "parent.context");
        return new VariableViewHolder(new VariableView(context), this.o);
    }
}
