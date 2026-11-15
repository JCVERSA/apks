package com.mgtv.downloader.a;

import android.content.Context;
import android.net.Uri;
import android.os.SystemClock;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.browser.trusted.sharing.ShareTarget;
import androidx.media3.exoplayer.upstream.CmcdConfiguration;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.alibaba.android.arouter.utils.Consts;
import com.hunantv.imgo.util.PreferencesUtil;
import com.hunantv.imgo.util.ThreadManager;
import com.hunantv.imgo.util.f;
import com.hunantv.imgo.util.i;
import com.hunantv.imgo.util.n;
import com.lzy.okgo.model.HttpHeaders;
import com.mgtv.downloader.net.ImgoHttpCallBack;
import com.mgtv.downloader.net.ImgoHttpParams;
import com.mgtv.downloader.net.entity.DownloadData;
import com.mgtv.downloader.net.entity.VideoDownloadUrlEntity;
import com.mgtv.downloader.p2p.mg.DownloadFacadeEnum;
import com.mgtv.downloader.p2p.mg.DownloadHlsManager;
import com.mgtv.downloader.p2p.yunfan.YFP2pLoader;
import com.mgtv.downloader.util.c;
import com.mgtv.downloader.util.d;
import com.mgtv.downloader.util.e;
import com.mgtv.irouting.okhttp.HttpDnsException;
import com.mgtv.task.g;
import com.mgtv.task.h;
import com.mgtv.task.http.HttpFormatException;
import com.mgtv.task.http.HttpParams;
import com.mgtv.task.m;
import com.transsion.videodownloader.model.Video;
import defpackage.hb0;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.RandomAccessFile;
import java.io.StringWriter;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.security.SecureRandom;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.locks.ReentrantLock;
import org.json.JSONObject;

public class a {
    private static int k = -1;
    protected com.mgtv.downloader.net.entity.a a;
    private int b;
    private int c;
    private String d;
    private C0180a m;
    private String p;
    private com.mgtv.downloader.statistics.a.a r;
    private h s;
    private m t;
    private Context u;
    private b v;
    private int e = 0;
    private int f = 0;
    private int g = 0;
    private String h = "";
    private int i = 10;
    private int j = 0;
    private ReentrantLock l = new ReentrantLock();
    private int n = com.mgtv.downloader.b.b;
    private boolean o = false;
    private boolean q = false;
    private int w = 0;

    public final class C0180a extends Thread {
        private volatile boolean b = false;
        private String c;

        public C0180a(String str) {
            this.c = str;
        }

        private void b(boolean z, int i) throws Throwable {
            int iA = a.this.a.n().equals(1) ? a(z ? 1 : 0, i) : b(z ? 1 : 0, i);
            a.this.p();
            c.a("taskID: " + a.this.b + ", unlock mDownloader ret= " + iA);
            if (a.this.a.f().intValue() == 11 && a.this.v != null) {
                a.this.v.c(a.this.b, a.this.a, "");
                return;
            }
            if (1 == iA) {
                Integer numF = a.this.a.f();
                int iIntValue = numF == null ? 5 : numF.intValue();
                if (a.this.a.n().equals(0)) {
                    Long lD = a.this.a.d();
                    long jLongValue = lD == null ? 0L : lD.longValue();
                    Long lE = a.this.a.e();
                    long jLongValue2 = lE == null ? 0L : lE.longValue();
                    if (jLongValue > 0 && jLongValue2 > 0 && jLongValue >= jLongValue2) {
                        iIntValue = 4;
                    }
                }
                if (iIntValue == 2) {
                    a.this.h();
                } else if (iIntValue == 3) {
                    a.this.i();
                } else if (iIntValue == 4) {
                    a.this.k();
                    c.a("taskID: " + a.this.b + ", mission completed");
                } else if (iIntValue == 5) {
                    a.this.j();
                }
                a.this.h = "";
                c.a("taskID: " + a.this.b + ", success, new status mReporter");
                return;
            }
            if (iA != -8) {
                if (iA == -6) {
                    a.this.c(5);
                    c.a("taskID: " + a.this.b + ", failed, hls task create failed");
                    return;
                }
                if (iA == -5) {
                    c.a("taskID: " + a.this.b + ", failed, already been paused");
                    return;
                }
                if (iA == -3) {
                    try {
                        Thread.sleep(2000L);
                    } catch (Exception e) {
                        n.b("DownloadSDK_1.8.0", e.toString());
                    }
                    if (!z || a.this.i != 0) {
                        a.this.i--;
                        if (a.this.i >= 1) {
                            a(false, a.this.i);
                            return;
                        } else {
                            a(true, 0);
                            return;
                        }
                    }
                    a.this.i = 10;
                    a.this.j();
                    c.a("taskID: " + a.this.b + ", failed, retry failed");
                    return;
                }
                if (iA != -2) {
                    if (iA != -1) {
                        return;
                    }
                    a.this.j();
                    c.a("taskID: " + a.this.b + ", failed, file error");
                    return;
                }
            } else if (z) {
                a.this.c(10);
                c.a("taskID: " + a.this.b + ", md5 check failed, retry failed");
            } else {
                a(true, 0);
            }
            a.this.c(8);
            c.a("taskID: " + a.this.b + ", failed, file system error");
        }

        public void a(boolean z) {
            this.b = z;
        }

        @Override
        public void run() throws Throwable {
            if (!a.this.n()) {
                a.this.q = false;
                a(false, 0);
                return;
            }
            a.this.h();
            c.a("taskID: " + a.this.b + ", lock is locked by other thread, ending download thread");
        }

        private HttpURLConnection a(String str) throws IOException {
            com.mgtv.irouting.okhttp.c cVar;
            try {
                cVar = new com.mgtv.irouting.okhttp.c(new URL(str));
            } catch (HttpDnsException e) {
                e.printStackTrace();
                cVar = null;
            }
            cVar.setConnectTimeout(3000);
            cVar.setReadTimeout(3000);
            cVar.setRequestMethod(ShareTarget.METHOD_GET);
            cVar.setRequestProperty(HttpHeaders.HEAD_KEY_ACCEPT_ENCODING, "identity");
            cVar.setRequestProperty("Accept", "image/gif, image/jpeg, image/pjpeg, image/pjpeg, application/x-shockwave-flash, application/xaml+xml, application/vnd.ms-xpsdocument, application/x-ms-xbap, application/x-ms-application, application/vnd.ms-excel, application/vnd.ms-powerpoint, application/msword, */*");
            cVar.setRequestProperty(HttpHeaders.HEAD_KEY_ACCEPT_LANGUAGE, "zh-CN");
            cVar.setRequestProperty("Referer", a.this.a.b());
            cVar.setRequestProperty("Charset", "UTF-8");
            cVar.setRequestProperty("User-Agent", d.e());
            cVar.setRequestProperty("Range", "bytes=" + a.this.a.d() + "-");
            return cVar;
        }

        private void a(boolean z, int i) throws Throwable {
            int i2;
            c.a("taskID: " + a.this.b + ", [download thread]doDownload - retry: " + z + ", count: " + i);
            a.this.o();
            a.this.o = false;
            if (a.this.q) {
                i2 = 3;
            } else {
                i2 = (5 == a.this.a.f().intValue() || 3 == a.this.a.f().intValue()) ? 2 : 0;
            }
            if (TextUtils.isEmpty(this.c)) {
                a.this.p();
                a.this.j();
                c.a("taskID: " + a.this.b + ", no url found, failed mURL=" + this.c);
                return;
            }
            List<String> listC = d.c(a.this.a.h());
            if (listC.isEmpty()) {
                a.this.p();
                a.this.j();
                c.a("taskID: " + a.this.b + ", no domains found, failed");
                return;
            }
            int iMin = Math.min(4, listC.size() - 1);
            DownloadData downloadDataA = null;
            int i3 = 0;
            while (i3 <= iMin) {
                String str = listC.get(i3);
                String str2 = str + this.c;
                c.a("taskID: " + a.this.b + ", try with domain: " + str);
                if ((!z && i >= 1) || 1 == a.this.e || (z && i == 0)) {
                    a aVar = a.this;
                    aVar.h = String.format("&svrip=%s", aVar.a.v());
                    str2 = str2 + a.this.h;
                    c.a("taskID: " + a.this.b + " mSwitchCDN:" + a.this.e + ", retrying with url: " + str2);
                }
                downloadDataA = a.this.a(str2, i3 < iMin ? 0 : 1, i2);
                if (downloadDataA != null) {
                    c.a("taskID: " + a.this.b + ", get real url success = " + downloadDataA.toString());
                    break;
                }
                c.a("taskID: " + a.this.b + ", get real url error downloadData = null");
                try {
                    Thread.sleep(1000L);
                } catch (Exception e) {
                    c.a("taskID: " + a.this.b + "Exception:" + e.toString());
                }
                i3++;
            }
            if (downloadDataA == null || TextUtils.isEmpty(downloadDataA.getInfo())) {
                a.this.p();
                c.a("taskID: " + a.this.b + ", get real url failed");
                return;
            }
            if (downloadDataA.getStatus().equals("error") && downloadDataA.getCode() >= 620 && downloadDataA.getCode() <= 629) {
                a.this.p();
                if (a.this.g < 3) {
                    a.j(a.this);
                    c.a("taskID: " + a.this.b + ", second layer return failed, need retry first layer, code: " + downloadDataA.getCode() + ", mSecondLayerTryTimes: " + a.this.g);
                    a.this.a.a((Integer) 2);
                    a.this.a(true);
                    return;
                }
                a.this.j();
                c.a("taskID: " + a.this.b + ", second layer return failed, return failed, mSecondLayerTryTimes: " + a.this.g);
                a.this.g = 0;
                return;
            }
            n.c("DownloadSDK_1.8.0", "taskID: " + a.this.b + ", start download after get real download url");
            try {
                b(z, i2);
            } catch (Throwable th) {
                th.printStackTrace();
                a.this.p();
            }
        }

        /* JADX WARN: Code duplicated, block: B:123:0x054c A[Catch: all -> 0x083d, Exception -> 0x084c, TRY_ENTER, TRY_LEAVE, TryCatch #33 {Exception -> 0x084c, all -> 0x083d, blocks: (B:114:0x04cc, B:115:0x0514, B:123:0x054c, B:128:0x0579, B:133:0x05ab), top: B:357:0x04cc }] */
        /* JADX WARN: Code duplicated, block: B:128:0x0579 A[Catch: all -> 0x083d, Exception -> 0x084c, TRY_ENTER, TRY_LEAVE, TryCatch #33 {Exception -> 0x084c, all -> 0x083d, blocks: (B:114:0x04cc, B:115:0x0514, B:123:0x054c, B:128:0x0579, B:133:0x05ab), top: B:357:0x04cc }] */
        /* JADX WARN: Code duplicated, block: B:133:0x05ab A[Catch: all -> 0x083d, Exception -> 0x084c, TRY_ENTER, TRY_LEAVE, TryCatch #33 {Exception -> 0x084c, all -> 0x083d, blocks: (B:114:0x04cc, B:115:0x0514, B:123:0x054c, B:128:0x0579, B:133:0x05ab), top: B:357:0x04cc }] */
        /* JADX WARN: Code duplicated, block: B:147:0x0620 A[Catch: all -> 0x060f, Exception -> 0x0614, TRY_ENTER, TRY_LEAVE, TryCatch #25 {Exception -> 0x0614, blocks: (B:138:0x05f3, B:140:0x05fb, B:145:0x061a, B:147:0x0620, B:148:0x0623), top: B:315:0x05f3 }] */
        /* JADX WARN: Code duplicated, block: B:175:0x0709  */
        /* JADX WARN: Code duplicated, block: B:180:0x075d A[Catch: all -> 0x0769, Exception -> 0x0771, TryCatch #7 {all -> 0x0769, blocks: (B:178:0x0733, B:180:0x075d, B:185:0x0773, B:187:0x0782, B:189:0x07fe, B:190:0x0811, B:217:0x08d2, B:220:0x08db, B:222:0x08e3, B:233:0x094c, B:224:0x08eb, B:226:0x08fe, B:230:0x092b), top: B:316:0x03da }] */
        /* JADX WARN: Code duplicated, block: B:187:0x0782 A[Catch: all -> 0x0769, Exception -> 0x0771, TryCatch #7 {all -> 0x0769, blocks: (B:178:0x0733, B:180:0x075d, B:185:0x0773, B:187:0x0782, B:189:0x07fe, B:190:0x0811, B:217:0x08d2, B:220:0x08db, B:222:0x08e3, B:233:0x094c, B:224:0x08eb, B:226:0x08fe, B:230:0x092b), top: B:316:0x03da }] */
        /* JADX WARN: Code duplicated, block: B:189:0x07fe A[Catch: all -> 0x0769, Exception -> 0x0771, TryCatch #7 {all -> 0x0769, blocks: (B:178:0x0733, B:180:0x075d, B:185:0x0773, B:187:0x0782, B:189:0x07fe, B:190:0x0811, B:217:0x08d2, B:220:0x08db, B:222:0x08e3, B:233:0x094c, B:224:0x08eb, B:226:0x08fe, B:230:0x092b), top: B:316:0x03da }] */
        /* JADX WARN: Code duplicated, block: B:211:0x08ba  */
        /* JADX WARN: Code duplicated, block: B:213:0x08bf  */
        /* JADX WARN: Code duplicated, block: B:217:0x08d2 A[Catch: all -> 0x0769, TRY_ENTER, TryCatch #7 {all -> 0x0769, blocks: (B:178:0x0733, B:180:0x075d, B:185:0x0773, B:187:0x0782, B:189:0x07fe, B:190:0x0811, B:217:0x08d2, B:220:0x08db, B:222:0x08e3, B:233:0x094c, B:224:0x08eb, B:226:0x08fe, B:230:0x092b), top: B:316:0x03da }] */
        /* JADX WARN: Code duplicated, block: B:228:0x0918 A[Catch: all -> 0x0a78, TRY_ENTER, TRY_LEAVE, TryCatch #18 {all -> 0x0a78, blocks: (B:209:0x0883, B:214:0x08c2, B:231:0x0944, B:237:0x09af, B:241:0x09d0, B:240:0x09cc, B:236:0x0982, B:228:0x0918), top: B:326:0x0883 }] */
        /* JADX WARN: Code duplicated, block: B:230:0x092b A[Catch: all -> 0x0769, TRY_ENTER, TRY_LEAVE, TryCatch #7 {all -> 0x0769, blocks: (B:178:0x0733, B:180:0x075d, B:185:0x0773, B:187:0x0782, B:189:0x07fe, B:190:0x0811, B:217:0x08d2, B:220:0x08db, B:222:0x08e3, B:233:0x094c, B:224:0x08eb, B:226:0x08fe, B:230:0x092b), top: B:316:0x03da }] */
        /* JADX WARN: Code duplicated, block: B:233:0x094c A[Catch: all -> 0x0769, TRY_ENTER, TRY_LEAVE, TryCatch #7 {all -> 0x0769, blocks: (B:178:0x0733, B:180:0x075d, B:185:0x0773, B:187:0x0782, B:189:0x07fe, B:190:0x0811, B:217:0x08d2, B:220:0x08db, B:222:0x08e3, B:233:0x094c, B:224:0x08eb, B:226:0x08fe, B:230:0x092b), top: B:316:0x03da }] */
        /* JADX WARN: Code duplicated, block: B:235:0x097e  */
        /* JADX WARN: Code duplicated, block: B:239:0x09cb  */
        /* JADX WARN: Code duplicated, block: B:240:0x09cc A[Catch: all -> 0x0a78, TryCatch #18 {all -> 0x0a78, blocks: (B:209:0x0883, B:214:0x08c2, B:231:0x0944, B:237:0x09af, B:241:0x09d0, B:240:0x09cc, B:236:0x0982, B:228:0x0918), top: B:326:0x0883 }] */
        /* JADX WARN: Code duplicated, block: B:251:0x0a04 A[Catch: all -> 0x09f6, Exception -> 0x09fb, TRY_ENTER, TRY_LEAVE, TryCatch #15 {all -> 0x09f6, blocks: (B:244:0x09e2, B:251:0x0a04), top: B:322:0x09e2 }] */
        /* JADX WARN: Code duplicated, block: B:265:0x0a86 A[Catch: all -> 0x0a9a, Exception -> 0x0afe, TryCatch #32 {Exception -> 0x0afe, all -> 0x0a9a, blocks: (B:263:0x0a7e, B:265:0x0a86, B:268:0x0a9d, B:270:0x0aa3, B:271:0x0aa6), top: B:359:0x0a7e }] */
        /* JADX WARN: Code duplicated, block: B:270:0x0aa3 A[Catch: all -> 0x0a9a, Exception -> 0x0afe, TryCatch #32 {Exception -> 0x0afe, all -> 0x0a9a, blocks: (B:263:0x0a7e, B:265:0x0a86, B:268:0x0a9d, B:270:0x0aa3, B:271:0x0aa6), top: B:359:0x0a7e }] */
        /* JADX WARN: Code duplicated, block: B:322:0x09e2 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:337:0x05fb A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:348:0x05b2 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:365:0x0581 A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:366:0x0518 A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:367:0x055b A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:369:0x0819 A[SYNTHETIC] */
        /* JADX WARN: Instruction removed from duplicated block: B:187:0x0782, please report this as an issue */
        /* JADX WARN: Instruction removed from duplicated block: B:233:0x094c, please report this as an issue */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r15v19 */
        /* JADX WARN: Type inference failed for: r15v20, types: [java.io.InputStream] */
        /* JADX WARN: Type inference failed for: r15v21 */
        /* JADX WARN: Type inference failed for: r15v22 */
        /* JADX WARN: Type inference failed for: r15v30 */
        /* JADX WARN: Type inference failed for: r15v31 */
        /* JADX WARN: Type inference failed for: r15v33 */
        /* JADX WARN: Type inference failed for: r15v35 */
        /* JADX WARN: Type inference failed for: r15v58 */
        /* JADX WARN: Type inference failed for: r15v59, types: [com.mgtv.downloader.util.c$a] */
        /* JADX WARN: Type inference failed for: r15v60 */
        /* JADX WARN: Type inference failed for: r2v109, types: [java.lang.String] */
        /* JADX WARN: Type inference failed for: r2v80 */
        /* JADX WARN: Type inference failed for: r2v82 */
        /* JADX WARN: Type inference failed for: r33v13 */
        /* JADX WARN: Type inference failed for: r33v14 */
        /* JADX WARN: Type inference failed for: r33v19 */
        /* JADX WARN: Type inference failed for: r33v2 */
        /* JADX WARN: Type inference failed for: r33v21 */
        /* JADX WARN: Type inference failed for: r33v22 */
        /* JADX WARN: Type inference failed for: r33v27 */
        /* JADX WARN: Type inference failed for: r33v3 */
        /* JADX WARN: Type inference failed for: r33v4 */
        /* JADX WARN: Type inference failed for: r33v5 */
        /* JADX WARN: Type inference failed for: r33v6 */
        /* JADX WARN: Type inference failed for: r33v7 */
        /* JADX WARN: Type inference failed for: r34v0 */
        /* JADX WARN: Type inference failed for: r34v1 */
        /* JADX WARN: Type inference failed for: r34v10 */
        /* JADX WARN: Type inference failed for: r34v11 */
        /* JADX WARN: Type inference failed for: r34v12 */
        /* JADX WARN: Type inference failed for: r34v13 */
        /* JADX WARN: Type inference failed for: r34v14 */
        /* JADX WARN: Type inference failed for: r34v15 */
        /* JADX WARN: Type inference failed for: r34v16 */
        /* JADX WARN: Type inference failed for: r34v17 */
        /* JADX WARN: Type inference failed for: r34v18 */
        /* JADX WARN: Type inference failed for: r34v19 */
        /* JADX WARN: Type inference failed for: r34v2 */
        /* JADX WARN: Type inference failed for: r34v20 */
        /* JADX WARN: Type inference failed for: r34v21 */
        /* JADX WARN: Type inference failed for: r34v22 */
        /* JADX WARN: Type inference failed for: r34v3 */
        /* JADX WARN: Type inference failed for: r34v4 */
        /* JADX WARN: Type inference failed for: r34v5, types: [java.io.InputStream] */
        /* JADX WARN: Type inference failed for: r34v6 */
        /* JADX WARN: Type inference failed for: r34v7 */
        /* JADX WARN: Type inference failed for: r34v8 */
        /* JADX WARN: Type inference failed for: r34v9 */
        /* JADX WARN: Type inference failed for: r37v10 */
        /* JADX WARN: Type inference failed for: r37v11 */
        /* JADX WARN: Type inference failed for: r37v12 */
        /* JADX WARN: Type inference failed for: r37v13 */
        /* JADX WARN: Type inference failed for: r37v14 */
        /* JADX WARN: Type inference failed for: r37v15 */
        /* JADX WARN: Type inference failed for: r37v16 */
        /* JADX WARN: Type inference failed for: r37v17 */
        /* JADX WARN: Type inference failed for: r37v18 */
        /* JADX WARN: Type inference failed for: r37v19 */
        /* JADX WARN: Type inference failed for: r37v2 */
        /* JADX WARN: Type inference failed for: r37v20 */
        /* JADX WARN: Type inference failed for: r37v21 */
        /* JADX WARN: Type inference failed for: r37v22 */
        /* JADX WARN: Type inference failed for: r37v23 */
        /* JADX WARN: Type inference failed for: r37v24 */
        /* JADX WARN: Type inference failed for: r37v25 */
        /* JADX WARN: Type inference failed for: r37v26 */
        /* JADX WARN: Type inference failed for: r37v3 */
        /* JADX WARN: Type inference failed for: r37v4, types: [java.net.HttpURLConnection] */
        /* JADX WARN: Type inference failed for: r37v5 */
        /* JADX WARN: Type inference failed for: r37v6 */
        /* JADX WARN: Type inference failed for: r37v7, types: [java.net.HttpURLConnection] */
        /* JADX WARN: Type inference failed for: r37v8 */
        /* JADX WARN: Type inference failed for: r37v9 */
        /* JADX WARN: Type inference failed for: r3v108 */
        /* JADX WARN: Type inference failed for: r3v109 */
        /* JADX WARN: Type inference failed for: r3v110 */
        /* JADX WARN: Type inference failed for: r3v37, types: [java.lang.StringBuilder] */
        /* JADX WARN: Type inference failed for: r3v60 */
        /* JADX WARN: Type inference failed for: r3v61 */
        /* JADX WARN: Type inference failed for: r3v66 */
        /* JADX WARN: Type inference failed for: r3v67 */
        /* JADX WARN: Type inference failed for: r3v68, types: [java.lang.String] */
        /* JADX WARN: Type inference failed for: r3v73, types: [java.lang.String] */
        /* JADX WARN: Type inference failed for: r4v17, types: [java.lang.String] */
        /* JADX WARN: Type inference failed for: r4v18 */
        /* JADX WARN: Type inference failed for: r4v19 */
        /* JADX WARN: Type inference failed for: r4v20, types: [com.mgtv.downloader.util.c$a] */
        /* JADX WARN: Type inference failed for: r4v26 */
        /* JADX WARN: Type inference failed for: r4v27, types: [java.lang.String] */
        /* JADX WARN: Type inference failed for: r4v28 */
        /* JADX WARN: Type inference failed for: r4v29 */
        /* JADX WARN: Type inference failed for: r4v3, types: [com.mgtv.downloader.util.c$a] */
        /* JADX WARN: Type inference failed for: r4v30, types: [java.lang.String] */
        /* JADX WARN: Type inference failed for: r4v31 */
        /* JADX WARN: Type inference failed for: r4v32 */
        /* JADX WARN: Type inference failed for: r4v33 */
        /* JADX WARN: Type inference failed for: r4v34 */
        /* JADX WARN: Type inference failed for: r4v35 */
        /* JADX WARN: Type inference failed for: r4v36 */
        /* JADX WARN: Type inference failed for: r4v37 */
        /* JADX WARN: Type inference failed for: r4v38, types: [com.mgtv.downloader.util.c$a] */
        /* JADX WARN: Type inference failed for: r4v39 */
        /* JADX WARN: Type inference failed for: r4v40 */
        /* JADX WARN: Type inference failed for: r4v42 */
        /* JADX WARN: Type inference failed for: r4v44 */
        /* JADX WARN: Type inference failed for: r4v57, types: [java.lang.StringBuilder] */
        /* JADX WARN: Type inference failed for: r4v62 */
        /* JADX WARN: Type inference failed for: r4v63 */
        /* JADX WARN: Type inference failed for: r4v64 */
        /* JADX WARN: Type inference failed for: r4v7, types: [java.net.URLConnection] */
        /* JADX WARN: Type inference failed for: r4v70 */
        /* JADX WARN: Type inference failed for: r4v71 */
        /* JADX WARN: Type inference failed for: r4v72 */
        /* JADX WARN: Type inference failed for: r4v73 */
        /* JADX WARN: Type inference failed for: r4v74 */
        /* JADX WARN: Type inference failed for: r4v75 */
        /* JADX WARN: Type inference failed for: r4v76 */
        /* JADX WARN: Type inference failed for: r4v77 */
        /* JADX WARN: Type inference failed for: r5v22, types: [int] */
        /* JADX WARN: Type inference failed for: r5v23 */
        /* JADX WARN: Type inference failed for: r5v24, types: [java.lang.String] */
        /* JADX WARN: Type inference failed for: r5v25 */
        /* JADX WARN: Type inference failed for: r5v26 */
        /* JADX WARN: Type inference failed for: r5v27, types: [java.lang.String] */
        /* JADX WARN: Type inference failed for: r5v39 */
        /* JADX WARN: Type inference failed for: r5v40 */
        /* JADX WARN: Type inference failed for: r5v43 */
        /* JADX WARN: Type inference failed for: r5v44 */
        /* JADX WARN: Type inference failed for: r5v45, types: [java.io.InputStream] */
        /* JADX WARN: Type inference failed for: r5v46 */
        /* JADX WARN: Type inference failed for: r5v47 */
        /* JADX WARN: Type inference failed for: r5v48 */
        /* JADX WARN: Type inference failed for: r5v49 */
        /* JADX WARN: Type inference failed for: r5v50 */
        /* JADX WARN: Type inference failed for: r5v51, types: [java.io.InputStream] */
        /* JADX WARN: Type inference failed for: r5v52 */
        /* JADX WARN: Type inference failed for: r5v53 */
        /* JADX WARN: Type inference failed for: r5v54 */
        /* JADX WARN: Type inference failed for: r5v55 */
        /* JADX WARN: Type inference failed for: r5v61 */
        /* JADX WARN: Type inference failed for: r5v62 */
        /* JADX WARN: Type inference failed for: r5v68 */
        /* JADX WARN: Type inference failed for: r5v69 */
        /* JADX WARN: Type inference failed for: r5v70 */
        /* JADX WARN: Type inference failed for: r5v71 */
        /* JADX WARN: Type inference failed for: r5v72 */
        /* JADX WARN: Type inference failed for: r5v73 */
        /* JADX WARN: Type inference failed for: r5v74 */
        /* JADX WARN: Type inference failed for: r5v75 */
        /* JADX WARN: Type inference failed for: r6v40, types: [java.lang.StringBuilder] */
        /* JADX WARN: Type inference failed for: r7v11 */
        /* JADX WARN: Type inference failed for: r7v13 */
        /* JADX WARN: Type inference failed for: r7v14, types: [java.lang.String] */
        /* JADX WARN: Type inference failed for: r7v15 */
        /* JADX WARN: Type inference failed for: r7v20 */
        /* JADX WARN: Type inference failed for: r7v21 */
        /* JADX WARN: Type inference failed for: r7v22 */
        /* JADX WARN: Type inference failed for: r7v24 */
        /* JADX WARN: Type inference failed for: r7v25 */
        /* JADX WARN: Type inference failed for: r7v26 */
        /* JADX WARN: Type inference failed for: r7v29, types: [java.net.HttpURLConnection] */
        /* JADX WARN: Type inference failed for: r7v30 */
        /* JADX WARN: Type inference failed for: r7v32 */
        /* JADX WARN: Type inference failed for: r7v35 */
        /* JADX WARN: Type inference failed for: r7v39 */
        /* JADX WARN: Type inference failed for: r7v42 */
        /* JADX WARN: Type inference failed for: r7v43 */
        /* JADX WARN: Type inference failed for: r7v44 */
        /* JADX WARN: Type inference failed for: r7v45 */
        /* JADX WARN: Type inference failed for: r7v46 */
        /* JADX WARN: Type inference failed for: r7v47 */
        /* JADX WARN: Type inference failed for: r7v7 */
        /* JADX WARN: Type inference failed for: r7v8, types: [java.net.URLConnection] */
        private int b(int i, int i2) throws Throwable {
            IOException iOException;
            long j;
            ?? r33;
            long j2;
            ?? r34;
            ?? r35;
            ?? r36;
            long j3;
            Throwable th;
            ?? r15;
            String str;
            ?? r37;
            ?? r7;
            ?? r5;
            ?? r4;
            StringBuilder sb;
            String str2;
            long j4;
            ?? r6;
            ?? r8;
            ?? r38;
            String str3;
            String str4;
            Exception exc;
            ?? r39;
            String str5;
            String str6;
            String strA;
            Throwable th2;
            StringBuilder sb2;
            String str7;
            ?? r9;
            ?? r10;
            ?? r16;
            ?? r11;
            ?? r12;
            ?? r310;
            String str8;
            ?? r13;
            String str9;
            String str10;
            ?? r14;
            ?? inputStream;
            ?? r17;
            ?? r311;
            ?? r18;
            ?? r312;
            String str11;
            String str12;
            byte[] bArr;
            long jCurrentTimeMillis;
            long j5;
            Long l;
            ?? r19;
            ?? r3;
            Throwable th3;
            String str13;
            ?? r20;
            StringBuilder sb3;
            ?? r21;
            int i3;
            String str14;
            ?? r313;
            String str15;
            long j6;
            long jCurrentTimeMillis2;
            String str16 = HttpHeaders.HEAD_KEY_CONTENT_RANGE;
            String str17 = "errmsg=";
            String str18 = "&ft=mp4";
            String str19 = ", download file end";
            Long lD = a.this.a.d();
            Long l2 = 0L;
            int i4 = 1;
            if (lD.longValue() > 0 && a.this.a.e().longValue() > 0 && lD.longValue() >= a.this.a.e().longValue()) {
                c.a("taskID: " + a.this.b + ", video already downloaded, return ");
                return 1;
            }
            boolean z = !TextUtils.isEmpty(a.this.a.j());
            String strB = a.this.a.b();
            long jCurrentTimeMillis3 = System.currentTimeMillis();
            int iA = a();
            if (1 != iA) {
                a.this.a(-1, strB, "340001", "&ft=mp4", -1L, i, i2, z, 200, jCurrentTimeMillis3, "");
                return iA;
            }
            c.a aVar = new c.a();
            try {
                HttpURLConnection httpURLConnectionA = a(strB);
                int responseCode = httpURLConnectionA.getResponseCode();
                while (true) {
                    String headerFieldKey = httpURLConnectionA.getHeaderFieldKey(i4);
                    if (headerFieldKey != null) {
                        try {
                            if (headerFieldKey.equals("Content-Length")) {
                                j2 = Long.parseLong(httpURLConnectionA.getHeaderField(headerFieldKey));
                                break;
                            }
                        } catch (IOException e) {
                            iOException = e;
                            j = 0;
                            r33 = aVar;
                        }
                    }
                    if (headerFieldKey == null) {
                        j2 = 0;
                        break;
                    }
                    httpURLConnectionA = httpURLConnectionA;
                    str19 = str19;
                    i4++;
                    str16 = str16;
                }
                try {
                    com.mgtv.downloader.net.entity.a aVar2 = a.this.a;
                    str17 = "errmsg=";
                    try {
                        String str20 = str19;
                        aVar2.i(String.format("%s", Long.valueOf(j2 + aVar2.d().longValue())));
                        String str21 = String.format("Total=%d&Range_bytes=%d-&ContentLength=%d", l2, a.this.a.d(), Long.valueOf(j2));
                        ?? r314 = "ms";
                        int responseCode2 = responseCode;
                        ?? r22 = httpURLConnectionA;
                        String str22 = "close time= ";
                        aVar = aVar;
                        while (true) {
                            String str23 = str22;
                            l2 = l2;
                            if (responseCode2 != 302 && responseCode2 != 301) {
                                StringBuilder sb4 = new StringBuilder();
                                ?? r315 = "DownloadSDK_1.8.0";
                                sb4.append(a.this.a.d());
                                sb4.append("-");
                                aVar.b = sb4.toString();
                                ?? headerField = r22.getHeaderField(str16);
                                aVar.c = headerField == 0 ? "" : r22.getHeaderField(str16);
                                aVar.a = j2 + "";
                                aVar.d = responseCode2 + "";
                                try {
                                    if (responseCode2 != 200 && responseCode2 != 206) {
                                        try {
                                            a aVar3 = a.this;
                                            aVar3.d(aVar3.a.b());
                                            a.this.a(-1, strB, YFP2pLoader.P2P_LOAD_ERROR_FAIL + String.valueOf(responseCode2), str21 + str18, j2, i, i2, z, responseCode2, jCurrentTimeMillis3, "");
                                            c.a("taskID: " + a.this.b + ", getting length, got illegal response code: " + responseCode2);
                                            return -3;
                                        } catch (IOException e2) {
                                            e = e2;
                                            headerField = aVar;
                                        }
                                    } else {
                                        headerField = aVar;
                                        try {
                                            long jLongValue = a.this.a.e().longValue();
                                            if (jLongValue < 51200) {
                                                if (j2 < 51200) {
                                                    a aVar4 = a.this;
                                                    aVar4.d(aVar4.a.b());
                                                    a.this.a(-1, strB, "305001", "&ft=mp4", j2, i, i2, z, responseCode2, jCurrentTimeMillis3, "");
                                                    String str24 = "responseMsg: " + r22.getHeaderFields().toString();
                                                    a aVar5 = a.this;
                                                    c.a(str24, headerField, aVar5.a, aVar5.n);
                                                    a aVar6 = a.this;
                                                    c.a("Content-Length too small: " + j2, headerField, aVar6.a, aVar6.n);
                                                    return -3;
                                                }
                                                a.this.a.a(l2);
                                                a.this.a.b(Long.valueOf(j2));
                                                j3 = j2;
                                            } else {
                                                if (a.this.a.e().longValue() != a.this.a.d().longValue() + j2) {
                                                    a aVar7 = a.this;
                                                    aVar7.d(aVar7.a.b());
                                                    a.this.a(-1, strB, "305002", "&ft=mp4", j2, i, i2, z, responseCode2, jCurrentTimeMillis3, "");
                                                    String str25 = "invalid file length, stop, totalSize: " + a.this.a.e() + ", CompleteSize: " + a.this.a.d() + ", contentLength: " + j2;
                                                    a aVar8 = a.this;
                                                    c.a(str25, headerField, aVar8.a, aVar8.n);
                                                    try {
                                                        a.this.a.a(l2);
                                                        a.this.a.b(l2);
                                                        if (a.this.v != null) {
                                                            a.this.v.a(a.this.b, a.this.a, "");
                                                        }
                                                    } catch (Exception e3) {
                                                        e3.printStackTrace();
                                                    }
                                                    return -3;
                                                }
                                                j3 = jLongValue;
                                            }
                                            if (!b()) {
                                                a.this.a(-1, strB, "340002", "&ft=mp4", -1L, i, i2, z, 200, jCurrentTimeMillis3, "");
                                                return -2;
                                            }
                                            try {
                                                if (a.this.a.c().endsWith("/hls")) {
                                                    a.this.a(0, strB, "340005", "&ft=mp4", -1L, 1, i2, z, 200, jCurrentTimeMillis3, "");
                                                    return -1;
                                                }
                                                RandomAccessFile randomAccessFile = new RandomAccessFile(new File(a.this.a.c()), "rw");
                                                ?? IntValue = a.this.a.f().intValue();
                                                try {
                                                    if (IntValue != 1) {
                                                        a.this.a(0, strB, "340003", "&ft=mp4", -1L, 1, i2, z, 200, jCurrentTimeMillis3, "");
                                                        try {
                                                            randomAccessFile.close();
                                                        } catch (IOException unused) {
                                                        }
                                                        c.a("taskID: " + a.this.b + ", switching to pause after open local file, status: " + a.this.a.f());
                                                        return -5;
                                                    }
                                                    try {
                                                        try {
                                                            Long lD2 = a.this.a.d();
                                                            StringBuilder sb5 = new StringBuilder();
                                                            sb5.append("taskID: ");
                                                            str2 = str18;
                                                            try {
                                                                sb5.append(a.this.b);
                                                                sb5.append(", begin seek file to ");
                                                                sb5.append(lD2);
                                                                c.a(sb5.toString());
                                                                randomAccessFile.seek(lD2.longValue());
                                                                c.a("taskID: " + a.this.b + ", begin read stream from connection");
                                                                j4 = j2;
                                                                try {
                                                                    a.this.a.a((Integer) 1);
                                                                    a.this.a.b((Integer) 0);
                                                                    if (a.this.v != null) {
                                                                        try {
                                                                            a.this.v.a(a.this.b, a.this.a, "");
                                                                            inputStream = r22.getInputStream();
                                                                            try {
                                                                                bArr = new byte[4096];
                                                                                long jCurrentTimeMillis4 = System.currentTimeMillis();
                                                                                long jLongValue2 = lD2.longValue();
                                                                                a.this.q = true;
                                                                                String str26 = "taskID: " + a.this.b + ", STREAM START: " + f.a(System.currentTimeMillis());
                                                                                a aVar9 = a.this;
                                                                                c.a(str26, headerField, aVar9.a, aVar9.n);
                                                                                jCurrentTimeMillis = jCurrentTimeMillis4;
                                                                                j5 = jLongValue2;
                                                                                l = lD2;
                                                                                r19 = headerField;
                                                                                inputStream = inputStream;
                                                                                r22 = r22;
                                                                                str20 = str20;
                                                                                r314 = r314;
                                                                                str23 = str23;
                                                                                r315 = r315;
                                                                                while (true) {
                                                                                    try {
                                                                                        if (this.b) {
                                                                                            c.a("taskID: " + a.this.b + ", download break - thread stoped");
                                                                                        } else if (a.this.a.f().intValue() != 1) {
                                                                                            c.a("taskID: " + a.this.b + ", download break - mission changed");
                                                                                        } else {
                                                                                            if (l.longValue() >= j3) {
                                                                                                c.a("taskID: " + a.this.b + ", download break - already completed");
                                                                                                a.this.a.a((Integer) 4);
                                                                                            } else {
                                                                                                i3 = inputStream.read(bArr);
                                                                                                if (i3 == -1) {
                                                                                                    str14 = str23;
                                                                                                    str23 = str20;
                                                                                                    ?? r316 = r19;
                                                                                                    headerField = r314;
                                                                                                    r314 = inputStream;
                                                                                                    IntValue = r315;
                                                                                                    try {
                                                                                                        r313 = r22;
                                                                                                        str15 = str14;
                                                                                                        try {
                                                                                                            a.this.a(0, strB, "", "&ft=mp4", j4, 1, i2, z, 200, jCurrentTimeMillis3, "");
                                                                                                            randomAccessFile.write(bArr, 0, i3);
                                                                                                            long jLongValue3 = l.longValue();
                                                                                                            byte[] bArr2 = bArr;
                                                                                                            j6 = jLongValue3 + ((long) i3);
                                                                                                            Long lValueOf = Long.valueOf(j6);
                                                                                                            a.this.a.a(lValueOf);
                                                                                                            if (a.this.a.d().longValue() >= j3) {
                                                                                                                a.this.a.a(Long.valueOf(j3));
                                                                                                            }
                                                                                                            long j7 = j3;
                                                                                                            jCurrentTimeMillis2 = System.currentTimeMillis() - jCurrentTimeMillis;
                                                                                                            if (jCurrentTimeMillis2 >= 1000) {
                                                                                                                int i5 = (int) ((j6 - j5) / jCurrentTimeMillis2);
                                                                                                                c.a("taskID: " + a.this.b + ", mp4 downloading, taskID: " + a.this.b + ", videoID: " + a.this.a.a() + ", " + a.this.a.d() + "/" + a.this.a.e() + ", speed: " + i5 + "KB/S");
                                                                                                                a.this.a.b(Integer.valueOf(i5));
                                                                                                                if (a.this.v != null) {
                                                                                                                    a.this.v.a(a.this.b, a.this.a, "");
                                                                                                                }
                                                                                                                jCurrentTimeMillis = System.currentTimeMillis();
                                                                                                                j5 = j6;
                                                                                                            }
                                                                                                            bArr = bArr2;
                                                                                                            l = lValueOf;
                                                                                                            j3 = j7;
                                                                                                            r314 = headerField;
                                                                                                            r19 = r316;
                                                                                                            str20 = str23;
                                                                                                            str23 = str15;
                                                                                                            r22 = r313;
                                                                                                            r315 = IntValue;
                                                                                                            inputStream = r314;
                                                                                                        } catch (Exception e4) {
                                                                                                            e = e4;
                                                                                                            r17 = headerField;
                                                                                                            r18 = IntValue;
                                                                                                            str11 = str15;
                                                                                                            r311 = r314;
                                                                                                            str12 = str23;
                                                                                                            r312 = r313;
                                                                                                        }
                                                                                                    } catch (Exception e5) {
                                                                                                        e = e5;
                                                                                                        r312 = r22;
                                                                                                        str11 = str14;
                                                                                                        r17 = headerField;
                                                                                                        r18 = IntValue;
                                                                                                        r311 = r314;
                                                                                                        str12 = str23;
                                                                                                    } catch (Throwable th4) {
                                                                                                        th = th4;
                                                                                                        r315 = r22;
                                                                                                        r22 = str14;
                                                                                                        th = th;
                                                                                                        r15 = r314;
                                                                                                        str = str23;
                                                                                                        r4 = headerField;
                                                                                                        r5 = IntValue;
                                                                                                        r7 = r22;
                                                                                                        r37 = r315;
                                                                                                        if (a.this.v != null) {
                                                                                                            a.this.v.a(a.this.b, a.this.a, "");
                                                                                                        }
                                                                                                        long jCurrentTimeMillis5 = System.currentTimeMillis();
                                                                                                        if (r15 != 0) {
                                                                                                            r15.close();
                                                                                                        }
                                                                                                        ?? sb6 = new StringBuilder();
                                                                                                        sb6.append(r7);
                                                                                                        sb6.append(System.currentTimeMillis() - jCurrentTimeMillis5);
                                                                                                        sb6.append(r4);
                                                                                                        n.c(r5, sb6.toString());
                                                                                                        randomAccessFile.close();
                                                                                                        r37.disconnect();
                                                                                                        sb = new StringBuilder();
                                                                                                        sb.append("taskID: ");
                                                                                                        sb.append(a.this.b);
                                                                                                        sb.append(str);
                                                                                                        String string = sb.toString();
                                                                                                        throw th;
                                                                                                    }
                                                                                                } else {
                                                                                                    try {
                                                                                                        c.a("taskID: " + a.this.b + ", download break - no more input stream");
                                                                                                        break;
                                                                                                    } catch (Exception e6) {
                                                                                                        e = e6;
                                                                                                        ?? r2 = r314;
                                                                                                        String str27 = str23;
                                                                                                        ?? r23 = r315;
                                                                                                        str12 = str20;
                                                                                                        r311 = inputStream;
                                                                                                        r312 = r22;
                                                                                                        str11 = str27;
                                                                                                        r17 = r2;
                                                                                                        r18 = r23;
                                                                                                    } catch (Throwable th5) {
                                                                                                        ?? r24 = r315;
                                                                                                        str = str20;
                                                                                                        r37 = r22;
                                                                                                        r7 = str23;
                                                                                                        r4 = r314;
                                                                                                        r15 = inputStream;
                                                                                                        th = th5;
                                                                                                        r5 = r24;
                                                                                                    }
                                                                                                }
                                                                                            }
                                                                                            exc = e;
                                                                                            r6 = r17;
                                                                                            r8 = r18;
                                                                                            str3 = str11;
                                                                                            r39 = r311;
                                                                                            str4 = str12;
                                                                                            r38 = r312;
                                                                                            try {
                                                                                                a aVar10 = a.this;
                                                                                                aVar10.d(aVar10.a.b());
                                                                                                c.a("taskID: " + a.this.b + ", Exception error: " + exc.getMessage());
                                                                                                if (a.this.o) {
                                                                                                    str5 = "99.2000";
                                                                                                } else {
                                                                                                    str5 = "33.2000";
                                                                                                }
                                                                                                str6 = str5;
                                                                                                strA = a.this.a(exc);
                                                                                                if (strA.contains("No+space+left+on+device") && !strA.contains("No space left on device")) {
                                                                                                    if (strA.contains("write+failed") || strA.contains("write failed")) {
                                                                                                        a.this.a.a((Integer) 8);
                                                                                                        if (a.this.v != null) {
                                                                                                            a.this.p();
                                                                                                            a.this.v.a(a.this.b, a.this.a, 4, "");
                                                                                                        }
                                                                                                    }
                                                                                                } else {
                                                                                                    a.this.a.a((Integer) 8);
                                                                                                    if (a.this.v != null) {
                                                                                                        a.this.p();
                                                                                                        a.this.v.a(a.this.b, a.this.a, 1, "");
                                                                                                    }
                                                                                                }
                                                                                                if (a.this.o) {
                                                                                                    a.this.c(1, strB, str6, str17 + exc.getMessage() + str2, j4, i, i2, z, 200, jCurrentTimeMillis3, "");
                                                                                                } else {
                                                                                                    String str28 = str17;
                                                                                                    String str29 = str2;
                                                                                                    a.this.a(-1, strB, str6, str28 + exc.getMessage() + str29, j4, i, i2, z, 200, jCurrentTimeMillis3, "");
                                                                                                }
                                                                                                StringBuilder sb7 = new StringBuilder();
                                                                                                sb7.append("taskID: ");
                                                                                                sb7.append(a.this.b);
                                                                                                sb7.append(", download file error: ");
                                                                                                if (exc.getMessage() != null) {
                                                                                                    strA = exc.getMessage();
                                                                                                }
                                                                                                sb7.append(strA);
                                                                                                c.a(sb7.toString());
                                                                                                try {
                                                                                                    try {
                                                                                                        if (a.this.v != null) {
                                                                                                            try {
                                                                                                                a.this.v.a(a.this.b, a.this.a, "");
                                                                                                            } catch (Throwable th6) {
                                                                                                                th2 = th6;
                                                                                                                c.a("taskID: " + a.this.b + str4);
                                                                                                                throw th2;
                                                                                                            }
                                                                                                        }
                                                                                                        long jCurrentTimeMillis6 = System.currentTimeMillis();
                                                                                                        if (r39 != 0) {
                                                                                                            r39.close();
                                                                                                        }
                                                                                                        n.c(r8, str3 + (System.currentTimeMillis() - jCurrentTimeMillis6) + r6);
                                                                                                        randomAccessFile.close();
                                                                                                        r38.disconnect();
                                                                                                        StringBuilder sb8 = new StringBuilder();
                                                                                                        sb8.append("taskID: ");
                                                                                                        sb8.append(a.this.b);
                                                                                                        sb2 = sb8;
                                                                                                    } catch (Throwable th7) {
                                                                                                        th2 = th7;
                                                                                                    }
                                                                                                } catch (Exception unused2) {
                                                                                                    StringBuilder sb9 = new StringBuilder();
                                                                                                    sb9.append("taskID: ");
                                                                                                    sb9.append(a.this.b);
                                                                                                    sb2 = sb9;
                                                                                                }
                                                                                                sb2.append(str4);
                                                                                                c.a(sb2.toString());
                                                                                                return -3;
                                                                                            } catch (Throwable th8) {
                                                                                                str = str4;
                                                                                                th = th8;
                                                                                                r15 = r39;
                                                                                                r4 = r6;
                                                                                                r5 = r8;
                                                                                                r7 = str3;
                                                                                                r37 = r38;
                                                                                            }
                                                                                        }
                                                                                        break;
                                                                                    } catch (Exception e7) {
                                                                                        exc = e7;
                                                                                        r11 = r314;
                                                                                        r310 = inputStream;
                                                                                        r12 = r315;
                                                                                        r14 = r22;
                                                                                        str10 = str20;
                                                                                        str9 = str23;
                                                                                        r38 = r14;
                                                                                        str3 = str9;
                                                                                        str4 = str10;
                                                                                        r6 = r11;
                                                                                        r8 = r12;
                                                                                        r39 = r310;
                                                                                        a aVar11 = a.this;
                                                                                        aVar11.d(aVar11.a.b());
                                                                                        c.a("taskID: " + a.this.b + ", Exception error: " + exc.getMessage());
                                                                                        if (a.this.o) {
                                                                                            str5 = "99.2000";
                                                                                        } else {
                                                                                            str5 = "33.2000";
                                                                                        }
                                                                                        str6 = str5;
                                                                                        strA = a.this.a(exc);
                                                                                        if (strA.contains("No+space+left+on+device")) {
                                                                                            a.this.a.a((Integer) 8);
                                                                                            if (a.this.v != null) {
                                                                                                a.this.p();
                                                                                                a.this.v.a(a.this.b, a.this.a, 1, "");
                                                                                            }
                                                                                        } else {
                                                                                            a.this.a.a((Integer) 8);
                                                                                            if (a.this.v != null) {
                                                                                                a.this.p();
                                                                                                a.this.v.a(a.this.b, a.this.a, 1, "");
                                                                                            }
                                                                                        }
                                                                                        if (a.this.o) {
                                                                                            a.this.c(1, strB, str6, str17 + exc.getMessage() + str2, j4, i, i2, z, 200, jCurrentTimeMillis3, "");
                                                                                        } else {
                                                                                            String str210 = str17;
                                                                                            String str211 = str2;
                                                                                            a.this.a(-1, strB, str6, str210 + exc.getMessage() + str211, j4, i, i2, z, 200, jCurrentTimeMillis3, "");
                                                                                        }
                                                                                        StringBuilder sb10 = new StringBuilder();
                                                                                        sb10.append("taskID: ");
                                                                                        sb10.append(a.this.b);
                                                                                        sb10.append(", download file error: ");
                                                                                        if (exc.getMessage() != null) {
                                                                                            strA = exc.getMessage();
                                                                                        }
                                                                                        sb10.append(strA);
                                                                                        c.a(sb10.toString());
                                                                                        if (a.this.v != null) {
                                                                                            a.this.v.a(a.this.b, a.this.a, "");
                                                                                        }
                                                                                        long jCurrentTimeMillis7 = System.currentTimeMillis();
                                                                                        if (r39 != 0) {
                                                                                            r39.close();
                                                                                        }
                                                                                        n.c(r8, str3 + (System.currentTimeMillis() - jCurrentTimeMillis7) + r6);
                                                                                        randomAccessFile.close();
                                                                                        r38.disconnect();
                                                                                        StringBuilder sb11 = new StringBuilder();
                                                                                        sb11.append("taskID: ");
                                                                                        sb11.append(a.this.b);
                                                                                        sb2 = sb11;
                                                                                        sb2.append(str4);
                                                                                        c.a(sb2.toString());
                                                                                        return -3;
                                                                                    } catch (Throwable th9) {
                                                                                        th = th9;
                                                                                        r16 = inputStream;
                                                                                        str7 = str20;
                                                                                        r9 = r314;
                                                                                        r10 = r315;
                                                                                        r13 = r22;
                                                                                        str8 = str23;
                                                                                        r37 = r13;
                                                                                        r7 = str8;
                                                                                        r4 = r9;
                                                                                        r5 = r10;
                                                                                        str = str7;
                                                                                        r15 = r16;
                                                                                    }
                                                                                }
                                                                                String str30 = "STREAM END: " + f.a(System.currentTimeMillis());
                                                                                a aVar12 = a.this;
                                                                                c.a(str30, r19, aVar12.a, aVar12.n);
                                                                                try {
                                                                                    try {
                                                                                        if (a.this.v != null) {
                                                                                            try {
                                                                                                a.this.v.a(a.this.b, a.this.a, "");
                                                                                            } catch (Throwable th10) {
                                                                                                th3 = th10;
                                                                                                c.a("taskID: " + a.this.b + str20);
                                                                                                throw th3;
                                                                                            }
                                                                                        }
                                                                                        long jCurrentTimeMillis8 = System.currentTimeMillis();
                                                                                        if (inputStream != 0) {
                                                                                            inputStream.close();
                                                                                        }
                                                                                        r21 = r315;
                                                                                        try {
                                                                                            n.c(r21, str23 + (System.currentTimeMillis() - jCurrentTimeMillis8) + r314);
                                                                                            randomAccessFile.close();
                                                                                            r22.disconnect();
                                                                                            StringBuilder sb12 = new StringBuilder();
                                                                                            sb12.append("taskID: ");
                                                                                            sb12.append(a.this.b);
                                                                                            str13 = str20;
                                                                                            sb3 = sb12;
                                                                                            r20 = r21;
                                                                                        } catch (Exception unused3) {
                                                                                            r3 = r21;
                                                                                            StringBuilder sb13 = new StringBuilder();
                                                                                            sb13.append("taskID: ");
                                                                                            sb13.append(a.this.b);
                                                                                            sb3 = sb13;
                                                                                            r20 = r3;
                                                                                            str13 = str20;
                                                                                        }
                                                                                    } catch (Throwable th11) {
                                                                                        th3 = th11;
                                                                                    }
                                                                                } catch (Exception unused4) {
                                                                                    r3 = r315;
                                                                                }
                                                                                sb3.append(str13);
                                                                                c.a(sb3.toString());
                                                                                if (a.this.a.f().intValue() == 3 && a.this.a.f().intValue() != 2 && a.this.a.f().intValue() != 11) {
                                                                                    a(strB, i, i2, z, jCurrentTimeMillis3);
                                                                                    return 1;
                                                                                }
                                                                                n.c(r20, "download pause");
                                                                                return -5;
                                                                            } catch (Exception e8) {
                                                                                e = e8;
                                                                                r17 = r314;
                                                                                r311 = inputStream;
                                                                                r18 = r315;
                                                                                r312 = r22;
                                                                                str11 = str23;
                                                                                str12 = str20;
                                                                            } catch (Throwable th12) {
                                                                                th = th12;
                                                                                headerField = r314;
                                                                                r314 = inputStream;
                                                                                IntValue = r315;
                                                                                r315 = r22;
                                                                                r22 = str23;
                                                                                str23 = str20;
                                                                            }
                                                                        } catch (Exception e9) {
                                                                            exc = e9;
                                                                            r11 = r314;
                                                                            r12 = r315;
                                                                            r310 = 0;
                                                                            r14 = r22;
                                                                            str10 = str20;
                                                                            str9 = str23;
                                                                            r38 = r14;
                                                                            str3 = str9;
                                                                            str4 = str10;
                                                                            r6 = r11;
                                                                            r8 = r12;
                                                                            r39 = r310;
                                                                            a aVar13 = a.this;
                                                                            aVar13.d(aVar13.a.b());
                                                                            c.a("taskID: " + a.this.b + ", Exception error: " + exc.getMessage());
                                                                            if (a.this.o) {
                                                                                str5 = "99.2000";
                                                                            } else {
                                                                                str5 = "33.2000";
                                                                            }
                                                                            str6 = str5;
                                                                            strA = a.this.a(exc);
                                                                            if (strA.contains("No+space+left+on+device")) {
                                                                                a.this.a.a((Integer) 8);
                                                                                if (a.this.v != null) {
                                                                                    a.this.p();
                                                                                    a.this.v.a(a.this.b, a.this.a, 1, "");
                                                                                }
                                                                            } else {
                                                                                a.this.a.a((Integer) 8);
                                                                                if (a.this.v != null) {
                                                                                    a.this.p();
                                                                                    a.this.v.a(a.this.b, a.this.a, 1, "");
                                                                                }
                                                                            }
                                                                            if (a.this.o) {
                                                                                a.this.c(1, strB, str6, str17 + exc.getMessage() + str2, j4, i, i2, z, 200, jCurrentTimeMillis3, "");
                                                                            } else {
                                                                                String str212 = str17;
                                                                                String str213 = str2;
                                                                                a.this.a(-1, strB, str6, str212 + exc.getMessage() + str213, j4, i, i2, z, 200, jCurrentTimeMillis3, "");
                                                                            }
                                                                            StringBuilder sb14 = new StringBuilder();
                                                                            sb14.append("taskID: ");
                                                                            sb14.append(a.this.b);
                                                                            sb14.append(", download file error: ");
                                                                            if (exc.getMessage() != null) {
                                                                                strA = exc.getMessage();
                                                                            }
                                                                            sb14.append(strA);
                                                                            c.a(sb14.toString());
                                                                            if (a.this.v != null) {
                                                                                a.this.v.a(a.this.b, a.this.a, "");
                                                                            }
                                                                            long jCurrentTimeMillis9 = System.currentTimeMillis();
                                                                            if (r39 != 0) {
                                                                                r39.close();
                                                                            }
                                                                            n.c(r8, str3 + (System.currentTimeMillis() - jCurrentTimeMillis9) + r6);
                                                                            randomAccessFile.close();
                                                                            r38.disconnect();
                                                                            StringBuilder sb15 = new StringBuilder();
                                                                            sb15.append("taskID: ");
                                                                            sb15.append(a.this.b);
                                                                            sb2 = sb15;
                                                                            sb2.append(str4);
                                                                            c.a(sb2.toString());
                                                                            return -3;
                                                                        } catch (Throwable th13) {
                                                                            th = th13;
                                                                            str7 = str20;
                                                                            r9 = r314;
                                                                            r10 = r315;
                                                                            r16 = 0;
                                                                            r13 = r22;
                                                                            str8 = str23;
                                                                            r37 = r13;
                                                                            r7 = str8;
                                                                            r4 = r9;
                                                                            r5 = r10;
                                                                            str = str7;
                                                                            r15 = r16;
                                                                            if (a.this.v != null) {
                                                                                a.this.v.a(a.this.b, a.this.a, "");
                                                                            }
                                                                            long jCurrentTimeMillis10 = System.currentTimeMillis();
                                                                            if (r15 != 0) {
                                                                                r15.close();
                                                                            }
                                                                            ?? sb16 = new StringBuilder();
                                                                            sb16.append(r7);
                                                                            sb16.append(System.currentTimeMillis() - jCurrentTimeMillis10);
                                                                            sb16.append(r4);
                                                                            n.c(r5, sb16.toString());
                                                                            randomAccessFile.close();
                                                                            r37.disconnect();
                                                                            sb = new StringBuilder();
                                                                            sb.append("taskID: ");
                                                                            sb.append(a.this.b);
                                                                            sb.append(str);
                                                                            String string2 = sb.toString();
                                                                            throw th;
                                                                        }
                                                                    } else {
                                                                        inputStream = r22.getInputStream();
                                                                        bArr = new byte[4096];
                                                                        long jCurrentTimeMillis11 = System.currentTimeMillis();
                                                                        long jLongValue4 = lD2.longValue();
                                                                        a.this.q = true;
                                                                        String str214 = "taskID: " + a.this.b + ", STREAM START: " + f.a(System.currentTimeMillis());
                                                                        a aVar14 = a.this;
                                                                        c.a(str214, headerField, aVar14.a, aVar14.n);
                                                                        jCurrentTimeMillis = jCurrentTimeMillis11;
                                                                        j5 = jLongValue4;
                                                                        l = lD2;
                                                                        r19 = headerField;
                                                                        inputStream = inputStream;
                                                                        r22 = r22;
                                                                        str20 = str20;
                                                                        r314 = r314;
                                                                        str23 = str23;
                                                                        r315 = r315;
                                                                        while (true) {
                                                                            if (this.b) {
                                                                                c.a("taskID: " + a.this.b + ", download break - thread stoped");
                                                                            } else if (a.this.a.f().intValue() != 1) {
                                                                                c.a("taskID: " + a.this.b + ", download break - mission changed");
                                                                            } else {
                                                                                if (l.longValue() >= j3) {
                                                                                    c.a("taskID: " + a.this.b + ", download break - already completed");
                                                                                    a.this.a.a((Integer) 4);
                                                                                } else {
                                                                                    i3 = inputStream.read(bArr);
                                                                                    if (i3 == -1) {
                                                                                        str14 = str23;
                                                                                        str23 = str20;
                                                                                        ?? r317 = r19;
                                                                                        headerField = r314;
                                                                                        r314 = inputStream;
                                                                                        IntValue = r315;
                                                                                        r313 = r22;
                                                                                        str15 = str14;
                                                                                        a.this.a(0, strB, "", "&ft=mp4", j4, 1, i2, z, 200, jCurrentTimeMillis3, "");
                                                                                        randomAccessFile.write(bArr, 0, i3);
                                                                                        long jLongValue5 = l.longValue();
                                                                                        byte[] bArr3 = bArr;
                                                                                        j6 = jLongValue5 + ((long) i3);
                                                                                        Long lValueOf2 = Long.valueOf(j6);
                                                                                        a.this.a.a(lValueOf2);
                                                                                        if (a.this.a.d().longValue() >= j3) {
                                                                                            a.this.a.a(Long.valueOf(j3));
                                                                                        }
                                                                                        long j8 = j3;
                                                                                        jCurrentTimeMillis2 = System.currentTimeMillis() - jCurrentTimeMillis;
                                                                                        if (jCurrentTimeMillis2 >= 1000) {
                                                                                            int i6 = (int) ((j6 - j5) / jCurrentTimeMillis2);
                                                                                            c.a("taskID: " + a.this.b + ", mp4 downloading, taskID: " + a.this.b + ", videoID: " + a.this.a.a() + ", " + a.this.a.d() + "/" + a.this.a.e() + ", speed: " + i6 + "KB/S");
                                                                                            a.this.a.b(Integer.valueOf(i6));
                                                                                            if (a.this.v != null) {
                                                                                                a.this.v.a(a.this.b, a.this.a, "");
                                                                                            }
                                                                                            jCurrentTimeMillis = System.currentTimeMillis();
                                                                                            j5 = j6;
                                                                                        }
                                                                                        bArr = bArr3;
                                                                                        l = lValueOf2;
                                                                                        j3 = j8;
                                                                                        r314 = headerField;
                                                                                        r19 = r317;
                                                                                        str20 = str23;
                                                                                        str23 = str15;
                                                                                        r22 = r313;
                                                                                        r315 = IntValue;
                                                                                        inputStream = r314;
                                                                                    } else {
                                                                                        c.a("taskID: " + a.this.b + ", download break - no more input stream");
                                                                                        break;
                                                                                    }
                                                                                }
                                                                                exc = e;
                                                                                r6 = r17;
                                                                                r8 = r18;
                                                                                str3 = str11;
                                                                                r39 = r311;
                                                                                str4 = str12;
                                                                                r38 = r312;
                                                                                a aVar15 = a.this;
                                                                                aVar15.d(aVar15.a.b());
                                                                                c.a("taskID: " + a.this.b + ", Exception error: " + exc.getMessage());
                                                                                if (a.this.o) {
                                                                                    str5 = "99.2000";
                                                                                } else {
                                                                                    str5 = "33.2000";
                                                                                }
                                                                                str6 = str5;
                                                                                strA = a.this.a(exc);
                                                                                if (strA.contains("No+space+left+on+device")) {
                                                                                    a.this.a.a((Integer) 8);
                                                                                    if (a.this.v != null) {
                                                                                        a.this.p();
                                                                                        a.this.v.a(a.this.b, a.this.a, 1, "");
                                                                                    }
                                                                                } else {
                                                                                    a.this.a.a((Integer) 8);
                                                                                    if (a.this.v != null) {
                                                                                        a.this.p();
                                                                                        a.this.v.a(a.this.b, a.this.a, 1, "");
                                                                                    }
                                                                                }
                                                                                if (a.this.o) {
                                                                                    a.this.c(1, strB, str6, str17 + exc.getMessage() + str2, j4, i, i2, z, 200, jCurrentTimeMillis3, "");
                                                                                } else {
                                                                                    String str215 = str17;
                                                                                    String str216 = str2;
                                                                                    a.this.a(-1, strB, str6, str215 + exc.getMessage() + str216, j4, i, i2, z, 200, jCurrentTimeMillis3, "");
                                                                                }
                                                                                StringBuilder sb17 = new StringBuilder();
                                                                                sb17.append("taskID: ");
                                                                                sb17.append(a.this.b);
                                                                                sb17.append(", download file error: ");
                                                                                if (exc.getMessage() != null) {
                                                                                    strA = exc.getMessage();
                                                                                }
                                                                                sb17.append(strA);
                                                                                c.a(sb17.toString());
                                                                                if (a.this.v != null) {
                                                                                    a.this.v.a(a.this.b, a.this.a, "");
                                                                                }
                                                                                long jCurrentTimeMillis12 = System.currentTimeMillis();
                                                                                if (r39 != 0) {
                                                                                    r39.close();
                                                                                }
                                                                                n.c(r8, str3 + (System.currentTimeMillis() - jCurrentTimeMillis12) + r6);
                                                                                randomAccessFile.close();
                                                                                r38.disconnect();
                                                                                StringBuilder sb18 = new StringBuilder();
                                                                                sb18.append("taskID: ");
                                                                                sb18.append(a.this.b);
                                                                                sb2 = sb18;
                                                                                sb2.append(str4);
                                                                                c.a(sb2.toString());
                                                                                return -3;
                                                                            }
                                                                            break;
                                                                            break;
                                                                        }
                                                                        String str31 = "STREAM END: " + f.a(System.currentTimeMillis());
                                                                        a aVar16 = a.this;
                                                                        c.a(str31, r19, aVar16.a, aVar16.n);
                                                                        if (a.this.v != null) {
                                                                            a.this.v.a(a.this.b, a.this.a, "");
                                                                        }
                                                                        long jCurrentTimeMillis13 = System.currentTimeMillis();
                                                                        if (inputStream != 0) {
                                                                            inputStream.close();
                                                                        }
                                                                        r21 = r315;
                                                                        n.c(r21, str23 + (System.currentTimeMillis() - jCurrentTimeMillis13) + r314);
                                                                        randomAccessFile.close();
                                                                        r22.disconnect();
                                                                        StringBuilder sb19 = new StringBuilder();
                                                                        sb19.append("taskID: ");
                                                                        sb19.append(a.this.b);
                                                                        str13 = str20;
                                                                        sb3 = sb19;
                                                                        r20 = r21;
                                                                        sb3.append(str13);
                                                                        c.a(sb3.toString());
                                                                        if (a.this.a.f().intValue() == 3) {
                                                                        }
                                                                        n.c(r20, "download pause");
                                                                        return -5;
                                                                    }
                                                                } catch (Exception e10) {
                                                                    e = e10;
                                                                    r6 = r314;
                                                                    r8 = r315;
                                                                    r38 = r22;
                                                                    str3 = str23;
                                                                    str4 = str20;
                                                                    exc = e;
                                                                    r39 = 0;
                                                                }
                                                            } catch (Exception e11) {
                                                                e = e11;
                                                                j4 = j2;
                                                                r6 = r314;
                                                                r8 = r315;
                                                                r38 = r22;
                                                                str3 = str23;
                                                                str4 = str20;
                                                                exc = e;
                                                                r39 = 0;
                                                                a aVar17 = a.this;
                                                                aVar17.d(aVar17.a.b());
                                                                c.a("taskID: " + a.this.b + ", Exception error: " + exc.getMessage());
                                                                if (a.this.o) {
                                                                    str5 = "99.2000";
                                                                } else {
                                                                    str5 = "33.2000";
                                                                }
                                                                str6 = str5;
                                                                strA = a.this.a(exc);
                                                                if (strA.contains("No+space+left+on+device")) {
                                                                    a.this.a.a((Integer) 8);
                                                                    if (a.this.v != null) {
                                                                        a.this.p();
                                                                        a.this.v.a(a.this.b, a.this.a, 1, "");
                                                                    }
                                                                } else {
                                                                    a.this.a.a((Integer) 8);
                                                                    if (a.this.v != null) {
                                                                        a.this.p();
                                                                        a.this.v.a(a.this.b, a.this.a, 1, "");
                                                                    }
                                                                }
                                                                if (a.this.o) {
                                                                    a.this.c(1, strB, str6, str17 + exc.getMessage() + str2, j4, i, i2, z, 200, jCurrentTimeMillis3, "");
                                                                } else {
                                                                    String str217 = str17;
                                                                    String str218 = str2;
                                                                    a.this.a(-1, strB, str6, str217 + exc.getMessage() + str218, j4, i, i2, z, 200, jCurrentTimeMillis3, "");
                                                                }
                                                                StringBuilder sb110 = new StringBuilder();
                                                                sb110.append("taskID: ");
                                                                sb110.append(a.this.b);
                                                                sb110.append(", download file error: ");
                                                                if (exc.getMessage() != null) {
                                                                    strA = exc.getMessage();
                                                                }
                                                                sb110.append(strA);
                                                                c.a(sb110.toString());
                                                                if (a.this.v != null) {
                                                                    a.this.v.a(a.this.b, a.this.a, "");
                                                                }
                                                                long jCurrentTimeMillis14 = System.currentTimeMillis();
                                                                if (r39 != 0) {
                                                                    r39.close();
                                                                }
                                                                n.c(r8, str3 + (System.currentTimeMillis() - jCurrentTimeMillis14) + r6);
                                                                randomAccessFile.close();
                                                                r38.disconnect();
                                                                StringBuilder sb111 = new StringBuilder();
                                                                sb111.append("taskID: ");
                                                                sb111.append(a.this.b);
                                                                sb2 = sb111;
                                                                sb2.append(str4);
                                                                c.a(sb2.toString());
                                                                return -3;
                                                            }
                                                        } catch (Exception e12) {
                                                            e = e12;
                                                            str2 = str18;
                                                        }
                                                    } catch (Throwable th14) {
                                                        r4 = r314;
                                                        r5 = r315;
                                                        r37 = r22;
                                                        r7 = str23;
                                                        th = th14;
                                                        str = str20;
                                                        r15 = 0;
                                                    }
                                                    try {
                                                        if (a.this.v != null) {
                                                            a.this.v.a(a.this.b, a.this.a, "");
                                                        }
                                                        long jCurrentTimeMillis15 = System.currentTimeMillis();
                                                        if (r15 != 0) {
                                                            r15.close();
                                                        }
                                                        ?? sb112 = new StringBuilder();
                                                        sb112.append(r7);
                                                        sb112.append(System.currentTimeMillis() - jCurrentTimeMillis15);
                                                        sb112.append(r4);
                                                        n.c(r5, sb112.toString());
                                                        randomAccessFile.close();
                                                        r37.disconnect();
                                                        sb = new StringBuilder();
                                                    } catch (Exception unused5) {
                                                        sb = new StringBuilder();
                                                    } finally {
                                                        c.a("taskID: " + a.this.b + str);
                                                    }
                                                    sb.append("taskID: ");
                                                    sb.append(a.this.b);
                                                    sb.append(str);
                                                    String string3 = sb.toString();
                                                    throw th;
                                                } catch (Throwable th15) {
                                                    th = th15;
                                                }
                                            } catch (FileNotFoundException e13) {
                                                a.this.a(0, strB, "340001", "&ft=mp4", -1L, 1, i2, z, 200, jCurrentTimeMillis3, "");
                                                if (a.this.v != null) {
                                                    a.this.p();
                                                    a.this.v.a(a.this.b, a.this.a, 5, "");
                                                }
                                                c.a("taskID: " + a.this.b + ", video file not found, switching to failed, filePath: " + a.this.a.c() + "，fnfe：" + e13.toString());
                                                return -1;
                                            }
                                        } catch (IOException e14) {
                                            e = e14;
                                            r36 = headerField;
                                            j2 = j2;
                                        }
                                    }
                                } catch (IOException e15) {
                                    e = e15;
                                }
                                iOException = e;
                                r33 = headerField;
                                j = j2;
                                str17 = str17;
                                str18 = str18;
                                iOException.printStackTrace();
                                a.this.a(-1, strB, "33.1000", str17 + iOException.getMessage() + str18, j, i, i2, z, 200, jCurrentTimeMillis3, "");
                                StringBuilder sb20 = new StringBuilder();
                                sb20.append("invalid file length, stop ");
                                sb20.append(iOException.getMessage());
                                String string4 = sb20.toString();
                                a aVar18 = a.this;
                                c.a(string4, r33, aVar18.a, aVar18.n);
                                return -3;
                            }
                            try {
                                r314 = r314;
                                String headerField2 = r22.getHeaderField("Location");
                                StringBuilder sb21 = new StringBuilder();
                                String str32 = str20;
                                sb21.append("return 302,redirect url is: ");
                                sb21.append(headerField2);
                                n.c("DownloadSDK_1.8.0", sb21.toString());
                                if (headerField2 == null) {
                                    a aVar19 = a.this;
                                    aVar19.d(aVar19.a.b());
                                    a.this.a(-1, strB, YFP2pLoader.P2P_LOAD_ERROR_FAIL + String.valueOf(responseCode2), str21 + str18, j2, i, i2, z, responseCode2, jCurrentTimeMillis3, "");
                                    c.a("taskID: " + a.this.b + ", getting length, got 302 with invalid location");
                                    return -3;
                                }
                                HttpURLConnection httpURLConnectionA2 = a(headerField2);
                                responseCode2 = httpURLConnectionA2.getResponseCode();
                                str22 = str23;
                                str17 = str17;
                                str18 = str18;
                                aVar = aVar;
                                str20 = str32;
                                j2 = j2;
                                r22 = httpURLConnectionA2;
                                str16 = str16;
                            } catch (IOException e16) {
                                e = e16;
                                r35 = aVar;
                            }
                            str17 = str17;
                            r34 = r36;
                            str18 = str18;
                            r35 = r34;
                            iOException = e;
                            j = j2;
                            r33 = r35;
                            iOException.printStackTrace();
                            a.this.a(-1, strB, "33.1000", str17 + iOException.getMessage() + str18, j, i, i2, z, 200, jCurrentTimeMillis3, "");
                            StringBuilder sb22 = new StringBuilder();
                            sb22.append("invalid file length, stop ");
                            sb22.append(iOException.getMessage());
                            String string5 = sb22.toString();
                            a aVar110 = a.this;
                            c.a(string5, r33, aVar110.a, aVar110.n);
                            return -3;
                        }
                    } catch (IOException e17) {
                        e = e17;
                        j2 = j2;
                        r36 = aVar;
                    }
                } catch (IOException e18) {
                    e = e18;
                    j2 = j2;
                    r34 = aVar;
                    str17 = "errmsg=";
                }
            } catch (IOException e19) {
                iOException = e19;
            }
        }

        /* JADX WARN: Code duplicated, block: B:114:0x0638  */
        /* JADX WARN: Code duplicated, block: B:127:0x06dc  */
        /* JADX WARN: Code duplicated, block: B:130:0x06eb A[Catch: all -> 0x0425, Exception -> 0x075d, TRY_LEAVE, TryCatch #2 {all -> 0x0425, blocks: (B:61:0x03d0, B:63:0x0411, B:70:0x0434, B:71:0x0469, B:74:0x0474, B:76:0x0493, B:77:0x04b5, B:79:0x04bd, B:80:0x04c4, B:82:0x04d0, B:84:0x04e8, B:86:0x04ec, B:151:0x07ea, B:163:0x087b, B:168:0x08ae, B:170:0x08bc, B:173:0x08c5, B:175:0x08cd, B:183:0x0933, B:186:0x093f, B:188:0x09ca, B:192:0x09ed, B:191:0x09e9, B:187:0x0986, B:177:0x08d5, B:179:0x08ea, B:180:0x0905, B:182:0x091a, B:88:0x050c, B:91:0x051b, B:96:0x054a, B:99:0x0555, B:102:0x0574, B:104:0x0598, B:106:0x0622, B:117:0x063f, B:119:0x0649, B:121:0x06a5, B:128:0x06e0, B:130:0x06eb, B:132:0x072c, B:138:0x0763, B:140:0x076d), top: B:237:0x03d0 }] */
        /* JADX WARN: Code duplicated, block: B:137:0x0760  */
        /* JADX WARN: Code duplicated, block: B:143:0x07c9  */
        /* JADX WARN: Code duplicated, block: B:144:0x07cf  */
        /* JADX WARN: Code duplicated, block: B:146:0x07d4  */
        /* JADX WARN: Code duplicated, block: B:147:0x07da  */
        /* JADX WARN: Code duplicated, block: B:149:0x07df  */
        /* JADX WARN: Code duplicated, block: B:150:0x07e5  */
        /* JADX WARN: Code duplicated, block: B:154:0x081a A[Catch: Exception -> 0x082d, TRY_LEAVE, TryCatch #1 {Exception -> 0x082d, blocks: (B:152:0x0812, B:154:0x081a), top: B:235:0x0812 }] */
        /* JADX WARN: Code duplicated, block: B:158:0x0867 A[LOOP:0: B:71:0x0469->B:158:0x0867, LOOP_END] */
        /* JADX WARN: Code duplicated, block: B:165:0x08a7  */
        /* JADX WARN: Code duplicated, block: B:167:0x08ab  */
        /* JADX WARN: Code duplicated, block: B:180:0x0905 A[Catch: all -> 0x0425, TryCatch #2 {all -> 0x0425, blocks: (B:61:0x03d0, B:63:0x0411, B:70:0x0434, B:71:0x0469, B:74:0x0474, B:76:0x0493, B:77:0x04b5, B:79:0x04bd, B:80:0x04c4, B:82:0x04d0, B:84:0x04e8, B:86:0x04ec, B:151:0x07ea, B:163:0x087b, B:168:0x08ae, B:170:0x08bc, B:173:0x08c5, B:175:0x08cd, B:183:0x0933, B:186:0x093f, B:188:0x09ca, B:192:0x09ed, B:191:0x09e9, B:187:0x0986, B:177:0x08d5, B:179:0x08ea, B:180:0x0905, B:182:0x091a, B:88:0x050c, B:91:0x051b, B:96:0x054a, B:99:0x0555, B:102:0x0574, B:104:0x0598, B:106:0x0622, B:117:0x063f, B:119:0x0649, B:121:0x06a5, B:128:0x06e0, B:130:0x06eb, B:132:0x072c, B:138:0x0763, B:140:0x076d), top: B:237:0x03d0 }] */
        /* JADX WARN: Code duplicated, block: B:182:0x091a A[Catch: all -> 0x0425, TryCatch #2 {all -> 0x0425, blocks: (B:61:0x03d0, B:63:0x0411, B:70:0x0434, B:71:0x0469, B:74:0x0474, B:76:0x0493, B:77:0x04b5, B:79:0x04bd, B:80:0x04c4, B:82:0x04d0, B:84:0x04e8, B:86:0x04ec, B:151:0x07ea, B:163:0x087b, B:168:0x08ae, B:170:0x08bc, B:173:0x08c5, B:175:0x08cd, B:183:0x0933, B:186:0x093f, B:188:0x09ca, B:192:0x09ed, B:191:0x09e9, B:187:0x0986, B:177:0x08d5, B:179:0x08ea, B:180:0x0905, B:182:0x091a, B:88:0x050c, B:91:0x051b, B:96:0x054a, B:99:0x0555, B:102:0x0574, B:104:0x0598, B:106:0x0622, B:117:0x063f, B:119:0x0649, B:121:0x06a5, B:128:0x06e0, B:130:0x06eb, B:132:0x072c, B:138:0x0763, B:140:0x076d), top: B:237:0x03d0 }] */
        /* JADX WARN: Code duplicated, block: B:186:0x093f A[Catch: all -> 0x0425, TRY_ENTER, TryCatch #2 {all -> 0x0425, blocks: (B:61:0x03d0, B:63:0x0411, B:70:0x0434, B:71:0x0469, B:74:0x0474, B:76:0x0493, B:77:0x04b5, B:79:0x04bd, B:80:0x04c4, B:82:0x04d0, B:84:0x04e8, B:86:0x04ec, B:151:0x07ea, B:163:0x087b, B:168:0x08ae, B:170:0x08bc, B:173:0x08c5, B:175:0x08cd, B:183:0x0933, B:186:0x093f, B:188:0x09ca, B:192:0x09ed, B:191:0x09e9, B:187:0x0986, B:177:0x08d5, B:179:0x08ea, B:180:0x0905, B:182:0x091a, B:88:0x050c, B:91:0x051b, B:96:0x054a, B:99:0x0555, B:102:0x0574, B:104:0x0598, B:106:0x0622, B:117:0x063f, B:119:0x0649, B:121:0x06a5, B:128:0x06e0, B:130:0x06eb, B:132:0x072c, B:138:0x0763, B:140:0x076d), top: B:237:0x03d0 }] */
        /* JADX WARN: Code duplicated, block: B:187:0x0986 A[Catch: all -> 0x0425, TryCatch #2 {all -> 0x0425, blocks: (B:61:0x03d0, B:63:0x0411, B:70:0x0434, B:71:0x0469, B:74:0x0474, B:76:0x0493, B:77:0x04b5, B:79:0x04bd, B:80:0x04c4, B:82:0x04d0, B:84:0x04e8, B:86:0x04ec, B:151:0x07ea, B:163:0x087b, B:168:0x08ae, B:170:0x08bc, B:173:0x08c5, B:175:0x08cd, B:183:0x0933, B:186:0x093f, B:188:0x09ca, B:192:0x09ed, B:191:0x09e9, B:187:0x0986, B:177:0x08d5, B:179:0x08ea, B:180:0x0905, B:182:0x091a, B:88:0x050c, B:91:0x051b, B:96:0x054a, B:99:0x0555, B:102:0x0574, B:104:0x0598, B:106:0x0622, B:117:0x063f, B:119:0x0649, B:121:0x06a5, B:128:0x06e0, B:130:0x06eb, B:132:0x072c, B:138:0x0763, B:140:0x076d), top: B:237:0x03d0 }] */
        /* JADX WARN: Code duplicated, block: B:190:0x09e6  */
        /* JADX WARN: Code duplicated, block: B:191:0x09e9 A[Catch: all -> 0x0425, TryCatch #2 {all -> 0x0425, blocks: (B:61:0x03d0, B:63:0x0411, B:70:0x0434, B:71:0x0469, B:74:0x0474, B:76:0x0493, B:77:0x04b5, B:79:0x04bd, B:80:0x04c4, B:82:0x04d0, B:84:0x04e8, B:86:0x04ec, B:151:0x07ea, B:163:0x087b, B:168:0x08ae, B:170:0x08bc, B:173:0x08c5, B:175:0x08cd, B:183:0x0933, B:186:0x093f, B:188:0x09ca, B:192:0x09ed, B:191:0x09e9, B:187:0x0986, B:177:0x08d5, B:179:0x08ea, B:180:0x0905, B:182:0x091a, B:88:0x050c, B:91:0x051b, B:96:0x054a, B:99:0x0555, B:102:0x0574, B:104:0x0598, B:106:0x0622, B:117:0x063f, B:119:0x0649, B:121:0x06a5, B:128:0x06e0, B:130:0x06eb, B:132:0x072c, B:138:0x0763, B:140:0x076d), top: B:237:0x03d0 }] */
        /* JADX WARN: Code duplicated, block: B:195:0x09ff A[Catch: Exception -> 0x0a12, TRY_LEAVE, TryCatch #8 {Exception -> 0x0a12, blocks: (B:193:0x09f7, B:195:0x09ff), top: B:246:0x09f7 }] */
        /* JADX WARN: Code duplicated, block: B:258:0x0649 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:263:0x076d A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:264:0x04ec A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:265:0x051b A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:74:0x0474 A[Catch: all -> 0x0425, Exception -> 0x0429, TRY_ENTER, TryCatch #2 {all -> 0x0425, blocks: (B:61:0x03d0, B:63:0x0411, B:70:0x0434, B:71:0x0469, B:74:0x0474, B:76:0x0493, B:77:0x04b5, B:79:0x04bd, B:80:0x04c4, B:82:0x04d0, B:84:0x04e8, B:86:0x04ec, B:151:0x07ea, B:163:0x087b, B:168:0x08ae, B:170:0x08bc, B:173:0x08c5, B:175:0x08cd, B:183:0x0933, B:186:0x093f, B:188:0x09ca, B:192:0x09ed, B:191:0x09e9, B:187:0x0986, B:177:0x08d5, B:179:0x08ea, B:180:0x0905, B:182:0x091a, B:88:0x050c, B:91:0x051b, B:96:0x054a, B:99:0x0555, B:102:0x0574, B:104:0x0598, B:106:0x0622, B:117:0x063f, B:119:0x0649, B:121:0x06a5, B:128:0x06e0, B:130:0x06eb, B:132:0x072c, B:138:0x0763, B:140:0x076d), top: B:237:0x03d0 }] */
        /* JADX WARN: Code duplicated, block: B:76:0x0493 A[Catch: all -> 0x0425, Exception -> 0x0429, TryCatch #2 {all -> 0x0425, blocks: (B:61:0x03d0, B:63:0x0411, B:70:0x0434, B:71:0x0469, B:74:0x0474, B:76:0x0493, B:77:0x04b5, B:79:0x04bd, B:80:0x04c4, B:82:0x04d0, B:84:0x04e8, B:86:0x04ec, B:151:0x07ea, B:163:0x087b, B:168:0x08ae, B:170:0x08bc, B:173:0x08c5, B:175:0x08cd, B:183:0x0933, B:186:0x093f, B:188:0x09ca, B:192:0x09ed, B:191:0x09e9, B:187:0x0986, B:177:0x08d5, B:179:0x08ea, B:180:0x0905, B:182:0x091a, B:88:0x050c, B:91:0x051b, B:96:0x054a, B:99:0x0555, B:102:0x0574, B:104:0x0598, B:106:0x0622, B:117:0x063f, B:119:0x0649, B:121:0x06a5, B:128:0x06e0, B:130:0x06eb, B:132:0x072c, B:138:0x0763, B:140:0x076d), top: B:237:0x03d0 }] */
        /* JADX WARN: Code duplicated, block: B:79:0x04bd A[Catch: all -> 0x0425, Exception -> 0x0429, TryCatch #2 {all -> 0x0425, blocks: (B:61:0x03d0, B:63:0x0411, B:70:0x0434, B:71:0x0469, B:74:0x0474, B:76:0x0493, B:77:0x04b5, B:79:0x04bd, B:80:0x04c4, B:82:0x04d0, B:84:0x04e8, B:86:0x04ec, B:151:0x07ea, B:163:0x087b, B:168:0x08ae, B:170:0x08bc, B:173:0x08c5, B:175:0x08cd, B:183:0x0933, B:186:0x093f, B:188:0x09ca, B:192:0x09ed, B:191:0x09e9, B:187:0x0986, B:177:0x08d5, B:179:0x08ea, B:180:0x0905, B:182:0x091a, B:88:0x050c, B:91:0x051b, B:96:0x054a, B:99:0x0555, B:102:0x0574, B:104:0x0598, B:106:0x0622, B:117:0x063f, B:119:0x0649, B:121:0x06a5, B:128:0x06e0, B:130:0x06eb, B:132:0x072c, B:138:0x0763, B:140:0x076d), top: B:237:0x03d0 }] */
        /* JADX WARN: Code duplicated, block: B:82:0x04d0 A[Catch: all -> 0x0425, Exception -> 0x0429, TRY_LEAVE, TryCatch #2 {all -> 0x0425, blocks: (B:61:0x03d0, B:63:0x0411, B:70:0x0434, B:71:0x0469, B:74:0x0474, B:76:0x0493, B:77:0x04b5, B:79:0x04bd, B:80:0x04c4, B:82:0x04d0, B:84:0x04e8, B:86:0x04ec, B:151:0x07ea, B:163:0x087b, B:168:0x08ae, B:170:0x08bc, B:173:0x08c5, B:175:0x08cd, B:183:0x0933, B:186:0x093f, B:188:0x09ca, B:192:0x09ed, B:191:0x09e9, B:187:0x0986, B:177:0x08d5, B:179:0x08ea, B:180:0x0905, B:182:0x091a, B:88:0x050c, B:91:0x051b, B:96:0x054a, B:99:0x0555, B:102:0x0574, B:104:0x0598, B:106:0x0622, B:117:0x063f, B:119:0x0649, B:121:0x06a5, B:128:0x06e0, B:130:0x06eb, B:132:0x072c, B:138:0x0763, B:140:0x076d), top: B:237:0x03d0 }] */
        /* JADX WARN: Code duplicated, block: B:88:0x050c A[Catch: all -> 0x0425, Exception -> 0x0876, TRY_ENTER, TRY_LEAVE, TryCatch #2 {all -> 0x0425, blocks: (B:61:0x03d0, B:63:0x0411, B:70:0x0434, B:71:0x0469, B:74:0x0474, B:76:0x0493, B:77:0x04b5, B:79:0x04bd, B:80:0x04c4, B:82:0x04d0, B:84:0x04e8, B:86:0x04ec, B:151:0x07ea, B:163:0x087b, B:168:0x08ae, B:170:0x08bc, B:173:0x08c5, B:175:0x08cd, B:183:0x0933, B:186:0x093f, B:188:0x09ca, B:192:0x09ed, B:191:0x09e9, B:187:0x0986, B:177:0x08d5, B:179:0x08ea, B:180:0x0905, B:182:0x091a, B:88:0x050c, B:91:0x051b, B:96:0x054a, B:99:0x0555, B:102:0x0574, B:104:0x0598, B:106:0x0622, B:117:0x063f, B:119:0x0649, B:121:0x06a5, B:128:0x06e0, B:130:0x06eb, B:132:0x072c, B:138:0x0763, B:140:0x076d), top: B:237:0x03d0 }] */
        /* JADX WARN: Code duplicated, block: B:93:0x0544  */
        /* JADX WARN: Instruction removed from duplicated block: B:186:0x093f, please report this as an issue */
        /* JADX WARN: Instruction removed from duplicated block: B:187:0x0986, please report this as an issue */
        private int a(int i, int i2) {
            String string;
            boolean z;
            int i3;
            Exception exc;
            boolean z2;
            boolean z3;
            boolean z4;
            String str;
            String str2;
            String strA;
            Exception exc2;
            String message;
            boolean z5;
            boolean z6;
            long jCurrentTimeMillis;
            Long lValueOf;
            int i4;
            int i5;
            Long lValueOf2;
            long j;
            int i6;
            boolean z7;
            boolean z8;
            int i7;
            int errorCode;
            boolean z9 = !TextUtils.isEmpty(a.this.a.j());
            String strB = a.this.a.b();
            long jCurrentTimeMillis2 = System.currentTimeMillis();
            Long lD = a.this.a.d();
            if (a.this.a.e().longValue() > 0 && lD.longValue() >= a.this.a.e().longValue()) {
                c.a("taskID: " + a.this.b + ", video already downloaded, return ");
                a.this.a.a((Integer) 4);
                a.this.a.k(Integer.toString(DownloadHlsManager.getInstance().getTaskInfo().checkMD5Success));
                a.this.c(0, strB, "", "&ft=hls", lD.longValue(), 1, i2, z9, 200, jCurrentTimeMillis2, "");
                return 1;
            }
            int iA = a();
            if (1 != iA) {
                a.this.a(-1, strB, "340001", "&ft=hls", -1L, i, i2, z9, 200, jCurrentTimeMillis2, "");
                return iA;
            }
            try {
                Uri uri = Uri.parse(a.this.a.b());
                String queryParameter = uri.getQueryParameter("arange");
                String path = uri.getPath();
                if (TextUtils.isEmpty(path)) {
                    a.this.a.l(a.this.a.a().toString() + Consts.DOT + a.this.a.i().toString());
                } else {
                    String strSubstring = path.substring(path.lastIndexOf("/") + 1, path.indexOf(Video.SUFFIX.SUFFIX_M3U8));
                    if (!TextUtils.isEmpty(strSubstring) && !strSubstring.equals("playlist")) {
                        if (!TextUtils.isEmpty(queryParameter) && !queryParameter.equals("0")) {
                            a.this.a.l(strSubstring + Consts.DOT + queryParameter);
                        } else {
                            a.this.a.l(strSubstring + ".0");
                        }
                    } else {
                        a.this.a.l(a.this.a.a().toString() + Consts.DOT + a.this.a.i().toString());
                    }
                }
            } catch (Exception e) {
                a.this.a.l(a.this.a.a().toString() + Consts.DOT + a.this.a.i().toString());
                e.printStackTrace();
            }
            String strC = a.this.a.c();
            if (!strC.endsWith(Video.SUFFIX.SUFFIX_MP4)) {
                StringBuilder sb = new StringBuilder();
                String str3 = File.separator;
                if (!strC.endsWith(str3)) {
                    strC = strC.concat(str3);
                }
                sb.append(strC);
                sb.append("hls");
                string = sb.toString();
            } else {
                String strSubstring2 = strC.substring(0, strC.lastIndexOf("/"));
                a.this.a.d(strSubstring2);
                StringBuilder sb2 = new StringBuilder();
                String str4 = File.separator;
                if (!strSubstring2.endsWith(str4)) {
                    strSubstring2 = strSubstring2.concat(str4);
                }
                sb2.append(strSubstring2);
                sb2.append("hls");
                string = sb2.toString();
                n.c("DownloadSDK_1.8.0", "newPath: " + string);
            }
            if (!b()) {
                a.this.a(-1, strB, "340002", "&ft=hls", -1L, i, i2, z9, 200, jCurrentTimeMillis2, "");
                return -2;
            }
            if (a.this.a.f().intValue() != 1) {
                c.a("taskID: " + a.this.b + ", switching to pause after open local file");
                a.this.a(0, strB, "340003", "&ft=hls", -1L, 1, i2, z9, 200, jCurrentTimeMillis2, "");
                return -5;
            }
            a.this.b = DownloadHlsManager.getInstance().createDownloadTask(a.this.b, strB, a.this.a.a().toString(), a.this.a.i().toString(), a.this.a.m(), string, lD.longValue(), z9 ? 1 : 0);
            int i8 = -1;
            if (a.this.b < 0) {
                c.a("hls create failed, ret: " + a.this.b);
                if (-16 == a.this.b) {
                    c.a("startTask failed, url not m3u8 url, ret: " + a.this.b);
                    a.this.a(-1, strB, "33." + (a.this.b * (-1)), "&ft=hls", -1L, i, i2, z9, 200, jCurrentTimeMillis2, "");
                    return -6;
                }
                a.this.a(-1, strB, "33." + (a.this.b * (-1)), "&ft=hls", -1L, 0, i2, z9, 200, jCurrentTimeMillis2, "");
                return -6;
            }
            HashMap map = new HashMap();
            map.put(DownloadFacadeEnum.OFFLINE_LIMIT_SPEED, Integer.valueOf(a.k));
            DownloadHlsManager.getInstance().setUserData(map);
            try {
                try {
                    Long lD2 = a.this.a.d();
                    c.a("taskID: " + a.this.b + ", begin seek file to " + lD2 + ", begin read stream from connection");
                    a.this.a.a((Integer) 1);
                    if (a.this.v != null) {
                        try {
                            a.this.v.a(a.this.b, a.this.a, "");
                            long jCurrentTimeMillis3 = System.currentTimeMillis();
                            a.this.q = true;
                            c.a("taskID: " + a.this.b + ", STREAM START: " + f.a(System.currentTimeMillis()));
                            jCurrentTimeMillis = jCurrentTimeMillis3;
                            lValueOf = lD2;
                            i4 = -1;
                            while (true) {
                                if (System.currentTimeMillis() - jCurrentTimeMillis >= 1000) {
                                    DownloadHlsManager.getInstance().getDownloadInfoParameter(a.this.b, a.this.a);
                                    if (DownloadHlsManager.getInstance().getTaskInfo().downloadSize > 0) {
                                        lValueOf = Long.valueOf(DownloadHlsManager.getInstance().getTaskInfo().downloadSize);
                                        i8 = DownloadHlsManager.getInstance().getTaskInfo().totalTsNum;
                                        i4 = DownloadHlsManager.getInstance().getTaskInfo().playableTsNum;
                                    }
                                    if (lValueOf.longValue() != 0) {
                                        a.this.a.a(lValueOf);
                                    }
                                    jCurrentTimeMillis = System.currentTimeMillis();
                                    if (a.this.v != null) {
                                        a.this.v.a(a.this.b, a.this.a, "");
                                    }
                                }
                                i5 = i4;
                                lValueOf2 = lValueOf;
                                j = jCurrentTimeMillis;
                                try {
                                    try {
                                        if (this.b) {
                                            c.a("taskID: " + a.this.b + ", download break - thread stoped");
                                        } else {
                                            if (a.this.a.f().intValue() != 1) {
                                                c.a("taskID: " + a.this.b + ", download break - mission changed, status: " + a.this.a.f());
                                            } else if (i5 < i8 && i8 > 0 && i5 > 0) {
                                                try {
                                                    if (1 == DownloadHlsManager.getInstance().getHlsDownloadSelect()) {
                                                        try {
                                                            DownloadHlsManager.getInstance().getDownloadInfoParameter(a.this.b, a.this.a);
                                                            if (DownloadHlsManager.getInstance().getTaskInfo().downloadSize > 0) {
                                                                lValueOf2 = Long.valueOf(DownloadHlsManager.getInstance().getTaskInfo().downloadSize);
                                                                i8 = DownloadHlsManager.getInstance().getTaskInfo().totalTsNum;
                                                                i5 = DownloadHlsManager.getInstance().getTaskInfo().playableTsNum;
                                                            }
                                                            Long l = lValueOf2;
                                                            a.this.a.a(l);
                                                            c.a("taskID: " + a.this.b + ", download break - already completed, size: " + l + " / " + a.this.a.e() + ", tsNum: " + i5 + " / " + i8);
                                                            a.this.a.a((Integer) 4);
                                                            a.this.a.k(Integer.toString(DownloadHlsManager.getInstance().getTaskInfo().checkMD5Success));
                                                            i6 = 2;
                                                            try {
                                                                a.this.c(0, strB, "", "&ft=hls", l.longValue(), 1, i2, z9, 200, jCurrentTimeMillis2, DownloadHlsManager.getInstance().getTaskInfo().cdnIP);
                                                                i3 = i6;
                                                                z2 = false;
                                                                z = false;
                                                                z5 = false;
                                                                z8 = false;
                                                                z7 = false;
                                                            } catch (Exception e2) {
                                                                e = e2;
                                                                exc = e;
                                                                i3 = i6;
                                                                z2 = false;
                                                                z = false;
                                                                z3 = false;
                                                                z4 = false;
                                                            }
                                                        } catch (Exception e3) {
                                                            e = e3;
                                                            i6 = 2;
                                                        }
                                                    } else if (DownloadHlsManager.getInstance().getHasReportCDN3() == 2) {
                                                        DownloadHlsManager.getInstance().getDownloadInfoParameter(a.this.b, a.this.a);
                                                        DownloadHlsManager.getInstance().setHasReportCDN3(0);
                                                        i3 = 2;
                                                        a.this.a(-1, strB, "" + DownloadHlsManager.getInstance().getErrorCode(), "&ft=hls", a.this.a.e().longValue(), i, i2, z9, 200, jCurrentTimeMillis2, DownloadHlsManager.getInstance().getTaskInfo().cdnIP);
                                                        c.a("taskID: " + a.this.b + ", download break - three cdn failed, stop Task error: " + DownloadHlsManager.getInstance().getErrorCode());
                                                        z2 = false;
                                                        z = false;
                                                        z5 = true;
                                                        z8 = false;
                                                        z7 = false;
                                                    } else {
                                                        i7 = i8;
                                                        i3 = 2;
                                                        if (DownloadHlsManager.getInstance().getHasReportCDN3() == 1) {
                                                            DownloadHlsManager.getInstance().getDownloadInfoParameter(a.this.b, a.this.a);
                                                            a aVar = a.this;
                                                            z = false;
                                                            aVar.a(0, strB, "", "&ft=hls", aVar.a.e().longValue(), 1, i2, z9, 200, jCurrentTimeMillis2, DownloadHlsManager.getInstance().getTaskInfo().cdnIP);
                                                            DownloadHlsManager.getInstance().setHasReportCDN3(0);
                                                            c.a("taskID: " + a.this.b + ", three cdn success, continue downloading");
                                                        } else {
                                                            z = false;
                                                        }
                                                        if (DownloadHlsManager.getInstance().getHlsDownloadSelect() == 2) {
                                                            errorCode = DownloadHlsManager.getInstance().getErrorCode();
                                                            a.this.c(-1, strB, "" + errorCode, "&ft=hls", -1L, i, i2, z9, 200, jCurrentTimeMillis2, DownloadHlsManager.getInstance().getTaskInfo().cdnIP);
                                                            c.a("taskID: " + a.this.b + ", downloading break - stop Task");
                                                            if (301504 == errorCode) {
                                                                z2 = z;
                                                                z5 = z2;
                                                                z7 = z5;
                                                                z8 = true;
                                                            } else if (301505 == errorCode) {
                                                                z2 = z;
                                                                z5 = z2;
                                                                z8 = z5;
                                                                z7 = true;
                                                            } else if (301578 == errorCode) {
                                                                z5 = z;
                                                                z8 = z5;
                                                                z7 = z8;
                                                                z2 = true;
                                                            } else {
                                                                z2 = z;
                                                                z8 = z2;
                                                                z7 = z8;
                                                                z5 = true;
                                                            }
                                                        } else {
                                                            i8 = i7;
                                                            lValueOf = lValueOf2;
                                                            jCurrentTimeMillis = j;
                                                            i4 = i5;
                                                        }
                                                    }
                                                } catch (Exception e4) {
                                                    exc = e4;
                                                    i3 = 2;
                                                }
                                                z2 = false;
                                                z = false;
                                                z3 = false;
                                                z4 = false;
                                                c.a("taskID: " + a.this.b + ", error: " + exc.getMessage());
                                                if (a.this.o) {
                                                    str = "99.2000";
                                                } else {
                                                    str = "33.2000";
                                                }
                                                str2 = str;
                                                strA = a.this.a(exc);
                                                if (strA.contains("No+space+left+on+device") && !strA.contains("No space left on device")) {
                                                    if (strA.contains("write+failed") || strA.contains("write failed")) {
                                                        a.this.a.a((Integer) 8);
                                                        if (a.this.v != null) {
                                                            a.this.p();
                                                            a.this.v.a(a.this.b, a.this.a, 4, "");
                                                        }
                                                    }
                                                } else {
                                                    a.this.a.a((Integer) 8);
                                                    if (a.this.v != null) {
                                                        a.this.p();
                                                        a.this.v.a(a.this.b, a.this.a, 1, "");
                                                    }
                                                }
                                                if (a.this.o) {
                                                    exc2 = exc;
                                                    a.this.c(-1, strB, str2, "errmsg=" + exc.getMessage() + "&ft=hls", a.this.a.e().longValue(), i, i2, z9, 200, jCurrentTimeMillis2, DownloadHlsManager.getInstance().getTaskInfo().cdnIP);
                                                } else {
                                                    exc2 = exc;
                                                    a.this.a(-1, strB, str2, "errmsg=" + exc2.getMessage() + "&ft=hls", a.this.a.e().longValue(), i, i2, z9, 200, jCurrentTimeMillis2, DownloadHlsManager.getInstance().getTaskInfo().cdnIP);
                                                }
                                                StringBuilder sb3 = new StringBuilder();
                                                sb3.append("taskID: ");
                                                sb3.append(a.this.b);
                                                sb3.append(", download file error: ");
                                                if (exc2.getMessage() == null) {
                                                    message = strA;
                                                } else {
                                                    message = exc2.getMessage();
                                                }
                                                sb3.append(message);
                                                c.a(sb3.toString());
                                                try {
                                                    if (a.this.v != null) {
                                                        a.this.v.a(a.this.b, a.this.a, "");
                                                    }
                                                } catch (Exception unused) {
                                                }
                                                c.a("taskID: " + a.this.b + ", download file end");
                                                DownloadHlsManager.getInstance().stopTask(a.this.b);
                                                z5 = z3;
                                                z6 = true;
                                            } else {
                                                try {
                                                    if (DownloadHlsManager.getInstance().getHasReportCDN3() == 2) {
                                                        try {
                                                            DownloadHlsManager.getInstance().getDownloadInfoParameter(a.this.b, a.this.a);
                                                            DownloadHlsManager.getInstance().setHasReportCDN3(0);
                                                            i3 = 2;
                                                            try {
                                                                a.this.a(-1, strB, "" + DownloadHlsManager.getInstance().getErrorCode(), "&ft=hls", a.this.a.e().longValue(), i, i2, z9, 200, jCurrentTimeMillis2, DownloadHlsManager.getInstance().getTaskInfo().cdnIP);
                                                                c.a("taskID: " + a.this.b + ", download break - three cdn failed, stop Task error: " + DownloadHlsManager.getInstance().getErrorCode());
                                                                z2 = false;
                                                                z = false;
                                                                z5 = true;
                                                                z8 = false;
                                                                z7 = false;
                                                            } catch (Exception e5) {
                                                                e = e5;
                                                                exc = e;
                                                                z2 = false;
                                                                z = false;
                                                                z3 = false;
                                                                z4 = false;
                                                            }
                                                        } catch (Exception e6) {
                                                            e = e6;
                                                            i3 = 2;
                                                        }
                                                    } else {
                                                        i7 = i8;
                                                        i3 = 2;
                                                        try {
                                                            if (DownloadHlsManager.getInstance().getHasReportCDN3() == 1) {
                                                                DownloadHlsManager.getInstance().getDownloadInfoParameter(a.this.b, a.this.a);
                                                                a aVar2 = a.this;
                                                                z = false;
                                                                try {
                                                                    aVar2.a(0, strB, "", "&ft=hls", aVar2.a.e().longValue(), 1, i2, z9, 200, jCurrentTimeMillis2, DownloadHlsManager.getInstance().getTaskInfo().cdnIP);
                                                                    DownloadHlsManager.getInstance().setHasReportCDN3(0);
                                                                    c.a("taskID: " + a.this.b + ", three cdn success, continue downloading");
                                                                } catch (Exception e7) {
                                                                    e = e7;
                                                                    exc = e;
                                                                    z2 = z;
                                                                    z3 = z2;
                                                                    z4 = z3;
                                                                }
                                                            } else {
                                                                z = false;
                                                            }
                                                            if (DownloadHlsManager.getInstance().getHlsDownloadSelect() == 2) {
                                                                errorCode = DownloadHlsManager.getInstance().getErrorCode();
                                                                a.this.c(-1, strB, "" + errorCode, "&ft=hls", -1L, i, i2, z9, 200, jCurrentTimeMillis2, DownloadHlsManager.getInstance().getTaskInfo().cdnIP);
                                                                c.a("taskID: " + a.this.b + ", downloading break - stop Task");
                                                                if (301504 == errorCode) {
                                                                    z2 = z;
                                                                    z5 = z2;
                                                                    z7 = z5;
                                                                    z8 = true;
                                                                } else if (301505 == errorCode) {
                                                                    z2 = z;
                                                                    z5 = z2;
                                                                    z8 = z5;
                                                                    z7 = true;
                                                                } else if (301578 == errorCode) {
                                                                    z5 = z;
                                                                    z8 = z5;
                                                                    z7 = z8;
                                                                    z2 = true;
                                                                } else {
                                                                    z2 = z;
                                                                    z8 = z2;
                                                                    z7 = z8;
                                                                    z5 = true;
                                                                }
                                                            } else {
                                                                i8 = i7;
                                                                lValueOf = lValueOf2;
                                                                jCurrentTimeMillis = j;
                                                                i4 = i5;
                                                            }
                                                        } catch (Exception e8) {
                                                            e = e8;
                                                            z = false;
                                                        }
                                                    }
                                                } catch (Exception e9) {
                                                    e = e9;
                                                    i3 = 2;
                                                    z = false;
                                                }
                                            }
                                            c.a("taskID: " + a.this.b + ", STREAM END: " + f.a(System.currentTimeMillis()));
                                            if (a.this.v != null) {
                                                a.this.v.a(a.this.b, a.this.a, "");
                                            }
                                            c.a("taskID: " + a.this.b + ", download file end");
                                            DownloadHlsManager.getInstance().stopTask(a.this.b);
                                            boolean z10 = z8;
                                            z6 = z;
                                            z = z7;
                                            z4 = z10;
                                        }
                                        if (a.this.v != null) {
                                            a.this.v.a(a.this.b, a.this.a, "");
                                        }
                                    } catch (Exception unused2) {
                                    }
                                    c.a("taskID: " + a.this.b + ", STREAM END: " + f.a(System.currentTimeMillis()));
                                    c.a("taskID: " + a.this.b + ", download file end");
                                    DownloadHlsManager.getInstance().stopTask(a.this.b);
                                    boolean z11 = z8;
                                    z6 = z;
                                    z = z7;
                                    z4 = z11;
                                } catch (Exception e10) {
                                    exc = e10;
                                    z3 = z5;
                                    z = z7;
                                    z4 = z8;
                                    c.a("taskID: " + a.this.b + ", error: " + exc.getMessage());
                                    if (a.this.o) {
                                        str = "99.2000";
                                    } else {
                                        str = "33.2000";
                                    }
                                    str2 = str;
                                    strA = a.this.a(exc);
                                    if (strA.contains("No+space+left+on+device")) {
                                        a.this.a.a((Integer) 8);
                                        if (a.this.v != null) {
                                            a.this.p();
                                            a.this.v.a(a.this.b, a.this.a, 1, "");
                                        }
                                    } else {
                                        a.this.a.a((Integer) 8);
                                        if (a.this.v != null) {
                                            a.this.p();
                                            a.this.v.a(a.this.b, a.this.a, 1, "");
                                        }
                                    }
                                    if (a.this.o) {
                                        exc2 = exc;
                                        a.this.c(-1, strB, str2, "errmsg=" + exc.getMessage() + "&ft=hls", a.this.a.e().longValue(), i, i2, z9, 200, jCurrentTimeMillis2, DownloadHlsManager.getInstance().getTaskInfo().cdnIP);
                                    } else {
                                        exc2 = exc;
                                        a.this.a(-1, strB, str2, "errmsg=" + exc2.getMessage() + "&ft=hls", a.this.a.e().longValue(), i, i2, z9, 200, jCurrentTimeMillis2, DownloadHlsManager.getInstance().getTaskInfo().cdnIP);
                                    }
                                    StringBuilder sb4 = new StringBuilder();
                                    sb4.append("taskID: ");
                                    sb4.append(a.this.b);
                                    sb4.append(", download file error: ");
                                    if (exc2.getMessage() == null) {
                                        message = strA;
                                    } else {
                                        message = exc2.getMessage();
                                    }
                                    sb4.append(message);
                                    c.a(sb4.toString());
                                    if (a.this.v != null) {
                                        a.this.v.a(a.this.b, a.this.a, "");
                                    }
                                    c.a("taskID: " + a.this.b + ", download file end");
                                    DownloadHlsManager.getInstance().stopTask(a.this.b);
                                    z5 = z3;
                                    z6 = true;
                                }
                                i6 = 2;
                                i3 = i6;
                                z2 = false;
                                z = false;
                                z5 = false;
                                z8 = false;
                                z7 = false;
                            }
                        } catch (Exception e11) {
                            exc = e11;
                            z2 = false;
                            z = false;
                            i3 = 2;
                        }
                    } else {
                        long jCurrentTimeMillis4 = System.currentTimeMillis();
                        a.this.q = true;
                        c.a("taskID: " + a.this.b + ", STREAM START: " + f.a(System.currentTimeMillis()));
                        jCurrentTimeMillis = jCurrentTimeMillis4;
                        lValueOf = lD2;
                        i4 = -1;
                        while (true) {
                            if (System.currentTimeMillis() - jCurrentTimeMillis >= 1000) {
                                DownloadHlsManager.getInstance().getDownloadInfoParameter(a.this.b, a.this.a);
                                if (DownloadHlsManager.getInstance().getTaskInfo().downloadSize > 0) {
                                    lValueOf = Long.valueOf(DownloadHlsManager.getInstance().getTaskInfo().downloadSize);
                                    i8 = DownloadHlsManager.getInstance().getTaskInfo().totalTsNum;
                                    i4 = DownloadHlsManager.getInstance().getTaskInfo().playableTsNum;
                                }
                                if (lValueOf.longValue() != 0) {
                                    a.this.a.a(lValueOf);
                                }
                                jCurrentTimeMillis = System.currentTimeMillis();
                                if (a.this.v != null) {
                                    a.this.v.a(a.this.b, a.this.a, "");
                                }
                            }
                            i5 = i4;
                            lValueOf2 = lValueOf;
                            j = jCurrentTimeMillis;
                            if (this.b) {
                                c.a("taskID: " + a.this.b + ", download break - thread stoped");
                            } else {
                                if (a.this.a.f().intValue() != 1) {
                                    c.a("taskID: " + a.this.b + ", download break - mission changed, status: " + a.this.a.f());
                                } else if (i5 < i8) {
                                    if (DownloadHlsManager.getInstance().getHasReportCDN3() == 2) {
                                        DownloadHlsManager.getInstance().getDownloadInfoParameter(a.this.b, a.this.a);
                                        DownloadHlsManager.getInstance().setHasReportCDN3(0);
                                        i3 = 2;
                                        a.this.a(-1, strB, "" + DownloadHlsManager.getInstance().getErrorCode(), "&ft=hls", a.this.a.e().longValue(), i, i2, z9, 200, jCurrentTimeMillis2, DownloadHlsManager.getInstance().getTaskInfo().cdnIP);
                                        c.a("taskID: " + a.this.b + ", download break - three cdn failed, stop Task error: " + DownloadHlsManager.getInstance().getErrorCode());
                                        z2 = false;
                                        z = false;
                                        z5 = true;
                                        z8 = false;
                                        z7 = false;
                                    } else {
                                        i7 = i8;
                                        i3 = 2;
                                        if (DownloadHlsManager.getInstance().getHasReportCDN3() == 1) {
                                            DownloadHlsManager.getInstance().getDownloadInfoParameter(a.this.b, a.this.a);
                                            a aVar3 = a.this;
                                            z = false;
                                            aVar3.a(0, strB, "", "&ft=hls", aVar3.a.e().longValue(), 1, i2, z9, 200, jCurrentTimeMillis2, DownloadHlsManager.getInstance().getTaskInfo().cdnIP);
                                            DownloadHlsManager.getInstance().setHasReportCDN3(0);
                                            c.a("taskID: " + a.this.b + ", three cdn success, continue downloading");
                                        } else {
                                            z = false;
                                        }
                                        if (DownloadHlsManager.getInstance().getHlsDownloadSelect() == 2) {
                                            errorCode = DownloadHlsManager.getInstance().getErrorCode();
                                            a.this.c(-1, strB, "" + errorCode, "&ft=hls", -1L, i, i2, z9, 200, jCurrentTimeMillis2, DownloadHlsManager.getInstance().getTaskInfo().cdnIP);
                                            c.a("taskID: " + a.this.b + ", downloading break - stop Task");
                                            if (301504 == errorCode) {
                                                z2 = z;
                                                z5 = z2;
                                                z7 = z5;
                                                z8 = true;
                                            } else if (301505 == errorCode) {
                                                z2 = z;
                                                z5 = z2;
                                                z8 = z5;
                                                z7 = true;
                                            } else if (301578 == errorCode) {
                                                z5 = z;
                                                z8 = z5;
                                                z7 = z8;
                                                z2 = true;
                                            } else {
                                                z2 = z;
                                                z8 = z2;
                                                z7 = z8;
                                                z5 = true;
                                            }
                                        } else {
                                            i8 = i7;
                                            lValueOf = lValueOf2;
                                            jCurrentTimeMillis = j;
                                            i4 = i5;
                                        }
                                    }
                                } else if (DownloadHlsManager.getInstance().getHasReportCDN3() == 2) {
                                    DownloadHlsManager.getInstance().getDownloadInfoParameter(a.this.b, a.this.a);
                                    DownloadHlsManager.getInstance().setHasReportCDN3(0);
                                    i3 = 2;
                                    a.this.a(-1, strB, "" + DownloadHlsManager.getInstance().getErrorCode(), "&ft=hls", a.this.a.e().longValue(), i, i2, z9, 200, jCurrentTimeMillis2, DownloadHlsManager.getInstance().getTaskInfo().cdnIP);
                                    c.a("taskID: " + a.this.b + ", download break - three cdn failed, stop Task error: " + DownloadHlsManager.getInstance().getErrorCode());
                                    z2 = false;
                                    z = false;
                                    z5 = true;
                                    z8 = false;
                                    z7 = false;
                                } else {
                                    i7 = i8;
                                    i3 = 2;
                                    if (DownloadHlsManager.getInstance().getHasReportCDN3() == 1) {
                                        DownloadHlsManager.getInstance().getDownloadInfoParameter(a.this.b, a.this.a);
                                        a aVar4 = a.this;
                                        z = false;
                                        aVar4.a(0, strB, "", "&ft=hls", aVar4.a.e().longValue(), 1, i2, z9, 200, jCurrentTimeMillis2, DownloadHlsManager.getInstance().getTaskInfo().cdnIP);
                                        DownloadHlsManager.getInstance().setHasReportCDN3(0);
                                        c.a("taskID: " + a.this.b + ", three cdn success, continue downloading");
                                    } else {
                                        z = false;
                                    }
                                    if (DownloadHlsManager.getInstance().getHlsDownloadSelect() == 2) {
                                        errorCode = DownloadHlsManager.getInstance().getErrorCode();
                                        a.this.c(-1, strB, "" + errorCode, "&ft=hls", -1L, i, i2, z9, 200, jCurrentTimeMillis2, DownloadHlsManager.getInstance().getTaskInfo().cdnIP);
                                        c.a("taskID: " + a.this.b + ", downloading break - stop Task");
                                        if (301504 == errorCode) {
                                            z2 = z;
                                            z5 = z2;
                                            z7 = z5;
                                            z8 = true;
                                        } else if (301505 == errorCode) {
                                            z2 = z;
                                            z5 = z2;
                                            z8 = z5;
                                            z7 = true;
                                        } else if (301578 == errorCode) {
                                            z5 = z;
                                            z8 = z5;
                                            z7 = z8;
                                            z2 = true;
                                        } else {
                                            z2 = z;
                                            z8 = z2;
                                            z7 = z8;
                                            z5 = true;
                                        }
                                    } else {
                                        i8 = i7;
                                        lValueOf = lValueOf2;
                                        jCurrentTimeMillis = j;
                                        i4 = i5;
                                    }
                                }
                                c.a("taskID: " + a.this.b + ", STREAM END: " + f.a(System.currentTimeMillis()));
                                if (a.this.v != null) {
                                    a.this.v.a(a.this.b, a.this.a, "");
                                }
                                c.a("taskID: " + a.this.b + ", download file end");
                                DownloadHlsManager.getInstance().stopTask(a.this.b);
                                boolean z12 = z8;
                                z6 = z;
                                z = z7;
                                z4 = z12;
                            }
                            i6 = 2;
                            i3 = i6;
                            z2 = false;
                            z = false;
                            z5 = false;
                            z8 = false;
                            z7 = false;
                            c.a("taskID: " + a.this.b + ", STREAM END: " + f.a(System.currentTimeMillis()));
                            if (a.this.v != null) {
                                a.this.v.a(a.this.b, a.this.a, "");
                            }
                            c.a("taskID: " + a.this.b + ", download file end");
                            DownloadHlsManager.getInstance().stopTask(a.this.b);
                            boolean z13 = z8;
                            z6 = z;
                            z = z7;
                            z4 = z13;
                        }
                    }
                } catch (Throwable th) {
                    try {
                        if (a.this.v != null) {
                            a.this.v.a(a.this.b, a.this.a, "");
                        }
                    } catch (Exception unused3) {
                    }
                    c.a("taskID: " + a.this.b + ", download file end");
                    DownloadHlsManager.getInstance().stopTask(a.this.b);
                    throw th;
                }
            } catch (Exception e12) {
                e = e12;
                z = false;
                i3 = 2;
            }
            if (z6) {
                return -3;
            }
            if (z5) {
                c.a("taskID: " + a.this.b + ", download failed, break");
                return -3;
            }
            if (z4) {
                c.a("taskID: " + a.this.b + ", md5 check failed, break");
                return -8;
            }
            if (z) {
                c.a("taskID: " + a.this.b + ", write local file failed, break");
                return -2;
            }
            if (z2) {
                c.a("taskID: " + a.this.b + ", space not enough, notify app and break");
                a.this.a.a((Integer) 8);
                if (a.this.v != null) {
                    a.this.v.a(a.this.b, a.this.a, 1, "");
                }
                return -2;
            }
            if (a.this.a.f().intValue() != 3 && a.this.a.f().intValue() != i3 && a.this.a.f().intValue() != 11) {
                return 1;
            }
            c.a("taskID: " + a.this.b + ", download pause, status: " + a.this.a.f());
            return -5;
        }

        private void a(final String str, int i, final int i2, final boolean z, final long j) {
            com.mgtv.downloader.net.entity.a aVar = a.this.a;
            if (aVar == null) {
                return;
            }
            final String strK = aVar.k();
            if (TextUtils.isEmpty(strK)) {
                return;
            }
            final String strC = a.this.a.c();
            if (TextUtils.isEmpty(strC)) {
                return;
            }
            Long lD = a.this.a.d();
            long jLongValue = lD == null ? 0L : lD.longValue();
            if (jLongValue <= 0) {
                return;
            }
            Long lE = a.this.a.e();
            long jLongValue2 = lE == null ? 0L : lE.longValue();
            if (jLongValue2 > 0 && jLongValue >= jLongValue2) {
                new Thread(new Runnable() {
                    @Override
                    public void run() throws Throwable {
                        String strEncode;
                        try {
                            Thread.sleep(2000L);
                        } catch (Exception e) {
                            n.b("DownloadSDK_1.8.0", e.toString());
                        }
                        n.c("DownloadSDK_1.8.0", "+++ Verify File MD5 +++");
                        n.c("DownloadSDK_1.8.0", "MD5(" + strK + ")");
                        long jUptimeMillis = SystemClock.uptimeMillis();
                        String strA = e.a(strC);
                        n.c("DownloadSDK_1.8.0", "MD5_RESULT(" + strA + ")");
                        StringBuilder sb = new StringBuilder();
                        sb.append("TIME(ms): ");
                        sb.append(SystemClock.uptimeMillis() - jUptimeMillis);
                        n.c("DownloadSDK_1.8.0", sb.toString());
                        n.c("DownloadSDK_1.8.0", "+++++++++++++++++++++++");
                        if (TextUtils.equals(strK, strA)) {
                            c.a("taskID: " + a.this.b + ", check MD5 success, fileMD5: " + strK + ", fileMD5Calc: " + strA);
                            a.this.a.k("1");
                        } else {
                            a.this.a.k("0");
                            c.a("taskID: " + a.this.b + ", check MD5 failed, fileMD5: " + strK + ", fileMD5Calc: " + strA);
                            try {
                                strEncode = URLEncoder.encode("oldmd5=" + strK + "&newmd5=" + strA, "UTF-8");
                            } catch (UnsupportedEncodingException e2) {
                                e2.printStackTrace();
                                strEncode = "";
                            }
                            a.this.c(1, str, "305004", "&ft=mp4&ex=" + strEncode, -1L, 0, i2, z, 200, j, "");
                        }
                        if (a.this.v != null) {
                            a.this.v.d(a.this.b, a.this.a);
                        }
                    }
                }).start();
            }
        }

        private boolean b() {
            String strC = a.this.a.c();
            String strSubstring = strC.substring(0, strC.lastIndexOf(File.separator));
            c.a("taskID: " + a.this.b + ", checkStorage: " + strSubstring);
            long jLongValue = a.this.a.e().longValue();
            long jD = com.mgtv.downloader.dir.a.c().d(strSubstring);
            long jLongValue2 = (jLongValue - a.this.a.d().longValue()) + ((long) 104857600);
            c.a("taskID: " + a.this.b + ", file dir remains: " + jD + ", file need: " + jLongValue2);
            if (jD >= jLongValue2) {
                return true;
            }
            c.a("taskID: " + a.this.b + ", not enough space remained, remain: " + jD + ", needSize: " + jLongValue2);
            a.this.a.a((Integer) 8);
            if (a.this.v != null) {
                a.this.v.a(a.this.b, a.this.a, 1, "");
            }
            return false;
        }

        private int a() {
            try {
                com.mgtv.downloader.dir.a aVarC = com.mgtv.downloader.dir.a.c();
                String strC = a.this.a.c();
                c.a("taskID: " + a.this.b + ", check file: " + strC);
                if (TextUtils.isEmpty(strC)) {
                    c.a("taskID: " + a.this.b + ", empty file path");
                    return -1;
                }
                String str = File.separator;
                String strSubstring = strC.substring(strC.lastIndexOf(str) + 1);
                String strSubstring2 = strC.substring(0, strC.lastIndexOf(str));
                c.a("taskID: " + a.this.b + ", filePath: " + strC + ", dir: " + strSubstring2 + ", filename: " + strSubstring);
                if (!aVarC.b(strSubstring2)) {
                    c.a("taskID: " + a.this.b + ", file path can't write!, fileDir: " + strSubstring2);
                    a.this.a.a((Integer) 5);
                    if (a.this.v != null) {
                        a.this.v.a(a.this.b, a.this.a, 6, "");
                    }
                    return -1;
                }
                if (a.this.a.n() == null || a.this.a.n().equals(0)) {
                    File file = new File(strC);
                    if (!file.exists()) {
                        if (!file.createNewFile()) {
                            if (a.this.v != null) {
                                a.this.v.a(a.this.b, a.this.a, 4, "");
                            }
                            c.a("taskID: " + a.this.b + ", create file failed, path: " + a.this.a.c());
                            return -2;
                        }
                        if (a.this.a.d().longValue() != 0) {
                            n.b("DownloadSDK_1.8.0", "complete size: " + a.this.a.d().longValue());
                            a.this.a.a((Long) 0L);
                            a.this.a.a((Integer) 2);
                            if (a.this.v != null) {
                                a.this.v.a(a.this.b, a.this.a, 5, "");
                            }
                            c.a("taskID: " + a.this.b + ", downloading file might been deleted, block and activate");
                            return -1;
                        }
                    }
                }
                return 1;
            } catch (Exception e) {
                e.printStackTrace();
                if (a.this.v != null) {
                    a.this.v.a(a.this.b, a.this.a, 4, "");
                }
                c.a("taskID: " + a.this.b + ", failed to create file: " + a.this.a.c() + ", exception: " + e.getMessage());
                return -2;
            }
        }
    }

    public a(Context context, com.mgtv.downloader.net.entity.a aVar, int i, int i2, String str) {
        this.b = -1;
        this.c = -1;
        this.d = "";
        this.u = context;
        this.b = i;
        this.c = i2;
        this.d = str;
        c(str);
        com.mgtv.downloader.net.entity.a aVar2 = new com.mgtv.downloader.net.entity.a(aVar);
        this.a = aVar2;
        aVar2.q("");
        this.a.b((Integer) 0);
        this.a.c((Integer) 0);
        if (this.a.d() == null) {
            this.a.a((Long) 0L);
        }
        if (this.a.e() == null) {
            this.a.b((Long) 0L);
        }
        this.r = com.mgtv.downloader.statistics.a.a.a(this.u);
        this.s = new h(ThreadManager.getNetWorkExecutorService(), true);
        this.t = new m(this.u, this.s, null);
    }

    public static int j(a aVar) {
        int i = aVar.g;
        aVar.g = i + 1;
        return i;
    }

    public boolean n() {
        return this.l.isLocked();
    }

    public void o() {
        this.l.lock();
    }

    public void p() {
        if (this.l.isLocked() && this.l.isHeldByCurrentThread()) {
            this.l.unlock();
        }
    }

    private void q() {
        h hVar = this.s;
        if (hVar != null && this.t != null) {
            hVar.a((g) null);
            this.t.a((g) null);
            this.s = null;
            this.t = null;
        }
        if (this.s == null && this.t == null) {
            this.s = new h(ThreadManager.getNetWorkExecutorService(), true);
            this.t = new m(this.u, this.s, null);
        }
    }

    public int e() {
        return this.a.n().intValue();
    }

    public String f() {
        if (e() == 0) {
            return this.a.c() == null ? "" : this.a.c();
        }
        return DownloadHlsManager.getInstance().getOfflineM3U8Path(this.b);
    }

    public void g() {
        c.a("taskID: " + this.b + ", delete task start, videoID: " + this.a.a());
        this.a.a((Integer) 7);
        C0180a c0180a = this.m;
        if (c0180a != null && c0180a.isAlive()) {
            try {
                this.m.interrupt();
            } catch (Exception e) {
                c.a("taskID: " + this.b + ", delete exception: " + e.toString());
            }
        }
        if (this.a.n() == null || 1 != this.a.n().intValue()) {
            b(this.v);
        } else {
            DownloadHlsManager.getInstance().stopTask(this.b);
            b(this.v);
        }
        c.a("taskID: " + this.b + ", delete task end ");
    }

    public void h() {
        if (this.a.n() != null && 1 == this.a.n().intValue()) {
            DownloadHlsManager.getInstance().pauseTask(this.b);
        }
        this.a.q("");
        c(2);
    }

    public void i() {
        if (this.a.n() != null && 1 == this.a.n().intValue()) {
            DownloadHlsManager.getInstance().pauseTask(this.b);
        }
        this.a.q("");
        if (n()) {
            p();
        }
        c(3);
    }

    public void j() {
        this.a.q("");
        c(5);
    }

    public void k() {
        this.a.q("");
        this.a.c(Long.valueOf(System.currentTimeMillis()));
        c(4);
    }

    public boolean l() {
        return this.a.f().intValue() == 1;
    }

    public int c() {
        return this.b;
    }

    public int d() {
        return this.c;
    }

    public void c(int i, String str, String str2, String str3, long j, int i2, int i3, boolean z, int i4, long j2, String str4) {
        try {
            StringBuffer stringBuffer = new StringBuffer();
            long jCurrentTimeMillis = System.currentTimeMillis() - j2;
            stringBuffer.append("tid=");
            stringBuffer.append(this.p);
            stringBuffer.append("&sid=5&uuid=");
            stringBuffer.append(com.hunantv.imgo.util.b.n());
            stringBuffer.append("&hc=");
            stringBuffer.append(i4);
            stringBuffer.append("&du=");
            stringBuffer.append(jCurrentTimeMillis);
            if (!TextUtils.isEmpty(str3)) {
                if (str3.indexOf("&ft=") == 0) {
                    stringBuffer.append(str3);
                } else {
                    stringBuffer.append("&errorMsg=");
                    stringBuffer.append(str3);
                }
            }
            stringBuffer.append("&foreground=");
            stringBuffer.append(d.f());
            this.r.b(3, i, str2, i2, str, i3, "", stringBuffer.toString(), j, this.a.i().intValue(), z, str4);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void d(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        String strD = d.d(str);
        if (this.a == null || TextUtils.isEmpty(strD)) {
            return;
        }
        if (TextUtils.isEmpty(this.a.v())) {
            this.a.q(strD);
        } else if (!this.a.v().contains(strD)) {
            com.mgtv.downloader.net.entity.a aVar = this.a;
            aVar.q(String.format("%s,%s", aVar.v(), strD));
        }
        c.a("taskID: " + this.b + ", [setFailedHosts] FailedHosts: " + this.a.v() + " host=" + strD);
    }

    public com.mgtv.downloader.net.entity.a b() {
        return this.a;
    }

    public void b(int i) {
        this.c = i;
    }

    public int a() {
        return this.j;
    }

    public void b(@Nullable String str) {
        C0180a c0180a = this.m;
        if (c0180a != null) {
            c0180a.a(true);
        }
        C0180a c0180a2 = new C0180a(str);
        this.m = c0180a2;
        c0180a2.setName("DownloadSDK");
        this.m.start();
    }

    public void a(b bVar) {
        this.v = bVar;
    }

    public void a(com.mgtv.downloader.net.entity.a aVar) {
        this.a = new com.mgtv.downloader.net.entity.a(aVar);
    }

    public void a(String str) {
        this.d = str;
        c(str);
    }

    private void b(int i, String str, String str2, String str3, long j, int i2, int i3, boolean z, int i4, long j2, String str4) {
        StringBuffer stringBuffer = new StringBuffer();
        long jCurrentTimeMillis = System.currentTimeMillis() - j2;
        stringBuffer.append("tid=");
        stringBuffer.append(this.p);
        stringBuffer.append("&sid=5&uuid=");
        stringBuffer.append(com.hunantv.imgo.util.b.n());
        stringBuffer.append("&hc=");
        stringBuffer.append(i4);
        stringBuffer.append("&du=");
        stringBuffer.append(jCurrentTimeMillis);
        if (!TextUtils.isEmpty(str3)) {
            if (str3.indexOf("&ft=") == 0) {
                stringBuffer.append(str3);
            } else {
                stringBuffer.append("&errorMsg=");
                stringBuffer.append(str3);
            }
        }
        stringBuffer.append("&foreground=");
        stringBuffer.append(d.f());
        this.r.a(3, i, str2, i2, str, i3, "", stringBuffer.toString(), j, this.a.i().intValue(), z, str4);
    }

    public void a(int i) {
        this.b = i;
    }

    public int a(final boolean z) {
        if (11 == this.c) {
            if (1 == this.a.n().intValue()) {
                String strC = this.a.c();
                StringBuilder sb = new StringBuilder();
                String str = File.separator;
                if (!strC.endsWith(str)) {
                    strC = strC.concat(str);
                }
                sb.append(strC);
                sb.append("hls");
                String string = sb.toString();
                if (DownloadHlsManager.getInstance().createOfflinePlayTask(this.b, this.a.a().toString(), this.a.i().toString(), this.a.m(), string) < 0) {
                    c.a("taskID: " + this.b + ", hls create task failed");
                    return -1;
                }
                c.a("taskID: " + this.b + ", hls offline play, videoID: " + this.a.a() + ", definition: " + this.a.i() + ", FileMD5:" + this.a.k() + ", FileMD5Calc:" + this.a.l() + ", filePath: " + string);
            } else {
                c.a("taskID: " + this.b + ", mp4 offline play, videoID: " + this.a.a() + ", definition: " + this.a.i() + ", FileMD5:" + this.a.k() + ", FileMD5Calc:" + this.a.l());
            }
            return 0;
        }
        c.a("taskID: " + this.b + ", [startTask]download start, videoID: " + this.a.a());
        if (this.a.f().intValue() != 1 && !n()) {
            if (z) {
                this.a.a((Integer) 1);
                this.a.q("");
                this.a.m("1.8.0");
                b bVar = this.v;
                if (bVar != null) {
                    bVar.a(this.b, this.a, "");
                    this.v.b(this.b, this.a);
                }
            }
            if (!i.a()) {
                c.a("taskID: " + this.b + ", download - sd card unavailable, return");
                this.a.a((Integer) 5);
                b bVar2 = this.v;
                if (bVar2 != null) {
                    bVar2.a(this.b, this.a, 3, "");
                }
                return -1;
            }
            Integer numI = this.a.i();
            int iIntValue = numI == null ? 0 : numI.intValue();
            ImgoHttpParams imgoHttpParams = new ImgoHttpParams();
            Integer numValueOf = Integer.valueOf(iIntValue);
            HttpParams.Type type = HttpParams.Type.BODY;
            imgoHttpParams.put(hb0.KEY_NAME_SNIFF_RESULT_DOWNLOAD_RESOLUTION, numValueOf, type);
            imgoHttpParams.put(TtmlNode.ATTR_ID, this.a.a(), type);
            imgoHttpParams.put("cxid", this.a.t(), type);
            int iNextInt = new SecureRandom().nextInt();
            imgoHttpParams.put("c", Integer.valueOf(iNextInt), type);
            long jCurrentTimeMillis = System.currentTimeMillis();
            imgoHttpParams.put("t", Long.valueOf(jCurrentTimeMillis), type);
            imgoHttpParams.put(CmcdConfiguration.KEY_STREAM_TYPE, "sha256", type);
            imgoHttpParams.put("s", e.b(iNextInt + this.a.t() + jCurrentTimeMillis + "sha256" + this.a.u() + this.a.a() + iIntValue), type);
            imgoHttpParams.put("ch_token", URLEncoder.encode(this.a.s()), type);
            imgoHttpParams.put("other", "", type);
            imgoHttpParams.put("encrypted", "1", type);
            if (!TextUtils.isEmpty(this.a.w())) {
                imgoHttpParams.put("rtype", this.a.w(), type);
            }
            if (!TextUtils.isEmpty(this.a.x())) {
                imgoHttpParams.put("openId", this.a.x(), type);
            }
            if (this.a.n().intValue() == 1) {
                imgoHttpParams.put("hls", (Number) 1, type);
            } else {
                imgoHttpParams.put("hls", (Number) 0, type);
            }
            String strB = d.b();
            String str2 = File.separator;
            String str3 = (strB.endsWith(str2) ? d.b() : d.b().concat(str2)) + "union/video/downloadUrl";
            n.c("DownloadSDK_1.8.0", "[startTask]url path= " + str3);
            final long jCurrentTimeMillis2 = System.currentTimeMillis();
            this.p = "VD_" + com.hunantv.imgo.util.b.t() + "_" + f.b(jCurrentTimeMillis2);
            this.t.b(3000).a(3000).a(str3, imgoHttpParams, new ImgoHttpCallBack<VideoDownloadUrlEntity.DataEntity>() {
                @Override
                public void b(VideoDownloadUrlEntity.DataEntity dataEntity) {
                }

                /* JADX WARN: Multi-variable type inference failed */
                /* JADX WARN: Type inference failed for: r4v18 */
                /* JADX WARN: Type inference failed for: r4v2, types: [java.lang.String] */
                /* JADX WARN: Type inference failed for: r4v3 */
                @Override
                public void a(VideoDownloadUrlEntity.DataEntity dataEntity) throws Throwable {
                    int i;
                    String str4;
                    a aVar;
                    String str5;
                    VideoDownloadUrlEntity.DownloadUrlEntity downloadUrlEntity;
                    String str6;
                    String str7;
                    String finalUrl = e().getFinalUrl();
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("taskID: ");
                    sb2.append(a.this.b);
                    int i2 = ", first layer response success ";
                    sb2.append(", first layer response success ");
                    c.a(sb2.toString());
                    String str8 = null;
                    try {
                        try {
                            if (dataEntity == null) {
                                c.a("taskID: " + a.this.b + ", first layer response success, entity == null");
                                c.a("taskID: " + a.this.b + ", first layer request success，second layer url: ");
                                if (z && a.this.a.f().intValue() != 5) {
                                    a.this.b((String) null);
                                }
                                a.this.w = 0;
                                return;
                            }
                            VideoDownloadUrlEntity.User user = dataEntity.user;
                            if (user != null && user.tstatus == 0) {
                                c.a("taskID: " + a.this.b + ", entity user failed, entity == " + dataEntity.user.toString());
                                if (a.this.v != null) {
                                    if (z) {
                                        a.this.a.a((Integer) 5);
                                    }
                                    a.this.v.a(a.this.b, a.this.a, 10, "10");
                                    c.a("taskID: " + a.this.b + ", first layer request success，second layer url: ");
                                    if (z && a.this.a.f().intValue() != 5) {
                                        a.this.b((String) null);
                                    }
                                    a.this.w = 0;
                                    return;
                                }
                            }
                            if (!TextUtils.isEmpty(dataEntity.name)) {
                                a.this.a.b(dataEntity.name);
                            }
                            if (!TextUtils.isEmpty(dataEntity.image)) {
                                a.this.a.a(dataEntity.image);
                            }
                            if (!TextUtils.isEmpty(dataEntity.clipId)) {
                                a.this.a.g(dataEntity.clipId);
                            }
                            VideoDownloadUrlEntity.DownloadUrlEntity downloadUrlEntity2 = dataEntity.downloadUrl;
                            if (!TextUtils.isEmpty(dataEntity.videoId)) {
                                a.this.a.h(dataEntity.videoId);
                            }
                            if (downloadUrlEntity2 != null && !TextUtils.isEmpty(downloadUrlEntity2.url)) {
                                String str9 = downloadUrlEntity2.url;
                                try {
                                    str5 = str9;
                                    downloadUrlEntity = downloadUrlEntity2;
                                    str6 = ", first layer request success，second layer url: ";
                                    str7 = "10";
                                    try {
                                        a.this.a(0, finalUrl, "", Uri.parse(str9).getQueryParameter("gsid"), "", 1, 200, jCurrentTimeMillis2);
                                    } catch (Throwable th) {
                                        th = th;
                                        try {
                                            th.printStackTrace();
                                        } catch (Exception e) {
                                            e = e;
                                            str4 = str6;
                                            str8 = str5;
                                            i = 0;
                                            e.printStackTrace();
                                            c.a("taskID: " + a.this.b + ", first layer failed try catch: " + e.toString());
                                            c.a("taskID: " + a.this.b + str4);
                                            if (z) {
                                                a.this.b(str8);
                                            }
                                            aVar = a.this;
                                        } catch (Throwable th2) {
                                            th = th2;
                                            finalUrl = str6;
                                            str8 = str5;
                                            i2 = 0;
                                            c.a("taskID: " + a.this.b + finalUrl);
                                            if (z && a.this.a.f().intValue() != 5) {
                                                a.this.b(str8);
                                            }
                                            a.this.w = i2;
                                            throw th;
                                        }
                                    }
                                } catch (Throwable th3) {
                                    th = th3;
                                    str5 = str9;
                                    downloadUrlEntity = downloadUrlEntity2;
                                    str6 = ", first layer request success，second layer url: ";
                                    str7 = "10";
                                }
                                com.mgtv.downloader.net.entity.a aVar2 = a.this.a;
                                if (aVar2 != null) {
                                    boolean z2 = true;
                                    boolean z3 = (TextUtils.isEmpty(aVar2.A) || TextUtils.isEmpty(downloadUrlEntity.fileSize) || TextUtils.equals(a.this.a.A, downloadUrlEntity.fileSize)) ? false : true;
                                    if (TextUtils.isEmpty(a.this.a.C) || TextUtils.isEmpty(downloadUrlEntity.md5) || TextUtils.equals(a.this.a.C, downloadUrlEntity.md5)) {
                                        z2 = false;
                                    }
                                    if (TextUtils.isEmpty(downloadUrlEntity.fileSize)) {
                                        c.a("taskID: " + a.this.b + ", first file size is null ");
                                        a.this.a(0, finalUrl, "105003", "", downloadUrlEntity.toString(), 0, 200, jCurrentTimeMillis2);
                                    } else {
                                        a.this.a.i(downloadUrlEntity.fileSize);
                                        a.this.a.b(Long.valueOf(Long.parseLong(downloadUrlEntity.fileSize)));
                                    }
                                    if (TextUtils.isEmpty(downloadUrlEntity.md5)) {
                                        c.a("taskID: " + a.this.b + ", first md5 is null ");
                                        a.this.a(0, finalUrl, "105005", "", downloadUrlEntity.toString(), 0, 200, jCurrentTimeMillis2);
                                    } else {
                                        a.this.a.j(downloadUrlEntity.md5);
                                    }
                                    if (z3 || z2) {
                                        if (a.this.a.n().intValue() == 0) {
                                            a.this.a.a((Long) 0L);
                                        }
                                        c.a("taskID: " + a.this.b + ", need reDownload, fileSizeChanged: " + z3 + ", fileMD5Changed: " + z2);
                                    }
                                    if (z3) {
                                        a.this.a(0, finalUrl, "105002", "", "", 0, 200, jCurrentTimeMillis2);
                                    }
                                    if (z2 != 0) {
                                        a.this.a(0, finalUrl, "105004", "", "", 0, 200, jCurrentTimeMillis2);
                                    }
                                } else {
                                    str7 = str7;
                                }
                                if (a.this.v != null) {
                                    a.this.v.d(a.this.b, a.this.a, str7);
                                }
                                c.a("taskID: " + a.this.b + str6);
                                if (z && a.this.a.f().intValue() != 5) {
                                    a.this.b(str5);
                                }
                                aVar = a.this;
                                i = 0;
                                aVar.w = i;
                            }
                            i = 0;
                            str4 = ", first layer request success，second layer url: ";
                            try {
                                c.a("taskID: " + a.this.b + ", first layer request url is null, return");
                                c.a("taskID: " + a.this.b + str4);
                                if (z && a.this.a.f().intValue() != 5) {
                                    a.this.b((String) null);
                                }
                                a.this.w = 0;
                                return;
                            } catch (Exception e2) {
                                e = e2;
                            }
                            e.printStackTrace();
                            c.a("taskID: " + a.this.b + ", first layer failed try catch: " + e.toString());
                            c.a("taskID: " + a.this.b + str4);
                            if (z && a.this.a.f().intValue() != 5) {
                                a.this.b(str8);
                            }
                            aVar = a.this;
                            aVar.w = i;
                        } catch (Throwable th4) {
                            th = th4;
                        }
                    } catch (Exception e3) {
                        e = e3;
                        i = 0;
                        str4 = ", first layer request success，second layer url: ";
                    } catch (Throwable th5) {
                        th = th5;
                        i2 = 0;
                        finalUrl = ", first layer request success，second layer url: ";
                    }
                }

                /* JADX WARN: Code duplicated, block: B:57:0x0230 A[ADDED_TO_REGION] */
                @Override
                public void a(VideoDownloadUrlEntity.DataEntity dataEntity, int i, int i2, @Nullable String str4, @Nullable Throwable th) {
                    a aVar;
                    String str5;
                    int i3;
                    if (dataEntity != null) {
                        try {
                            VideoDownloadUrlEntity.User user = dataEntity.user;
                            if (user != null && user.tstatus == 0) {
                                c.a("taskID: " + a.this.b + ", resultData user failed, resultData == " + dataEntity.user.toString());
                                if (a.this.v != null) {
                                    if (z) {
                                        a.this.a.a((Integer) 5);
                                    }
                                    a.this.v.a(a.this.b, a.this.a, 10, "10");
                                }
                                a.this.w = -1;
                                return;
                            }
                        } catch (Throwable th2) {
                            try {
                                c.a(th2.toString());
                            } finally {
                                a.this.w = -1;
                            }
                        }
                    }
                    String finalUrl = e().getFinalUrl();
                    String string2 = e().getResponseHeader() == null ? "" : e().getResponseHeader().toString();
                    c.a("taskID: " + a.this.b + ", first layer failed responseHeader: " + string2 + ", response: " + e().getResponse());
                    c.a("taskID: " + a.this.b + ", first layer failed code: " + i2 + ", httpStatus: " + i + ", info: " + str4);
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("taskID: ");
                    sb2.append(a.this.b);
                    sb2.append(", first layer failed url: ");
                    sb2.append(finalUrl);
                    c.a(sb2.toString());
                    if (b() == ImgoHttpCallBack.ErrorType.BUSINESS_ERROR) {
                        c.a("taskID: " + a.this.b + ", errorType: " + b() + ", code: " + i2 + ", info: " + str4);
                        a.this.a(0, finalUrl, "105000", "", str4, 1, 200, jCurrentTimeMillis2);
                        a.this.a.a((Integer) 5);
                        b bVar3 = a.this.v;
                        int i4 = a.this.b;
                        com.mgtv.downloader.net.entity.a aVar2 = a.this.a;
                        StringBuilder sb3 = new StringBuilder();
                        sb3.append("");
                        sb3.append(i2);
                        bVar3.a(i4, aVar2, 20, sb3.toString());
                        a.this.w = -1;
                        return;
                    }
                    String str6 = "101" + String.valueOf(i);
                    if (i == -2) {
                        str5 = "103000";
                    } else {
                        if (i == 200) {
                            if (th instanceof HttpFormatException) {
                                str6 = "102000";
                                c.a("taskID: " + a.this.b + ", http status ok, e: " + th.toString());
                                i3 = 200;
                            }
                            str5 = str6;
                            if (z && i != -5) {
                                a.this.a(-1, finalUrl, str5, str5, str4, 1, i3, jCurrentTimeMillis2);
                                a.this.b((String) null);
                            }
                        }
                        if (i == -1) {
                            str5 = "11." + String.valueOf(i);
                        } else if (i == -5 && z) {
                            try {
                                try {
                                    Thread.sleep(2000L);
                                    aVar = a.this;
                                } catch (Throwable th3) {
                                    a.this.a(true);
                                    throw th3;
                                }
                            } catch (Exception e) {
                                c.a(e.toString());
                                aVar = a.this;
                            }
                            aVar.a(true);
                        }
                        i3 = i;
                        str5 = str6;
                        if (z) {
                            a.this.a(-1, finalUrl, str5, str5, str4, 1, i3, jCurrentTimeMillis2);
                            a.this.b((String) null);
                        }
                    }
                    i3 = i;
                    if (z) {
                        a.this.a(-1, finalUrl, str5, str5, str4, 1, i3, jCurrentTimeMillis2);
                        a.this.b((String) null);
                    }
                }
            });
            StringBuilder sb2 = new StringBuilder();
            sb2.append("startTask = end ");
            sb2.append(this.w);
            c.a(sb2.toString());
            return this.w;
        }
        if (11 == this.a.f().intValue()) {
            c.a("taskID: " + this.b + ", status is downloading or lock is locked, switch status from block_restart to block ");
            this.j = this.j + 1;
            this.a.a((Integer) 2);
        }
        c.a("taskID: " + this.b + ", status is downloading or lock is locked, status: " + this.a.f() + ", locked: " + n());
        return 1;
    }

    public void c(int i) {
        String str;
        if (1 == i) {
            str = "DOWNLOADING";
        } else if (2 == i) {
            str = "BLOCK";
        } else if (11 == i) {
            str = "BLOCK_RESTART";
        } else if (3 == i) {
            str = "PAUSE";
        } else if (4 == i) {
            str = "COMPLETE";
        } else if (5 == i) {
            str = "FAILED";
        } else if (6 == i) {
            str = "FAILED_NO_NET";
        } else if (7 == i) {
            str = "DELETE";
        } else if (8 == i) {
            str = "FILESYS_ERR";
        } else if (10 != i) {
            str = "";
        } else {
            str = "MD5_CHECK_FAILED";
        }
        c.a("taskID: " + this.b + ", update to status: " + str);
        this.a.a(Integer.valueOf(i));
        b bVar = this.v;
        if (bVar != null) {
            if (4 == i) {
                bVar.a(this.b, this.a);
                return;
            }
            if (5 == i) {
                bVar.b(this.b, this.a);
                this.v.a(this.b, this.a, 7, "");
                return;
            }
            if (6 == i) {
                bVar.b(this.b, this.a);
                this.v.b(this.b, this.a, "2");
                return;
            }
            if (1 == i || 2 == i || 3 == i) {
                bVar.b(this.b, this.a);
                this.v.a(this.b, this.a, "");
            } else if (8 == i) {
                bVar.b(this.b, this.a);
                this.v.a(this.b, this.a, 4, "");
            } else if (10 == i) {
                bVar.b(this.b, this.a);
                this.v.a(this.b, this.a, 301504, "");
            }
        }
    }

    public void b(final b bVar) {
        c.a("taskID: " + this.b + ", delete offline cache start, videoID: " + this.a.a());
        this.a.a((Integer) 7);
        C0180a c0180a = this.m;
        if (c0180a != null && c0180a.isAlive()) {
            try {
                this.m.interrupt();
            } catch (Exception e) {
                c.a("taskID: " + this.b + ", deleteOfflineCache exception: " + e.toString());
            }
        }
        Thread thread = new Thread(new Runnable() {
            @Override
            public void run() {
                if (a.this.a.n() == null) {
                    File file = new File(a.this.a.c());
                    if (file.exists()) {
                        c.a("taskID: " + a.this.b + ", media type is null, deleted mp4 offline, videoID: " + a.this.a.a());
                        file.delete();
                    }
                } else if (1 == a.this.a.n().intValue()) {
                    int iDeleteOfflineCache = DownloadHlsManager.getInstance().deleteOfflineCache(a.this.a.m(), a.this.a.c());
                    if (iDeleteOfflineCache < 0) {
                        c.a("taskID: " + a.this.b + ", delete hls offline cache failed, videoID: " + a.this.a.a() + ", definition: " + a.this.a.i() + ", ret: " + iDeleteOfflineCache);
                    }
                } else {
                    File file2 = new File(a.this.a.c());
                    if (file2.exists()) {
                        c.a("taskID: " + a.this.b + ", media type not null, deleted mp4 offline, videoID: " + a.this.a.a());
                        file2.delete();
                    }
                }
                a.this.a.a((Long) 0L);
                a.this.a.a((Integer) 2);
                b bVar2 = bVar;
                if (bVar2 != null) {
                    bVar2.c(a.this.c(), a.this.a);
                }
            }
        });
        thread.setName("DownloadSDK");
        thread.start();
        c.a("taskID: " + this.b + ", Task is already deleted offline, videoID: " + this.a.a());
    }

    private void c(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (jSONObject.has("switchCDN")) {
                this.e = jSONObject.getInt("switchCDN");
                c.a("taskID: " + this.b + ", [resolveExInfo] switchCDN: " + this.e);
            }
        } catch (Throwable unused) {
        }
    }

    /* JADX WARN: Not initialized variable reg: 24, insn: 0x03a1: MOVE (r12 I:??[OBJECT, ARRAY]) = (r24 I:??[OBJECT, ARRAY]), block:B:150:0x039a */
    /* JADX WARN: Not initialized variable reg: 24, insn: 0x03af: MOVE (r12 I:??[OBJECT, ARRAY]) = (r24 I:??[OBJECT, ARRAY]), block:B:152:0x03a6 */
    /* JADX WARN: Not initialized variable reg: 24, insn: 0x03bd: MOVE (r12 I:??[OBJECT, ARRAY]) = (r24 I:??[OBJECT, ARRAY]), block:B:154:0x03b4 */
    /* JADX WARN: Not initialized variable reg: 24, insn: 0x03cb: MOVE (r12 I:??[OBJECT, ARRAY]) = (r24 I:??[OBJECT, ARRAY]), block:B:156:0x03c2 */
    /* JADX WARN: Unreachable blocks removed: 2, instructions: 2 */
    /*  JADX ERROR: Types fix failed
        jadx.core.utils.exceptions.JadxOverflowException: Type inference error: updates count limit reached with updateSeq = 17241. Try increasing type updates limit count.
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:99)
        */
    public com.mgtv.downloader.net.entity.DownloadData a(java.lang.String r26, int r27, int r28) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 1724
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mgtv.downloader.a.a.a(java.lang.String, int, int):com.mgtv.downloader.net.entity.DownloadData");
    }

    private void a(int i, String str, String str2, String str3, HttpURLConnection httpURLConnection, int i2, int i3, long j, String str4) {
        int contentLength;
        if (httpURLConnection == null) {
            contentLength = -1;
        } else {
            try {
                contentLength = httpURLConnection.getContentLength();
            } catch (Exception e) {
                n.b("DownloadSDK_1.8.0", e.toString());
                return;
            }
        }
        a(i, str, str2, str3, contentLength, i2, i3, 200, j, str4);
        c.a("taskID: " + this.b + ", getDownloadRealUrl - errorCode: " + str2 + ", errorMsg: " + str3);
    }

    public void a(int i, String str, String str2, String str3, String str4, int i2, int i3, long j) {
        try {
            StringBuffer stringBuffer = new StringBuffer();
            long jCurrentTimeMillis = System.currentTimeMillis() - j;
            stringBuffer.append("tid=");
            stringBuffer.append(this.p);
            stringBuffer.append("&sid=2&uuid=");
            stringBuffer.append(com.hunantv.imgo.util.b.n());
            stringBuffer.append("&hc=");
            stringBuffer.append(i3);
            stringBuffer.append("&du=");
            stringBuffer.append(jCurrentTimeMillis);
            if (i3 == 682) {
                stringBuffer.append("&ua=");
                stringBuffer.append(d.e());
            }
            if (!TextUtils.isEmpty(str4)) {
                stringBuffer.append("&errorMsg=");
                stringBuffer.append(str4);
            }
            stringBuffer.append("&foreground=");
            stringBuffer.append(d.f());
            this.r.a(1, i, str2, i2, str, 0, str3, stringBuffer.toString(), -1L, PreferencesUtil.a("me_setting_download_resolution", 1), false, "");
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    private void a(int i, String str, String str2, String str3, int i2, int i3, int i4, int i5, long j, String str4) {
        try {
            StringBuffer stringBuffer = new StringBuffer();
            long jCurrentTimeMillis = System.currentTimeMillis() - j;
            stringBuffer.append("tid=");
            stringBuffer.append(this.p);
            stringBuffer.append("&sid=4&uuid=");
            stringBuffer.append(com.hunantv.imgo.util.b.n());
            stringBuffer.append("&hc=");
            stringBuffer.append(i5);
            stringBuffer.append("&du=");
            stringBuffer.append(jCurrentTimeMillis);
            if (i5 == 682) {
                stringBuffer.append("&ua=");
                stringBuffer.append(d.e());
            }
            if (!TextUtils.isEmpty(str3)) {
                stringBuffer.append("&errorMsg=");
                stringBuffer.append(str3);
            }
            stringBuffer.append("&foreground=");
            stringBuffer.append(d.f());
            this.r.a(2, i, str2, i3, str, i4, "", stringBuffer.toString(), i2, this.a.i().intValue(), false, str4);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void a(int i, String str, String str2, String str3, long j, int i2, int i3, boolean z, int i4, long j2, String str4) {
        try {
            if (this.o) {
                return;
            }
            this.o = true;
            n.c("DownloadSDK_1.8.0", "[sendCdn3]error: " + str2 + ", errormsg: " + str3);
            b(i, str, str2, str3, j, i2, i3, z, i4, j2, str4);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @NonNull
    public String a(Throwable th) {
        if (th != null) {
            StringWriter stringWriter = new StringWriter();
            th.printStackTrace(new PrintWriter(stringWriter));
            return stringWriter.toString();
        }
        return "";
    }
}
