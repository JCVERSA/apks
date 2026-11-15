package com.yandex.div.core.view2.divs.pager;

import android.util.SparseArray;
import android.view.ViewGroup;
import androidx.exifinterface.media.ExifInterface;
import androidx.media3.exoplayer.upstream.CmcdData;
import com.google.android.gms.ads.RequestConfiguration;
import com.yandex.div.core.state.DivStatePath;
import com.yandex.div.core.view2.DivViewCreator;
import com.yandex.div.core.view2.a;
import com.yandex.div.core.view2.divs.DivCollectionAdapter;
import com.yandex.div.core.view2.divs.widgets.DivPagerView;
import com.yandex.div2.DivPager;
import defpackage.c74;
import defpackage.g3;
import defpackage.rg2;
import defpackage.y45;
import defpackage.zl2;
import java.util.List;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import org.mozilla.javascript.ES6Iterator;

@Metadata(d1 = {"\u0000n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0017\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0014\b\u0000\u0018\u0000 \u00192\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001[BS\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\n\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\u0006\u0010\u0014\u001a\u00020\u0013¢\u0006\u0004\b\u0015\u0010\u0016J\u0015\u0010\u0019\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0017¢\u0006\u0004\b\u0019\u0010\u001aJ\u0015\u0010\u001c\u001a\u00020\u00172\u0006\u0010\u001b\u001a\u00020\u0017¢\u0006\u0004\b\u001c\u0010\u001aJ\u001f\u0010 \u001a\u00020\u00022\u0006\u0010\u001e\u001a\u00020\u001d2\u0006\u0010\u001f\u001a\u00020\u0017H\u0016¢\u0006\u0004\b \u0010!J\u000f\u0010\"\u001a\u00020\u0017H\u0016¢\u0006\u0004\b\"\u0010#J\u001f\u0010'\u001a\u00020&2\u0006\u0010$\u001a\u00020\u00022\u0006\u0010%\u001a\u00020\u0017H\u0016¢\u0006\u0004\b'\u0010(J\u001d\u0010*\u001a\u00020&2\f\u0010)\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003H\u0016¢\u0006\u0004\b*\u0010+J\u0017\u0010,\u001a\u00020&2\u0006\u0010%\u001a\u00020\u0017H\u0014¢\u0006\u0004\b,\u0010-J\u0017\u0010.\u001a\u00020&2\u0006\u0010%\u001a\u00020\u0017H\u0014¢\u0006\u0004\b.\u0010-J\u0017\u00100\u001a\u00020&2\u0006\u0010/\u001a\u00020\u0017H\u0002¢\u0006\u0004\b0\u0010-R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b1\u00102R\u0014\u0010\t\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b3\u00104R\u001a\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b5\u00106R\u0014\u0010\u000e\u001a\u00020\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b7\u00108R\u0014\u0010\u0010\u001a\u00020\u000f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b9\u0010:R\u0014\u0010\u0012\u001a\u00020\u00118\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b*\u0010;R\u0014\u0010\u0014\u001a\u00020\u00138\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b<\u0010=R\u001d\u0010C\u001a\b\u0012\u0004\u0012\u00020\u00040>8\u0006¢\u0006\f\n\u0004\b?\u0010@\u001a\u0004\bA\u0010BR\"\u0010G\u001a\u00020\u00178\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bD\u00100\u001a\u0004\bE\u0010#\"\u0004\bF\u0010-R\"\u0010N\u001a\u00020H8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bI\u0010J\u001a\u0004\b?\u0010K\"\u0004\bL\u0010MR*\u0010S\u001a\u00020\u00112\u0006\u0010O\u001a\u00020\u00118\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\bA\u0010;\u001a\u0004\bI\u0010P\"\u0004\bQ\u0010RR\u0016\u0010U\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bT\u00100R\u0016\u0010V\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bE\u00100R\u0014\u0010X\u001a\u00020\u00118BX\u0082\u0004¢\u0006\u0006\u001a\u0004\bW\u0010PR\u0011\u0010Y\u001a\u00020\u00178F¢\u0006\u0006\u001a\u0004\bD\u0010#R\u0014\u0010Z\u001a\u00020\u00178BX\u0082\u0004¢\u0006\u0006\u001a\u0004\bT\u0010#¨\u0006\\"}, d2 = {"Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter;", "Lcom/yandex/div/core/view2/divs/DivCollectionAdapter;", "Lcom/yandex/div/core/view2/divs/pager/DivPagerViewHolder;", "", "Lzl2;", "items", "Lcom/yandex/div/core/view2/a;", "bindingContext", "Lrg2;", "divBinder", "Landroid/util/SparseArray;", "", "pageTranslations", "Lcom/yandex/div/core/view2/DivViewCreator;", "viewCreator", "Lcom/yandex/div/core/state/DivStatePath;", "path", "", "accessibilityEnabled", "Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;", "pagerView", MethodDecl.initName, "(Ljava/util/List;Lcom/yandex/div/core/view2/a;Lrg2;Landroid/util/SparseArray;Lcom/yandex/div/core/view2/DivViewCreator;Lcom/yandex/div/core/state/DivStatePath;ZLcom/yandex/div/core/view2/divs/widgets/DivPagerView;)V", "", "visibleItemIndex", RequestConfiguration.MAX_AD_CONTENT_RATING_G, "(I)I", "rawPosition", "getRealPosition", "Landroid/view/ViewGroup;", "parent", "viewType", "K", "(Landroid/view/ViewGroup;I)Lcom/yandex/div/core/view2/divs/pager/DivPagerViewHolder;", "getItemCount", "()I", "holder", "position", "Lzfb;", "J", "(Lcom/yandex/div/core/view2/divs/pager/DivPagerViewHolder;I)V", "newItems", "y", "(Ljava/util/List;)V", "s", "(I)V", "r", "originalPosition", "I", "t", "Lcom/yandex/div/core/view2/a;", "u", "Lrg2;", "v", "Landroid/util/SparseArray;", "w", "Lcom/yandex/div/core/view2/DivViewCreator;", "x", "Lcom/yandex/div/core/state/DivStatePath;", "Z", "z", "Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;", "Lg3;", ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, "Lg3;", "D", "()Lg3;", "itemsToShow", "B", "F", "N", "orientation", "Lcom/yandex/div2/DivPager$ItemAlignment;", "C", "Lcom/yandex/div2/DivPager$ItemAlignment;", "()Lcom/yandex/div2/DivPager$ItemAlignment;", "L", "(Lcom/yandex/div2/DivPager$ItemAlignment;)V", "crossAxisAlignment", ES6Iterator.VALUE_PROPERTY, "()Z", "M", "(Z)V", "infiniteScrollEnabled", ExifInterface.LONGITUDE_EAST, "removedItems", "currentItem", "H", "isHorizontal", "currentRealItem", "offsetToRealItem", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "div_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class DivPagerAdapter extends DivCollectionAdapter<DivPagerViewHolder> {

    public final g3 itemsToShow;

    public int orientation;

    public DivPager.ItemAlignment crossAxisAlignment;

    public boolean infiniteScrollEnabled;

    public int removedItems;

    public int currentItem;

    public final a bindingContext;

    public final rg2 divBinder;

    public final SparseArray pageTranslations;

    public final DivViewCreator viewCreator;

    public final DivStatePath path;

    public final boolean accessibilityEnabled;

    public final DivPagerView pagerView;

    public static final class b extends g3 {
        public b() {
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
            return DivPagerAdapter.this.getVisibleItems().size() + (DivPagerAdapter.this.getInfiniteScrollEnabled() ? 4 : 0);
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
            if (!DivPagerAdapter.this.getInfiniteScrollEnabled()) {
                return (zl2) DivPagerAdapter.this.getVisibleItems().get(i);
            }
            int size = (DivPagerAdapter.this.getVisibleItems().size() + i) - 2;
            int size2 = DivPagerAdapter.this.getVisibleItems().size();
            int i2 = size % size2;
            return (zl2) DivPagerAdapter.this.getVisibleItems().get(i2 + (size2 & (((i2 ^ size2) & ((-i2) | i2)) >> 31)));
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

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DivPagerAdapter(List list, a aVar, rg2 rg2Var, SparseArray sparseArray, DivViewCreator divViewCreator, DivStatePath divStatePath, boolean z, DivPagerView divPagerView) {
        super(list);
        y45.j(list, "items");
        y45.j(aVar, "bindingContext");
        y45.j(rg2Var, "divBinder");
        y45.j(sparseArray, "pageTranslations");
        y45.j(divViewCreator, "viewCreator");
        y45.j(divStatePath, "path");
        y45.j(divPagerView, "pagerView");
        this.bindingContext = aVar;
        this.divBinder = rg2Var;
        this.pageTranslations = sparseArray;
        this.viewCreator = divViewCreator;
        this.path = divStatePath;
        this.accessibilityEnabled = z;
        this.pagerView = divPagerView;
        this.itemsToShow = new b();
        this.crossAxisAlignment = DivPager.ItemAlignment.START;
        this.currentItem = -1;
    }

    public final boolean H() {
        return this.orientation == 0;
    }

    public final DivPager.ItemAlignment getCrossAxisAlignment() {
        return this.crossAxisAlignment;
    }

    public final int B() {
        return this.pagerView.getCurrentItem$div_release() - E();
    }

    public final boolean getInfiniteScrollEnabled() {
        return this.infiniteScrollEnabled;
    }

    public final g3 getItemsToShow() {
        return this.itemsToShow;
    }

    public final int E() {
        return this.infiniteScrollEnabled ? 2 : 0;
    }

    public final int getOrientation() {
        return this.orientation;
    }

    public final int G(int visibleItemIndex) {
        return visibleItemIndex + E();
    }

    public final void I(int originalPosition) {
        if (originalPosition >= 0 && originalPosition < 2) {
            notifyItemRangeChanged(getVisibleItems().size() + originalPosition, 2 - originalPosition);
            return;
        }
        int size = getVisibleItems().size() - 2;
        if (originalPosition >= getVisibleItems().size() || size > originalPosition) {
            return;
        }
        notifyItemRangeChanged((originalPosition - getVisibleItems().size()) + 2, 2);
    }

    @Override
    public void onBindViewHolder(DivPagerViewHolder holder, int position) {
        y45.j(holder, "holder");
        zl2 zl2Var = (zl2) this.itemsToShow.get(position);
        holder.h(this.bindingContext.c(zl2Var.d()), zl2Var.c(), position, getItems().indexOf(zl2Var));
        Float f = (Float) this.pageTranslations.get(position);
        if (f != null) {
            float fFloatValue = f.floatValue();
            if (H()) {
                holder.itemView.setTranslationX(fFloatValue);
            } else {
                holder.itemView.setTranslationY(fFloatValue);
            }
        }
    }

    @Override
    public DivPagerViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        y45.j(parent, "parent");
        return new DivPagerViewHolder(this.bindingContext, new DivPagerPageLayout(this.bindingContext.a().getContext(), new c74() {
            {
                super(0);
            }

            @Override
            public final Boolean invoke() {
                return Boolean.valueOf(this.this$0.H());
            }
        }), this.divBinder, this.viewCreator, this.path, this.accessibilityEnabled, new c74() {
            {
                super(0);
            }

            @Override
            public final Boolean invoke() {
                return Boolean.valueOf(DivPagerAdapter.this.H());
            }
        }, new c74() {
            {
                super(0);
            }

            @Override
            public final DivPager.ItemAlignment invoke() {
                return DivPagerAdapter.this.getCrossAxisAlignment();
            }
        });
    }

    public final void L(DivPager.ItemAlignment itemAlignment) {
        y45.j(itemAlignment, "<set-?>");
        this.crossAxisAlignment = itemAlignment;
    }

    public final void M(boolean z) {
        if (this.infiniteScrollEnabled == z) {
            return;
        }
        this.infiniteScrollEnabled = z;
        notifyItemRangeChanged(0, getItemCount());
        DivPagerView divPagerView = this.pagerView;
        divPagerView.setCurrentItem$div_release(divPagerView.getCurrentItem$div_release() + (z ? 2 : -2));
    }

    public final void N(int i) {
        this.orientation = i;
    }

    @Override
    public int getItemCount() {
        return this.itemsToShow.size();
    }

    public final int getRealPosition(int rawPosition) {
        return rawPosition - E();
    }

    @Override
    public void r(int position) {
        if (!this.infiniteScrollEnabled) {
            notifyItemInserted(position);
            int i = this.currentItem;
            if (i >= position) {
                this.currentItem = i + 1;
                return;
            }
            return;
        }
        int i2 = position + 2;
        notifyItemInserted(i2);
        I(position);
        int i3 = this.currentItem;
        if (i3 >= i2) {
            this.currentItem = i3 + 1;
        }
    }

    @Override
    public void s(int position) {
        this.removedItems++;
        if (!this.infiniteScrollEnabled) {
            notifyItemRemoved(position);
            int i = this.currentItem;
            if (i > position) {
                this.currentItem = i - 1;
                return;
            }
            return;
        }
        int i2 = position + 2;
        notifyItemRemoved(i2);
        I(position);
        int i3 = this.currentItem;
        if (i3 > i2) {
            this.currentItem = i3 - 1;
        }
    }

    @Override
    public void y(List newItems) {
        y45.j(newItems, "newItems");
        int size = getItems().size();
        this.removedItems = 0;
        int currentItem$div_release = this.pagerView.getCurrentItem$div_release();
        this.currentItem = currentItem$div_release;
        super.y(newItems);
        DivPagerView divPagerView = this.pagerView;
        if (this.removedItems != size) {
            currentItem$div_release = this.currentItem;
        }
        divPagerView.setCurrentItem$div_release(currentItem$div_release);
    }
}
