package com.snaptube.taskManager.task.video;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.os.Handler;
import android.support.v4.media.session.PlaybackStateCompat;
import androidx.core.view.ViewCompat;
import com.phoenix.download.DownloadRequest;
import com.snaptube.ads.selfbuild.request.model.SnaptubeAdModel;
import com.snaptube.dataadapter.plugin.push.impl.IntentUtil;
import com.snaptube.extractor.pluginlib.models.Format;
import com.snaptube.extractor.pluginlib.models.VideoInfo;
import com.snaptube.premium.app.PhoenixApplication;
import com.snaptube.taskManager.FfmpegTaskScheduler;
import com.snaptube.taskManager.datasets.TaskInfo;
import com.snaptube.util.ProductionEnv;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import kotlin.collections.CollectionsKt___CollectionsKt;
import o.c18;
import o.ft7;
import o.gu0;
import o.gz7;
import o.k08;
import o.or3;
import o.pg1;
import o.t14;
import o.tn5;
import o.uj8;
import o.wd9;
import o.xu0;
import o.y48;
import o.yj2;
import o.zu;

public final class TTImageAudioCombineTaskDelegate implements g.d {
    public static final a l = new a(null);
    public final Context a;
    public final k08 b;
    public final TaskInfo c;
    public final Handler d;
    public VideoInfo e;
    public Format f;
    public final t14 g;
    public long h;
    public final t14 i;
    public uj8.b j;
    public long k;

    public static final class a {
        public a() {
        }

        public a(pg1 pg1Var) {
            this();
        }
    }

    public static final class b extends zu.c {
        public b() {
        }

        @Override
        public void a() {
            TTImageAudioCombineTaskDelegate tTImageAudioCombineTaskDelegate = TTImageAudioCombineTaskDelegate.this;
            TTImageAudioCombineTaskDelegate.p(tTImageAudioCombineTaskDelegate, TTImageAudioCombineTaskDelegate.n(tTImageAudioCombineTaskDelegate));
        }

        @Override
        public void b(Object obj) {
            c((tn5) obj);
        }

        public void c(tn5 tn5Var) {
            TTImageAudioCombineTaskDelegate tTImageAudioCombineTaskDelegate = TTImageAudioCombineTaskDelegate.this;
            long jN = TTImageAudioCombineTaskDelegate.n(tTImageAudioCombineTaskDelegate);
            Long l = tn5Var != null ? (Long) tn5Var.b : null;
            TTImageAudioCombineTaskDelegate.o(tTImageAudioCombineTaskDelegate, jN + (l == null ? 0L : l.longValue()));
        }
    }

    public TTImageAudioCombineTaskDelegate(Context context, k08 k08Var, TaskInfo taskInfo) {
        or3.f(context, "context");
        or3.f(k08Var, "task");
        or3.f(taskInfo, "taskInfo");
        this.a = context;
        this.b = k08Var;
        this.c = taskInfo;
        this.d = new Handler(c18.d());
        this.g = kotlin.b.b(TTImageAudioCombineTaskDelegate$formats$2.INSTANCE);
        this.h = -1L;
        this.i = kotlin.b.b(new TTImageAudioCombineTaskDelegate$tempDir$2(this));
    }

    public static void h(TTImageAudioCombineTaskDelegate tTImageAudioCombineTaskDelegate) {
        z(tTImageAudioCombineTaskDelegate);
    }

    public static final Context i(TTImageAudioCombineTaskDelegate tTImageAudioCombineTaskDelegate) {
        return tTImageAudioCombineTaskDelegate.a;
    }

    public static final Handler j(TTImageAudioCombineTaskDelegate tTImageAudioCombineTaskDelegate) {
        return tTImageAudioCombineTaskDelegate.d;
    }

    public static final k08 k(TTImageAudioCombineTaskDelegate tTImageAudioCombineTaskDelegate) {
        return tTImageAudioCombineTaskDelegate.b;
    }

    public static final TaskInfo l(TTImageAudioCombineTaskDelegate tTImageAudioCombineTaskDelegate) {
        return tTImageAudioCombineTaskDelegate.c;
    }

    public static final File m(TTImageAudioCombineTaskDelegate tTImageAudioCombineTaskDelegate) {
        return tTImageAudioCombineTaskDelegate.w();
    }

    public static final long n(TTImageAudioCombineTaskDelegate tTImageAudioCombineTaskDelegate) {
        return tTImageAudioCombineTaskDelegate.k;
    }

    public static final void o(TTImageAudioCombineTaskDelegate tTImageAudioCombineTaskDelegate, long j) {
        tTImageAudioCombineTaskDelegate.k = j;
    }

    public static final void p(TTImageAudioCombineTaskDelegate tTImageAudioCombineTaskDelegate, long j) {
        tTImageAudioCombineTaskDelegate.C(j);
    }

    private final void r() {
        if (this.h > 0) {
            FfmpegTaskScheduler.y().n(this.h);
            this.h = -1L;
        }
    }

    private final File w() {
        return (File) this.i.getValue();
    }

    public static final void z(TTImageAudioCombineTaskDelegate tTImageAudioCombineTaskDelegate) {
        or3.f(tTImageAudioCombineTaskDelegate, "this$0");
        yj2.q(tTImageAudioCombineTaskDelegate.w());
    }

    public final void A(String str, int i, int i2) throws IllegalAccessException, IOException, InvocationTargetException {
        VideoInfo videoInfo;
        VideoInfo videoInfo2;
        char c = 0;
        int i3 = 1;
        int i4 = 1;
        while (true) {
            ft7 ft7Var = ft7.a;
            Locale locale = Locale.US;
            Object[] objArr = new Object[i3];
            objArr[c] = Integer.valueOf(i4);
            String str2 = String.format(locale, str, Arrays.copyOf(objArr, i3));
            or3.e(str2, "format(...)");
            if (!new File(str2).exists()) {
                VideoInfo videoInfo3 = this.e;
                if (videoInfo3 == null) {
                    or3.w("videoInfo");
                    videoInfo = null;
                } else {
                    videoInfo = videoInfo3;
                }
                throw new IOException("file does not exist:" + str2 + ", originUrl:" + videoInfo.getSource());
            }
            Bitmap bitmapDecodeFile = BitmapFactory.decodeFile(str2);
            if (bitmapDecodeFile == null) {
                VideoInfo videoInfo4 = this.e;
                if (videoInfo4 == null) {
                    or3.w("videoInfo");
                    videoInfo2 = null;
                } else {
                    videoInfo2 = videoInfo4;
                }
                throw new IOException("decodeFile file failed:" + str2 + ", originUrl:" + videoInfo2.getSource());
            }
            double width = bitmapDecodeFile.getWidth();
            double height = bitmapDecodeFile.getHeight();
            double dMin = Math.min(((double) i) / width, ((double) i2) / height);
            int i5 = (int) (width * dMin);
            int i6 = (int) (height * dMin);
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i, i2, Bitmap.Config.RGB_565);
            or3.e(bitmapCreateBitmap, "createBitmap(...)");
            Canvas canvas = new Canvas(bitmapCreateBitmap);
            Paint paint = new Paint();
            paint.setColor(ViewCompat.MEASURED_STATE_MASK);
            canvas.drawRect(0.0f, 0.0f, i, i2, paint);
            int i7 = (i - i5) / 2;
            int i8 = (i2 - i6) / 2;
            canvas.drawBitmap(bitmapDecodeFile, (Rect) null, new Rect(i7, i8, i5 + i7, i6 + i8), paint);
            String path = w().getPath();
            String str3 = String.format(locale, "image%03d.jpg", Arrays.copyOf(new Object[]{Integer.valueOf(i4)}, 1));
            or3.e(str3, "format(...)");
            FileOutputStream fileOutputStream = new FileOutputStream(new File(path + "/" + str3));
            try {
                bitmapCreateBitmap.compress(Bitmap.CompressFormat.JPEG, 30, fileOutputStream);
                gu0.a(fileOutputStream, null);
                bitmapDecodeFile.recycle();
                bitmapCreateBitmap.recycle();
                i3 = 1;
                i4++;
                c = 0;
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    gu0.a(fileOutputStream, th);
                    throw th2;
                }
            }
        }
    }

    public final void B() {
        Iterator it2 = v().iterator();
        long j = 0;
        while (it2.hasNext()) {
            j += ((Format) it2.next()).isImage() ? 174080L : PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED;
        }
        C(j);
        uj8.b bVar = this.j;
        if (bVar != null) {
            bVar.c();
        }
        this.k = 0L;
        ArrayList arrayList = new ArrayList();
        for (Format format : v()) {
            if (format.getSize() <= 0) {
                arrayList.add(format.getDownloadUrl());
            } else {
                this.k += format.getSize();
            }
        }
        if (arrayList.size() <= 0) {
            return;
        }
        Format format2 = this.f;
        if (format2 == null) {
            or3.w("targetFormat");
            format2 = null;
        }
        this.j = new uj8.b(arrayList, format2.getHeaders(), new b());
        PhoenixApplication.C().N().b(this.j);
    }

    public final void C(long j) {
        if (j > this.c.d) {
            this.b.e0(j);
            k08 k08Var = this.b;
            TaskInfo taskInfo = this.c;
            k08Var.l0(taskInfo.c, taskInfo.e, j, true);
        }
    }

    @Override
    public void a() {
        uj8.b bVar = this.j;
        if (bVar != null) {
            bVar.c();
        }
        r();
        try {
            A(y(), 1080, 1920);
        } catch (Exception e) {
            ProductionEnv.logException("UnExpectedException", e);
        }
        this.h = FfmpegTaskScheduler.y().u(y(), x(), this.c.i(), q(), new TTImageAudioCombineTaskDelegate$onPostDownload$1(this));
    }

    @Override
    public void b() {
        y48.l(new gz7(this));
    }

    @Override
    public File c(int i) {
        return new File(w(), u(i));
    }

    @Override
    public DownloadRequest d(int i) {
        Object obj = v().get(i);
        or3.e(obj, "get(...)");
        return s((Format) obj, u(i));
    }

    @Override
    public void e() {
    }

    @Override
    public int f() {
        return v().size();
    }

    @Override
    public void g(VideoInfo videoInfo, Format format) {
        or3.f(videoInfo, "videoInfo");
        or3.f(format, "targetFormat");
        this.e = videoInfo;
        this.f = format;
        List<Format> formats = videoInfo.getFormats();
        or3.e(formats, "getFormats(...)");
        ArrayList arrayList = new ArrayList();
        for (Object obj : formats) {
            if (((Format) obj).isImage()) {
                arrayList.add(obj);
            }
        }
        List listF0 = CollectionsKt___CollectionsKt.F0(arrayList);
        listF0.add(format);
        v().addAll(listF0);
        wd9.h(w());
        FfmpegTaskScheduler.y().E();
        B();
    }

    @Override
    public void onDestroy() {
        r();
        uj8.b bVar = this.j;
        if (bVar != null) {
            bVar.c();
        }
    }

    public final long q() {
        ArrayList arrayListV = v();
        int i = 0;
        if (!(arrayListV instanceof Collection) || !arrayListV.isEmpty()) {
            Iterator it2 = arrayListV.iterator();
            while (it2.hasNext()) {
                if (((Format) it2.next()).isImage() && (i = i + 1) < 0) {
                    xu0.p();
                }
            }
        }
        long j = ((long) i) * 3;
        VideoInfo videoInfo = this.e;
        if (videoInfo == null) {
            or3.w("videoInfo");
            videoInfo = null;
        }
        return Math.max(j, videoInfo.getDurationInSecond());
    }

    public final DownloadRequest s(Format format, String str) {
        DownloadRequest.a aVarA = DownloadRequest.a();
        VideoInfo videoInfo = this.e;
        VideoInfo videoInfo2 = null;
        if (videoInfo == null) {
            or3.w("videoInfo");
            videoInfo = null;
        }
        DownloadRequest.a aVarD = aVarA.B(videoInfo.getTitle()).D(format.getDownloadUrl());
        VideoInfo videoInfo3 = this.e;
        if (videoInfo3 == null) {
            or3.w("videoInfo");
            videoInfo3 = null;
        }
        DownloadRequest.a aVarC = aVarD.y(videoInfo3.getThumbnailUrl()).w(wd9.S(format.getExt())).z(t(format, str)).C(format.getSize() > 0 ? format.getSize() : -1L);
        VideoInfo videoInfo4 = this.e;
        if (videoInfo4 == null) {
            or3.w("videoInfo");
            videoInfo4 = null;
        }
        DownloadRequest.a aVarV = aVarC.v(IntentUtil.DURATION, String.valueOf(videoInfo4.getDurationInSecond()));
        VideoInfo videoInfo5 = this.e;
        if (videoInfo5 == null) {
            or3.w("videoInfo");
            videoInfo5 = null;
        }
        DownloadRequest.a aVarV2 = aVarV.v(Format.Fields.THUMBNAIL, videoInfo5.getThumbnailUrl());
        VideoInfo videoInfo6 = this.e;
        if (videoInfo6 == null) {
            or3.w("videoInfo");
        } else {
            videoInfo2 = videoInfo6;
        }
        DownloadRequest downloadRequestU = aVarV2.A(videoInfo2.getSource()).x(format.getHeaders()).v(SnaptubeAdModel.KEY_FORMAT, format.getTag()).u();
        or3.e(downloadRequestU, "build(...)");
        return downloadRequestU;
    }

    public final String t(Format format, String str) {
        VideoInfo videoInfo = this.e;
        VideoInfo videoInfo2 = null;
        if (videoInfo == null) {
            or3.w("videoInfo");
            videoInfo = null;
        }
        try {
            String strM = wd9.M(videoInfo.getSource() + format.getTag() + str);
            or3.c(strM);
            return strM;
        } catch (NoSuchAlgorithmException unused) {
            VideoInfo videoInfo3 = this.e;
            if (videoInfo3 == null) {
                or3.w("videoInfo");
            } else {
                videoInfo2 = videoInfo3;
            }
            return videoInfo2.getSource().hashCode() + "-" + format.getTag().hashCode() + "-" + str.hashCode();
        }
    }

    public final String u(int i) {
        if (!((Format) v().get(i)).isImage()) {
            return "audio.tmp";
        }
        ft7 ft7Var = ft7.a;
        String str = String.format(Locale.US, "image%03d.jpg", Arrays.copyOf(new Object[]{Integer.valueOf(i + 1)}, 1));
        or3.e(str, "format(...)");
        return str;
    }

    public final ArrayList v() {
        return (ArrayList) this.g.getValue();
    }

    public final String x() {
        return w().getPath() + "/audio.tmp";
    }

    public final String y() {
        return w().getPath() + "/image%03d.jpg";
    }
}
