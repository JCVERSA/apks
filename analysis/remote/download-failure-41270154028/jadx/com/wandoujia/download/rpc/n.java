package com.wandoujia.download.rpc;

import android.content.Context;
import android.os.SystemClock;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.mobiuspace.youtube.ump.UmpException;
import com.mobiuspace.youtube.ump.proto.FormatId;
import com.snaptube.extractor.pluginlib.youtube.YoutubeCodec;
import com.vungle.ads.internal.protos.Sdk;
import com.vungle.ads.internal.ui.AdActivity;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import kotlin.text.StringsKt__IndentKt;
import o.ag8;
import o.bg8;
import o.cn3;
import o.cu7;
import o.de5;
import o.kb0;
import o.or3;
import o.xf8;
import o.yj2;

public final class n implements IBlockDownloadTask, l.c {
    public final Context a;
    public final g b;
    public final ExecutorService c;
    public cn3 d;
    public IBlockDownloadTask.BlockStatus e;
    public long f;
    public l g;
    public UmpException h;
    public final String i;
    public final String j;
    public final long k;
    public long l;
    public volatile boolean m;

    public n(Context context, g gVar, ExecutorService executorService) {
        or3.f(context, "context");
        or3.f(gVar, AdActivity.REQUEST_KEY_EXTRA);
        or3.f(executorService, "executor");
        this.a = context;
        this.b = gVar;
        this.c = executorService;
        this.e = IBlockDownloadTask.BlockStatus.PENDING;
        String str = gVar.c;
        or3.e(str, "filePath");
        this.i = str;
        String str2 = gVar.c;
        or3.e(str2, "filePath");
        this.j = cu7.H(str2, "video", MimeTypes.BASE_TYPE_AUDIO, false, 4, null);
        this.k = gVar.h + 1;
        this.m = true;
    }

    private final void i(IBlockDownloadTask.BlockStatus blockStatus) {
        this.e = blockStatus;
        cn3 cn3Var = this.d;
        cn3 cn3Var2 = null;
        if (cn3Var == null) {
            or3.w("innerBlockDownloadListener");
            cn3Var = null;
        }
        cn3Var.a(this, this.b.f, blockStatus);
        long jUptimeMillis = SystemClock.uptimeMillis();
        cn3 cn3Var3 = this.d;
        if (cn3Var3 == null) {
            or3.w("innerBlockDownloadListener");
        } else {
            cn3Var2 = cn3Var3;
        }
        cn3Var2.b(this.b.f, jUptimeMillis - this.f);
        this.f = jUptimeMillis;
    }

    @Override
    public void a(boolean z) {
        if (!z) {
            g();
            b(new UmpException(-9, "verify file size fail"));
        } else {
            if (this.m) {
                String str = this.j;
                yj2.W(str, cu7.H(str, ".download", "", false, 4, null));
            }
            i(IBlockDownloadTask.BlockStatus.SUCCESS);
        }
    }

    @Override
    public void b(UmpException umpException) {
        this.h = umpException;
        i(h(umpException));
        if (umpException != null) {
            g gVar = this.b;
            Integer numValueOf = Integer.valueOf(umpException.getErrorCode());
            l lVar = this.g;
            kb0.b(gVar, umpException, numValueOf, lVar != null ? lVar.l() : null);
        }
    }

    @Override
    public int c() {
        UmpException umpException = this.h;
        if (umpException == null || umpException.getErrorCode() != -100) {
            return 602;
        }
        return Sdk.SDKError.Reason.NATIVE_ASSET_ERROR_VALUE;
    }

    @Override
    public void d(g gVar, cn3 cn3Var) {
        FormatId formatId;
        FormatId formatId2;
        or3.f(gVar, AdActivity.REQUEST_KEY_EXTRA);
        or3.f(cn3Var, "blockListener");
        this.d = cn3Var;
        xf8 xf8VarA = ag8.a(gVar.t);
        bg8.h(StringsKt__IndentKt.f("\n      *********************** umpParams **********************\n      playbackConfig: " + (xf8VarA != null ? xf8VarA.c() : null) + "\n      itag: " + (xf8VarA != null ? xf8VarA.a() : null) + "\n      lastModified: " + (xf8VarA != null ? xf8VarA.b() : null) + "\n    "));
        if (xf8VarA == null) {
            b(new UmpException(-8, "umpParams is invalid"));
            return;
        }
        YoutubeCodec youtubeCodecQueryCodec = YoutubeCodec.queryCodec(xf8VarA.a());
        if (youtubeCodecQueryCodec == null) {
            b(new UmpException(-100, "codec is unSupported " + xf8VarA.a()));
            return;
        }
        i(IBlockDownloadTask.BlockStatus.PENDING);
        FormatId formatIdBuild = new FormatId.Builder().itag(Integer.valueOf(de5.c(xf8VarA.a()))).last_modified(Long.valueOf(de5.e(xf8VarA.b()))).build();
        if (youtubeCodecQueryCodec.isAudio()) {
            formatId2 = null;
            formatId = formatIdBuild;
        } else {
            formatId = null;
            formatId2 = formatIdBuild;
        }
        this.m = formatId2 != null;
        l lVar = new l(bg8.a(gVar.b), this.i, this.j, xf8VarA.c(), formatId2, formatId, bg8.b(gVar.b), this.l, youtubeCodecQueryCodec.getUmpQuality(), this.c);
        lVar.u(this);
        lVar.v();
        this.g = lVar;
    }

    @Override
    public void e(long j, long j2, long j3, long j4) {
        long j5 = j2 > 0 ? j2 : this.k;
        cn3 cn3Var = this.d;
        if (cn3Var == null) {
            or3.w("innerBlockDownloadListener");
            cn3Var = null;
        }
        cn3Var.c(this.b.f, j, null, (int) j5, new com.wandoujia.mtdownload.c(j3, j4), 0L);
    }

    @Override
    public void f(Map map) {
    }

    public final void g() {
        yj2.s(this.j);
        yj2.s(this.i);
    }

    @Override
    public IBlockDownloadTask.BlockStatus getStatus() {
        return this.e;
    }

    public final IBlockDownloadTask.BlockStatus h(UmpException umpException) {
        if (umpException == null) {
            return IBlockDownloadTask.BlockStatus.UNKNOWN_ERROR;
        }
        int errorCode = umpException.getErrorCode();
        if (errorCode == -9) {
            return IBlockDownloadTask.BlockStatus.FILE_ERROR;
        }
        if (errorCode != -8 && errorCode != -5) {
            if (errorCode == -4 || errorCode == -3) {
                return IBlockDownloadTask.BlockStatus.HTTP_ERROR;
            }
            if (errorCode != -2 && errorCode != -1) {
                return IBlockDownloadTask.BlockStatus.UNKNOWN_ERROR;
            }
        }
        return IBlockDownloadTask.BlockStatus.UMP_ERROR;
    }

    public final void j(com.wandoujia.mtdownload.c cVar) {
        or3.f(cVar, "downloadedSection");
        this.l = cVar.j();
    }

    @Override
    public int l() {
        return this.b.f;
    }

    @Override
    public void onStart() {
        i(IBlockDownloadTask.BlockStatus.RUNNING);
        cn3 cn3Var = this.d;
        if (cn3Var == null) {
            or3.w("innerBlockDownloadListener");
            cn3Var = null;
        }
        cn3Var.g(this.b.f, this.k * ((long) 2));
    }

    @Override
    public void stop() {
        l lVar = this.g;
        if (lVar != null) {
            lVar.w();
        }
    }
}
