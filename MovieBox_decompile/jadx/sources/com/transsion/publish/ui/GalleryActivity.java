package com.transsion.publish.ui;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.constraintlayout.widget.Group;
import androidx.viewpager.widget.ViewPager;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.mbsignalcommon.commonwebview.ToolBar;
import com.transsion.baseui.activity.BaseActivity;
import com.transsion.publish.R$drawable;
import com.transsion.publish.R$string;
import com.transsion.publish.api.PhotoEntity;
import com.transsion.publish.bean.BigImageBean;
import com.transsion.publish.bean.PreviewMediaConfirmEvent;
import com.transsion.publish.view.FixedViewPager;
import com.transsnet.flow.event.AppScopeVMlProvider;
import com.transsnet.flow.event.FlowEventBus;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.TypeIntrinsics;
import org.mvel2.ast.ASTNode;

@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u0000 >2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u00010B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0004J\u0017\u0010\t\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\u000b\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u000b\u0010\nJ\u0017\u0010\f\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\f\u0010\nJ\u000f\u0010\r\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\r\u0010\u0004J\u000f\u0010\u000e\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u000e\u0010\u0004J\u001f\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u0010H\u0002¢\u0006\u0004\b\u0012\u0010\u0013J\u0017\u0010\u0014\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u0014\u0010\nJ\u0017\u0010\u0015\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u0015\u0010\nJ\u000f\u0010\u0016\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0016\u0010\u0004J\u000f\u0010\u0017\u001a\u00020\u0010H\u0002¢\u0006\u0004\b\u0017\u0010\u0018J\u0017\u0010\u001b\u001a\u00020\u00052\u0006\u0010\u001a\u001a\u00020\u0019H\u0002¢\u0006\u0004\b\u001b\u0010\u001cJ\u0017\u0010\u001e\u001a\u00020\u001d2\u0006\u0010\u000f\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u001e\u0010\u001fJ\u000f\u0010 \u001a\u00020\u0005H\u0002¢\u0006\u0004\b \u0010\u0004J\u0019\u0010#\u001a\u00020\u00052\b\u0010\"\u001a\u0004\u0018\u00010!H\u0014¢\u0006\u0004\b#\u0010$J\u000f\u0010%\u001a\u00020\u0002H\u0016¢\u0006\u0004\b%\u0010&J\u000f\u0010'\u001a\u00020\u0005H\u0014¢\u0006\u0004\b'\u0010\u0004J\u000f\u0010(\u001a\u00020\u0010H\u0016¢\u0006\u0004\b(\u0010\u0018J\u000f\u0010)\u001a\u00020\u0010H\u0016¢\u0006\u0004\b)\u0010\u0018J\u000f\u0010*\u001a\u00020\u0010H\u0016¢\u0006\u0004\b*\u0010\u0018J\u000f\u0010+\u001a\u00020\u0005H\u0016¢\u0006\u0004\b+\u0010\u0004J\u000f\u0010-\u001a\u00020,H\u0016¢\u0006\u0004\b-\u0010.R\u001c\u00102\u001a\b\u0012\u0004\u0012\u00020\u00070/8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b0\u00101R\u001c\u00104\u001a\b\u0012\u0004\u0012\u00020\u00070/8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b3\u00101R\u0018\u00108\u001a\u0004\u0018\u0001058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b6\u00107R\u0016\u0010;\u001a\u00020\u00198\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b9\u0010:R\u0016\u0010=\u001a\u00020\u00198\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b<\u0010:¨\u0006?"}, d2 = {"Lcom/transsion/publish/ui/GalleryActivity;", "Lcom/transsion/baseui/activity/BaseActivity;", "Llo/c;", "<init>", "()V", "", "initView", "Lcom/transsion/publish/api/PhotoEntity;", "photoEntity", "t0", "(Lcom/transsion/publish/api/PhotoEntity;)V", "v0", "s0", "initData", "o0", "info", "", ToolBar.REFRESH, "q0", "(Lcom/transsion/publish/api/PhotoEntity;Z)V", "i0", "u0", "w0", "r0", "()Z", "", RequestParameters.POSITION, "h0", "(I)V", "", "j0", "(Lcom/transsion/publish/api/PhotoEntity;)Ljava/lang/String;", "g0", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "k0", "()Llo/c;", "onDestroy", "isTranslucent", "isStatusDark", "isChangeStatusBar", "onBackPressed", "Lqi/b;", "newLogViewConfig", "()Lqi/b;", "", "a", "Ljava/util/List;", "photos", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "select", "Lcom/transsion/publish/adapter/o0;", "c", "Lcom/transsion/publish/adapter/o0;", "travelsGalleryAdapter", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "I", "from", "e", "limit", "f", "Publish_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class GalleryActivity extends BaseActivity<lo.c> {

    public static final Companion INSTANCE = new Companion(null);

    private com.transsion.publish.adapter.o0 travelsGalleryAdapter;

    private int from;

    private List photos = new ArrayList();

    private List select = new ArrayList();

    private int limit = 1;

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void a(Context context, List select, int i10, int i11, int i12) {
            Intrinsics.h(context, "context");
            Intrinsics.h(select, "select");
            Intent intent = new Intent(context, (Class<?>) GalleryActivity.class);
            intent.setFlags(ASTNode.DEOP);
            intent.putExtra("select", (Serializable) select);
            intent.putExtra("index", i10);
            intent.putExtra("from", i11);
            intent.putExtra("key_list", i12);
            context.startActivity(intent);
        }

        private Companion() {
        }
    }

    public static final class b implements ViewPager.h {
        b() {
        }

        @Override
        public void onPageScrollStateChanged(int i10) {
        }

        @Override
        public void onPageScrolled(int i10, float f10, int i11) {
        }

        @Override
        public void onPageSelected(int i10) {
            GalleryActivity.this.h0(i10);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void g0() {
        TextView selectNumTV = ((lo.c) getMViewBinding()).f66009j;
        Intrinsics.g(selectNumTV, "selectNumTV");
        selectNumTV.setVisibility(this.select.size() > 0 ? 0 : 8);
        ((lo.c) getMViewBinding()).f66009j.setText(getString(R$string.image_select_num_tips, Integer.valueOf(this.select.size()), Integer.valueOf(this.limit)));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void h0(int position) {
        try {
            int i10 = this.from;
            if (2 != i10) {
                if (3 == i10) {
                    if (((PhotoEntity) this.photos.get(position)).getEnableSelect()) {
                        ((lo.c) getMViewBinding()).f66011l.setText("1");
                        ((lo.c) getMViewBinding()).f66011l.setBackgroundResource(R$drawable.bg_linear_r16);
                        return;
                    } else {
                        ((lo.c) getMViewBinding()).f66011l.setText("");
                        ((lo.c) getMViewBinding()).f66011l.setBackgroundResource(R$drawable.ic_select_number_bro);
                        return;
                    }
                }
                PhotoEntity photoEntity = (PhotoEntity) this.photos.get(position);
                if (photoEntity.getEnableSelect()) {
                    ((lo.c) getMViewBinding()).f66011l.setText(j0(photoEntity));
                    ((lo.c) getMViewBinding()).f66011l.setBackgroundResource(R$drawable.bg_linear_r16);
                    return;
                } else {
                    ((lo.c) getMViewBinding()).f66011l.setText("");
                    ((lo.c) getMViewBinding()).f66011l.setBackgroundResource(R$drawable.ic_select_number_bro);
                    return;
                }
            }
            int i11 = position + 1;
            if (i11 > this.photos.size()) {
                ((lo.c) getMViewBinding()).f66010k.setText(position + "/" + this.photos.size());
                return;
            }
            ((lo.c) getMViewBinding()).f66010k.setText(i11 + "/" + this.photos.size());
        } catch (Exception e10) {
            String message = e10.getMessage();
            if (message != null) {
                wf.a.C0922a.f(wf.a.f74274a, "checkStatus", message, false, 4, null);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void i0(PhotoEntity info) {
        if (!info.getEnableSelect()) {
            this.select.add(info);
            info.setEnableSelect(true);
        }
        ((lo.c) getMViewBinding()).f66011l.setText(j0(info));
        ((lo.c) getMViewBinding()).f66011l.setBackgroundResource(R$drawable.bg_linear_r16);
        w0();
        g0();
    }

    private final void initData() {
        o0();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void initView() {
        ((lo.c) getMViewBinding()).f66003d.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                GalleryActivity.l0(this.f48479a, view);
            }
        });
        ((lo.c) getMViewBinding()).f66008i.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                GalleryActivity.m0(this.f48482a, view);
            }
        });
        TextView confirmTV = ((lo.c) getMViewBinding()).f66006g;
        Intrinsics.g(confirmTV, "confirmTV");
        uf.c.c(confirmTV, 0L, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return GalleryActivity.n0(this.f48484a, (View) obj);
            }
        }, 1, null);
    }

    private final String j0(PhotoEntity info) {
        int i10 = 0;
        for (Object obj : this.select) {
            int i11 = i10 + 1;
            if (i10 < 0) {
                CollectionsKt.u();
            }
            if (Intrinsics.c(info.getLocalPath(), ((PhotoEntity) obj).getLocalPath())) {
                return String.valueOf(i11);
            }
            i10 = i11;
        }
        return TmcConstants.COLD_OPEN_TYPE;
    }

    public static final void l0(GalleryActivity galleryActivity, View view) {
        galleryActivity.w0();
        galleryActivity.finish();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final void m0(GalleryActivity galleryActivity, View view) {
        int currentItem = ((lo.c) galleryActivity.getMViewBinding()).f66013n.getCurrentItem();
        if (!galleryActivity.photos.isEmpty() && currentItem <= galleryActivity.photos.size()) {
            PhotoEntity photoEntity = (PhotoEntity) galleryActivity.photos.get(currentItem);
            try {
                int i10 = galleryActivity.from;
                if (i10 == 1) {
                    galleryActivity.s0(photoEntity);
                } else if (i10 == 2) {
                    galleryActivity.t0(photoEntity);
                } else if (i10 == 3) {
                    galleryActivity.v0(photoEntity);
                }
            } catch (Exception e10) {
                wf.a.C0922a.g(wf.a.f74274a, "ext:" + e10.getMessage(), false, 2, null);
            }
        }
    }

    public static final Unit n0(GalleryActivity galleryActivity, View it) {
        Intrinsics.h(it, "it");
        PreviewMediaConfirmEvent previewMediaConfirmEvent = new PreviewMediaConfirmEvent(0, 1, null);
        FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
        String name = PreviewMediaConfirmEvent.class.getName();
        Intrinsics.g(name, "getName(...)");
        flowEventBus.postEvent(name, previewMediaConfirmEvent, 0L);
        galleryActivity.finish();
        return Unit.f64096a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void o0() {
        List listE;
        ProgressBar clipLoading = ((lo.c) getMViewBinding()).f66005f;
        Intrinsics.g(clipLoading, "clipLoading");
        uf.c.k(clipLoading);
        if (getIntent().hasExtra("list")) {
            Serializable serializableExtra = getIntent().getSerializableExtra("list");
            Intrinsics.f(serializableExtra, "null cannot be cast to non-null type kotlin.collections.MutableList<com.transsion.publish.api.PhotoEntity>");
            listE = TypeIntrinsics.c(serializableExtra);
        } else {
            listE = com.transsion.publish.n.f48362b.a().e();
        }
        this.photos = listE;
        if (getIntent().hasExtra("select")) {
            Serializable serializableExtra2 = getIntent().getSerializableExtra("select");
            Intrinsics.f(serializableExtra2, "null cannot be cast to non-null type kotlin.collections.MutableList<com.transsion.publish.api.PhotoEntity>");
            this.select = TypeIntrinsics.c(serializableExtra2);
        }
        this.from = getIntent().getIntExtra("from", 1);
        this.limit = getIntent().getIntExtra("key_list", 1);
        int intExtra = getIntent().getIntExtra("index", 0);
        this.travelsGalleryAdapter = new com.transsion.publish.adapter.o0(this.photos);
        ((lo.c) getMViewBinding()).f66013n.setAdapter(this.travelsGalleryAdapter);
        ProgressBar clipLoading2 = ((lo.c) getMViewBinding()).f66005f;
        Intrinsics.g(clipLoading2, "clipLoading");
        uf.c.g(clipLoading2);
        ((lo.c) getMViewBinding()).f66013n.addOnPageChangeListener(new b());
        ((lo.c) getMViewBinding()).f66013n.setCurrentItem(intExtra);
        int i10 = this.from;
        if (2 == i10) {
            ((lo.c) getMViewBinding()).f66010k.getVisibility();
            ImageView ivDelete = ((lo.c) getMViewBinding()).f66007h;
            Intrinsics.g(ivDelete, "ivDelete");
            uf.c.k(ivDelete);
            LinearLayout llSelect = ((lo.c) getMViewBinding()).f66008i;
            Intrinsics.g(llSelect, "llSelect");
            uf.c.g(llSelect);
            Group bottomGroup = ((lo.c) getMViewBinding()).f66001b;
            Intrinsics.g(bottomGroup, "bottomGroup");
            uf.c.g(bottomGroup);
            ((lo.c) getMViewBinding()).f66007h.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    GalleryActivity.p0(this.f48476a, view);
                }
            });
        } else if (4 == i10) {
            ((lo.c) getMViewBinding()).f66010k.getVisibility();
            ImageView ivDelete2 = ((lo.c) getMViewBinding()).f66007h;
            Intrinsics.g(ivDelete2, "ivDelete");
            uf.c.g(ivDelete2);
            LinearLayout llSelect2 = ((lo.c) getMViewBinding()).f66008i;
            Intrinsics.g(llSelect2, "llSelect");
            uf.c.g(llSelect2);
            Group bottomGroup2 = ((lo.c) getMViewBinding()).f66001b;
            Intrinsics.g(bottomGroup2, "bottomGroup");
            uf.c.g(bottomGroup2);
        } else {
            g0();
            Group bottomGroup3 = ((lo.c) getMViewBinding()).f66001b;
            Intrinsics.g(bottomGroup3, "bottomGroup");
            uf.c.k(bottomGroup3);
            TextView tvNum = ((lo.c) getMViewBinding()).f66010k;
            Intrinsics.g(tvNum, "tvNum");
            uf.c.g(tvNum);
            ImageView ivDelete3 = ((lo.c) getMViewBinding()).f66007h;
            Intrinsics.g(ivDelete3, "ivDelete");
            uf.c.g(ivDelete3);
        }
        h0(intExtra);
        qi.b logViewConfig = getLogViewConfig();
        if (logViewConfig != null) {
            logViewConfig.k(true);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final void p0(GalleryActivity galleryActivity, View view) {
        int currentItem = ((lo.c) galleryActivity.getMViewBinding()).f66013n.getCurrentItem();
        if (!galleryActivity.photos.isEmpty() && currentItem <= galleryActivity.photos.size()) {
            try {
                galleryActivity.t0((PhotoEntity) galleryActivity.photos.get(currentItem));
            } catch (Exception e10) {
                wf.a.C0922a.g(wf.a.f74274a, "ext:" + e10.getMessage(), false, 2, null);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void q0(PhotoEntity info, boolean refresh) {
        if (info.getEnableSelect()) {
            u0(info);
            info.setEnableSelect(false);
            ((lo.c) getMViewBinding()).f66011l.setText("");
            ((lo.c) getMViewBinding()).f66011l.setBackgroundResource(R$drawable.ic_select_number_bro);
        }
    }

    private final boolean r0() {
        return this.select.size() >= this.limit;
    }

    private final void s0(PhotoEntity photoEntity) {
        if (r0()) {
            if (photoEntity.getEnableSelect()) {
                q0(photoEntity, true);
                return;
            } else {
                com.tn.lib.widget.toast.core.h.f40484a.l(getString(R$string.add_img_max_tips, Integer.valueOf(this.limit)));
                return;
            }
        }
        if (photoEntity.getEnableSelect()) {
            q0(photoEntity, false);
        } else {
            i0(photoEntity);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void t0(PhotoEntity photoEntity) {
        if (photoEntity.getEnableSelect()) {
            PhotoEntity photoEntity2 = null;
            int i10 = 0;
            int i11 = 0;
            for (Object obj : this.photos) {
                int i12 = i10 + 1;
                if (i10 < 0) {
                    CollectionsKt.u();
                }
                PhotoEntity photoEntity3 = (PhotoEntity) obj;
                if (TextUtils.equals(photoEntity3.getLocalPath(), photoEntity.getLocalPath())) {
                    i11 = i10;
                    photoEntity2 = photoEntity3;
                }
                i10 = i12;
            }
            if (photoEntity2 == null) {
                return;
            }
            this.photos.remove(photoEntity2);
            com.transsion.publish.adapter.o0 o0Var = this.travelsGalleryAdapter;
            if (o0Var != null) {
                o0Var.c(this.photos);
            }
            u0(photoEntity);
            if (this.photos.isEmpty()) {
                w0();
                finish();
                return;
            }
            FixedViewPager vp2 = ((lo.c) getMViewBinding()).f66013n;
            Intrinsics.g(vp2, "vp");
            if (i11 > vp2.getChildCount()) {
                ((lo.c) getMViewBinding()).f66013n.setCurrentItem(0, false);
            } else {
                ((lo.c) getMViewBinding()).f66013n.setCurrentItem(i11, false);
            }
            h0(i11);
        }
    }

    private final void u0(PhotoEntity info) {
        PhotoEntity photoEntity = null;
        for (PhotoEntity photoEntity2 : this.select) {
            if (TextUtils.equals(photoEntity2.getLocalPath(), info.getLocalPath())) {
                photoEntity2.setEnableSelect(false);
                photoEntity = photoEntity2;
            }
        }
        if (photoEntity != null) {
            this.select.remove(photoEntity);
        }
        w0();
        g0();
    }

    private final void v0(PhotoEntity photoEntity) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(photoEntity);
        BigImageBean bigImageBean = new BigImageBean();
        bigImageBean.setFrom(Integer.valueOf(this.from));
        bigImageBean.setSelect(arrayList);
        if (photoEntity.getEnableSelect()) {
            photoEntity.setEnableSelect(false);
            bigImageBean.setOperator(2);
            FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
            String name = BigImageBean.class.getName();
            Intrinsics.g(name, "getName(...)");
            flowEventBus.postEvent(name, bigImageBean, 0L);
            return;
        }
        photoEntity.setEnableSelect(true);
        bigImageBean.setOperator(1);
        FlowEventBus flowEventBus2 = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
        String name2 = BigImageBean.class.getName();
        Intrinsics.g(name2, "getName(...)");
        flowEventBus2.postEvent(name2, bigImageBean, 0L);
        finish();
    }

    private final void w0() {
        BigImageBean bigImageBean = new BigImageBean();
        bigImageBean.setFrom(Integer.valueOf(this.from));
        bigImageBean.setSelect(this.select);
        bigImageBean.setOperator(1);
        FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
        String name = BigImageBean.class.getName();
        Intrinsics.g(name, "getName(...)");
        flowEventBus.postEvent(name, bigImageBean, 0L);
    }

    @Override
    public boolean isChangeStatusBar() {
        return false;
    }

    @Override
    public boolean isStatusDark() {
        return true;
    }

    @Override
    public boolean isTranslucent() {
        return true;
    }

    @Override
    public lo.c getViewBinding() {
        lo.c cVarC = lo.c.c(getLayoutInflater());
        Intrinsics.g(cVarC, "inflate(...)");
        return cVarC;
    }

    @Override
    public qi.b newLogViewConfig() {
        return new qi.b("gallery_page", false, 2, null);
    }

    @Override
    public void onBackPressed() {
        super.onBackPressed();
        w0();
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        initView();
        initData();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    protected void onDestroy() {
        super.onDestroy();
        ProgressBar clipLoading = ((lo.c) getMViewBinding()).f66005f;
        Intrinsics.g(clipLoading, "clipLoading");
        uf.c.g(clipLoading);
    }
}
