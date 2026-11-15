package com.transsion.publish.ui;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import android.widget.ProgressBar;
import com.bumptech.glide.Glide;
import com.cloud.tmc.integration.event.EventConstants;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.transsion.baseui.activity.BaseActivity;
import com.transsion.publish.api.PhotoEntity;
import com.transsion.publish.view.clip.ClipImageView;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;

@Metadata(d1 = {"\u0000j\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0010\t\n\u0002\b\u0007\u0018\u0000 C2\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0001*B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0007\u0010\u0005J\u000f\u0010\b\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\b\u0010\u0005J\u0019\u0010\f\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\n\u001a\u00020\tH\u0002¢\u0006\u0004\b\f\u0010\rJ\u0017\u0010\u000e\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\tH\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u001f\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\t2\u0006\u0010\u0012\u001a\u00020\u0011H\u0002¢\u0006\u0004\b\u0013\u0010\u0014J\u0017\u0010\u0017\u001a\u00020\u00062\u0006\u0010\u0016\u001a\u00020\u0015H\u0002¢\u0006\u0004\b\u0017\u0010\u0018J\u0019\u0010\u001a\u001a\u00020\u00062\b\u0010\u0019\u001a\u0004\u0018\u00010\u0011H\u0002¢\u0006\u0004\b\u001a\u0010\u001bJ\u0019\u0010\u001e\u001a\u00020\u00062\b\u0010\u001d\u001a\u0004\u0018\u00010\u001cH\u0014¢\u0006\u0004\b\u001e\u0010\u001fJ\u000f\u0010 \u001a\u00020\u0002H\u0016¢\u0006\u0004\b \u0010!J\u000f\u0010#\u001a\u00020\"H\u0016¢\u0006\u0004\b#\u0010$J\u000f\u0010%\u001a\u00020\"H\u0016¢\u0006\u0004\b%\u0010$J\u000f\u0010&\u001a\u00020\"H\u0016¢\u0006\u0004\b&\u0010$J\u000f\u0010(\u001a\u00020'H\u0016¢\u0006\u0004\b(\u0010)R\u0018\u0010,\u001a\u0004\u0018\u00010\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b*\u0010+R\u0018\u00100\u001a\u0004\u0018\u00010-8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b.\u0010/R\u0016\u00102\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b1\u0010+R\u0016\u00106\u001a\u0002038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b4\u00105R\u0016\u00108\u001a\u0002038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b7\u00105R\u0016\u0010:\u001a\u0002038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b9\u00105R\u0016\u0010<\u001a\u0002038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b;\u00105R\u0016\u0010@\u001a\u00020=8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b>\u0010?R\u0016\u0010B\u001a\u0002038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bA\u00105¨\u0006D"}, d2 = {"Lcom/transsion/publish/ui/ClippingImageActivity;", "Lcom/transsion/baseui/activity/BaseActivity;", "Llo/a;", "", "<init>", "()V", "", "initView", "initData", "Lcom/transsion/publish/view/clip/ClipImageView;", "clipImageView", "Ljava/io/File;", "k0", "(Lcom/transsion/publish/view/clip/ClipImageView;)Ljava/io/File;", "r0", "(Lcom/transsion/publish/view/clip/ClipImageView;)V", "imageView", "", "uri", "o0", "(Lcom/transsion/publish/view/clip/ClipImageView;Ljava/lang/String;)V", "Landroid/content/Context;", "context", "p0", "(Landroid/content/Context;)V", "path", "q0", "(Ljava/lang/String;)V", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "l0", "()Llo/a;", "", "isTranslucent", "()Z", "isStatusDark", "isChangeStatusBar", "Lqi/b;", "newLogViewConfig", "()Lqi/b;", "a", "Ljava/lang/String;", "CROP_CACHE", "Lio/reactivex/rxjava3/disposables/c;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lio/reactivex/rxjava3/disposables/c;", "disposable", "c", "TAG", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "I", "width", "e", "height", "f", "cropWidth", "g", "cropHeight", "", "h", "J", "cropSize", "i", EventConstants.KEY_SOURCE, "j", "Publish_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class ClippingImageActivity extends BaseActivity<lo.a> {

    public static final Companion INSTANCE = new Companion(null);

    private String CROP_CACHE;

    private io.reactivex.rxjava3.disposables.c disposable;

    private String TAG = "ClipHandler";

    private int width;

    private int height;

    private int cropWidth;

    private int cropHeight;

    private long cropSize;

    private int source;

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static void b(Companion companion, Activity activity, String str, int i10, androidx.activity.result.b bVar, int i11, Object obj) {
            if ((i11 & 8) != 0) {
                bVar = null;
            }
            companion.a(activity, str, i10, bVar);
        }

        public final void a(Activity context, String uri, int i10, androidx.activity.result.b bVar) {
            Intrinsics.h(context, "context");
            Intrinsics.h(uri, "uri");
            Intent intent = new Intent(context, (Class<?>) ClippingImageActivity.class);
            intent.putExtra("uri", uri);
            intent.putExtra(EventConstants.KEY_SOURCE, i10);
            if (bVar != null) {
                bVar.a(intent);
            } else {
                context.startActivityForResult(intent, 10002);
            }
        }

        private Companion() {
        }
    }

    public static final class b implements io.reactivex.rxjava3.core.o {
        b() {
        }

        @Override
        public void onNext(File file) {
            Intrinsics.h(file, "file");
            wf.a.C0922a.f(wf.a.f74274a, ClippingImageActivity.this.TAG, "onNext e:" + file.getAbsolutePath(), false, 4, null);
            Intent intent = new Intent();
            PhotoEntity photoEntity = new PhotoEntity();
            photoEntity.setWidth(ClippingImageActivity.this.cropWidth);
            photoEntity.setHeight(ClippingImageActivity.this.cropHeight);
            photoEntity.setLocalPath(file.getAbsolutePath());
            photoEntity.setImageSize(ClippingImageActivity.this.cropSize);
            intent.putExtra("clip_result", photoEntity);
            ClippingImageActivity.this.setResult(10003, intent);
            ClippingImageActivity.this.finish();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public void onComplete() {
            ProgressBar clipLoading = ((lo.a) ClippingImageActivity.this.getMViewBinding()).f65993d;
            Intrinsics.g(clipLoading, "clipLoading");
            uf.c.g(clipLoading);
            io.reactivex.rxjava3.disposables.c cVar = ClippingImageActivity.this.disposable;
            if (cVar != null) {
                cVar.dispose();
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public void onError(Throwable e10) {
            Intrinsics.h(e10, "e");
            ProgressBar clipLoading = ((lo.a) ClippingImageActivity.this.getMViewBinding()).f65993d;
            Intrinsics.g(clipLoading, "clipLoading");
            uf.c.g(clipLoading);
            wf.a.C0922a.f(wf.a.f74274a, ClippingImageActivity.this.TAG, "onError e:" + e10, false, 4, null);
        }

        @Override
        public void onSubscribe(io.reactivex.rxjava3.disposables.c d10) {
            Intrinsics.h(d10, "d");
            ClippingImageActivity.this.disposable = d10;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void initData() {
        this.source = getIntent().getIntExtra(EventConstants.KEY_SOURCE, 0);
        String stringExtra = getIntent().getStringExtra("uri");
        ((lo.a) getMViewBinding()).f65994e.setStart(0);
        if (stringExtra != null) {
            ClipImageView srcPic = ((lo.a) getMViewBinding()).f65995f;
            Intrinsics.g(srcPic, "srcPic");
            o0(srcPic, stringExtra);
        }
        ((lo.a) getMViewBinding()).f65991b.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                ClippingImageActivity.m0(this.f48464a, view);
            }
        });
        ((lo.a) getMViewBinding()).f65996g.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                ClippingImageActivity.n0(this.f48467a, view);
            }
        });
        int i10 = this.source;
        if (i10 == 0 || 5 == i10) {
            this.width = com.blankj.utilcode.util.y.b() - 2;
            this.height = qo.g.f69926a.a(this, 202.0f);
            ((lo.a) getMViewBinding()).f65994e.setSizeNeedChange(false);
            ((lo.a) getMViewBinding()).f65994e.setStartWH(this.width, this.height);
            ((lo.a) getMViewBinding()).f65994e.setSizeNeedChange(false);
            ((lo.a) getMViewBinding()).f65995f.setCropWH(this.width, this.height);
        } else {
            ((lo.a) getMViewBinding()).f65994e.setStart(1);
        }
        qi.b logViewConfig = getLogViewConfig();
        if (logViewConfig != null) {
            logViewConfig.k(true);
        }
    }

    private final void initView() {
        p0(this);
    }

    /* JADX WARN: Code duplicated, block: B:64:0x00f3 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    private final File k0(ClipImageView clipImageView) throws Throwable {
        FileOutputStream fileOutputStream;
        Bitmap bitmapClip;
        FileOutputStream fileOutputStream2 = null;
        try {
            int i10 = this.source;
            if (i10 == 0 || 5 == i10) {
                Rect rect = ((lo.a) getMViewBinding()).f65994e.rect();
                Intrinsics.g(rect, "rect(...)");
                bitmapClip = ((lo.a) getMViewBinding()).f65995f.clip(rect);
            } else {
                bitmapClip = ((lo.a) getMViewBinding()).f65995f.clip();
            }
            File file = new File(this.CROP_CACHE);
            String str = System.currentTimeMillis() + "temp_crop.png";
            if (!file.exists() && !file.mkdirs()) {
                wf.a.C0922a.f(wf.a.f74274a, this.TAG, "cropImage, mkdirs failed, file is " + file.getAbsolutePath(), false, 4, null);
            }
            File file2 = new File(file, str);
            fileOutputStream = new FileOutputStream(file2);
            if (bitmapClip != null) {
                try {
                    try {
                        bitmapClip.compress(Bitmap.CompressFormat.JPEG, 100, fileOutputStream);
                    } catch (IOException e10) {
                        e = e10;
                        e.printStackTrace();
                        if (fileOutputStream != null) {
                            try {
                                fileOutputStream.flush();
                            } catch (IOException e11) {
                                e11.printStackTrace();
                            }
                            try {
                                fileOutputStream.close();
                            } catch (IOException e12) {
                                e12.printStackTrace();
                            }
                        }
                        return null;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    fileOutputStream2 = fileOutputStream;
                    if (fileOutputStream2 != null) {
                        try {
                            fileOutputStream2.flush();
                        } catch (IOException e13) {
                            e13.printStackTrace();
                        }
                        try {
                            fileOutputStream2.close();
                        } catch (IOException e14) {
                            e14.printStackTrace();
                        }
                    }
                    throw th;
                }
            }
            Integer numValueOf = bitmapClip != null ? Integer.valueOf(bitmapClip.getWidth()) : null;
            Intrinsics.e(numValueOf);
            this.cropWidth = numValueOf.intValue();
            Integer numValueOf2 = bitmapClip != null ? Integer.valueOf(bitmapClip.getHeight()) : null;
            Intrinsics.e(numValueOf2);
            int iIntValue = numValueOf2.intValue();
            this.cropHeight = iIntValue;
            this.cropSize = this.cropWidth * iIntValue;
            try {
                fileOutputStream.flush();
            } catch (IOException e15) {
                e15.printStackTrace();
            }
            try {
                fileOutputStream.close();
            } catch (IOException e16) {
                e16.printStackTrace();
            }
            return file2;
        } catch (IOException e17) {
            e = e17;
            fileOutputStream = null;
        } catch (Throwable th3) {
            th = th3;
            if (fileOutputStream2 != null) {
                fileOutputStream2.flush();
                fileOutputStream2.close();
            }
            throw th;
        }
    }

    public static final void m0(ClippingImageActivity clippingImageActivity, View view) {
        clippingImageActivity.finish();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final void n0(ClippingImageActivity clippingImageActivity, View view) {
        ProgressBar clipLoading = ((lo.a) clippingImageActivity.getMViewBinding()).f65993d;
        Intrinsics.g(clipLoading, "clipLoading");
        uf.c.k(clipLoading);
        ClipImageView srcPic = ((lo.a) clippingImageActivity.getMViewBinding()).f65995f;
        Intrinsics.g(srcPic, "srcPic");
        clippingImageActivity.r0(srcPic);
    }

    private final void o0(ClipImageView imageView, String uri) {
        Glide.with(imageView).load2(Uri.fromFile(new File(uri))).into(imageView);
    }

    private final void p0(Context context) {
        String str;
        String str2 = this.CROP_CACHE;
        if (str2 == null || (str2 != null && StringsKt.W(str2, "/data/user/", false, 2, null))) {
            File fileA = qo.e.a(context);
            if (fileA != null) {
                str = fileA.getAbsolutePath() + "/crop/";
            } else {
                str = context.getCacheDir().getAbsolutePath() + "/crop/";
            }
            this.CROP_CACHE = str;
        }
        q0(this.CROP_CACHE);
    }

    private final void q0(String path) {
        if (path == null) {
            return;
        }
        com.blankj.utilcode.util.n.b(path);
    }

    private final void r0(final ClipImageView clipImageView) {
        io.reactivex.rxjava3.core.j.g(new io.reactivex.rxjava3.core.l() {
            @Override
            public final void a(io.reactivex.rxjava3.core.k kVar) throws Throwable {
                ClippingImageActivity.s0(this.f48469a, clipImageView, kVar);
            }
        }).v(io.reactivex.rxjava3.android.schedulers.b.c()).E(ey.a.c()).subscribe(new b());
    }

    public static final void s0(ClippingImageActivity clippingImageActivity, ClipImageView clipImageView, io.reactivex.rxjava3.core.k emitter) throws Throwable {
        Intrinsics.h(emitter, "emitter");
        wf.a.C0922a.f(wf.a.f74274a, clippingImageActivity.TAG, "start....", false, 4, null);
        File fileK0 = clippingImageActivity.k0(clipImageView);
        if (emitter.isDisposed() || fileK0 == null) {
            return;
        }
        emitter.onNext(fileK0);
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
    public lo.a getViewBinding() {
        lo.a aVarC = lo.a.c(getLayoutInflater());
        Intrinsics.g(aVarC, "inflate(...)");
        return aVarC;
    }

    @Override
    public qi.b newLogViewConfig() {
        return new qi.b("clipping_image", false, 2, null);
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        initView();
        initData();
    }
}
