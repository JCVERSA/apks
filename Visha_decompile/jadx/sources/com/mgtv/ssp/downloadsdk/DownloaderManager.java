package com.mgtv.ssp.downloadsdk;

import android.content.Context;
import android.text.TextUtils;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.hunantv.media.drm.IDrmManager;
import com.mgtv.downloader.b;
import com.mgtv.downloader.b.c;
import com.mgtv.downloader.net.entity.a;
import com.mgtv.downloader.util.d;
import com.mgtv.ssp.module.ModuleInterface;
import com.mgtv.ssp.module.ModuleManager;
import com.mgtv.ssp.utils.e;
import com.mgtv.thirdsdk.datareport.VideoSDKReport;
import defpackage.hb0;
import java.io.File;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;

public class DownloaderManager implements IDownloadManager, ModuleInterface {
    private static volatile DownloaderManager a;
    private static boolean b;
    private boolean d;
    private DownloadEventListener f;
    private String c = "vod";
    private String e = "";

    static {
        System.loadLibrary("mgtvp2p");
    }

    private DownloaderManager() {
    }

    private int a(int i) {
        if (i == 1) {
            return 0;
        }
        if (i == 3) {
            return 1;
        }
        if (i == 4) {
            return 3;
        }
        return i == 2 ? 2 : 4;
    }

    private boolean b(String str) {
        if (str == null) {
            return false;
        }
        try {
            a aVarC = c(str);
            String string = aVarC.f;
            if (1 == aVarC.n().intValue()) {
                StringBuilder sb = new StringBuilder();
                sb.append(string);
                sb.append(string.endsWith(File.separator) ? "hls/" : "/hls/");
                sb.append(aVarC.m());
                sb.append(".hls");
                string = sb.toString();
            }
            return new File(string).exists();
        } catch (Throwable unused) {
        }
    }

    private a c(String str) {
        return com.mgtv.downloader.a.a().a(str);
    }

    public static DownloaderManager getInstance() {
        if (a == null) {
            synchronized (DownloaderManager.class) {
                try {
                    if (a == null) {
                        a = new DownloaderManager();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return a;
    }

    @Override
    public boolean checkFile(String str) {
        return b(str);
    }

    @Override
    public void createTaskWaitResume(String str, String str2, String str3, String str4, final OnCreateTaskCallback onCreateTaskCallback) {
        if (!b) {
            if (onCreateTaskCallback != null) {
                onCreateTaskCallback.onOver("", "没有初始化");
                return;
            }
            return;
        }
        String md5 = getMD5(str + str2);
        if (b.a().b(md5).intValue() > 0) {
            return;
        }
        com.mgtv.downloader.a.a().a("{\"videoId\":\"" + str + "\"}", "{\"PATH\":\"" + this.e + "\",\"DEFINITION\":\"" + str2 + "\",\"PRIORITY\":1,\"OPENID\":\"" + str3 + "\",\"AT\":\"" + str4 + "\",\"LIMIT_SPEED\":2147483647,\"CONTENTID\":\"" + md5 + "\"}", "", new c() {
            @Override
            public void a(String str5, String str6) {
                ArrayList arrayList = new ArrayList();
                if (!TextUtils.isEmpty(str5)) {
                    arrayList.add(str5);
                }
                DownloaderManager.this.d = true;
                OnCreateTaskCallback onCreateTaskCallback2 = onCreateTaskCallback;
                if (onCreateTaskCallback2 != null) {
                    onCreateTaskCallback2.createTaskResult(str5, str6);
                }
            }
        });
        a(md5, TtmlNode.START);
    }

    @Override
    public void deleteDownloadTask(List<String> list) {
        this.d = false;
        if (list == null) {
            return;
        }
        a(list, "remove");
        com.mgtv.downloader.a.a().b(list);
    }

    @Override
    public int getConcurrentTaskCount(String str) {
        return 0;
    }

    @Override
    public String getConfig(int i) {
        return com.mgtv.downloader.a.a().b(i);
    }

    @Override
    public DownloadTaskInfo getDownloadTask(String str) {
        a aVarA = com.mgtv.downloader.a.a().a(str);
        if (aVarA != null) {
            return a(aVarA);
        }
        return null;
    }

    @Override
    public List<DownloadTaskInfo> getDownloadTasks(int i) {
        ArrayList arrayList = new ArrayList();
        List<a> listA = com.mgtv.downloader.a.a().a(i);
        if (listA != null) {
            for (int i2 = 0; i2 < listA.size(); i2++) {
                a aVar = listA.get(i2);
                if (aVar != null) {
                    arrayList.add(a(aVar));
                }
            }
        }
        return arrayList;
    }

    public String getMD5(String str) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(str.getBytes());
            return a(messageDigest.digest());
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
            return str;
        }
    }

    @Override
    public Object getModuleData(String str, String str2) {
        if (str2 == null) {
            return null;
        }
        a aVarA = com.mgtv.downloader.a.a().a(str2);
        if ("contendId".equals(str)) {
            return aVarA.L;
        }
        if ("videoId".equals(str)) {
            return aVarA.b;
        }
        if (hb0.KEY_NAME_SNIFF_RESULT_DOWNLOAD_RESOLUTION.equals(str)) {
            return aVarA.x;
        }
        if ("clipId".equals(str)) {
            return aVarA.t;
        }
        if ("plId".equals(str)) {
            return aVarA.u;
        }
        if ("freeUrl".equals(str)) {
            return aVarA.y;
        }
        if ("status".equals(str)) {
            return aVarA.i;
        }
        if ("sdkversion".equals(str)) {
            return getVersion();
        }
        if ("DATAOBJ".equals(str)) {
            return aVarA;
        }
        if ("proxyUrl".equals(str)) {
            return com.mgtv.downloader.a.a().b(str2);
        }
        if ("checkFile".equals(str)) {
            return Boolean.valueOf(checkFile(str2));
        }
        return null;
    }

    @Override
    public String getTaskOption(String str, int i) {
        return com.mgtv.downloader.a.a().a(str, i);
    }

    @Override
    public String getVersion() {
        return com.mgtv.downloader.a.a().d();
    }

    @Override
    public String init(final DlPluginContext dlPluginContext, DownloadEventListener downloadEventListener) {
        if (dlPluginContext == null) {
            return "";
        }
        this.f = downloadEventListener;
        ModuleManager.getInst().setModuleDownload(this);
        if (b) {
            return "0000";
        }
        if (com.mgtv.ssp.auth.b.a().b() != 0) {
            return "8199";
        }
        String strA = com.mgtv.downloader.a.a().a(new com.mgtv.downloader.b.b() {
            @Override
            public Context a() {
                DlPluginContext dlPluginContext2 = dlPluginContext;
                if (dlPluginContext2 != null) {
                    return dlPluginContext2.getAppContext();
                }
                return null;
            }

            @Override
            public String b() {
                return com.hunantv.imgo.util.b.A();
            }

            @Override
            public String c() {
                return com.hunantv.imgo.util.b.Q();
            }

            @Override
            public String d() {
                return com.hunantv.imgo.util.b.S();
            }

            @Override
            public String e() {
                return e.d();
            }

            @Override
            public String f() {
                return IDrmManager.SessionConfig.STR_DRM_TYPE_AUDIO_MAES;
            }
        }, new com.mgtv.downloader.b.a() {
            @Override
            public void a(String str, a aVar) {
                if (DownloaderManager.this.f == null || aVar == null) {
                    return;
                }
                DownloadEventListener downloadEventListener2 = DownloaderManager.this.f;
                DownloaderManager downloaderManager = DownloaderManager.this;
                downloadEventListener2.onProgressUpdate(downloaderManager, downloaderManager.a(aVar));
            }

            @Override
            public void b(String str, a aVar) {
                if (DownloaderManager.this.f == null || aVar == null) {
                    return;
                }
                DownloadEventListener downloadEventListener2 = DownloaderManager.this.f;
                DownloaderManager downloaderManager = DownloaderManager.this;
                downloadEventListener2.onStatusChanged(downloaderManager, downloaderManager.a(aVar));
                if (aVar.f().intValue() == 4) {
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(aVar.L);
                    DownloaderManager.this.a(arrayList, TtmlNode.END);
                }
            }

            @Override
            public void a(String str, a aVar, String str2) {
                if (DownloaderManager.this.f == null || aVar == null) {
                    return;
                }
                if (!TextUtils.isEmpty(com.hunantv.imgo.util.b.A())) {
                    str2 = str2.replace(com.hunantv.imgo.util.b.A(), "");
                }
                DownloadEventListener downloadEventListener2 = DownloaderManager.this.f;
                DownloaderManager downloaderManager = DownloaderManager.this;
                downloadEventListener2.onError(downloaderManager, downloaderManager.a(aVar), str2);
            }
        });
        com.mgtv.downloader.a.a().a(0, String.valueOf(e.b()));
        com.mgtv.downloader.a.a().a(1, String.valueOf(e.c()));
        com.mgtv.downloader.a.a().a(5, String.valueOf(com.hunantv.imgo.util.b.j()));
        if (!TextUtils.isEmpty(e.d())) {
            com.mgtv.downloader.a.a().a(6, e.d());
        }
        if (!TextUtils.isEmpty(e.a())) {
            d.a(e.a());
        }
        boolean zEquals = "200000".equals(strA);
        b = zEquals;
        return zEquals ? "0000" : strA;
    }

    @Override
    public boolean isSupportDownload() {
        return com.mgtv.downloader.a.a().e();
    }

    @Override
    public void noticeModule(int i, String... strArr) {
    }

    @Override
    public void pauseDownload(List<String> list) {
        this.d = false;
        a(list, "pause");
        com.mgtv.downloader.a.a().a(list);
    }

    @Override
    public void release() {
        com.mgtv.downloader.a.a().c();
    }

    @Override
    public void resumeDownload(List<String> list, String str) {
        if (this.d) {
            this.d = false;
        } else {
            a(list, "resume");
        }
        com.mgtv.downloader.a.a().a(list, str);
    }

    @Override
    public String setConfig(int i, String str) {
        return com.mgtv.downloader.a.a().a(i, str);
    }

    public void setFrom(String str) {
        this.c = str;
    }

    @Override
    public String setTaskOption(String str, int i, String str2) {
        return com.mgtv.downloader.a.a().a(str, 1, str2);
    }

    @Override
    public void startDownload(String str, String str2, String str3, final String str4, final OnCreateTaskCallback onCreateTaskCallback) {
        if (!b) {
            if (onCreateTaskCallback != null) {
                onCreateTaskCallback.onOver("", "没有初始化");
                return;
            }
            return;
        }
        String md5 = getMD5(str + str2);
        if (b.a().b(md5).intValue() > 0) {
            return;
        }
        com.mgtv.downloader.a.a().a("{\"videoId\":\"" + str + "\"}", "{\"PATH\":\"" + this.e + "\",\"DEFINITION\":\"" + str2 + "\",\"PRIORITY\":1,\"OPENID\":\"" + str3 + "\",\"AT\":\"" + str4 + "\",\"LIMIT_SPEED\":2147483647,\"CONTENTID\":\"" + md5 + "\"}", "", new c() {
            @Override
            public void a(String str5, String str6) {
                ArrayList arrayList = new ArrayList();
                if (!TextUtils.isEmpty(str5)) {
                    arrayList.add(str5);
                }
                DownloaderManager.this.d = true;
                DownloaderManager.this.resumeDownload(arrayList, str4);
                DownloaderManager.this.d = false;
                OnCreateTaskCallback onCreateTaskCallback2 = onCreateTaskCallback;
                if (onCreateTaskCallback2 != null) {
                    onCreateTaskCallback2.createTaskResult(str5, str6);
                }
            }
        });
        a(md5, TtmlNode.START);
    }

    private boolean a(String str) {
        return !TextUtils.isEmpty(str) && Pattern.compile("[0-9]*").matcher(str).matches();
    }

    public DownloadTaskInfo a(a aVar) {
        DownloadTaskInfo downloadTaskInfo = new DownloadTaskInfo();
        if (aVar != null) {
            downloadTaskInfo.contentId = aVar.r();
            downloadTaskInfo.doneSize = aVar.d().longValue();
            downloadTaskInfo.extra = aVar.p();
            downloadTaskInfo.collectionImage = aVar.s;
            downloadTaskInfo.collectionName = aVar.r;
            downloadTaskInfo.mediaType = aVar.F;
            downloadTaskInfo.setImage(aVar.c);
            if (a(aVar.q())) {
                downloadTaskInfo.priority = Integer.valueOf(aVar.q()).intValue();
            } else {
                downloadTaskInfo.priority = 0;
            }
            downloadTaskInfo.resolution = aVar.i().intValue();
            downloadTaskInfo.speed = aVar.g().intValue();
            downloadTaskInfo.status = a(aVar.f().intValue());
            downloadTaskInfo.totalSize = aVar.e().longValue();
            downloadTaskInfo.videoid = aVar.b;
            downloadTaskInfo.setTitle(aVar.d);
        }
        return downloadTaskInfo;
    }

    private String a(byte[] bArr) {
        StringBuffer stringBuffer = new StringBuffer();
        for (byte b2 : bArr) {
            stringBuffer.append((int) b2);
        }
        return stringBuffer.toString();
    }

    public void a(List<String> list, String str) {
        if (list == null || list.size() <= 0) {
            return;
        }
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            a(it.next(), str);
        }
    }

    public void a(String str, String str2) {
        a aVarA;
        if (str == null || (aVarA = com.mgtv.downloader.a.a().a(str)) == null) {
            return;
        }
        VideoSDKReport.a().a(this.c, str2, "", aVarA.b, aVarA.t);
    }
}
