package com.yandex.div.core.view2.divs;

import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.RecyclerView.ViewHolder;
import com.android.billingclient.api.BillingClient;
import com.transsion.playercommon.vishaapis.gslb.GslbInterceptor;
import com.yandex.div2.DivVisibility;
import defpackage.e74;
import defpackage.g3;
import defpackage.i81;
import defpackage.mz4;
import defpackage.qj3;
import defpackage.y45;
import defpackage.zfb;
import defpackage.zl2;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010!\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010%\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u001c\n\u0002\b\u0007\b \u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\b\u0012\u0004\u0012\u00028\u00000\u00032\u00020\u0004B\u0015\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0004\b\b\u0010\tJ\r\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\u000b\u0010\fJ\u0017\u0010\u000f\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\rH\u0014¢\u0006\u0004\b\u000f\u0010\u0010J\u0017\u0010\u0011\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\rH\u0014¢\u0006\u0004\b\u0011\u0010\u0010J!\u0010\u0015\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\r2\b\b\u0002\u0010\u0014\u001a\u00020\u0013H\u0004¢\u0006\u0004\b\u0015\u0010\u0016J\u000f\u0010\u0017\u001a\u00020\rH\u0016¢\u0006\u0004\b\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\nH\u0002¢\u0006\u0004\b\u0019\u0010\fR\u001d\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u001a8\u0006¢\u0006\f\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001d\u0010\u001eR \u0010!\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u001f0\u001a8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b \u0010\u001cR\u001d\u0010$\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0006¢\u0006\f\n\u0004\b\"\u0010\u001c\u001a\u0004\b#\u0010\u001eR \u0010(\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020&0%8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010'R \u0010+\u001a\b\u0012\u0004\u0012\u00020)0\u001a8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u000f\u0010\u001c\u001a\u0004\b*\u0010\u001eR \u0010/\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u001f0,8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b-\u0010.R\u0018\u00102\u001a\u00020\u0013*\u00020\u00068BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b0\u00101¨\u00063"}, d2 = {"Lcom/yandex/div/core/view2/divs/VisibilityAwareAdapter;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "VH", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Lqj3;", "", "Lzl2;", "items", MethodDecl.initName, "(Ljava/util/List;)V", "Lzfb;", "t", "()V", "", "position", "s", "(I)V", "r", "rawIndex", "Lcom/yandex/div2/DivVisibility;", "newVisibility", "u", "(ILcom/yandex/div2/DivVisibility;)V", "getItemCount", "()I", "k", "", "o", "Ljava/util/List;", CmcdData.STREAMING_FORMAT_HLS, "()Ljava/util/List;", "Lmz4;", TtmlNode.TAG_P, "_visibleItems", "q", "j", "visibleItems", "", "", "Ljava/util/Map;", "visibilityMap", "Lqc2;", "getSubscriptions", BillingClient.FeatureType.SUBSCRIPTIONS, "", GslbInterceptor.HEADER_KEY_GSLB, "()Ljava/lang/Iterable;", "indexedItems", CmcdData.OBJECT_TYPE_INIT_SEGMENT, "(Lzl2;)Lcom/yandex/div2/DivVisibility;", "visibility", "div_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public abstract class VisibilityAwareAdapter<VH extends RecyclerView.ViewHolder> extends RecyclerView.Adapter<VH> implements qj3 {

    public final List items;

    public final List _visibleItems;

    public final List visibleItems;

    public final Map visibilityMap;

    public final List subscriptions;

    public static final class a extends g3 {
        public a() {
        }

        @Override
        public final boolean contains(Object obj) {
            if (obj instanceof zl2) {
                return f((zl2) obj);
            }
            return false;
        }

        public boolean f(zl2 zl2Var) {
            return super.contains(zl2Var);
        }

        @Override
        public int getSize() {
            return VisibilityAwareAdapter.this._visibleItems.size();
        }

        @Override
        public final int indexOf(Object obj) {
            if (obj instanceof zl2) {
                return l((zl2) obj);
            }
            return -1;
        }

        @Override
        public zl2 get(int i) {
            return (zl2) ((mz4) VisibilityAwareAdapter.this._visibleItems.get(i)).d();
        }

        public int l(zl2 zl2Var) {
            return super.indexOf(zl2Var);
        }

        @Override
        public final int lastIndexOf(Object obj) {
            if (obj instanceof zl2) {
                return m((zl2) obj);
            }
            return -1;
        }

        public int m(zl2 zl2Var) {
            return super.lastIndexOf(zl2Var);
        }
    }

    public VisibilityAwareAdapter(List list) {
        y45.j(list, "items");
        this.items = i81.e1(list);
        this._visibleItems = new ArrayList();
        this.visibleItems = new a();
        this.visibilityMap = new LinkedHashMap();
        this.subscriptions = new ArrayList();
        k();
        t();
    }

    public static void v(VisibilityAwareAdapter visibilityAwareAdapter, int i, DivVisibility divVisibility, int i2, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: updateItemVisibility");
        }
        if ((i2 & 2) != 0) {
            divVisibility = visibilityAwareAdapter.i((zl2) visibilityAwareAdapter.items.get(i));
        }
        visibilityAwareAdapter.u(i, divVisibility);
    }

    public final Iterable g() {
        return i81.j1(this.items);
    }

    @Override
    public int getItemCount() {
        return this.visibleItems.size();
    }

    @Override
    public List getSubscriptions() {
        return this.subscriptions;
    }

    public final List getItems() {
        return this.items;
    }

    public final DivVisibility i(zl2 zl2Var) {
        return (DivVisibility) zl2Var.c().b().getVisibility().b(zl2Var.d());
    }

    public final List getVisibleItems() {
        return this.visibleItems;
    }

    public final void k() {
        for (mz4 mz4Var : g()) {
            boolean z = i((zl2) mz4Var.d()) != DivVisibility.GONE;
            this.visibilityMap.put(mz4Var.d(), Boolean.valueOf(z));
            if (z) {
                this._visibleItems.add(mz4Var);
            }
        }
    }

    public void r(int position) {
        notifyItemInserted(position);
    }

    public void s(int position) {
        notifyItemRemoved(position);
    }

    public final void t() {
        closeAllSubscription();
        for (final mz4 mz4Var : g()) {
            addSubscription(((zl2) mz4Var.d()).c().b().getVisibility().e(((zl2) mz4Var.d()).d(), new e74(this) {
                final VisibilityAwareAdapter<VH> this$0;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                    this.this$0 = this;
                }

                @Override
                public Object invoke(Object obj) {
                    invoke((DivVisibility) obj);
                    return zfb.a;
                }

                /* JADX WARN: Type inference fix 'apply assigned field type' failed
                java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
                	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
                	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
                	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
                	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
                	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
                	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
                	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
                 */
                public final void invoke(DivVisibility divVisibility) {
                    y45.j(divVisibility, "it");
                    this.this$0.u(mz4Var.c(), divVisibility);
                }
            }));
        }
    }

    public final void u(int rawIndex, DivVisibility newVisibility) {
        y45.j(newVisibility, "newVisibility");
        zl2 zl2Var = (zl2) this.items.get(rawIndex);
        Boolean bool = (Boolean) this.visibilityMap.get(zl2Var);
        int i = 0;
        boolean zBooleanValue = bool != null ? bool.booleanValue() : false;
        boolean z = newVisibility != DivVisibility.GONE;
        int i2 = -1;
        if (!zBooleanValue && z) {
            Iterator it = this._visibleItems.iterator();
            while (true) {
                if (!it.hasNext()) {
                    i = -1;
                    break;
                } else if (((mz4) it.next()).c() > rawIndex) {
                    break;
                } else {
                    i++;
                }
            }
            Integer numValueOf = Integer.valueOf(i);
            if (numValueOf.intValue() == -1) {
                numValueOf = null;
            }
            int iIntValue = numValueOf != null ? numValueOf.intValue() : this._visibleItems.size();
            this._visibleItems.add(iIntValue, new mz4(rawIndex, zl2Var));
            r(iIntValue);
        } else if (zBooleanValue && !z) {
            Iterator it2 = this._visibleItems.iterator();
            while (it2.hasNext()) {
                if (y45.e(((mz4) it2.next()).d(), zl2Var)) {
                    i2 = i;
                    break;
                }
                i++;
            }
            this._visibleItems.remove(i2);
            s(i2);
        }
        this.visibilityMap.put(zl2Var, Boolean.valueOf(z));
    }
}
