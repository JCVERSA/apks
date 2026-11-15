package com.yandex.div.core.view2.divs;

import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.recyclerview.widget.DiffUtil;
import androidx.recyclerview.widget.ListUpdateCallback;
import androidx.recyclerview.widget.RecyclerView;
import com.yandex.div.core.downloader.DivPatchApply;
import com.yandex.div.core.expression.ExpressionResolverImpl;
import com.yandex.div.core.view2.divs.DivCollectionViewHolder;
import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.Div;
import com.yandex.div2.DivVisibility;
import defpackage.bh2;
import defpackage.do2;
import defpackage.i81;
import defpackage.og2;
import defpackage.oj3;
import defpackage.q15;
import defpackage.y45;
import defpackage.y71;
import defpackage.zl2;
import defpackage.zn2;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0007\b \u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\b\u0012\u0004\u0012\u00028\u00000\u0003:\u0002\u001c\u001dB\u0015\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\u0004\b\u0007\u0010\bJ\u0017\u0010\u000b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u0017\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00028\u0000H\u0016¢\u0006\u0004\b\u000f\u0010\u0010J'\u0010\u0018\u001a\u00020\u00172\b\u0010\u0012\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0016\u001a\u00020\u0015¢\u0006\u0004\b\u0018\u0010\u0019J\u001d\u0010\u001b\u001a\u00020\u000e2\f\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H\u0016¢\u0006\u0004\b\u001b\u0010\b¨\u0006\u001e"}, d2 = {"Lcom/yandex/div/core/view2/divs/DivCollectionAdapter;", "Lcom/yandex/div/core/view2/divs/DivCollectionViewHolder;", "VH", "Lcom/yandex/div/core/view2/divs/VisibilityAwareAdapter;", "", "Lzl2;", "items", MethodDecl.initName, "(Ljava/util/List;)V", "", "position", "getItemViewType", "(I)I", "holder", "Lzfb;", "x", "(Lcom/yandex/div/core/view2/divs/DivCollectionViewHolder;)V", "Landroidx/recyclerview/widget/RecyclerView;", "recyclerView", "Lzn2;", "divPatchCache", "Lcom/yandex/div/core/view2/a;", "bindingContext", "", "w", "(Landroidx/recyclerview/widget/RecyclerView;Lzn2;Lcom/yandex/div/core/view2/a;)Z", "newItems", "y", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "b", "div_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public abstract class DivCollectionAdapter<VH extends DivCollectionViewHolder> extends VisibilityAwareAdapter<VH> {

    public static final class a extends DiffUtil.Callback {
        public final List a;
        public final List b;

        public a(List list, List list2) {
            y45.j(list, "oldItems");
            y45.j(list2, "newItems");
            this.a = list;
            this.b = list2;
        }

        public final boolean a(zl2 zl2Var, zl2 zl2Var2) {
            if (zl2Var == null || zl2Var2 == null) {
                return y45.e(zl2Var, zl2Var2);
            }
            b(zl2Var, true);
            b(zl2Var2, true);
            boolean zA = zl2Var.c().a(zl2Var2.c(), zl2Var.d(), zl2Var2.d());
            b(zl2Var, false);
            b(zl2Var2, false);
            return zA;
        }

        @Override
        public boolean areContentsTheSame(int i, int i2) {
            return a((zl2) i81.r0(this.a, i), (zl2) i81.r0(this.b, i2));
        }

        @Override
        public boolean areItemsTheSame(int i, int i2) {
            Div divC;
            og2 og2VarB;
            Expression expressionF;
            Div divC2;
            og2 og2VarB2;
            Expression expressionF2;
            zl2 zl2Var = (zl2) i81.r0(this.a, i);
            zl2 zl2Var2 = (zl2) i81.r0(this.b, i2);
            String str = null;
            String str2 = (zl2Var == null || (divC2 = zl2Var.c()) == null || (og2VarB2 = divC2.b()) == null || (expressionF2 = og2VarB2.f()) == null) ? null : (String) expressionF2.b(zl2Var.d());
            if (zl2Var2 != null && (divC = zl2Var2.c()) != null && (og2VarB = divC.b()) != null && (expressionF = og2VarB.f()) != null) {
                str = (String) expressionF.b(zl2Var2.d());
            }
            return (str2 == null && str == null) ? a(zl2Var, zl2Var2) : y45.e(str2, str);
        }

        public final void b(zl2 zl2Var, boolean z) {
            oj3 oj3VarD = zl2Var.d();
            ExpressionResolverImpl expressionResolverImpl = oj3VarD instanceof ExpressionResolverImpl ? (ExpressionResolverImpl) oj3VarD : null;
            if (expressionResolverImpl == null) {
                return;
            }
            expressionResolverImpl.n(z);
        }

        @Override
        public int getNewListSize() {
            return this.b.size();
        }

        @Override
        public int getOldListSize() {
            return this.a.size();
        }
    }

    public final class b implements ListUpdateCallback {
        public final List b;
        public final DivCollectionAdapter c;

        public b(DivCollectionAdapter divCollectionAdapter, List list) {
            y45.j(list, "newItems");
            this.c = divCollectionAdapter;
            this.b = list;
        }

        @Override
        public void onChanged(int i, int i2, Object obj) {
        }

        @Override
        public void onInserted(int i, int i2) {
            int size = i + i2 > this.b.size() ? this.b.size() - i2 : i;
            for (int i3 = 0; i3 < i2; i3++) {
                int i4 = i + i3;
                this.c.getItems().add(i4, this.b.get(size + i3));
                VisibilityAwareAdapter.v(this.c, i4, null, 2, null);
            }
        }

        @Override
        public void onMoved(int i, int i2) {
            onRemoved(i, 1);
            onInserted(i2, 1);
        }

        @Override
        public void onRemoved(int i, int i2) {
            for (int i3 = 0; i3 < i2; i3++) {
                this.c.u(i, DivVisibility.GONE);
                this.c.getItems().remove(i);
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DivCollectionAdapter(List list) {
        super(list);
        y45.j(list, "items");
    }

    @Override
    public int getItemViewType(int position) {
        zl2 zl2Var = (zl2) i81.r0(getVisibleItems(), position);
        if (zl2Var == null) {
            return 0;
        }
        Expression expressionF = zl2Var.c().b().f();
        String str = expressionF != null ? (String) expressionF.b(zl2Var.d()) : null;
        if (str != null) {
            return str.hashCode();
        }
        return 0;
    }

    public final boolean w(RecyclerView recyclerView, zn2 divPatchCache, com.yandex.div.core.view2.a bindingContext) {
        y45.j(divPatchCache, "divPatchCache");
        y45.j(bindingContext, "bindingContext");
        do2 do2VarA = divPatchCache.a(bindingContext.a().getDataTag());
        if (do2VarA == null) {
            return false;
        }
        DivPatchApply divPatchApply = new DivPatchApply(do2VarA);
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        int size = 0;
        while (size < getItems().size()) {
            String id = ((zl2) getItems().get(size)).c().b().getId();
            List listB = id != null ? divPatchCache.b(bindingContext.a().getDataTag(), id) : null;
            if (listB != null) {
                u(size, DivVisibility.GONE);
                getItems().remove(size);
                List listS = bh2.s(listB, bindingContext.b());
                getItems().addAll(size, listS);
                Iterator it = y71.l(listS).iterator();
                while (it.hasNext()) {
                    VisibilityAwareAdapter.v(this, ((q15) it).nextInt() + size, null, 2, null);
                }
                size += listB.size() - 1;
                linkedHashSet.add(id);
            }
            size++;
        }
        Set setKeySet = do2VarA.b().keySet();
        ArrayList<String> arrayList = new ArrayList();
        for (Object obj : setKeySet) {
            if (!linkedHashSet.contains((String) obj)) {
                arrayList.add(obj);
            }
        }
        for (String str : arrayList) {
            int size2 = getItems().size();
            for (int i = 0; i < size2; i++) {
                Div divV = divPatchApply.v(recyclerView != null ? recyclerView : bindingContext.a(), ((zl2) getItems().get(i)).c(), str, bindingContext.b());
                if (divV != null) {
                    u(i, DivVisibility.GONE);
                    getItems().set(i, new zl2(divV, bindingContext.b()));
                    VisibilityAwareAdapter.v(this, i, null, 2, null);
                    break;
                }
            }
        }
        if (linkedHashSet.isEmpty()) {
            return false;
        }
        t();
        return true;
    }

    @Override
    public void onViewAttachedToWindow(DivCollectionViewHolder holder) {
        y45.j(holder, "holder");
        super.onViewAttachedToWindow(holder);
        holder.e();
    }

    public void y(List newItems) {
        y45.j(newItems, "newItems");
        a aVar = new a(getItems(), newItems);
        DiffUtil.calculateDiff(aVar).dispatchUpdatesTo(new b(this, newItems));
        t();
    }
}
