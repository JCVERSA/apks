package com.transsion.publish.ui;

import android.app.ActionBar;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.media.MediaMetadataRetriever;
import android.media.MediaPlayer;
import android.os.Bundle;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.constraintlayout.widget.Group;
import androidx.core.app.NotificationCompat;
import com.blankj.utilcode.util.Utils;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.tn.lib.widget.R$color;
import com.transsion.baseui.activity.BaseActivity;
import com.transsion.publish.R$drawable;
import com.transsion.publish.R$string;
import com.transsion.publish.api.VsMediaInfo;
import com.transsion.publish.bean.PreviewMediaConfirmEvent;
import com.transsion.publish.bean.PreviewVideoBean;
import com.transsnet.flow.event.AppScopeVMlProvider;
import com.transsnet.flow.event.FlowEventBus;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.mvel2.ast.ASTNode;

@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\r\b\u0016\u0018\u0000 =2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001/B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0007\u0010\u0004J\u000f\u0010\b\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\b\u0010\u0004J\u0017\u0010\u000b\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\tH\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u0017\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\rH\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\u0019\u0010\u0013\u001a\u00020\u00052\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0002¢\u0006\u0004\b\u0013\u0010\u0014J\u001b\u0010\u0017\u001a\u0004\u0018\u00010\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0002¢\u0006\u0004\b\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0019\u0010\u0004J\u000f\u0010\u001a\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u001a\u0010\u0004J\u0017\u0010\u001c\u001a\u00020\u00052\u0006\u0010\u001b\u001a\u00020\tH\u0002¢\u0006\u0004\b\u001c\u0010\fJ\u000f\u0010\u001d\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u001d\u0010\u0004J\u000f\u0010\u001e\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u001e\u0010\u0004J\u0019\u0010!\u001a\u00020\u00052\b\u0010 \u001a\u0004\u0018\u00010\u001fH\u0014¢\u0006\u0004\b!\u0010\"J\u000f\u0010#\u001a\u00020\u0002H\u0016¢\u0006\u0004\b#\u0010$J\u000f\u0010%\u001a\u00020\u0005H\u0014¢\u0006\u0004\b%\u0010\u0004J\u000f\u0010&\u001a\u00020\u0005H\u0016¢\u0006\u0004\b&\u0010\u0004J\u000f\u0010'\u001a\u00020\tH\u0016¢\u0006\u0004\b'\u0010(J\u000f\u0010)\u001a\u00020\tH\u0016¢\u0006\u0004\b)\u0010(J\u000f\u0010*\u001a\u00020\tH\u0016¢\u0006\u0004\b*\u0010(J\u000f\u0010+\u001a\u00020\u0005H\u0014¢\u0006\u0004\b+\u0010\u0004J\u000f\u0010-\u001a\u00020,H\u0016¢\u0006\u0004\b-\u0010.R\u0018\u0010\u000e\u001a\u0004\u0018\u00010\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b/\u00100R\u0018\u00104\u001a\u0004\u0018\u0001018\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b2\u00103R\u0016\u00107\u001a\u0002018\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b5\u00106R\u0016\u0010:\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b8\u00109R\u0016\u0010<\u001a\u0002018\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b;\u00106¨\u0006>"}, d2 = {"Lcom/transsion/publish/ui/VideoPreviewActivity;", "Lcom/transsion/baseui/activity/BaseActivity;", "Llo/g;", "<init>", "()V", "", "initView", "initData", "l0", "", NotificationCompat.CATEGORY_STATUS, "B0", "(Z)V", "Lcom/transsion/publish/api/VsMediaInfo;", "vsMediaInfo", "z0", "(Lcom/transsion/publish/api/VsMediaInfo;)V", "", "path", "t0", "(Ljava/lang/String;)V", "Landroid/graphics/Bitmap;", "bitmap", "A0", "(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;", "C0", "D0", "select", "k0", "n0", "o0", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "m0", "()Llo/g;", "onDestroy", "onResume", "isTranslucent", "()Z", "isStatusDark", "isChangeStatusBar", "onStop", "Lqi/b;", "newLogViewConfig", "()Lqi/b;", "a", "Lcom/transsion/publish/api/VsMediaInfo;", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Ljava/lang/Integer;", "sourceType", "c", "I", "maxSize", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Z", "isBack", "e", "maxLimit", "f", "Publish_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public class VideoPreviewActivity extends BaseActivity<lo.g> {

    public static final Companion INSTANCE = new Companion(null);

    private VsMediaInfo vsMediaInfo;

    private boolean isBack;

    private Integer sourceType = 0;

    private int maxSize = 1048576000;

    private int maxLimit = 1;

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void a(Context context, VsMediaInfo data, int i10) {
            Intrinsics.h(context, "context");
            Intrinsics.h(data, "data");
            Intent intent = new Intent(context, (Class<?>) VideoPreviewActivity.class);
            intent.setFlags(ASTNode.DEOP);
            intent.putExtra("data", data);
            intent.putExtra("sourceType", i10);
            context.startActivity(intent);
        }

        private Companion() {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final Bitmap A0(Bitmap bitmap) {
        if (bitmap == null) {
            return null;
        }
        int height = bitmap.getHeight();
        int width = bitmap.getWidth();
        ImageView coverIV = ((lo.g) getMViewBinding()).f66040h;
        Intrinsics.g(coverIV, "coverIV");
        return (height <= 0 || width <= 0 || width > coverIV.getWidth() || height > coverIV.getHeight()) ? bitmap : vf.a.d(bitmap, coverIV.getWidth(), coverIV.getHeight(), false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void B0(boolean status) {
        if (status) {
            ((lo.g) getMViewBinding()).f66047o.setText("1");
            ((lo.g) getMViewBinding()).f66047o.setBackgroundResource(R$drawable.bg_linear_r16);
        } else {
            ((lo.g) getMViewBinding()).f66047o.setBackgroundResource(R$drawable.ic_select_number_bro);
        }
        k0(status);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void C0() {
        ((lo.g) getMViewBinding()).f66049q.pause();
        ImageView playIV = ((lo.g) getMViewBinding()).f66043k;
        Intrinsics.g(playIV, "playIV");
        uf.c.k(playIV);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void D0() {
        ((lo.g) getMViewBinding()).f66049q.start();
        ImageView playIV = ((lo.g) getMViewBinding()).f66043k;
        Intrinsics.g(playIV, "playIV");
        uf.c.g(playIV);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void initData() {
        this.sourceType = Integer.valueOf(getIntent().getIntExtra("sourceType", 2));
        if (getIntent().hasExtra("data")) {
            ProgressBar clipLoading = ((lo.g) getMViewBinding()).f66038f;
            Intrinsics.g(clipLoading, "clipLoading");
            uf.c.k(clipLoading);
            Serializable serializableExtra = getIntent().getSerializableExtra("data");
            Intrinsics.f(serializableExtra, "null cannot be cast to non-null type com.transsion.publish.api.VsMediaInfo");
            VsMediaInfo vsMediaInfo = (VsMediaInfo) serializableExtra;
            this.vsMediaInfo = vsMediaInfo;
            Intrinsics.e(vsMediaInfo);
            z0(vsMediaInfo);
        }
        Integer num = this.sourceType;
        if (num != null && num.intValue() == 1) {
            ((lo.g) getMViewBinding()).f66042j.setVisibility(8);
            ((lo.g) getMViewBinding()).f66041i.setVisibility(0);
            FrameLayout flClear = ((lo.g) getMViewBinding()).f66041i;
            Intrinsics.g(flClear, "flClear");
            uf.c.c(flClear, 0L, new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return VideoPreviewActivity.q0(this.f48491a, (View) obj);
                }
            }, 1, null);
        } else if (num != null && num.intValue() == 2) {
            ((lo.g) getMViewBinding()).f66041i.setVisibility(8);
            ((lo.g) getMViewBinding()).f66042j.setVisibility(0);
            VsMediaInfo vsMediaInfo2 = this.vsMediaInfo;
            if (vsMediaInfo2 != null) {
                B0(vsMediaInfo2.getEnableSelect());
            }
            Group bottomGroup = ((lo.g) getMViewBinding()).f66034b;
            Intrinsics.g(bottomGroup, "bottomGroup");
            uf.c.k(bottomGroup);
            LinearLayout llSelect = ((lo.g) getMViewBinding()).f66042j;
            Intrinsics.g(llSelect, "llSelect");
            uf.c.c(llSelect, 0L, new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return VideoPreviewActivity.r0(this.f48494a, (View) obj);
                }
            }, 1, null);
        }
        ProgressBar clipLoading2 = ((lo.g) getMViewBinding()).f66038f;
        Intrinsics.g(clipLoading2, "clipLoading");
        uf.c.g(clipLoading2);
        ((lo.g) getMViewBinding()).f66049q.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                VideoPreviewActivity.s0(this.f48498a, view);
            }
        });
        ((lo.g) getMViewBinding()).f66044l.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                VideoPreviewActivity.p0(this.f48501a, view);
            }
        });
        qi.b logViewConfig = getLogViewConfig();
        if (logViewConfig != null) {
            logViewConfig.k(true);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void initView() {
        ((lo.g) getMViewBinding()).f66036d.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                VideoPreviewActivity.v0(this.f48508a, view);
            }
        });
        ((lo.g) getMViewBinding()).f66049q.setOnPreparedListener(new MediaPlayer.OnPreparedListener() {
            @Override
            public final void onPrepared(MediaPlayer mediaPlayer) {
                VideoPreviewActivity.w0(this.f48512a, mediaPlayer);
            }
        });
        TextView confirmTV = ((lo.g) getMViewBinding()).f66039g;
        Intrinsics.g(confirmTV, "confirmTV");
        uf.c.c(confirmTV, 0L, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return VideoPreviewActivity.y0(this.f48514a, (View) obj);
            }
        }, 1, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void k0(boolean select) {
        TextView selectNumTV = ((lo.g) getMViewBinding()).f66045m;
        Intrinsics.g(selectNumTV, "selectNumTV");
        selectNumTV.setVisibility((select > 0) != false ? 0 : 8);
        ((lo.g) getMViewBinding()).f66045m.setText(getString(R$string.video_select_num_tips, Integer.valueOf(select ? 1 : 0), Integer.valueOf(this.maxLimit)));
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void l0() {
        if (((lo.g) getMViewBinding()).f66049q.isPlaying()) {
            C0();
        } else {
            D0();
        }
    }

    private final void n0() {
        requestWindowFeature(1);
        getWindow().setFlags(1024, 1024);
        if (getSupportActionBar() != null) {
            androidx.appcompat.app.a supportActionBar = getSupportActionBar();
            Intrinsics.e(supportActionBar);
            supportActionBar.l();
        }
        if (getActionBar() != null) {
            ActionBar actionBar = getActionBar();
            Intrinsics.e(actionBar);
            actionBar.hide();
        }
    }

    private final void o0() {
        View decorView = getWindow().getDecorView();
        Intrinsics.g(decorView, "getDecorView(...)");
        decorView.setSystemUiVisibility(4102);
    }

    public static final void p0(VideoPreviewActivity videoPreviewActivity, View view) {
        videoPreviewActivity.l0();
    }

    public static final Unit q0(VideoPreviewActivity videoPreviewActivity, View it) {
        Intrinsics.h(it, "it");
        jo.b bVar = new jo.b();
        bVar.o(1);
        bVar.n(2);
        FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
        String name = jo.b.class.getName();
        Intrinsics.g(name, "getName(...)");
        flowEventBus.postEvent(name, bVar, 0L);
        videoPreviewActivity.finish();
        return Unit.f64096a;
    }

    public static final Unit r0(VideoPreviewActivity videoPreviewActivity, View it) {
        Intrinsics.h(it, "it");
        VsMediaInfo vsMediaInfo = videoPreviewActivity.vsMediaInfo;
        if (vsMediaInfo != null) {
            if (vsMediaInfo.getVideoSize() > videoPreviewActivity.maxSize) {
                fh.b.f60176a.e(Utils.a().getResources().getString(R$string.add_media_max_size_tips, 50));
                return Unit.f64096a;
            }
            vsMediaInfo.setEnableSelect(!vsMediaInfo.getEnableSelect());
            PreviewVideoBean previewVideoBean = new PreviewVideoBean();
            previewVideoBean.setFrom(videoPreviewActivity.sourceType);
            previewVideoBean.setSelect(vsMediaInfo);
            if (vsMediaInfo.getEnableSelect()) {
                previewVideoBean.setOperator(1);
            } else {
                previewVideoBean.setOperator(3);
            }
            FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
            String name = PreviewVideoBean.class.getName();
            Intrinsics.g(name, "getName(...)");
            flowEventBus.postEvent(name, previewVideoBean, 0L);
            videoPreviewActivity.B0(vsMediaInfo.getEnableSelect());
        }
        return Unit.f64096a;
    }

    public static final void s0(VideoPreviewActivity videoPreviewActivity, View view) {
        videoPreviewActivity.l0();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void t0(String path) {
        MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
        mediaMetadataRetriever.setDataSource(path);
        final Bitmap frameAtTime = mediaMetadataRetriever.getFrameAtTime(0L, 2);
        ((lo.g) getMViewBinding()).getRoot().post(new Runnable() {
            @Override
            public final void run() {
                VideoPreviewActivity.u0(this.f48504a, frameAtTime);
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final void u0(VideoPreviewActivity videoPreviewActivity, Bitmap bitmap) {
        ((lo.g) videoPreviewActivity.getMViewBinding()).f66040h.setImageBitmap(videoPreviewActivity.A0(bitmap));
    }

    public static final void v0(VideoPreviewActivity videoPreviewActivity, View view) {
        videoPreviewActivity.finish();
    }

    public static final void w0(final VideoPreviewActivity videoPreviewActivity, MediaPlayer mediaPlayer) {
        if (mediaPlayer != null) {
            mediaPlayer.setOnInfoListener(new MediaPlayer.OnInfoListener() {
                @Override
                public final boolean onInfo(MediaPlayer mediaPlayer2, int i10, int i11) {
                    return VideoPreviewActivity.x0(this.f48516a, mediaPlayer2, i10, i11);
                }
            });
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final boolean x0(VideoPreviewActivity videoPreviewActivity, MediaPlayer mediaPlayer, int i10, int i11) {
        if (i10 == 3) {
            ImageView coverIV = ((lo.g) videoPreviewActivity.getMViewBinding()).f66040h;
            Intrinsics.g(coverIV, "coverIV");
            uf.c.g(coverIV);
        }
        mediaPlayer.start();
        mediaPlayer.setLooping(true);
        ((lo.g) videoPreviewActivity.getMViewBinding()).f66049q.setBackgroundColor(com.blankj.utilcode.util.h.a(R$color.transparent));
        return true;
    }

    public static final Unit y0(VideoPreviewActivity videoPreviewActivity, View it) {
        Intrinsics.h(it, "it");
        PreviewMediaConfirmEvent previewMediaConfirmEvent = new PreviewMediaConfirmEvent(1);
        FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
        String name = PreviewMediaConfirmEvent.class.getName();
        Intrinsics.g(name, "getName(...)");
        flowEventBus.postEvent(name, previewMediaConfirmEvent, 0L);
        videoPreviewActivity.finish();
        return Unit.f64096a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void z0(VsMediaInfo vsMediaInfo) {
        try {
            String videoPath = vsMediaInfo.getVideoPath();
            t0(videoPath);
            ((lo.g) getMViewBinding()).f66049q.setVideoPath(videoPath);
        } catch (Exception e10) {
            String message = e10.getMessage();
            if (message != null) {
                wf.a.C0922a.g(wf.a.f74274a, message, false, 2, null);
            }
        }
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
    public lo.g getViewBinding() {
        lo.g gVarC = lo.g.c(getLayoutInflater());
        Intrinsics.g(gVarC, "inflate(...)");
        return gVarC;
    }

    @Override
    public qi.b newLogViewConfig() {
        return new qi.b("video_preview", false, 2, null);
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        n0();
        o0();
        super.onCreate(savedInstanceState);
        initView();
        initData();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    protected void onDestroy() {
        super.onDestroy();
        ProgressBar clipLoading = ((lo.g) getMViewBinding()).f66038f;
        Intrinsics.g(clipLoading, "clipLoading");
        uf.c.g(clipLoading);
    }

    @Override
    public void onResume() {
        super.onResume();
        if (this.isBack) {
            this.isBack = false;
            VsMediaInfo vsMediaInfo = this.vsMediaInfo;
            Intrinsics.e(vsMediaInfo);
            z0(vsMediaInfo);
        }
    }

    @Override
    protected void onStop() {
        super.onStop();
        this.isBack = true;
        C0();
    }
}
