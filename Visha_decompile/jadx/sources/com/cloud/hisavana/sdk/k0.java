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
import com.hunantv.media.player.MgtvMediaPlayer;
import defpackage.c74;
import defpackage.dnd;
import defpackage.fv3;
import defpackage.ikd;
import defpackage.j1a;
import defpackage.o9;
import defpackage.r6;
import defpackage.ul4;
import defpackage.y45;
import defpackage.yu3;
import java.io.File;
import java.io.FileInputStream;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.Metadata;
import org.apache.commons.text.lookup.StringLookupFactory;

public final class k0 {
    public static final k0 a = new k0();
    public static final a b = new a();

    @Metadata(d1 = {"\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u0012\u0012\u0004\u0012\u00020\u00020\u0001j\b\u0012\u0004\u0012\u00020\u0002`\u0003¨\u0006\u0004"}, d2 = {"com/cloud/hisavana/sdk/k0$a", "Ljava/util/HashSet;", "", "Lkotlin/collections/HashSet;", "api_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class a extends HashSet<String> {
        public a() {
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
            add("m4a");
            add(MgtvMediaPlayer.DataSourceInfo.FILE_FORMAT_FMP4);
            add("webm");
            add("mkv");
            add("ogg");
            add("wav");
            add("flv");
            add("adts");
            add("aac");
            add("html");
            add("htm");
            add("css");
            add("js");
            add("ttf");
            add("woff");
            add("woff2");
            add("otf");
            add("eot");
            add(StringLookupFactory.KEY_XML);
            add("swf");
            add("text");
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
        public final String b;

        public b(String str) {
            this.b = str;
        }

        @Override
        public void a(TaErrorCode taErrorCode) {
            ikd.b().d("DefaultMaterialManager", "request error，URL---》" + this.b);
        }

        @Override
        public void g(int i, AdImage adImage) {
            if (adImage != null) {
                String str = this.b;
                try {
                    ikd.b().d("DefaultMaterialManager", "request success，filepath ----》" + adImage.getFilePath());
                    AthenaTracker.i0(str, 2, 2, 0L);
                } catch (Throwable th) {
                    ikd.b().w("DefaultMaterialManager", Log.getStackTraceString(th));
                }
            }
        }
    }

    public static final class c extends DrawableResponseListener {
        public final String b;
        public final AtomicInteger c;
        public final String d;
        public final dnd e;
        public final c74 f;
        public final AdsDTO g;

        public c(String str, AtomicInteger atomicInteger, String str2, dnd dndVar, c74 c74Var, AdsDTO adsDTO) {
            this.b = str;
            this.c = atomicInteger;
            this.d = str2;
            this.e = dndVar;
            this.f = c74Var;
            this.g = adsDTO;
        }

        @Override
        public void a(TaErrorCode taErrorCode) {
            ikd.b().d("DefaultMaterialManager", "request error，URL---》" + this.b);
            this.c.getAndIncrement();
            k0.a.f(this.d, this.e.c(), this.c, this.f);
        }

        @Override
        public void g(int i, AdImage adImage) {
            if (adImage != null) {
                String str = this.b;
                AdsDTO adsDTO = this.g;
                String str2 = this.d;
                dnd dndVar = this.e;
                AtomicInteger atomicInteger = this.c;
                c74 c74Var = this.f;
                ikd.b().d("DefaultMaterialManager", "request success，main url is " + str + ", filepath ----》" + adImage.getFilePath());
                l0 l0Var = l0.a;
                String adCreativeId = adsDTO.getAdCreativeId();
                y45.i(adCreativeId, "getAdCreativeId(...)");
                String codeSeatId = adsDTO.getCodeSeatId();
                y45.i(codeSeatId, "getCodeSeatId(...)");
                String filePath = adImage.getFilePath();
                y45.i(filePath, "getFilePath(...)");
                l0Var.g(adCreativeId, codeSeatId, filePath);
                k0.a.f(str2, dndVar.c(), atomicInteger, c74Var);
            }
        }
    }

    public final dnd a(List list) {
        y45.j(list, "ads");
        Iterator it = list.iterator();
        dnd dndVar = null;
        dnd dndVar2 = null;
        while (it.hasNext()) {
            AdsDTO adsDTO = (AdsDTO) it.next();
            if (adsDTO != null) {
                dnd dndVar3 = new dnd(adsDTO);
                if (dndVar2 == null) {
                    dndVar = dndVar3;
                } else {
                    dndVar2.b(dndVar3);
                }
                dndVar2 = dndVar3;
            }
        }
        return dndVar;
    }

    public final void b() {
        try {
            StringBuilder sb = new StringBuilder();
            sb.append(yu3.b(ul4.a()));
            String str = File.separator;
            sb.append(str);
            sb.append(C0520g0.a.x());
            sb.append(str);
            sb.append(r6.b);
            File file = new File(sb.toString());
            if (file.exists() && file.isDirectory()) {
                File[] fileArrListFiles = file.listFiles();
                int length = fileArrListFiles != null ? fileArrListFiles.length : 0;
                File[] fileArrListFiles2 = file.listFiles();
                if (fileArrListFiles2 != null) {
                    for (File file2 : fileArrListFiles2) {
                        if (file2.exists()) {
                            k0 k0Var = a;
                            y45.g(file2);
                            if (k0Var.g(file2) && k0Var.h(file2)) {
                                length--;
                            }
                        }
                    }
                }
                o9.e().o("default_file_save_finished", length <= 2);
            }
        } catch (Throwable th) {
            ikd.b().w("DefaultMaterialManager", Log.getStackTraceString(th));
        }
    }

    public final void c(int i) {
        if (i > 0) {
            HttpRequest.a.k(i);
        }
    }

    public final void d(AdsDTO adsDTO) {
        String strD = i0.a.d(adsDTO);
        if (strD != null) {
            DownLoadRequest.j(strD, 3, adsDTO.isOfflineAd(), 1, false, 4, false, adsDTO, null);
        }
        DownLoadRequest.j(adsDTO.getAdChoiceImageUrl(), 3, adsDTO.isOfflineAd(), 3, false, 4, false, adsDTO, null);
    }

    public final void e(String str) {
        y45.j(str, "url");
        DownLoadRequest.j(str, 3, false, 4, false, 4, false, null, new b(str));
        AthenaTracker.i0(str, 2, 1, 0L);
    }

    public final void f(String str, dnd dndVar, AtomicInteger atomicInteger, c74 c74Var) {
        y45.j(str, "codeSeatId");
        y45.j(atomicInteger, "count");
        y45.j(c74Var, "callback");
        if (dndVar == null) {
            c74Var.invoke();
            return;
        }
        AdsDTO adsDTOA = dndVar.a();
        if (dndVar.a() == null) {
            f(str, dndVar.c(), atomicInteger, c74Var);
            return;
        }
        i0 i0Var = i0.a;
        y45.g(adsDTOA);
        String strI = i0Var.i(adsDTOA);
        DownLoadRequest.j(strI, 3, adsDTOA.isOfflineAd(), 2, true, 4, adsDTOA.getDefaultMaterialType() == 2, adsDTOA, new c(strI, atomicInteger, str, dndVar, c74Var, adsDTOA));
        d(adsDTOA);
        String clickUrl = adsDTOA.getClickUrl();
        y45.i(clickUrl, "getClickUrl(...)");
        if (j1a.X(clickUrl, AgentPageJsBridge.AGENT_PAGE_INFO, false, 2, null)) {
            String clickUrl2 = adsDTOA.getClickUrl();
            y45.i(clickUrl2, "getClickUrl(...)");
            e(clickUrl2);
        }
    }

    public final boolean g(File file) {
        if (!file.exists() || file.isDirectory()) {
            return false;
        }
        a aVar = b;
        String strK = fv3.k(file);
        Locale locale = Locale.getDefault();
        y45.i(locale, "getDefault(...)");
        String lowerCase = strK.toLowerCase(locale);
        y45.i(lowerCase, "toLowerCase(...)");
        return aVar.contains(lowerCase);
    }

    public final boolean h(File file) {
        FileInputStream fileInputStream;
        if (!file.exists()) {
            return true;
        }
        try {
            try {
                IDiskCache iDiskCacheG = DiskLruCacheUtil.g(4);
                ImageCacheURL imageCacheURL = new ImageCacheURL(file.getName());
                ikd.b().d("DefaultMaterialManager", "saveDefaultAdMaterial, sourceFile is " + file.getName() + ", key is " + imageCacheURL);
                File fileD = iDiskCacheG.d(imageCacheURL);
                if (fileD != null && fileD.exists() && fileD.isFile()) {
                    iDiskCacheG.c(imageCacheURL);
                }
                fileInputStream = new FileInputStream(file);
                try {
                    String strF = iDiskCacheG.f(imageCacheURL, fileInputStream);
                    if (strF == null) {
                        strF = "";
                    }
                    if (strF.length() > 0) {
                        file.delete();
                    }
                    fileInputStream.close();
                } catch (Throwable th) {
                    th = th;
                    try {
                        ikd.b().w("DefaultMaterialManager", Log.getStackTraceString(th));
                        if (fileInputStream == null) {
                            return false;
                        }
                        fileInputStream.close();
                    } catch (Throwable th2) {
                        if (fileInputStream != null) {
                            try {
                                fileInputStream.close();
                            } catch (Throwable unused) {
                            }
                        }
                        throw th2;
                    }
                }
            } catch (Throwable unused2) {
                return false;
            }
        } catch (Throwable th3) {
            th = th3;
            fileInputStream = null;
        }
        return false;
    }
}
