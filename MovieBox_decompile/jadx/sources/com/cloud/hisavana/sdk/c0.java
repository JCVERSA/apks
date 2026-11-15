package com.cloud.hisavana.sdk;

import android.util.Log;
import com.cloud.hisavana.net.HttpRequest;
import com.cloud.hisavana.net.disklrucache.ImageCacheURL;
import com.cloud.hisavana.net.disklrucache.impl.IDiskCache;
import com.cloud.hisavana.net.disklrucache.utils.DiskLruCacheUtil;
import com.cloud.hisavana.sdk.common.athena.AthenaTracker;
import com.cloud.hisavana.sdk.common.bean.AdImage;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.cloud.hisavana.sdk.common.http.DownLoadRequest;
import com.cloud.hisavana.sdk.common.http.listener.DrawableResponseListener;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.internal.agentpage.AgentPageJsBridge;
import com.cloud.tmc.integration.audio.recording.RecorderConstants;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.File;
import java.io.FileInputStream;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.Metadata;
import kotlin.io.FilesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

public final class c0 {

    public static final c0 f21112a = new c0();

    private static final a f21113b = new a();

    @Metadata(d1 = {"\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u0012\u0012\u0004\u0012\u00020\u00020\u0001j\b\u0012\u0004\u0012\u00020\u0002`\u0003¨\u0006\u0004"}, d2 = {"com/cloud/hisavana/sdk/c0$a", "Ljava/util/HashSet;", "", "Lkotlin/collections/HashSet;", "api_release"}, k = 1, mv = {1, 9, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class a extends HashSet<String> {
        a() {
            add("jpg");
            add("jpeg");
            add("png");
            add("gif");
            add("bmp");
            add("webp");
            add("tiff");
            add("tif");
            add("svg");
            add("ico");
            add("heif");
            add("heic");
            add("mp4");
            add(RecorderConstants.FORMAT_M4A);
            add("fmp4");
            add("webm");
            add("mkv");
            add("ogg");
            add(RecorderConstants.FORMAT_WAV);
            add("flv");
            add("adts");
            add(RecorderConstants.FORMAT_AAC);
            add("html");
            add("htm");
            add("css");
            add("js");
            add("ttf");
            add("woff");
            add("woff2");
            add("otf");
            add("eot");
            add("xml");
            add("swf");
            add(MimeTypes.BASE_TYPE_TEXT);
            add("conf");
        }

        public boolean a(String str) {
            return super.contains(str);
        }

        public boolean b(String str) {
            return super.remove(str);
        }

        @Override
        public final boolean contains(Object obj) {
            if (obj instanceof String) {
                return a((String) obj);
            }
            return false;
        }

        @Override
        public final boolean remove(Object obj) {
            if (obj instanceof String) {
                return b((String) obj);
            }
            return false;
        }

        @Override
        public final int size() {
            return a();
        }

        public int a() {
            return super.size();
        }
    }

    public static final class b extends DrawableResponseListener {

        final String f21114b;

        b(String str) {
            this.f21114b = str;
        }

        @Override
        public void a(TaErrorCode taErrorCode) {
            b4.b().d("DefaultMaterialManager", "request error，URL---》" + this.f21114b);
        }

        @Override
        public void g(int i10, AdImage adImage) {
            if (adImage != null) {
                String str = this.f21114b;
                try {
                    b4.b().d("DefaultMaterialManager", "request success，filepath ----》" + adImage.getFilePath());
                    AthenaTracker.c0(str, 2, 2, 0L);
                } catch (Throwable th2) {
                    b4.b().w("DefaultMaterialManager", Log.getStackTraceString(th2));
                }
            }
        }
    }

    public static final class c extends DrawableResponseListener {

        final String f21115b;

        final AtomicInteger f21116c;

        final String f21117d;

        final h4 f21118e;

        final Function0 f21119f;

        final AdsDTO f21120g;

        c(String str, AtomicInteger atomicInteger, String str2, h4 h4Var, Function0 function0, AdsDTO adsDTO) {
            this.f21115b = str;
            this.f21116c = atomicInteger;
            this.f21117d = str2;
            this.f21118e = h4Var;
            this.f21119f = function0;
            this.f21120g = adsDTO;
        }

        @Override
        public void a(TaErrorCode taErrorCode) {
            b4.b().d("DefaultMaterialManager", "request error，URL---》" + this.f21115b);
            this.f21116c.getAndIncrement();
            c0.f21112a.f(this.f21117d, this.f21118e.c(), this.f21116c, this.f21119f);
        }

        @Override
        public void g(int i10, AdImage adImage) {
            if (adImage != null) {
                String str = this.f21115b;
                AdsDTO adsDTO = this.f21120g;
                String str2 = this.f21117d;
                h4 h4Var = this.f21118e;
                AtomicInteger atomicInteger = this.f21116c;
                Function0 function0 = this.f21119f;
                b4.b().d("DefaultMaterialManager", "request success，main url is " + str + ", filepath ----》" + adImage.getFilePath());
                d0 d0Var = d0.f21734a;
                String adCreativeId = adsDTO.getAdCreativeId();
                Intrinsics.g(adCreativeId, "getAdCreativeId(...)");
                String codeSeatId = adsDTO.getCodeSeatId();
                Intrinsics.g(codeSeatId, "getCodeSeatId(...)");
                String filePath = adImage.getFilePath();
                Intrinsics.g(filePath, "getFilePath(...)");
                d0Var.g(adCreativeId, codeSeatId, filePath);
                c0.f21112a.f(str2, h4Var.c(), atomicInteger, function0);
            }
        }
    }

    private c0() {
    }

    private final void d(AdsDTO adsDTO) {
        String strE = a0.f20947a.e(adsDTO);
        if (strE != null) {
            DownLoadRequest.j(strE, 3, adsDTO.isOfflineAd(), 1, false, 4, false, adsDTO, null);
        }
        DownLoadRequest.j(adsDTO.getAdChoiceImageUrl(), 3, adsDTO.isOfflineAd(), 3, false, 4, false, adsDTO, null);
    }

    private final boolean g(File file) {
        if (!file.exists() || file.isDirectory()) {
            return false;
        }
        a aVar = f21113b;
        String strW = FilesKt.w(file);
        Locale locale = Locale.getDefault();
        Intrinsics.g(locale, "getDefault(...)");
        String lowerCase = strW.toLowerCase(locale);
        Intrinsics.g(lowerCase, "toLowerCase(...)");
        return aVar.contains(lowerCase);
    }

    private final boolean h(File file) {
        FileInputStream fileInputStream;
        if (!file.exists()) {
            return true;
        }
        try {
            try {
                IDiskCache iDiskCacheG = DiskLruCacheUtil.g(4);
                ImageCacheURL imageCacheURL = new ImageCacheURL(file.getName());
                b4.b().d("DefaultMaterialManager", "saveDefaultAdMaterial, sourceFile is " + file.getName() + ", key is " + imageCacheURL);
                File fileC = iDiskCacheG.c(imageCacheURL);
                if (fileC != null && fileC.exists() && fileC.isFile()) {
                    iDiskCacheG.a(imageCacheURL);
                }
                fileInputStream = new FileInputStream(file);
                try {
                    String strE = iDiskCacheG.e(imageCacheURL, fileInputStream);
                    if (strE == null) {
                        strE = "";
                    }
                    if (strE.length() > 0) {
                        file.delete();
                    }
                    fileInputStream.close();
                } catch (Throwable th2) {
                    th = th2;
                    try {
                        b4.b().w("DefaultMaterialManager", Log.getStackTraceString(th));
                        if (fileInputStream == null) {
                            return false;
                        }
                        fileInputStream.close();
                    } catch (Throwable th3) {
                        if (fileInputStream != null) {
                            try {
                                fileInputStream.close();
                            } catch (Throwable unused) {
                            }
                        }
                        throw th3;
                    }
                }
            } catch (Throwable unused2) {
                return false;
            }
        } catch (Throwable th4) {
            th = th4;
            fileInputStream = null;
        }
        return false;
    }

    public final h4 a(List ads) {
        Intrinsics.h(ads, "ads");
        Iterator it = ads.iterator();
        h4 h4Var = null;
        h4 h4Var2 = null;
        while (it.hasNext()) {
            AdsDTO adsDTO = (AdsDTO) it.next();
            if (adsDTO != null) {
                h4 h4Var3 = new h4(adsDTO);
                if (h4Var2 == null) {
                    h4Var = h4Var3;
                } else {
                    h4Var2.b(h4Var3);
                }
                h4Var2 = h4Var3;
            }
        }
        return h4Var;
    }

    public final void b() {
        try {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(com.cloud.hisavana.sdk.common.util.m.b(com.cloud.sdk.commonutil.util.e.a()));
            String str = File.separator;
            sb2.append(str);
            sb2.append("default_ad_data");
            sb2.append(str);
            sb2.append(c7.b.f16688b);
            File file = new File(sb2.toString());
            if (file.exists() && file.isDirectory()) {
                File[] fileArrListFiles = file.listFiles();
                int length = fileArrListFiles != null ? fileArrListFiles.length : 0;
                File[] fileArrListFiles2 = file.listFiles();
                if (fileArrListFiles2 != null) {
                    for (File file2 : fileArrListFiles2) {
                        if (file2.exists()) {
                            c0 c0Var = f21112a;
                            Intrinsics.e(file2);
                            if (c0Var.g(file2) && c0Var.h(file2)) {
                                length--;
                            }
                        }
                    }
                }
                l7.a.e().o("default_file_save_finished", length <= 2);
            }
        } catch (Throwable th2) {
            b4.b().w("DefaultMaterialManager", Log.getStackTraceString(th2));
        }
    }

    public final void c(int i10) {
        if (i10 > 0) {
            HttpRequest.f20712a.k(i10);
        }
    }

    public final void e(String url) {
        Intrinsics.h(url, "url");
        DownLoadRequest.j(url, 3, false, 4, false, 4, false, null, new b(url));
        AthenaTracker.c0(url, 2, 1, 0L);
    }

    public final void f(String codeSeatId, h4 h4Var, AtomicInteger count, Function0 callback) {
        Intrinsics.h(codeSeatId, "codeSeatId");
        Intrinsics.h(count, "count");
        Intrinsics.h(callback, "callback");
        if (h4Var == null) {
            callback.invoke();
            return;
        }
        AdsDTO adsDTOA = h4Var.a();
        if (h4Var.a() == null) {
            f(codeSeatId, h4Var.c(), count, callback);
            return;
        }
        a0 a0Var = a0.f20947a;
        Intrinsics.e(adsDTOA);
        String strJ = a0Var.j(adsDTOA);
        DownLoadRequest.j(strJ, 3, adsDTOA.isOfflineAd(), 2, true, 4, adsDTOA.getDefaultMaterialType() == 2, adsDTOA, new c(strJ, count, codeSeatId, h4Var, callback, adsDTOA));
        d(adsDTOA);
        String clickUrl = adsDTOA.getClickUrl();
        Intrinsics.g(clickUrl, "getClickUrl(...)");
        if (StringsKt.c0(clickUrl, AgentPageJsBridge.AGENT_PAGE_INFO, false, 2, null)) {
            String clickUrl2 = adsDTOA.getClickUrl();
            Intrinsics.g(clickUrl2, "getClickUrl(...)");
            e(clickUrl2);
        }
    }
}
