package com.transsion.playercommon.widgets.banner;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.playercommon.vishaapis.gslb.GslbInterceptor;
import com.transsion.playercommon.widgets.banner.BaseBannerAdapter;
import defpackage.w70;
import defpackage.y45;
import defpackage.zfb;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010!\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0016\b&\u0018\u0000 /*\u0004\b\u0000\u0010\u00012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00030\u0002:\u0002;<B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J%\u0010\n\u001a\b\u0012\u0004\u0012\u00028\u00000\u00032\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\n\u0010\u000bJ%\u0010\u000f\u001a\u00020\u000e2\f\u0010\f\u001a\b\u0012\u0004\u0012\u00028\u00000\u00032\u0006\u0010\r\u001a\u00020\bH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u0017\u0010\u0011\u001a\u00020\b2\u0006\u0010\r\u001a\u00020\bH\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\bH\u0016¢\u0006\u0004\b\u0013\u0010\u0014J\u0017\u0010\u0017\u001a\u00020\u000e2\b\u0010\u0016\u001a\u0004\u0018\u00010\u0015¢\u0006\u0004\b\u0017\u0010\u0018J\u0017\u0010\u0019\u001a\u00020\b2\u0006\u0010\r\u001a\u00020\bH\u0004¢\u0006\u0004\b\u0019\u0010\u0012J+\u0010\u001c\u001a\b\u0012\u0004\u0012\u00028\u00000\u00032\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\u001c\u0010\u001dJ5\u0010 \u001a\u00020\u000e2\f\u0010\f\u001a\b\u0012\u0004\u0012\u00028\u00000\u00032\u0006\u0010\u001e\u001a\u00028\u00002\u0006\u0010\r\u001a\u00020\b2\u0006\u0010\u001f\u001a\u00020\bH$¢\u0006\u0004\b \u0010!J\u0017\u0010\"\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\bH'¢\u0006\u0004\b\"\u0010\u0012R\u001c\u0010&\u001a\b\u0012\u0004\u0012\u00028\u00000#8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b$\u0010%R\"\u0010*\u001a\u00020'8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b(\u0010)\u001a\u0004\b*\u0010+\"\u0004\b,\u0010-R\"\u00101\u001a\u00020'8\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b.\u0010)\u001a\u0004\b/\u0010+\"\u0004\b0\u0010-R\u0018\u00103\u001a\u0004\u0018\u00010\u00158\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0019\u00102R4\u0010\u001e\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010#2\u000e\u00104\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010#8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b5\u00106\"\u0004\b7\u00108R\u0011\u0010:\u001a\u00020\b8F¢\u0006\u0006\u001a\u0004\b9\u0010\u0014¨\u0006="}, d2 = {"Lcom/transsion/playercommon/widgets/banner/BaseBannerAdapter;", "T", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Lcom/transsion/playercommon/widgets/banner/BaseViewHolder;", MethodDecl.initName, "()V", "Landroid/view/ViewGroup;", "parent", "", "viewType", "u", "(Landroid/view/ViewGroup;I)Lcom/transsion/playercommon/widgets/banner/BaseViewHolder;", "holder", "position", "Lzfb;", "t", "(Lcom/transsion/playercommon/widgets/banner/BaseViewHolder;I)V", "getItemViewType", "(I)I", "getItemCount", "()I", "Lcom/transsion/playercommon/widgets/banner/BaseBannerAdapter$b;", "pageClickListener", "z", "(Lcom/transsion/playercommon/widgets/banner/BaseBannerAdapter$b;)V", "r", "Landroid/view/View;", "itemView", "d", "(Landroid/view/ViewGroup;Landroid/view/View;I)Lcom/transsion/playercommon/widgets/banner/BaseViewHolder;", "data", "pageSize", "c", "(Lcom/transsion/playercommon/widgets/banner/BaseViewHolder;Ljava/lang/Object;II)V", "getLayoutId", "", "o", "Ljava/util/List;", "mList", "", TtmlNode.TAG_P, "Z", "isCanLoop", "()Z", "w", "(Z)V", "q", "s", "y", "isForceLight", "Lcom/transsion/playercommon/widgets/banner/BaseBannerAdapter$b;", "mPageClickListener", "list", "getData", "()Ljava/util/List;", "x", "(Ljava/util/List;)V", GslbInterceptor.HEADER_KEY_GSLB, "listSize", "b", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "playercommon_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class BaseBannerAdapter<T> extends RecyclerView.Adapter<BaseViewHolder<T>> {

    public List mList = new ArrayList();

    public boolean isCanLoop;

    public boolean isForceLight;

    public b mPageClickListener;

    public interface b {
        void a(View view, int i, int i2);
    }

    public static final void v(BaseViewHolder baseViewHolder, BaseBannerAdapter baseBannerAdapter, View view) {
        int adapterPosition = baseViewHolder.getAdapterPosition();
        if (baseBannerAdapter.mPageClickListener == null || adapterPosition == -1) {
            return;
        }
        int iC = w70.a.c(adapterPosition, baseBannerAdapter.g());
        b bVar = baseBannerAdapter.mPageClickListener;
        y45.g(bVar);
        bVar.a(view, iC, adapterPosition);
    }

    public abstract void c(BaseViewHolder holder, Object data, int position, int pageSize);

    public final BaseViewHolder d(ViewGroup parent, View itemView, int viewType) {
        y45.j(parent, "parent");
        y45.j(itemView, "itemView");
        return new BaseViewHolder(itemView);
    }

    public final int g() {
        return this.mList.size();
    }

    public final List getMList() {
        return this.mList;
    }

    @Override
    public int getItemCount() {
        if (!this.isCanLoop || g() <= 1) {
            return g();
        }
        return 1000;
    }

    @Override
    public int getItemViewType(int position) {
        return r(w70.a.c(position, g()));
    }

    public abstract int getLayoutId(int viewType);

    public final int r(int position) {
        return 0;
    }

    public boolean getIsForceLight() {
        return this.isForceLight;
    }

    @Override
    public void onBindViewHolder(BaseViewHolder holder, int position) {
        y45.j(holder, "holder");
        int iC = w70.a.c(position, g());
        c(holder, this.mList.get(iC), iC, g());
    }

    @Override
    public BaseViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        y45.j(parent, "parent");
        View viewInflate = LayoutInflater.from(parent.getContext()).inflate(getLayoutId(viewType), parent, false);
        y45.g(viewInflate);
        final BaseViewHolder baseViewHolderD = d(parent, viewInflate, viewType);
        viewInflate.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                BaseBannerAdapter.v(baseViewHolderD, this, view);
            }
        });
        return baseViewHolderD;
    }

    public final void w(boolean z) {
        this.isCanLoop = z;
    }

    public final void x(List list) {
        ArrayList arrayList = new ArrayList();
        if (list != null) {
            try {
                int size = list.size();
                if (size > 0) {
                    arrayList.ensureCapacity(size);
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        arrayList.add(it.next());
                    }
                }
            } catch (Exception unused) {
                arrayList.clear();
                try {
                    arrayList.addAll(new ArrayList(list));
                } catch (Exception unused2) {
                    zfb zfbVar = zfb.a;
                }
            }
        }
        this.mList.clear();
        this.mList.addAll(arrayList);
    }

    public void y(boolean z) {
        this.isForceLight = z;
    }

    public final void z(b pageClickListener) {
        this.mPageClickListener = pageClickListener;
    }
}
