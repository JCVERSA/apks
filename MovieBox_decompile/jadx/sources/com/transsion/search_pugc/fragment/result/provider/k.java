package com.transsion.search_pugc.fragment.result.provider;

import android.animation.ValueAnimator;
import android.text.SpannableStringBuilder;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.transsion.baseui.R$plurals;
import com.transsion.search.R$id;
import com.transsion.search.R$layout;
import com.transsion.search.R$string;
import com.transsion.search_pugc.bean.SearchResultItem;
import com.transsion.search_pugc.constant.ResultCollectItemWrapper;
import com.transsion.search_pugc.constant.SearchType;
import com.transsion.ugcvideodetail.api.UGCVideoTypeKt;
import com.transsion.ugcvideodetail.api.bean.UGCCollection;
import com.transsion.ugcvideodetail.api.bean.UGCVideo;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;

public final class k extends BaseItemProvider implements t {

    private final t f50435e;

    private final Lazy f50436f;

    private final Lazy f50437g;

    private final float f50438h;

    public k(t reportable) {
        Intrinsics.h(reportable, "reportable");
        this.f50435e = reportable;
        this.f50436f = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return Integer.valueOf(k.N());
            }
        });
        this.f50437g = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return Integer.valueOf(k.M());
            }
        });
        this.f50438h = 0.95f;
    }

    private final void E(final View view, int i10, int i11) {
        ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(i10, i11);
        valueAnimatorOfInt.setDuration(200L);
        valueAnimatorOfInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
            @Override
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                k.F(view, valueAnimator);
            }
        });
        valueAnimatorOfInt.start();
    }

    public static final void F(View view, ValueAnimator animation) {
        Intrinsics.h(animation, "animation");
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        Intrinsics.f(layoutParams, "null cannot be cast to non-null type androidx.recyclerview.widget.RecyclerView.LayoutParams");
        RecyclerView.n nVar = (RecyclerView.n) layoutParams;
        Object animatedValue = animation.getAnimatedValue();
        Intrinsics.f(animatedValue, "null cannot be cast to non-null type kotlin.Number");
        ((ViewGroup.MarginLayoutParams) nVar).width = ((Number) animatedValue).intValue();
        view.setLayoutParams(nVar);
    }

    public static final void H(com.transsion.search_pugc.fragment.result.adapter.a aVar, k kVar, BaseQuickAdapter baseQuickAdapter, View view, int i10) {
        Intrinsics.h(baseQuickAdapter, "<unused var>");
        Intrinsics.h(view, "<unused var>");
        UGCVideo uGCVideoA = ((ResultCollectItemWrapper) aVar.getData().get(i10)).a();
        if (uGCVideoA != null) {
            com.transsion.search_pugc.constant.a.g(uGCVideoA, true);
            kVar.c(uGCVideoA, i10);
        }
    }

    /* JADX WARN: Code duplicated, block: B:22:0x00aa  */
    /* JADX WARN: Code duplicated, block: B:24:0x00b2  */
    /* JADX WARN: Code duplicated, block: B:25:0x00bb  */
    /* JADX WARN: Code duplicated, block: B:28:0x00d3  */
    /* JADX WARN: Code duplicated, block: B:30:0x00d7  */
    public static final boolean I(FooterStretchRecyclerView footerStretchRecyclerView, com.transsion.search_pugc.fragment.result.adapter.a aVar, Ref.FloatRef floatRef, Ref.BooleanRef booleanRef, k kVar, SearchResultItem searchResultItem, BaseViewHolder baseViewHolder, View view, MotionEvent motionEvent) {
        View viewFindViewByPosition;
        Integer numValueOf;
        UGCCollection collection;
        List<UGCVideo> videos;
        UGCVideo uGCVideo;
        RecyclerView.m layoutManager = footerStretchRecyclerView.getLayoutManager();
        Intrinsics.f(layoutManager, "null cannot be cast to non-null type androidx.recyclerview.widget.LinearLayoutManager");
        LinearLayoutManager linearLayoutManager = (LinearLayoutManager) layoutManager;
        int itemCount = aVar.getItemCount() - 1;
        View viewFindViewByPosition2 = linearLayoutManager.findViewByPosition(itemCount);
        int action = motionEvent.getAction();
        if (action == 0) {
            float x10 = motionEvent.getX();
            floatRef.element = x10;
            booleanRef.element = false;
            Integer numValueOf2 = viewFindViewByPosition2 != null ? Integer.valueOf(viewFindViewByPosition2.getWidth()) : null;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("DOWN startX=");
            sb2.append(x10);
            sb2.append(" 初始宽=");
            sb2.append(numValueOf2);
        } else if (action == 1) {
            viewFindViewByPosition = linearLayoutManager.findViewByPosition(itemCount);
            boolean z10 = booleanRef.element;
            if (viewFindViewByPosition != null) {
                numValueOf = Integer.valueOf(viewFindViewByPosition.getWidth());
            } else {
                numValueOf = null;
            }
            StringBuilder sb3 = new StringBuilder();
            sb3.append("UP atMax=");
            sb3.append(z10);
            sb3.append(", 宽=");
            sb3.append(numValueOf);
            if (viewFindViewByPosition != null) {
                if (booleanRef.element) {
                    collection = searchResultItem.getCollection();
                    if (collection != null && (videos = collection.getVideos()) != null && (uGCVideo = (UGCVideo) CollectionsKt.k0(videos)) != null) {
                        com.transsion.search_pugc.constant.a.h(uGCVideo, false, 1, null);
                    }
                    kVar.d(searchResultItem, baseViewHolder.getBindingAdapterPosition());
                }
                kVar.E(viewFindViewByPosition, viewFindViewByPosition.getWidth(), kVar.L());
            }
            booleanRef.element = false;
        } else {
            if (action == 2) {
                if (!footerStretchRecyclerView.canScrollHorizontally(1) && viewFindViewByPosition2 != null) {
                    float x11 = floatRef.element - motionEvent.getX();
                    int iL = kVar.L() + ((int) (((double) (kVar.K() - kVar.L())) * (((double) 1) - Math.exp((-x11) / ((double) com.blankj.utilcode.util.i.e(20.0f))))));
                    if (iL > kVar.K()) {
                        iL = kVar.K();
                    }
                    booleanRef.element = iL >= kVar.L() + ((int) (((float) (kVar.K() - kVar.L())) * kVar.f50438h));
                    ViewGroup.LayoutParams layoutParams = viewFindViewByPosition2.getLayoutParams();
                    Intrinsics.f(layoutParams, "null cannot be cast to non-null type androidx.recyclerview.widget.RecyclerView.LayoutParams");
                    RecyclerView.n nVar = (RecyclerView.n) layoutParams;
                    ((ViewGroup.MarginLayoutParams) nVar).width = iL;
                    viewFindViewByPosition2.setLayoutParams(nVar);
                    boolean z11 = booleanRef.element;
                    StringBuilder sb4 = new StringBuilder();
                    sb4.append("MOVE dist=");
                    sb4.append(x11);
                    sb4.append(", width=");
                    sb4.append(iL);
                    sb4.append(", atMax=");
                    sb4.append(z11);
                }
                return false;
            }
            if (action == 3) {
                viewFindViewByPosition = linearLayoutManager.findViewByPosition(itemCount);
                boolean z12 = booleanRef.element;
                if (viewFindViewByPosition != null) {
                    numValueOf = Integer.valueOf(viewFindViewByPosition.getWidth());
                } else {
                    numValueOf = null;
                }
                StringBuilder sb5 = new StringBuilder();
                sb5.append("UP atMax=");
                sb5.append(z12);
                sb5.append(", 宽=");
                sb5.append(numValueOf);
                if (viewFindViewByPosition != null) {
                    if (booleanRef.element) {
                        collection = searchResultItem.getCollection();
                        if (collection != null) {
                            com.transsion.search_pugc.constant.a.h(uGCVideo, false, 1, null);
                        }
                        kVar.d(searchResultItem, baseViewHolder.getBindingAdapterPosition());
                    }
                    kVar.E(viewFindViewByPosition, viewFindViewByPosition.getWidth(), kVar.L());
                }
                booleanRef.element = false;
            }
        }
        return false;
    }

    public static final void J(SearchResultItem searchResultItem, k kVar, BaseViewHolder baseViewHolder, View view) {
        List<UGCVideo> videos;
        UGCVideo uGCVideo;
        UGCCollection collection = searchResultItem.getCollection();
        if (collection != null && (videos = collection.getVideos()) != null && (uGCVideo = (UGCVideo) CollectionsKt.k0(videos)) != null) {
            com.transsion.search_pugc.constant.a.h(uGCVideo, false, 1, null);
        }
        kVar.d(searchResultItem, baseViewHolder.getBindingAdapterPosition());
    }

    private final int K() {
        return ((Number) this.f50437g.getValue()).intValue();
    }

    private final int L() {
        return ((Number) this.f50436f.getValue()).intValue();
    }

    public static final int M() {
        return com.blankj.utilcode.util.i.e(52.0f);
    }

    public static final int N() {
        return com.blankj.utilcode.util.i.e(26.0f);
    }

    private final void O(SearchResultItem searchResultItem) {
        List<UGCVideo> videos;
        UGCCollection collection = searchResultItem.getCollection();
        if (collection == null || (videos = collection.getVideos()) == null) {
            return;
        }
        int i10 = 0;
        for (Object obj : videos) {
            int i11 = i10 + 1;
            if (i10 < 0) {
                CollectionsKt.u();
            }
            e((UGCVideo) obj, i10);
            i10 = i11;
        }
    }

    /* JADX WARN: Code duplicated, block: B:41:0x0133  */
    @Override
    public void b(final BaseViewHolder helper, final SearchResultItem item) {
        boolean z10;
        List listK;
        List listU0;
        String watchNum;
        Integer videoNum;
        String title;
        List<UGCVideo> videos;
        UGCVideo uGCVideo;
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        UGCCollection collection = item.getCollection();
        List list = null;
        if (collection == null || (videos = collection.getVideos()) == null || (uGCVideo = (UGCVideo) CollectionsKt.k0(videos)) == null) {
            helper.setImageResource(R$id.iv_ic, UGCVideoTypeKt.e(null));
        } else {
            UGCVideoTypeKt.i((ImageView) helper.getView(R$id.iv_ic), uGCVideo, null, 4, null);
        }
        int i10 = R$id.tv_collection_info;
        UGCCollection collection2 = item.getCollection();
        helper.setText(i10, (collection2 == null || (title = collection2.getTitle()) == null) ? null : com.transsion.search_pugc.constant.a.d(title, k(), com.transsion.search_pugc.g.f50469h.a(k()).e()));
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        UGCCollection collection3 = item.getCollection();
        if (collection3 != null && (videoNum = collection3.getVideoNum()) != null) {
            int iIntValue = videoNum.intValue();
            spannableStringBuilder.append((CharSequence) k().getResources().getQuantityString(R$plurals.videos_count_text, iIntValue, Integer.valueOf(iIntValue)));
        }
        spannableStringBuilder.append((CharSequence) "￼");
        spannableStringBuilder.setSpan(com.transsion.search_pugc.h.a(k()), spannableStringBuilder.length() - 1, spannableStringBuilder.length(), 33);
        UGCCollection collection4 = item.getCollection();
        String strL = (collection4 == null || (watchNum = collection4.getWatchNum()) == null) ? null : com.transsion.search_pugc.constant.a.l(watchNum);
        spannableStringBuilder.append((CharSequence) (strL + " " + k().getString(R$string.views)));
        ((TextView) helper.getView(R$id.tv_info)).setText(spannableStringBuilder);
        helper.getView(R$id.view_into).setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                k.J(item, this, helper, view);
            }
        });
        final FooterStretchRecyclerView footerStretchRecyclerView = (FooterStretchRecyclerView) helper.getView(R$id.f49932rv);
        footerStretchRecyclerView.setLayoutManager(new LinearLayoutManager(footerStretchRecyclerView.getContext(), 0, false));
        final com.transsion.search_pugc.fragment.result.adapter.a aVar = new com.transsion.search_pugc.fragment.result.adapter.a(true);
        UGCCollection collection5 = item.getCollection();
        List<UGCVideo> videos2 = collection5 != null ? collection5.getVideos() : null;
        List<UGCVideo> list2 = videos2;
        if (list2 == null || list2.isEmpty()) {
            z10 = false;
        } else {
            if ((videos2 != null ? videos2.size() : 0) > 5) {
                z10 = true;
            } else {
                z10 = false;
            }
        }
        if (z10) {
            videos2 = videos2 != null ? videos2.subList(0, 5) : null;
        }
        if (videos2 != null && (listK = com.transsion.search_pugc.constant.a.k(videos2)) != null && (listU0 = CollectionsKt.U0(listK)) != null) {
            if (z10) {
                listU0.add(new ResultCollectItemWrapper(null, ResultCollectItemWrapper.Type.FOOTER, 1, null));
            }
            list = listU0;
        }
        aVar.n1(list);
        aVar.w1(new r6.d() {
            @Override
            public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i11) {
                k.H(aVar, this, baseQuickAdapter, view, i11);
            }
        });
        footerStretchRecyclerView.setAdapter(aVar);
        final Ref.FloatRef floatRef = new Ref.FloatRef();
        final Ref.BooleanRef booleanRef = new Ref.BooleanRef();
        if (z10) {
            footerStretchRecyclerView.setOnTouchListener(new View.OnTouchListener() {
                @Override
                public final boolean onTouch(View view, MotionEvent motionEvent) {
                    return k.I(footerStretchRecyclerView, aVar, floatRef, booleanRef, this, item, helper, view, motionEvent);
                }
            });
        }
        O(item);
    }

    @Override
    public void a(UGCVideo ugcVideo, int i10) {
        Intrinsics.h(ugcVideo, "ugcVideo");
        this.f50435e.a(ugcVideo, i10);
    }

    @Override
    public void c(UGCVideo ugcVideo, int i10) {
        Intrinsics.h(ugcVideo, "ugcVideo");
        this.f50435e.c(ugcVideo, i10);
    }

    @Override
    public void d(SearchResultItem item, int i10) {
        Intrinsics.h(item, "item");
        this.f50435e.d(item, i10);
    }

    @Override
    public void e(UGCVideo ugcVideo, int i10) {
        Intrinsics.h(ugcVideo, "ugcVideo");
        this.f50435e.e(ugcVideo, i10);
    }

    @Override
    public int l() {
        return SearchType.UGC_COLLECTION.ordinal();
    }

    @Override
    public int m() {
        return R$layout.provider_result_collection;
    }
}
