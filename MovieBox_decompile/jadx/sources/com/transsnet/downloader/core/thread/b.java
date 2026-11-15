package com.transsnet.downloader.core.thread;

import android.util.Log;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.baselib.db.download.DownloadException;
import com.transsion.baselib.db.download.DownloadRange;
import com.transsnet.downloader.exception.DownloadPauseException;
import com.transsnet.downloader.util.DownloadUtil;
import java.util.Locale;
import java.util.Random;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import yg.l;

public abstract class b implements f {
    public static final a Companion = new a(null);
    public static final int SPEED_THRESHOLD = 51200;
    public static final String TAG = "download";
    private Function0<Unit> breakCallback;
    private int bufferSize;
    private final ax.b config;
    private final DownloadBean downloadInfo;
    private final d downloadProgressListener;
    private final DownloadRange downloadRange;
    private final com.transsnet.downloader.core.c downloadResponse;
    private boolean isBreak;
    private final com.transsnet.downloader.proxy.b proxyHelper;
    private int retryDownloadCount;
    private final int threadIndex;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public b(DownloadRange downloadRange, com.transsnet.downloader.proxy.b proxyHelper, int i10, com.transsnet.downloader.core.c downloadResponse, ax.b config, DownloadBean downloadInfo, d downloadProgressListener) {
        Intrinsics.h(downloadRange, "downloadRange");
        Intrinsics.h(proxyHelper, "proxyHelper");
        Intrinsics.h(downloadResponse, "downloadResponse");
        Intrinsics.h(config, "config");
        Intrinsics.h(downloadInfo, "downloadInfo");
        Intrinsics.h(downloadProgressListener, "downloadProgressListener");
        this.downloadRange = downloadRange;
        this.proxyHelper = proxyHelper;
        this.threadIndex = i10;
        this.downloadResponse = downloadResponse;
        this.config = config;
        this.downloadInfo = downloadInfo;
        this.downloadProgressListener = downloadProgressListener;
        this.bufferSize = ui.b.f73084a.d();
    }

    private final void b() {
        if (DownloadUtil.f57680a.i(this.downloadInfo)) {
            int iE = this.config.e();
            if (iE <= 0) {
                ex.e.f59843c.a().k(this.downloadInfo, null);
                h();
            } else if (new Random().nextInt(iE) + 1 == 1) {
                ex.e.f59843c.a().k(this.downloadInfo, new Function0() {
                    @Override
                    public final Object invoke() {
                        return b.c(this.f56434a);
                    }
                });
            } else {
                ex.e.f59843c.a().k(this.downloadInfo, null);
                h();
            }
        }
    }

    public static final Unit c(b bVar) {
        bVar.h();
        return Unit.f64096a;
    }

    private final void d() {
        if (this.downloadInfo.isPause()) {
            throw new DownloadPauseException(7);
        }
    }

    private final void e() {
        Long size = this.downloadInfo.getSize();
        long jLongValue = size != null ? size.longValue() : 0L;
        if (this.downloadRange.getEnd() >= jLongValue) {
            this.downloadRange.setEnd(jLongValue - 1);
        }
    }

    /* JADX WARN: Not initialized variable reg: 15, insn: 0x1464: MOVE (r54 I:??[OBJECT, ARRAY]) = (r15 I:??[OBJECT, ARRAY]), block:B:724:0x1462 */
    /* JADX WARN: Not initialized variable reg: 16, insn: 0x1466: MOVE (r55 I:??[OBJECT, ARRAY]) = (r16 I:??[OBJECT, ARRAY]), block:B:724:0x1462 */
    /* JADX WARN: Unreachable blocks removed: 2, instructions: 4 */
    /* JADX WARN: Unreachable blocks removed: 2, instructions: 5 */
    /*  JADX ERROR: Type inference failed
        jadx.core.utils.exceptions.JadxOverflowException: Type inference error: updates count limit reached with updateSeq = 59441. Try increasing type updates limit count.
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:79)
        */
    private final void f() {
        /*
            Method dump skipped, instruction units count: 5944
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.transsnet.downloader.core.thread.b.f():void");
    }

    /* JADX WARN: Code duplicated, block: B:19:0x004a  */
    private final DownloadException g(Exception exc, int i10, int i11, Integer num, String str, String str2) {
        String str3;
        int iB = DownloadException.INSTANCE.b(exc, i10);
        String message = exc.getMessage();
        if (message != null) {
            str = message;
        }
        if (i10 == 5 && !l.f76264a.e()) {
            iB = 9;
            str = DownloadException.EXCEPTION_MESSAGE_NO_NET;
        }
        if (i10 == 5) {
            Locale locale = Locale.ROOT;
            String lowerCase = str.toLowerCase(locale);
            Intrinsics.g(lowerCase, "toLowerCase(...)");
            if (StringsKt.c0(lowerCase, "ssl", false, 2, null)) {
                str3 = DownloadException.EXCEPTION_MESSAGE_SSL;
            } else {
                String lowerCase2 = str.toLowerCase(locale);
                Intrinsics.g(lowerCase2, "toLowerCase(...)");
                if (StringsKt.c0(lowerCase2, "failed to connect to", false, 2, null)) {
                    str3 = DownloadException.EXCEPTION_MESSAGE_FAILED_CONNECT;
                } else {
                    str3 = str;
                }
            }
        } else {
            str3 = str;
        }
        DownloadException downloadException = new DownloadException(iB, str, exc);
        if (num != null) {
            try {
                i11 = num.intValue();
            } catch (Throwable unused) {
            }
        } else {
            i11 = 0;
        }
        downloadException.setResponseCode(i11);
        downloadException.setFormatMessage(str3);
        downloadException.setRange(str2);
        return downloadException;
    }

    private final void h() {
        this.downloadInfo.setProgress(0L);
        for (DownloadRange downloadRange : this.downloadInfo.getDownloadRanges()) {
            downloadRange.setProgress(0L);
            if (downloadRange.getRangeId() != this.downloadRange.getRangeId() && downloadRange.getIsDownloading()) {
                downloadRange.setReDownload(true);
            }
        }
        throw new ReDownloadException();
    }

    @Override
    public void pause(Function0<Unit> callback) {
        Intrinsics.h(callback, "callback");
        this.isBreak = true;
        this.breakCallback = callback;
    }

    @Override
    public void removeBreakCallback() {
        this.breakCallback = null;
    }

    public void startDownload() {
        wf.a.f74274a.c("download", "start thread: threadId = " + this.downloadRange.getThreadId() + ", rangeId = " + this.downloadRange.getRangeId() + ", isPause =  " + this.downloadInfo.isPause() + "   name =  " + this.downloadInfo.getName() + " , progress = " + this.downloadInfo.getProgress() + ", range.start = " + this.downloadRange.getStart() + ", range.progress = " + this.downloadRange.getProgress() + ",range.end = " + this.downloadRange.getEnd() + ", isBreak = " + this.isBreak + ", status = " + this.downloadInfo.getStatus(), true);
        this.downloadRange.setThreadIndex(this.threadIndex);
        this.isBreak = false;
        while (!this.downloadInfo.isPause() && !this.downloadRange.isRangeDownloadSuccess() && !this.isBreak) {
            try {
                d();
                f();
            } catch (DownloadPathException e10) {
                this.downloadRange.setDownloading(false);
                this.downloadResponse.b(this.downloadInfo, e10);
            } catch (DownloadException e11) {
                if (this.retryDownloadCount >= this.config.g()) {
                    this.downloadRange.setDownloading(false);
                    this.downloadResponse.b(this.downloadInfo, e11);
                    wf.a.f74274a.i("download", "失败重试已满 retry thread: name = " + this.downloadInfo.getName() + ", isPause =  " + this.downloadInfo.isPause() + ", isRangeDownloadSuccess=  " + this.downloadRange.isRangeDownloadSuccess() + ", isBreak = " + this.isBreak + ", progress:  " + this.downloadInfo.getProgress() + " ,rangeId = " + this.downloadRange.getRangeId() + "  ", true);
                    return;
                }
                this.retryDownloadCount++;
            } catch (QuitDPRestartException unused) {
                this.downloadRange.setDownloading(false);
                this.downloadProgressListener.c(this, this.threadIndex, this.downloadRange);
                return;
            } catch (ReDownloadException unused2) {
                this.downloadProgressListener.a(this, this.threadIndex, this.downloadRange);
                return;
            } catch (RestartException unused3) {
                Log.e("download", "restart download thread, rangeId = " + this.downloadRange.getRangeId());
            } catch (DownloadPauseException unused4) {
                this.downloadRange.setDownloading(false);
            }
        }
    }
}
