package com.transsion.ninegridview.preview;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.FragmentActivity;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import com.blankj.utilcode.util.Utils;
import com.blankj.utilcode.util.y;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.engine.GlideException;
import com.bumptech.glide.request.RequestListener;
import com.bumptech.glide.request.target.Target;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.tn.lib.widget.dialog.TRDialog;
import com.tn.lib.widget.dialog.TRDialogListener;
import com.transsion.baseui.activity.BaseActivity;
import com.transsion.moviedetailapi.bean.GifBean;
import com.transsion.moviedetailapi.bean.Image;
import com.transsion.ninegridview.R$string;
import com.transsion.ninegridview.helper.FileHelper;
import com.transsion.player.config.RenderType;
import com.transsion.player.orplayer.PlayError;
import com.transsion.player.p007enum.ScaleMode;
import com.transsion.player.ui.ORPlayerView;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.File;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.text.StringsKt;

@Metadata(d1 = {"\u0000¹\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0015\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0010\u0004\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\b\u0006*\u0001g\u0018\u0000 j2\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0001kB\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0007\u0010\u0005J\u000f\u0010\b\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\b\u0010\u0005J\u000f\u0010\t\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\t\u0010\u0005J\u000f\u0010\n\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\n\u0010\u0005J#\u0010\u000f\u001a\u00020\u00062\b\u0010\f\u001a\u0004\u0018\u00010\u000b2\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\u001b\u0010\u0011\u001a\u0004\u0018\u00010\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0013\u0010\u0005J\u000f\u0010\u0014\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0014\u0010\u0005J\u000f\u0010\u0015\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0015\u0010\u0005J\u0011\u0010\u0017\u001a\u0004\u0018\u00010\u0016H\u0002¢\u0006\u0004\b\u0017\u0010\u0018J\u0017\u0010\u001b\u001a\u00020\u00062\u0006\u0010\u001a\u001a\u00020\u0019H\u0002¢\u0006\u0004\b\u001b\u0010\u001cJ\u0017\u0010\u001f\u001a\u00020\u00062\u0006\u0010\u001e\u001a\u00020\u001dH\u0002¢\u0006\u0004\b\u001f\u0010 J\u0017\u0010!\u001a\u00020\u00062\u0006\u0010\u001e\u001a\u00020\u001dH\u0002¢\u0006\u0004\b!\u0010 J\u0019\u0010$\u001a\u00020\u00062\b\u0010#\u001a\u0004\u0018\u00010\"H\u0014¢\u0006\u0004\b$\u0010%J\u000f\u0010&\u001a\u00020\u0002H\u0016¢\u0006\u0004\b&\u0010'J\u000f\u0010)\u001a\u00020(H\u0016¢\u0006\u0004\b)\u0010*J\r\u0010+\u001a\u00020\u0006¢\u0006\u0004\b+\u0010\u0005J/\u00102\u001a\u00020\u00062\u0006\u0010-\u001a\u00020,2\u000e\u0010/\u001a\n\u0012\u0006\b\u0001\u0012\u00020\r0.2\u0006\u00101\u001a\u000200H\u0016¢\u0006\u0004\b2\u00103J\u000f\u00104\u001a\u00020(H\u0016¢\u0006\u0004\b4\u0010*J\u000f\u00105\u001a\u00020\u0006H\u0016¢\u0006\u0004\b5\u0010\u0005J\u000f\u00106\u001a\u00020\u0006H\u0016¢\u0006\u0004\b6\u0010\u0005J\u000f\u00107\u001a\u00020\u0006H\u0016¢\u0006\u0004\b7\u0010\u0005J\u000f\u00108\u001a\u00020\u0006H\u0014¢\u0006\u0004\b8\u0010\u0005J\u0017\u0010;\u001a\u00020\u00062\u0006\u0010:\u001a\u000209H\u0016¢\u0006\u0004\b;\u0010<J\u0017\u0010=\u001a\u00020\u00062\u0006\u0010:\u001a\u000209H\u0016¢\u0006\u0004\b=\u0010<J%\u0010B\u001a\u00020,2\u0006\u0010?\u001a\u00020>2\u0006\u0010@\u001a\u00020,2\u0006\u0010A\u001a\u00020,¢\u0006\u0004\bB\u0010CJ%\u0010E\u001a\u00020>2\u0006\u0010?\u001a\u00020>2\u0006\u0010@\u001a\u00020D2\u0006\u0010A\u001a\u00020D¢\u0006\u0004\bE\u0010FJ%\u0010G\u001a\u00020,2\u0006\u0010?\u001a\u00020>2\u0006\u0010@\u001a\u00020,2\u0006\u0010A\u001a\u00020,¢\u0006\u0004\bG\u0010CJ\u000f\u0010I\u001a\u00020HH\u0016¢\u0006\u0004\bI\u0010JR\u0014\u0010K\u001a\u00020,8\u0002X\u0082D¢\u0006\u0006\n\u0004\bK\u0010LR\u0018\u0010N\u001a\u0004\u0018\u00010M8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bN\u0010OR\u001e\u0010R\u001a\n\u0012\u0004\u0012\u00020Q\u0018\u00010P8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bR\u0010SR\u0018\u0010T\u001a\u0004\u0018\u00010(8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bT\u0010UR\u0016\u0010V\u001a\u00020,8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bV\u0010LR\u0016\u0010W\u001a\u00020,8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bW\u0010LR\u0016\u0010X\u001a\u00020,8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bX\u0010LR\u0016\u0010Y\u001a\u00020,8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bY\u0010LR\u0016\u0010Z\u001a\u00020,8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bZ\u0010LR\u0018\u0010\\\u001a\u0004\u0018\u00010[8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\\\u0010]R\u0018\u0010_\u001a\u0004\u0018\u00010^8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b_\u0010`R\u0014\u0010b\u001a\u00020a8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bb\u0010cR\u0018\u0010d\u001a\u0004\u0018\u00010\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bd\u0010eR\u0018\u0010f\u001a\u0004\u0018\u00010\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bf\u0010eR\u0014\u0010h\u001a\u00020g8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bh\u0010i¨\u0006l"}, d2 = {"Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;", "Lcom/transsion/baseui/activity/BaseActivity;", "Lum/a;", "Lcom/tn/lib/widget/dialog/TRDialogListener;", "<init>", "()V", "", "initView", "startEnterTheAnimation", "downloadImage", "showPageIndex", "Ljava/io/File;", OfflineConstantsKt.OFFLINE_DOWNLOAD_SEARCH_MODE_FILE, "", "url", "saveToAlbum", "(Ljava/io/File;Ljava/lang/String;)V", "getNameFromUrl", "(Ljava/lang/String;)Ljava/lang/String;", "requestPermission", "showSettingDialog", "initPlayer", "Landroid/view/View;", "getItemView", "()Landroid/view/View;", "Landroid/widget/ImageView;", "imageView", "computeImageWidthAndHeight", "(Landroid/widget/ImageView;)V", "Landroid/animation/ValueAnimator;", "valueAnimator", "addIntoListener", "(Landroid/animation/ValueAnimator;)V", "addOutListener", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "getViewBinding", "()Lum/a;", "", "isTranslucent", "()Z", "finishActivityAnim", "", "requestCode", "", "permissions", "", "grantResults", "onRequestPermissionsResult", "(I[Ljava/lang/String;[I)V", "isAttach", "onBackPressed", "onResume", "onPause", "onDestroy", "Lcom/tn/lib/widget/dialog/TRDialog;", "dialog", "onLeftButtonClick", "(Lcom/tn/lib/widget/dialog/TRDialog;)V", "onRightButtonClick", "", "fraction", "startValue", "endValue", "evaluateInt", "(FII)I", "", "evaluateFloat", "(FLjava/lang/Number;Ljava/lang/Number;)F", "evaluateArgb", "Lqi/b;", "newLogViewConfig", "()Lqi/b;", "REQUEST_PERMISSION_STORAGE", "I", "Lcom/transsion/ninegridview/preview/c;", "imagePreviewAdapter", "Lcom/transsion/ninegridview/preview/c;", "", "Lcom/transsion/moviedetailapi/bean/Image;", "imageList", "Ljava/util/List;", "isBuiltInApp", "Ljava/lang/Boolean;", "currentItemIndex", "imageHeight", "imageWidth", "screenWidth", "screenHeight", "Lcom/transsion/player/orplayer/f;", "mPlayer", "Lcom/transsion/player/orplayer/f;", "Lcom/transsion/ninegridview/preview/r;", "mPageChange", "Lcom/transsion/ninegridview/preview/r;", "Landroid/os/Handler;", "handler", "Landroid/os/Handler;", "pageFrom", "Ljava/lang/String;", "postId", "com/transsion/ninegridview/preview/GifImagePreviewActivity$g", "mOnPageChangeCallback", "Lcom/transsion/ninegridview/preview/GifImagePreviewActivity$g;", "Companion", "a", "NineGridView_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class GifImagePreviewActivity extends BaseActivity<um.a> implements TRDialogListener {
    public static final int ANIMATE_DURATION = 200;
    public static final String CURRENT_ITEM = "CURRENT_ITEM";

    public static final Companion INSTANCE = new Companion(null);
    public static final String IMAGE_LIST = "image_list";
    public static final String IS_BUILTIN = "IS_BUILTIN";
    private static final String PAGE_NAME = "gif_image_preview";
    public static final String PICTURE_SAVE = "oneroom";
    public static final int PLAY_GIF_AGAIN = 102;
    public static final String POST_ID = "POST_ID";
    public static final int REQUEST_PERMISSION_SETTING = 101;
    private int currentItemIndex;
    private int imageHeight;
    private List<Image> imageList;
    private com.transsion.ninegridview.preview.c imagePreviewAdapter;
    private int imageWidth;
    private r mPageChange;
    private com.transsion.player.orplayer.f mPlayer;
    private String pageFrom;
    private String postId;
    private int screenHeight;
    private int screenWidth;
    private final int REQUEST_PERMISSION_STORAGE = 100;
    private Boolean isBuiltInApp = Boolean.FALSE;
    private final Handler handler = new Handler(Looper.getMainLooper());
    private final g mOnPageChangeCallback = new g();

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void a(Context context, int i10, List list) {
            Intrinsics.h(context, "context");
            Intent intent = new Intent(context, (Class<?>) GifImagePreviewActivity.class);
            Bundle bundle = new Bundle();
            Intrinsics.f(list, "null cannot be cast to non-null type java.io.Serializable");
            bundle.putSerializable(GifImagePreviewActivity.IMAGE_LIST, (Serializable) list);
            bundle.putInt("CURRENT_ITEM", i10);
            intent.putExtras(bundle);
            context.startActivity(intent);
        }

        private Companion() {
        }
    }

    public static final class b implements Animator.AnimatorListener {
        b() {
        }

        @Override
        public void onAnimationCancel(Animator animation) {
            Intrinsics.h(animation, "animation");
        }

        @Override
        public void onAnimationEnd(Animator animation) {
            Intrinsics.h(animation, "animation");
        }

        @Override
        public void onAnimationRepeat(Animator animation) {
            Intrinsics.h(animation, "animation");
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public void onAnimationStart(Animator animation) {
            Intrinsics.h(animation, "animation");
            ((um.a) GifImagePreviewActivity.this.getMViewBinding()).f73190d.setBackgroundColor(0);
        }
    }

    public static final class c implements Animator.AnimatorListener {
        c() {
        }

        @Override
        public void onAnimationCancel(Animator animation) {
            Intrinsics.h(animation, "animation");
        }

        @Override
        public void onAnimationEnd(Animator animation) {
            Intrinsics.h(animation, "animation");
            GifImagePreviewActivity.this.finish();
            GifImagePreviewActivity.this.overridePendingTransition(0, 0);
        }

        @Override
        public void onAnimationRepeat(Animator animation) {
            Intrinsics.h(animation, "animation");
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public void onAnimationStart(Animator animation) {
            Intrinsics.h(animation, "animation");
            ((um.a) GifImagePreviewActivity.this.getMViewBinding()).f73190d.setBackgroundColor(0);
        }
    }

    public static final class d implements RequestListener {

        final Image f45817b;

        d(Image image) {
            this.f45817b = image;
        }

        @Override
        public boolean onResourceReady(File resource, Object model, Target target, DataSource dataSource, boolean z10) {
            Intrinsics.h(resource, "resource");
            Intrinsics.h(model, "model");
            Intrinsics.h(target, "target");
            Intrinsics.h(dataSource, "dataSource");
            GifImagePreviewActivity gifImagePreviewActivity = GifImagePreviewActivity.this;
            Image image = this.f45817b;
            gifImagePreviewActivity.saveToAlbum(resource, image != null ? image.getUrl() : null);
            return false;
        }

        @Override
        public boolean onLoadFailed(GlideException glideException, Object obj, Target target, boolean z10) {
            Intrinsics.h(target, "target");
            fh.b.f60176a.d(R$string.download_failed);
            return false;
        }
    }

    public static final class e implements Animation.AnimationListener {
        e() {
        }

        @Override
        public void onAnimationEnd(Animation animation) {
            Intrinsics.h(animation, "animation");
            GifImagePreviewActivity.this.finish();
        }

        @Override
        public void onAnimationRepeat(Animation animation) {
            Intrinsics.h(animation, "animation");
        }

        @Override
        public void onAnimationStart(Animation animation) {
            Intrinsics.h(animation, "animation");
        }
    }

    public static final class f implements com.transsion.player.orplayer.e {
        f() {
        }

        @Override
        public void canNonSubscriberPlay(boolean z10, int i10, int i11, qn.d dVar) {
            com.transsion.player.orplayer.e.a.a(this, z10, i10, i11, dVar);
        }

        @Override
        public void initPlayer() {
            com.transsion.player.orplayer.e.a.b(this);
        }

        @Override
        public void onAliyunDecodeErrorChangeSoftwareDecoder(gn.e eVar) {
            com.transsion.player.orplayer.e.a.c(this, eVar);
        }

        @Override
        public void onBufferedPosition(long j10, gn.e eVar) {
            com.transsion.player.orplayer.e.a.d(this, j10, eVar);
        }

        @Override
        public void onCompletion(gn.e eVar) {
            com.transsion.player.orplayer.e.a.e(this, eVar);
        }

        @Override
        public void onFocusChange(boolean z10) {
            com.transsion.player.orplayer.e.a.g(this, z10);
        }

        @Override
        public void onIsPlayingChanged(boolean z10) {
            com.transsion.player.orplayer.e.a.h(this, z10);
        }

        @Override
        public void onLoadingBegin(gn.e eVar) {
            com.transsion.player.orplayer.e.a.i(this, eVar);
        }

        @Override
        public void onLoadingEnd(gn.e eVar) {
            com.transsion.player.orplayer.e.a.k(this, eVar);
        }

        @Override
        public void onLoadingProgress(int i10, float f10, gn.e eVar) {
            com.transsion.player.orplayer.e.a.m(this, i10, f10, eVar);
        }

        @Override
        public void onLoopingStart() {
            com.transsion.player.orplayer.e.a.o(this);
        }

        @Override
        public void onMediaItemTransition(String str) {
            com.transsion.player.orplayer.e.a.p(this, str);
        }

        @Override
        public void onPlayError(PlayError playError, gn.e eVar) {
            com.transsion.player.orplayer.e.a.q(this, playError, eVar);
        }

        @Override
        public void onPlayerRelease(gn.e eVar) {
            com.transsion.player.orplayer.e.a.t(this, eVar);
        }

        @Override
        public void onPlayerReset() {
            com.transsion.player.orplayer.e.a.v(this);
        }

        @Override
        public void onPrepare(gn.e eVar) {
            com.transsion.player.orplayer.e.a.w(this, eVar);
        }

        @Override
        public void onProgress(long j10, gn.e eVar) {
            com.transsion.player.orplayer.e.a.y(this, j10, eVar);
        }

        @Override
        public void onRenderFirstFrame() {
            com.transsion.player.orplayer.e.a.A(this);
            r rVar = GifImagePreviewActivity.this.mPageChange;
            if (rVar != null) {
                rVar.g();
            }
        }

        @Override
        public void onSetDataSource() {
            com.transsion.player.orplayer.e.a.B(this);
        }

        @Override
        public void onTracksAudioBitrateChange(int i10) {
            com.transsion.player.orplayer.e.a.C(this, i10);
        }

        @Override
        public void onTracksChange(qn.c cVar) {
            com.transsion.player.orplayer.e.a.D(this, cVar);
        }

        @Override
        public void onTracksVideoBitrateChange(int i10) {
            com.transsion.player.orplayer.e.a.E(this, i10);
        }

        @Override
        public void onVideoPause(gn.e eVar) {
            com.transsion.player.orplayer.e.a.F(this, eVar);
        }

        @Override
        public void onVideoSizeChanged(int i10, int i11) {
            com.transsion.player.orplayer.e.a.H(this, i10, i11);
        }

        @Override
        public void onVideoStart(gn.e eVar) {
            com.transsion.player.orplayer.e.a.I(this, eVar);
        }

        @Override
        public void setOnSeekCompleteListener() {
            com.transsion.player.orplayer.e.a.K(this);
        }
    }

    public static final class g extends ViewPager2.OnPageChangeCallback {
        g() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v0, types: [T, android.view.View] */
        public static final void b(Ref.ObjectRef objectRef, GifImagePreviewActivity gifImagePreviewActivity, int i10) {
            objectRef.element = gifImagePreviewActivity.getItemView();
            r rVar = gifImagePreviewActivity.mPageChange;
            if (rVar != null) {
                List list = gifImagePreviewActivity.imageList;
                rVar.f(i10, list != null ? (Image) list.get(i10) : null, (View) objectRef.element);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r2v1, types: [T, android.view.View] */
        @Override
        public void onPageSelected(final int i10) {
            GifBean gifBean;
            String videoUrl;
            GifImagePreviewActivity.this.currentItemIndex = i10;
            GifImagePreviewActivity.this.showPageIndex();
            List list = GifImagePreviewActivity.this.imageList;
            Image image = list != null ? (Image) list.get(i10) : null;
            if (image == null || (gifBean = image.getGifBean()) == null || (videoUrl = gifBean.getVideoUrl()) == null || videoUrl.length() <= 0) {
                return;
            }
            final Ref.ObjectRef objectRef = new Ref.ObjectRef();
            ?? itemView = GifImagePreviewActivity.this.getItemView();
            objectRef.element = itemView;
            if (itemView == 0) {
                Handler handler = GifImagePreviewActivity.this.handler;
                final GifImagePreviewActivity gifImagePreviewActivity = GifImagePreviewActivity.this;
                handler.postDelayed(new Runnable() {
                    @Override
                    public final void run() {
                        GifImagePreviewActivity.g.b(objectRef, gifImagePreviewActivity, i10);
                    }
                }, 200L);
            } else {
                r rVar = GifImagePreviewActivity.this.mPageChange;
                if (rVar != null) {
                    List list2 = GifImagePreviewActivity.this.imageList;
                    rVar.f(i10, list2 != null ? (Image) list2.get(i10) : null, (View) objectRef.element);
                }
            }
        }
    }

    public static final class h implements Animation.AnimationListener {
        h() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public void onAnimationEnd(Animation animation) {
            Intrinsics.h(animation, "animation");
            ConstraintLayout rootView = ((um.a) GifImagePreviewActivity.this.getMViewBinding()).f73190d;
            Intrinsics.g(rootView, "rootView");
            uf.c.k(rootView);
        }

        @Override
        public void onAnimationRepeat(Animation animation) {
            Intrinsics.h(animation, "animation");
        }

        @Override
        public void onAnimationStart(Animation animation) {
            Intrinsics.h(animation, "animation");
        }
    }

    private final void addIntoListener(ValueAnimator valueAnimator) {
        valueAnimator.addListener(new b());
    }

    private final void addOutListener(ValueAnimator valueAnimator) {
        valueAnimator.addListener(new c());
    }

    private final void computeImageWidthAndHeight(ImageView imageView) {
        Drawable drawable = imageView.getDrawable();
        int height = imageView.getHeight();
        int width = imageView.getWidth();
        if (drawable != null) {
            height = drawable.getIntrinsicHeight();
            width = drawable.getIntrinsicWidth();
        }
        float f10 = height;
        float f11 = (this.screenHeight * 1.0f) / f10;
        float f12 = width;
        float f13 = (this.screenWidth * 1.0f) / f12;
        if (f11 > f13) {
            f11 = f13;
        }
        this.imageHeight = (int) (f10 * f11);
        this.imageWidth = (int) (f12 * f11);
    }

    private final void downloadImage() {
        List<Image> list = this.imageList;
        int size = list != null ? list.size() : 0;
        int i10 = this.currentItemIndex;
        if (i10 < 0 || i10 >= size) {
            return;
        }
        List<Image> list2 = this.imageList;
        Image image = list2 != null ? list2.get(i10) : null;
        Glide.with((FragmentActivity) this).downloadOnly().load2(image != null ? image.getUrl() : null).listener(new d(image)).preload();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final View getItemView() {
        View childAt = ((um.a) getMViewBinding()).f73193g.getChildAt(0);
        Intrinsics.f(childAt, "null cannot be cast to non-null type androidx.recyclerview.widget.RecyclerView");
        RecyclerView.m layoutManager = ((RecyclerView) childAt).getLayoutManager();
        if (layoutManager != null) {
            return layoutManager.findViewByPosition(this.currentItemIndex);
        }
        return null;
    }

    private final String getNameFromUrl(String url) {
        if (url == null) {
            return null;
        }
        String[] strArr = (String[]) StringsKt.S0(url, new String[]{"[?]"}, false, 0, 6, null).toArray(new String[0]);
        if (!(strArr.length == 0)) {
            String[] strArr2 = (String[]) StringsKt.S0(strArr[0], new String[]{"/"}, false, 0, 6, null).toArray(new String[0]);
            if (!(strArr2.length == 0)) {
                return strArr2[strArr2.length - 1];
            }
        }
        return null;
    }

    private final void initPlayer() {
        ORPlayerView oRPlayerView = new ORPlayerView(this, RenderType.TEXTURE_VIEW);
        com.transsion.player.orplayer.f fVarA = new com.transsion.player.orplayer.f.a(this).a();
        fVarA.setTextureView(oRPlayerView.getTextureView());
        fVarA.setScaleMode(ScaleMode.SCALE_ASPECT_FILL);
        this.mPageChange = new r(fVarA, oRPlayerView);
        fVarA.setPlayerListener(new f());
        this.mPlayer = fVarA;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void initView() {
        HashMap mapG;
        String str;
        this.screenWidth = y.e();
        this.screenHeight = y.c();
        Serializable serializableExtra = getIntent().getSerializableExtra(IMAGE_LIST);
        List<Image> list = serializableExtra instanceof List ? (List) serializableExtra : null;
        this.imageList = list;
        if (list == null) {
            this.imageList = new ArrayList();
        }
        this.isBuiltInApp = Boolean.valueOf(getIntent().getBooleanExtra(IS_BUILTIN, false));
        this.postId = getIntent().getStringExtra(POST_ID);
        this.currentItemIndex = getIntent().getIntExtra("CURRENT_ITEM", 0);
        com.transsion.ninegridview.preview.c cVar = new com.transsion.ninegridview.preview.c(this);
        cVar.h(this.imageList);
        cVar.g(this.isBuiltInApp);
        this.imagePreviewAdapter = cVar;
        ViewPager2 viewPager2 = ((um.a) getMViewBinding()).f73193g;
        viewPager2.setAdapter(this.imagePreviewAdapter);
        viewPager2.registerOnPageChangeCallback(this.mOnPageChangeCallback);
        viewPager2.setCurrentItem(this.currentItemIndex, false);
        startEnterTheAnimation();
        showPageIndex();
        ((um.a) getMViewBinding()).f73188b.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                GifImagePreviewActivity.initView$lambda$3(this.f45832a, view);
            }
        });
        qi.b logViewConfig = getLogViewConfig();
        if (logViewConfig != null && (mapG = logViewConfig.g()) != null && (str = this.postId) != null) {
            mapG.put("post_id", str);
        }
        initPlayer();
    }

    public static final void initView$lambda$3(GifImagePreviewActivity gifImagePreviewActivity, View view) {
        if (Build.VERSION.SDK_INT >= 29) {
            gifImagePreviewActivity.downloadImage();
        } else if (androidx.core.content.b.checkSelfPermission(gifImagePreviewActivity, "android.permission.WRITE_EXTERNAL_STORAGE") == 0 && androidx.core.content.b.checkSelfPermission(gifImagePreviewActivity, "android.permission.READ_EXTERNAL_STORAGE") == 0) {
            gifImagePreviewActivity.downloadImage();
        } else {
            gifImagePreviewActivity.requestPermission();
        }
        Map mapM = MapsKt.m(TuplesKt.a("module_name", "save_picture"), TuplesKt.a(WebConstants.PAGE_FROM, gifImagePreviewActivity.pageFrom));
        String str = gifImagePreviewActivity.postId;
        if (str != null) {
            mapM.put("post_id", str);
        }
        qi.h.f69682a.o(PAGE_NAME, mapM);
    }

    private final void requestPermission() {
        ActivityCompat.g(this, new String[]{"android.permission.WRITE_EXTERNAL_STORAGE", "android.permission.READ_EXTERNAL_STORAGE"}, this.REQUEST_PERMISSION_STORAGE);
    }

    public final void saveToAlbum(File file, String url) {
        String nameFromUrl = getNameFromUrl(url);
        if (new File(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_PICTURES), PICTURE_SAVE + File.separator + nameFromUrl).exists()) {
            fh.b.f60176a.d(R$string.has_been_saved);
        } else {
            if (file == null || nameFromUrl == null) {
                return;
            }
            FileHelper.g(FileHelper.f45804a, file, this, nameFromUrl, PICTURE_SAVE, false, 16, null);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void showPageIndex() {
        TextView textView = ((um.a) getMViewBinding()).f73191e;
        StringCompanionObject stringCompanionObject = StringCompanionObject.f64324a;
        Integer numValueOf = Integer.valueOf(this.currentItemIndex + 1);
        List<Image> list = this.imageList;
        String str = String.format("%d/%d", Arrays.copyOf(new Object[]{numValueOf, list != null ? Integer.valueOf(list.size()) : null}, 2));
        Intrinsics.g(str, "format(...)");
        textView.setText(str);
    }

    private final void showSettingDialog() {
        String string = Utils.a().getString(R$string.permission_deny_down_tip, "\"" + Utils.a().getString(com.transsion.baseui.R$string.base_app_name) + "\"", "\"" + Utils.a().getString(R$string.system_settings) + "\"");
        Intrinsics.g(string, "getString(...)");
        TRDialog.a aVarG = new TRDialog.a().g(string);
        String string2 = Utils.a().getString(R$string.cancel);
        Intrinsics.g(string2, "getString(...)");
        TRDialog.a aVarE = aVarG.e(string2);
        String string3 = Utils.a().getString(R$string.system_settings);
        Intrinsics.g(string3, "getString(...)");
        aVarE.j(string3).f(this).a().show(getSupportFragmentManager(), "settings");
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void startEnterTheAnimation() {
        AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
        alphaAnimation.setDuration(500L);
        alphaAnimation.setAnimationListener(new h());
        alphaAnimation.setFillAfter(true);
        ((um.a) getMViewBinding()).f73190d.startAnimation(alphaAnimation);
    }

    public final int evaluateArgb(float fraction, int startValue, int endValue) {
        int i10 = (startValue >> 24) & 255;
        int i11 = (startValue >> 16) & 255;
        int i12 = (startValue >> 8) & 255;
        int i13 = startValue & 255;
        return ((i10 + ((int) ((((endValue >> 24) & 255) - i10) * fraction))) << 24) | ((i11 + ((int) ((((endValue >> 16) & 255) - i11) * fraction))) << 16) | ((i12 + ((int) ((((endValue >> 8) & 255) - i12) * fraction))) << 8) | (i13 + ((int) (fraction * ((endValue & 255) - i13))));
    }

    public final float evaluateFloat(float fraction, Number startValue, Number endValue) {
        Intrinsics.h(startValue, "startValue");
        Intrinsics.h(endValue, "endValue");
        float fFloatValue = startValue.floatValue();
        return fFloatValue + (fraction * (endValue.floatValue() - fFloatValue));
    }

    public final int evaluateInt(float fraction, int startValue, int endValue) {
        return (int) (startValue + (fraction * (endValue - startValue)));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void finishActivityAnim() {
        AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, 0.0f);
        alphaAnimation.setDuration(500L);
        alphaAnimation.setAnimationListener(new e());
        alphaAnimation.setFillAfter(true);
        ((um.a) getMViewBinding()).f73190d.startAnimation(alphaAnimation);
    }

    @Override
    public boolean isAttach() {
        return false;
    }

    @Override
    public boolean isTranslucent() {
        return true;
    }

    @Override
    public qi.b newLogViewConfig() {
        return new qi.b(PAGE_NAME, false, 2, null);
    }

    @Override
    public void onBackPressed() {
        super.onBackPressed();
        finishActivityAnim();
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        if (Build.VERSION.SDK_INT != 26) {
            setRequestedOrientation(1);
        }
        this.pageFrom = qi.h.f69682a.h();
        initView();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    protected void onDestroy() {
        super.onDestroy();
        ((um.a) getMViewBinding()).f73193g.unregisterOnPageChangeCallback(this.mOnPageChangeCallback);
        com.transsion.player.orplayer.f fVar = this.mPlayer;
        if (fVar != null) {
            fVar.release();
        }
    }

    @Override
    public void onLeftButtonClick(TRDialog dialog) {
        Intrinsics.h(dialog, "dialog");
    }

    @Override
    public void onPause() {
        super.onPause();
        com.transsion.player.orplayer.f fVar = this.mPlayer;
        if (fVar != null) {
            fVar.pause();
        }
    }

    @Override
    public void onRequestPermissionsResult(int requestCode, String[] permissions, int[] grantResults) {
        Intrinsics.h(permissions, "permissions");
        Intrinsics.h(grantResults, "grantResults");
        super.onRequestPermissionsResult(requestCode, permissions, grantResults);
        if (requestCode == this.REQUEST_PERMISSION_STORAGE) {
            if (grantResults.length > 1 && grantResults[0] == 0 && grantResults[1] == 0) {
                downloadImage();
            } else {
                if (ActivityCompat.j(this, "android.permission.WRITE_EXTERNAL_STORAGE")) {
                    return;
                }
                showSettingDialog();
            }
        }
    }

    @Override
    public void onResume() {
        super.onResume();
        com.transsion.player.orplayer.f fVar = this.mPlayer;
        if (fVar != null) {
            fVar.play();
        }
    }

    @Override
    public void onRightButtonClick(TRDialog dialog) {
        Intrinsics.h(dialog, "dialog");
        com.transsion.ninegridview.helper.b.f45813a.a(this, 101);
    }

    @Override
    public um.a getViewBinding() {
        um.a aVarC = um.a.c(getLayoutInflater());
        Intrinsics.g(aVarC, "inflate(...)");
        return aVarC;
    }
}
