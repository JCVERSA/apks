package com.snaptube.premium.files.binder.viewholder;

import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.view.View;
import android.widget.ImageView;
import androidx.recyclerview.widget.BaseViewHolder;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.phoenix.card.models.CardViewModel;
import com.snaptube.ad.guardian.GuardianManager;
import com.snaptube.ads_log_v2.AdLogAttributionCache;
import com.snaptube.ads_log_v2.AdLogV2Event;
import com.snaptube.ktx.view.ViewKt;
import com.snaptube.premium.R;
import com.snaptube.premium.model.LocalVideoAlbumInfo;
import com.snaptube.premium.model.VideoMyThingsCardModel;
import com.snaptube.taskManager.datasets.TaskInfo;
import com.wandoujia.base.config.GlobalConfig;
import com.wandoujia.base.utils.RxBus;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import o.cl;
import o.db1;
import o.dl6;
import o.fv1;
import o.fv7;
import o.mb8;
import o.me8;
import o.n74;
import o.or3;
import o.rj0;
import o.s7;
import o.t14;
import o.tb0;
import o.tl1;
import o.uo0;
import o.ve7;
import o.wl3;
import o.wu7;

@Metadata(d1 = {"\u0000s\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010$\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006*\u0001A\u0018\u00002\u00020\u00012\u00020\u0002B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u0011\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0016¢\u0006\u0004\b\b\u0010\tJ\u0019\u0010\f\u001a\u00020\u000b2\b\u0010\n\u001a\u0004\u0018\u00010\u0007H\u0016¢\u0006\u0004\b\f\u0010\rJ\u0015\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u000e¢\u0006\u0004\b\u0010\u0010\u0011J\r\u0010\u0012\u001a\u00020\u000b¢\u0006\u0004\b\u0012\u0010\u0013J\r\u0010\u0014\u001a\u00020\u000b¢\u0006\u0004\b\u0014\u0010\u0013J\u0019\u0010\u0017\u001a\u00020\u000b2\b\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0002¢\u0006\u0004\b\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\u0019\u0010\u0013J\u000f\u0010\u001a\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\u001a\u0010\u0013J\u0017\u0010\u001c\u001a\u00020\u000b2\u0006\u0010\u001b\u001a\u00020\u0015H\u0002¢\u0006\u0004\b\u001c\u0010\u0018J\u0017\u0010\u001d\u001a\u00020\u000b2\u0006\u0010\u001b\u001a\u00020\u0015H\u0002¢\u0006\u0004\b\u001d\u0010\u0018J%\u0010\u001f\u001a\u0010\u0012\u0004\u0012\u00020\u0015\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u001e2\u0006\u0010\u001b\u001a\u00020\u0015H\u0002¢\u0006\u0004\b\u001f\u0010 R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b!\u0010\"\u001a\u0004\b#\u0010$R\u0018\u0010'\u001a\u0004\u0018\u00010\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b%\u0010&R\u001d\u0010-\u001a\u0004\u0018\u00010(8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b)\u0010*\u001a\u0004\b+\u0010,R\u001b\u00102\u001a\u00020.8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b/\u0010*\u001a\u0004\b0\u00101R\u001b\u00105\u001a\u00020.8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b3\u0010*\u001a\u0004\b4\u00101R\u001b\u0010:\u001a\u0002068BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b7\u0010*\u001a\u0004\b8\u00109R#\u0010@\u001a\n <*\u0004\u0018\u00010;0;8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b=\u0010*\u001a\u0004\b>\u0010?R\u001b\u0010E\u001a\u00020A8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bB\u0010*\u001a\u0004\bC\u0010DR\u001b\u0010J\u001a\u00020F8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bG\u0010*\u001a\u0004\bH\u0010IR\u0018\u0010N\u001a\u0004\u0018\u00010K8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bL\u0010MR\u0016\u0010\u001b\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bO\u0010P¨\u0006Q"}, d2 = {"Lcom/snaptube/premium/files/binder/viewholder/ApkAdViewHolder;", "Landroidx/recyclerview/widget/BaseViewHolder;", "Lo/fv1$a;", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "<init>", "(Landroid/view/View;)V", "", "L", "()Ljava/lang/Object;", "any", "Lo/mg8;", "t", "(Ljava/lang/Object;)V", "Lcom/snaptube/premium/model/VideoMyThingsCardModel;", GuardianManager.MODEL, "Y", "(Lcom/snaptube/premium/model/VideoMyThingsCardModel;)V", "l0", "()V", "m0", "", "fileCover", "k0", "(Ljava/lang/String;)V", "p0", "q0", "packageName", "o0", "n0", "", "i0", "(Ljava/lang/String;)Ljava/util/Map;", "a", "Landroid/view/View;", "j0", "()Landroid/view/View;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Ljava/lang/Object;", "animateTag", "Landroid/graphics/drawable/LayerDrawable;", "c", "Lo/t14;", "b0", "()Landroid/graphics/drawable/LayerDrawable;", "defaultOtherDrawable", "Landroid/widget/ImageView;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "g0", "()Landroid/widget/ImageView;", "ivCover", "e", "f0", "ivApkIcon", "", "f", "a0", "()I", "coverSize", "", "kotlin.jvm.PlatformType", "g", "c0", "()Ljava/lang/Boolean;", "enableReplenishImpression", "com/snaptube/premium/files/binder/viewholder/ApkAdViewHolder$impressionCallback$2$a", "h", "d0", "()Lcom/snaptube/premium/files/binder/viewholder/ApkAdViewHolder$impressionCallback$2$a;", "impressionCallback", "Lo/wl3;", "i", "e0", "()Lo/wl3;", "impressionTracker", "Lo/wu7;", "j", "Lo/wu7;", "fragmentVisibleSubscription", CampaignEx.JSON_KEY_AD_K, "Ljava/lang/String;", "snaptube_classicNormalRelease"}, k = 1, mv = {1, 9, 0})
public final class ApkAdViewHolder extends BaseViewHolder implements fv1.a {

    public final View view;

    public Object animateTag;

    public final t14 defaultOtherDrawable;

    public final t14 ivCover;

    public final t14 ivApkIcon;

    public final t14 coverSize;

    public final t14 enableReplenishImpression;

    public final t14 impressionCallback;

    public final t14 impressionTracker;

    public wu7 fragmentVisibleSubscription;

    public String packageName;

    public static final class a extends db1 {
        public a() {
        }

        public void a(Drawable drawable, mb8 mb8Var) {
            or3.f(drawable, "resource");
            ((dl6) ((dl6) ((dl6) ((dl6) com.bumptech.glide.a.w(ApkAdViewHolder.S(ApkAdViewHolder.this)).t(drawable).g0(ApkAdViewHolder.P(ApkAdViewHolder.this))).o(ApkAdViewHolder.P(ApkAdViewHolder.this))).p0(true)).s0(new tb0(1, 240))).I0(ApkAdViewHolder.S(ApkAdViewHolder.this));
            ((dl6) ((dl6) com.bumptech.glide.a.w(ApkAdViewHolder.R(ApkAdViewHolder.this)).t(drawable).p0(true)).u0(new rj0(), new uo0())).I0(ApkAdViewHolder.R(ApkAdViewHolder.this));
        }

        @Override
        public void n(Drawable drawable) {
        }

        @Override
        public void p(Object obj, mb8 mb8Var) {
            a((Drawable) obj, mb8Var);
        }

        @Override
        public void s(Drawable drawable) {
            ApkAdViewHolder.S(ApkAdViewHolder.this).setImageDrawable(drawable);
        }
    }

    public static final class b extends ve7 {
        public b() {
        }

        @Override
        public void c(Object obj) {
            d((RxBus.d) obj);
        }

        public void d(RxBus.d dVar) {
            if (dVar == null || dVar.a != 1268) {
                return;
            }
            ApkAdViewHolder.X(ApkAdViewHolder.this);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ApkAdViewHolder(View view) {
        super(view);
        or3.f(view, MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW);
        this.view = view;
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.NONE;
        this.defaultOtherDrawable = kotlin.b.a(lazyThreadSafetyMode, new ApkAdViewHolder$defaultOtherDrawable$2(this));
        this.ivCover = kotlin.b.a(lazyThreadSafetyMode, new ApkAdViewHolder$ivCover$2(this));
        this.ivApkIcon = kotlin.b.a(lazyThreadSafetyMode, new ApkAdViewHolder$ivApkIcon$2(this));
        this.coverSize = kotlin.b.a(lazyThreadSafetyMode, new ApkAdViewHolder$coverSize$2(this));
        this.enableReplenishImpression = kotlin.b.b(ApkAdViewHolder$enableReplenishImpression$2.INSTANCE);
        this.impressionCallback = kotlin.b.b(new ApkAdViewHolder$impressionCallback$2(this));
        this.impressionTracker = kotlin.b.b(new ApkAdViewHolder$impressionTracker$2(this));
        this.packageName = "";
    }

    public static void O(ApkAdViewHolder apkAdViewHolder, VideoMyThingsCardModel videoMyThingsCardModel, View view) {
        Z(apkAdViewHolder, videoMyThingsCardModel, view);
    }

    public static final LayerDrawable P(ApkAdViewHolder apkAdViewHolder) {
        return apkAdViewHolder.b0();
    }

    public static final ApkAdViewHolder$impressionCallback$2.a Q(ApkAdViewHolder apkAdViewHolder) {
        return apkAdViewHolder.d0();
    }

    public static final ImageView R(ApkAdViewHolder apkAdViewHolder) {
        return apkAdViewHolder.f0();
    }

    public static final ImageView S(ApkAdViewHolder apkAdViewHolder) {
        return apkAdViewHolder.g0();
    }

    public static final String T(ApkAdViewHolder apkAdViewHolder) {
        return apkAdViewHolder.packageName;
    }

    public static final void U(ApkAdViewHolder apkAdViewHolder, String str) {
        apkAdViewHolder.n0(str);
    }

    public static final void W(ApkAdViewHolder apkAdViewHolder, String str) {
        apkAdViewHolder.o0(str);
    }

    public static final void X(ApkAdViewHolder apkAdViewHolder) {
        apkAdViewHolder.p0();
    }

    public static final void Z(ApkAdViewHolder apkAdViewHolder, VideoMyThingsCardModel videoMyThingsCardModel, View view) {
        or3.f(apkAdViewHolder, "this$0");
        or3.f(videoMyThingsCardModel, "$model");
        new tl1(apkAdViewHolder.view.getContext(), videoMyThingsCardModel.n().k().getFilePath()).show();
    }

    private final ImageView g0() {
        return (ImageView) this.ivCover.getValue();
    }

    @Override
    public Object getAnimateTag() {
        return this.animateTag;
    }

    public final void Y(VideoMyThingsCardModel model) {
        LocalVideoAlbumInfo localVideoAlbumInfoK;
        CharSequence charSequenceA;
        or3.f(model, GuardianManager.MODEL);
        CardViewModel cardViewModelV = model.v();
        setText(R.id.title, (cardViewModelV == null || (charSequenceA = cardViewModelV.a(null)) == null) ? null : charSequenceA.toString());
        CardViewModel cardViewModelV2 = model.v();
        k0(com.snaptube.premium.model.a.d(cardViewModelV2 != null ? cardViewModelV2.getMediaType() : null, model.n().k()));
        n74 n74VarN = model.n();
        TaskInfo taskInfo = (n74VarN == null || (localVideoAlbumInfoK = n74VarN.k()) == null) ? null : localVideoAlbumInfoK.getTaskInfo();
        com.snaptube.taskManager.datasets.a aVar = taskInfo instanceof com.snaptube.taskManager.datasets.a ? (com.snaptube.taskManager.datasets.a) taskInfo : null;
        String str = aVar != null ? aVar.t0 : null;
        if (str == null) {
            str = "";
        }
        this.packageName = str;
        ViewKt.t(this.view, new ApkAdViewHolder$bind$1(this, model));
        ((ImageView) getView(R.id.close)).setOnClickListener(new cl(this, model));
        p0();
    }

    public final int a0() {
        return ((Number) this.coverSize.getValue()).intValue();
    }

    public final LayerDrawable b0() {
        return (LayerDrawable) this.defaultOtherDrawable.getValue();
    }

    public final Boolean c0() {
        return (Boolean) this.enableReplenishImpression.getValue();
    }

    public final ApkAdViewHolder$impressionCallback$2.a d0() {
        return (ApkAdViewHolder$impressionCallback$2.a) this.impressionCallback.getValue();
    }

    public final wl3 e0() {
        return (wl3) this.impressionTracker.getValue();
    }

    public final ImageView f0() {
        return (ImageView) this.ivApkIcon.getValue();
    }

    public final Map i0(String packageName) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        AdLogV2Event adLogV2EventL = AdLogAttributionCache.j().l(packageName);
        if (adLogV2EventL != null) {
            linkedHashMap.put("global_id", adLogV2EventL.getGlobalId());
            linkedHashMap.put("group_id", adLogV2EventL.getGroupId());
            linkedHashMap.put("ad_placement_id", adLogV2EventL.getAdPlacementId());
            linkedHashMap.put("impression_callback_urls", adLogV2EventL.getImpressionCallbacks());
            linkedHashMap.put("click_callback_urls", adLogV2EventL.getClickCallbacks());
        }
        linkedHashMap.put("gaid", GlobalConfig.getGAID());
        linkedHashMap.put("udid", me8.g(GlobalConfig.getAppContext()));
        linkedHashMap.put(CampaignEx.JSON_KEY_PACKAGE_NAME, packageName);
        return linkedHashMap;
    }

    public final View getView() {
        return this.view;
    }

    public final void k0(String fileCover) {
        ((dl6) ((dl6) ((dl6) com.bumptech.glide.a.w(g0()).y(fileCover).g0(b0())).o(b0())).d0(a0())).F0(new a());
    }

    public final void l0() {
        Boolean boolC0 = c0();
        or3.e(boolC0, "<get-enableReplenishImpression>(...)");
        if (boolC0.booleanValue()) {
            this.fragmentVisibleSubscription = RxBus.d().c(1268).g(RxBus.f).x0(new b());
        }
    }

    public final void m0() {
        q0();
        wu7 wu7Var = this.fragmentVisibleSubscription;
        if (wu7Var != null) {
            fv7.a(wu7Var);
        }
    }

    public final void n0(String packageName) {
        s7.y().K("https://api-event.falconnet.app/v1/playList/click", i0(packageName));
    }

    public final void o0(String packageName) {
        s7.y().K("https://api-event.falconnet.app/v1/playList/impression", i0(packageName));
    }

    public final void p0() {
        Boolean boolC0 = c0();
        or3.e(boolC0, "<get-enableReplenishImpression>(...)");
        if (boolC0.booleanValue()) {
            e0().C();
        }
    }

    public final void q0() {
        Boolean boolC0 = c0();
        or3.e(boolC0, "<get-enableReplenishImpression>(...)");
        if (boolC0.booleanValue()) {
            e0().D();
        }
    }

    @Override
    public void t(Object any) {
        this.animateTag = any;
    }
}
