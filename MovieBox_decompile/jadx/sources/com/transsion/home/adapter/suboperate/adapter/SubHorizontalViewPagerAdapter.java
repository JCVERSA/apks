package com.transsion.home.adapter.suboperate.adapter;

import android.content.Context;
import android.content.res.AssetManager;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.tn.lib.widget.R$string;
import com.transsion.edcation.CourseManager;
import com.transsion.home.R$id;
import com.transsion.home.R$layout;
import com.transsion.home.bean.BannerData;
import com.transsion.home.bean.OperateItem;
import com.transsion.home.fragment.tab.SubTabFragment;
import com.transsion.home.p004enum.HomeTabId;
import com.transsion.moviedetailapi.SubjectType;
import com.transsion.moviedetailapi.bean.Image;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsnet.downloader.DownloadManagerApi;
import com.transsnet.downloader.widget.DownloadView;
import java.util.HashMap;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.a2;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

public final class SubHorizontalViewPagerAdapter extends RecyclerView.Adapter {

    private final List f43278a;

    private final int f43279b;

    private final OperateItem f43280c;

    private final int f43281d;

    private final int f43282e;

    public static final class a extends RecyclerView.a0 {

        private final ImageView f43283a;

        private final DownloadView f43284b;

        private final TextView f43285c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(View itemView) {
            super(itemView);
            Intrinsics.h(itemView, "itemView");
            View viewFindViewById = itemView.findViewById(R$id.home_sub_pager_item_image);
            Intrinsics.g(viewFindViewById, "findViewById(...)");
            this.f43283a = (ImageView) viewFindViewById;
            View viewFindViewById2 = itemView.findViewById(R$id.sub_operation_banner_download);
            Intrinsics.g(viewFindViewById2, "findViewById(...)");
            this.f43284b = (DownloadView) viewFindViewById2;
            View viewFindViewById3 = itemView.findViewById(R$id.sub_operation_banner_title);
            Intrinsics.g(viewFindViewById3, "findViewById(...)");
            this.f43285c = (TextView) viewFindViewById3;
        }

        public final DownloadView f() {
            return this.f43284b;
        }

        public final TextView g() {
            return this.f43285c;
        }

        public final ImageView getImageView() {
            return this.f43283a;
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.home.adapter.suboperate.adapter.SubHorizontalViewPagerAdapter$onBindViewHolder$1", f = "SubHorizontalViewPagerAdapter.kt", l = {67}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
        final BannerData $bannerData;
        final a $holder;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(BannerData bannerData, a aVar, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$bannerData = bannerData;
            this.$holder = aVar;
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.$bannerData, this.$holder, continuation);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            String url;
            AssetManager assets;
            Object objF = IntrinsicsKt.f();
            int i10 = this.label;
            if (i10 == 0) {
                ResultKt.b(obj);
                Image image = this.$bannerData.getImage();
                if (image != null && (url = image.getUrl()) != null) {
                    a aVar = this.$holder;
                    Context context = aVar.getImageView().getContext();
                    Bitmap bitmapDecodeStream = BitmapFactory.decodeStream((context == null || (assets = context.getAssets()) == null) ? null : assets.open(url));
                    a2 a2VarC = y0.c();
                    SubHorizontalViewPagerAdapter$onBindViewHolder$1$1$1 subHorizontalViewPagerAdapter$onBindViewHolder$1$1$1 = new SubHorizontalViewPagerAdapter$onBindViewHolder$1$1$1(aVar, bitmapDecodeStream, null);
                    this.label = 1;
                    if (kotlinx.coroutines.i.g(a2VarC, subHorizontalViewPagerAdapter$onBindViewHolder$1$1$1, this) == objF) {
                        return objF;
                    }
                }
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            return Unit.f64096a;
        }

        @Override
        public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
        }
    }

    public SubHorizontalViewPagerAdapter(List banners, int i10, OperateItem operateItem, int i11, int i12) {
        Intrinsics.h(banners, "banners");
        Intrinsics.h(operateItem, "operateItem");
        this.f43278a = banners;
        this.f43279b = i10;
        this.f43280c = operateItem;
        this.f43281d = i11;
        this.f43282e = i12;
    }

    private final Subject i(BannerData bannerData) {
        if (bannerData == null) {
            return null;
        }
        return new Subject(bannerData.getSubjectId(), Integer.valueOf(bannerData.getSubjectType()), null, null, null, null, null, null, null, null, null, null, null, null, null, bannerData.getSeenStatus(), null, null, null, null, null, null, null, null, false, false, null, null, null, null, null, false, false, null, null, 0, false, false, 0L, null, null, 0L, null, 0, false, null, 0, null, null, null, null, null, 0, null, null, null, null, null, -32772, 67108863, null);
    }

    public static final void l(BannerData bannerData, SubHorizontalViewPagerAdapter subHorizontalViewPagerAdapter, int i10, View view) {
        String deepLink;
        if (bannerData == null || (deepLink = bannerData.getDeepLink()) == null) {
            return;
        }
        Uri uriG = com.transsion.baselib.helper.b.f42123a.g(Uri.parse(deepLink + "&module_name=opt_banner_free&autoPlay=true&ops=" + bannerData.getOps()));
        if (uriG != null) {
            hr.c.j(uriG);
        }
        subHorizontalViewPagerAdapter.p(bannerData, i10, DownloadManagerApi.x0(DownloadManagerApi.f56187j.a(), bannerData.getSubjectId(), null, false, false, 12, null) ? "play_subject" : "download_subject");
    }

    public static final void m(a aVar, BannerData bannerData, SubHorizontalViewPagerAdapter subHorizontalViewPagerAdapter, Context context, int i10, View view) {
        if (aVar.f().getCom.cloud.tmc.kernel.minicover.NativeComponentConstants.KEY_COMPONENT_TYPE java.lang.String() == 2 || aVar.f().getCom.cloud.tmc.kernel.minicover.NativeComponentConstants.KEY_COMPONENT_TYPE java.lang.String() == 3) {
            if (bannerData != null) {
                CourseManager.f42905a.v(bannerData.getSubjectId(), bannerData.getSeenStatus());
                fk.a.b(subHorizontalViewPagerAdapter.i(bannerData), SubTabFragment.INSTANCE.a(subHorizontalViewPagerAdapter.f43279b), "opt_rank_list");
                return;
            }
            return;
        }
        String strA = SubTabFragment.INSTANCE.a(subHorizontalViewPagerAdapter.f43279b);
        Subject subject = new Subject(bannerData != null ? bannerData.getSubjectId() : null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, false, null, null, null, null, null, false, false, null, null, 0, false, false, 0L, null, null, 0L, null, 0, false, null, 0, null, null, null, null, null, 0, null, null, null, null, null, -2, 67108863, null);
        Intrinsics.e(context);
        subHorizontalViewPagerAdapter.o(bannerData, i10, zk.h.g(subject, strA, context, "opt_rank_list"));
    }

    private final void o(BannerData bannerData, int i10, String str) {
        HashMap map = new HashMap();
        map.put("event_type", "click_banner");
        map.put("sequence", String.valueOf(i10));
        map.put("module_name", str);
        map.put("tabId", String.valueOf(this.f43279b));
        if (bannerData != null) {
            sk.b.b(bannerData, map);
        }
        sk.b.a(this.f43280c, map);
        com.transsion.baselib.helper.a.f42121a.f(SubTabFragment.INSTANCE.a(this.f43279b), map);
    }

    private final void p(BannerData bannerData, int i10, String str) {
        HashMap map = new HashMap();
        map.put("event_type", "click_banner_poster");
        map.put("sequence", String.valueOf(i10));
        map.put("module_name", str);
        map.put("tabId", String.valueOf(this.f43279b));
        if (bannerData != null) {
            sk.b.b(bannerData, map);
        }
        sk.b.a(this.f43280c, map);
        com.transsion.baselib.helper.a.f42121a.f(SubTabFragment.INSTANCE.a(this.f43279b), map);
    }

    private final void q(BannerData bannerData, DownloadView downloadView) {
        Integer seenStatus;
        boolean z10 = false;
        if ((bannerData != null ? Intrinsics.c(bannerData.getHasResource(), Boolean.TRUE) : false) && HomeTabId.INSTANCE.h(Integer.valueOf(this.f43279b), true)) {
            uf.c.k(downloadView);
        } else {
            if (bannerData != null ? Intrinsics.c(bannerData.getHasResource(), Boolean.TRUE) : false) {
                uf.c.k(downloadView);
            } else {
                uf.c.g(downloadView);
            }
        }
        if (HomeTabId.INSTANCE.h(Integer.valueOf(this.f43279b), true)) {
            if (bannerData != null && (seenStatus = bannerData.getSeenStatus()) != null && seenStatus.intValue() == 1) {
                z10 = true;
            }
            if (z10) {
                downloadView.setCourseAdded();
                return;
            } else {
                downloadView.setAddCourse();
                return;
            }
        }
        if (ij.t.f62121a.b()) {
            if (bannerData != null && bannerData.getSubjectType() == SubjectType.SHORT_TV.getValue()) {
                z10 = true;
            }
            if (!z10) {
                downloadView.setShowPlayType();
                return;
            }
        }
        DownloadView.setShowType$default(downloadView, bannerData != null ? bannerData.getSubjectId() : null, null, null, false, R$string.download_now, 14, null);
    }

    private final void r(a aVar, int i10) {
        if (HomeTabId.INSTANCE.h(Integer.valueOf(this.f43279b), true)) {
            if (i10 == 1) {
                aVar.f().setCourseAdded();
            } else {
                aVar.f().setAddCourse();
            }
        }
    }

    @Override
    public int getItemCount() {
        return Integer.MAX_VALUE;
    }

    @Override
    public void onBindViewHolder(final a holder, final int i10) {
        String url;
        String thumbnail;
        Image image;
        Image image2;
        String content;
        Intrinsics.h(holder, "holder");
        final Context context = holder.getImageView().getContext();
        final BannerData bannerData = (BannerData) this.f43278a.get(i10 % this.f43278a.size());
        holder.getImageView().getLayoutParams().height = this.f43282e;
        String str = "";
        if (bannerData == null || !bannerData.getBuiltIn()) {
            ni.f.a aVar = ni.f.f67269a;
            Intrinsics.e(context);
            ni.f.b bVarM = aVar.m(context);
            if (bannerData == null || (image2 = bannerData.getImage()) == null || (url = image2.getUrl()) == null) {
                url = "";
            }
            ni.f.b bVarM2 = bVarM.g(url).m(this.f43281d);
            if (bannerData == null || (image = bannerData.getImage()) == null || (thumbnail = image.getThumbnail()) == null) {
                thumbnail = "";
            }
            bVarM2.l(thumbnail).d(holder.getImageView());
        } else {
            kotlinx.coroutines.k.d(o0.a(y0.b()), null, null, new AnonymousClass1(bannerData, holder, null), 3, null);
        }
        TextView textViewG = holder.g();
        if (bannerData != null && (content = bannerData.getContent()) != null) {
            str = content;
        }
        textViewG.setText(str);
        q(bannerData, holder.f());
        holder.getImageView().setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                SubHorizontalViewPagerAdapter.l(bannerData, this, i10, view);
            }
        });
        holder.f().setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                SubHorizontalViewPagerAdapter.m(holder, bannerData, this, context, i10, view);
            }
        });
    }

    @Override
    public void onBindViewHolder(a holder, int i10, List payloads) {
        Intrinsics.h(holder, "holder");
        Intrinsics.h(payloads, "payloads");
        if (payloads.isEmpty()) {
            onBindViewHolder(holder, i10);
            return;
        }
        Object obj = payloads.get(payloads.size() - 1);
        if (obj instanceof Integer) {
            r(holder, ((Number) obj).intValue());
        }
    }

    @Override
    public a onCreateViewHolder(ViewGroup parent, int i10) {
        Intrinsics.h(parent, "parent");
        View viewInflate = LayoutInflater.from(parent.getContext()).inflate(R$layout.item_sub_horizontal_view_pager, parent, false);
        Intrinsics.e(viewInflate);
        return new a(viewInflate);
    }
}
