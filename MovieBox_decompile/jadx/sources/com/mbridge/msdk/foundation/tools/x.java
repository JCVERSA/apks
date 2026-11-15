package com.mbridge.msdk.foundation.tools;

import android.net.Uri;
import android.text.TextUtils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.DownloadError;
import com.mbridge.msdk.foundation.download.DownloadMessage;
import com.mbridge.msdk.foundation.download.DownloadPriority;
import com.mbridge.msdk.foundation.download.DownloadResourceType;
import com.mbridge.msdk.foundation.download.MBDownloadManager;
import com.mbridge.msdk.foundation.download.OnDownloadStateListener;
import com.mbridge.msdk.foundation.download.resource.MBResourceManager;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.io.File;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;

public class x {

    static final List<String> f34990a;

    class a implements OnDownloadStateListener {

        final String f34991a;

        final String f34992b;

        final c f34993c;

        final String f34994d;

        final String f34995e;

        a(String str, String str2, c cVar, String str3, String str4) {
            this.f34991a = str;
            this.f34992b = str2;
            this.f34993c = cVar;
            this.f34994d = str3;
            this.f34995e = str4;
        }

        @Override
        public void onCancelDownload(DownloadMessage downloadMessage) {
        }

        @Override
        public void onDownloadComplete(DownloadMessage downloadMessage) {
            String str;
            try {
                String str2 = this.f34991a + File.separator + this.f34992b;
                String str3 = this.f34991a;
                MBResourceManager.getInstance().unZip(str2, str3);
                if (this.f34993c != null) {
                    if (downloadMessage != null) {
                        try {
                            str = (String) downloadMessage.getExtra("responseHeaders");
                        } catch (Throwable th2) {
                            o0.b("DynamicViewResourceManager", th2.getMessage());
                            str = "";
                        }
                    } else {
                        str = "";
                    }
                    try {
                        this.f34993c.a(this.f34994d, str3, this.f34995e, str, false);
                    } catch (Exception e10) {
                        o0.b("DynamicViewResourceManager", e10.getMessage());
                    }
                }
            } catch (Exception unused) {
            }
        }

        @Override
        public void onDownloadError(DownloadMessage downloadMessage, DownloadError downloadError) {
            c cVar = this.f34993c;
            if (cVar != null) {
                try {
                    cVar.a(this.f34994d, downloadError);
                } catch (Exception e10) {
                    o0.b("DynamicViewResourceManager", e10.getMessage());
                }
            }
        }

        @Override
        public void onDownloadStart(DownloadMessage downloadMessage) {
        }
    }

    class b implements OnDownloadStateListener {

        final String f34996a;

        final String f34997b;

        b(String str, String str2) {
            this.f34996a = str;
            this.f34997b = str2;
        }

        @Override
        public void onCancelDownload(DownloadMessage downloadMessage) {
        }

        @Override
        public void onDownloadComplete(DownloadMessage downloadMessage) {
            try {
                MBResourceManager.getInstance().unZip(this.f34996a + File.separator + this.f34997b, this.f34996a);
            } catch (Exception unused) {
            }
        }

        @Override
        public void onDownloadError(DownloadMessage downloadMessage, DownloadError downloadError) {
        }

        @Override
        public void onDownloadStart(DownloadMessage downloadMessage) {
        }
    }

    public interface c {
        void a(String str, DownloadError downloadError);

        void a(String str, String str2, String str3, String str4, boolean z10);
    }

    static {
        ArrayList arrayList = new ArrayList(4);
        f34990a = arrayList;
        arrayList.add("mbridge_splash_native_template_v_v1.xml");
        arrayList.add("mbridge_splash_native_template_h_v1.xml");
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x0088, code lost:
    
        if (r14 != 5) goto L34;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void a(int i10, String str, String str2, c cVar, CampaignEx campaignEx) {
        String strB;
        File file;
        String path;
        if (TextUtils.isEmpty(str2)) {
            return;
        }
        try {
            strB = b(i10, str, str2);
        } catch (Exception unused) {
            strB = "";
        }
        String str3 = com.mbridge.msdk.foundation.same.directory.e.b(com.mbridge.msdk.foundation.same.directory.c.MBRIDGE_700_XML) + File.separator;
        try {
            file = !TextUtils.isEmpty(strB) ? new File(str3, strB) : null;
        } catch (Exception unused2) {
        }
        if (file == null || !file.exists()) {
            file = new File(str3 + File.separator + strB.replace(".xml", ""), strB);
        }
        try {
            path = file.exists() ? file.getPath() : "";
        } catch (Exception unused3) {
        }
        com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
        eVar.a("scenes", "1");
        eVar.a("url", str2);
        try {
            try {
                try {
                    if (i10 != 0) {
                        if (i10 == 1) {
                            eVar.a("resource_type", 2);
                        } else if (i10 == 2) {
                            eVar.a("resource_type", 3);
                        }
                        if (!TextUtils.isEmpty(path) || TextUtils.isEmpty(strB)) {
                            String path2 = new URL(str2).getPath();
                            String strSubstring = path2.substring(path2.lastIndexOf(47) + 1);
                            a(str2, strSubstring, str3, strSubstring.replace(".zip", ""), cVar, campaignEx, i10);
                            eVar.a("cache", 2);
                            com.mbridge.msdk.foundation.same.report.metrics.d.b().a("m_download_start", campaignEx, eVar);
                            return;
                        }
                        if (cVar != null) {
                            try {
                                cVar.a(str2, path, strB, null, true);
                            } catch (Exception e10) {
                                o0.b("DynamicViewResourceManager", e10.getMessage());
                            }
                            try {
                                eVar.a("cache", 1);
                                com.mbridge.msdk.foundation.same.report.metrics.d.b().a("m_download_start", campaignEx, eVar);
                                return;
                            } catch (Exception unused4) {
                                return;
                            }
                        }
                        return;
                    }
                    eVar.a("resource_type", 1);
                    String path3 = new URL(str2).getPath();
                    String strSubstring2 = path3.substring(path3.lastIndexOf(47) + 1);
                    a(str2, strSubstring2, str3, strSubstring2.replace(".zip", ""), cVar, campaignEx, i10);
                } catch (Exception e11) {
                    o0.b("DynamicViewResourceManager", e11.getMessage());
                }
            } catch (Exception unused5) {
            }
            eVar.a("cache", 2);
            com.mbridge.msdk.foundation.same.report.metrics.d.b().a("m_download_start", campaignEx, eVar);
            return;
        } catch (Exception unused6) {
            return;
        }
        if (TextUtils.isEmpty(path)) {
        }
    }

    private static String b(int i10, String str, String str2) {
        if (TextUtils.isEmpty(str2)) {
            return "";
        }
        try {
            String path = new URL(str2).getPath();
            String strSubstring = path.substring(path.lastIndexOf(47) + 1);
            return !TextUtils.isEmpty(strSubstring) ? strSubstring.replace(".zip", "") : "";
        } catch (Exception unused) {
            return "";
        }
    }

    private static String b(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        try {
            String path = new URL(str).getPath();
            String strSubstring = path.substring(path.lastIndexOf(47) + 1);
            if (TextUtils.isEmpty(strSubstring)) {
                return "";
            }
            String strReplace = strSubstring.replace(".zip", "");
            List<String> list = f34990a;
            return (list == null || list.contains(strReplace)) ? "" : strReplace;
        } catch (Exception unused) {
            return "";
        }
    }

    public static String a(int i10, String str, String str2) {
        String strB;
        File file;
        if (TextUtils.isEmpty(str2)) {
            return "";
        }
        try {
            strB = b(i10, str, str2);
        } catch (Exception unused) {
            strB = "";
        }
        String str3 = com.mbridge.msdk.foundation.same.directory.e.b(com.mbridge.msdk.foundation.same.directory.c.MBRIDGE_700_XML) + File.separator;
        try {
            file = !TextUtils.isEmpty(strB) ? new File(str3, strB) : null;
        } catch (Exception unused2) {
        }
        if (file == null || !file.exists()) {
            file = new File(str3 + File.separator + strB.replace(".xml", ""), strB);
        }
        return file.getPath();
    }

    public static String a(String str) {
        String strB;
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        try {
            String queryParameter = Uri.parse(str).getQueryParameter(MBridgeConstans.DYNAMIC_VIEW_KEY_NATMP);
            if (!TextUtils.isEmpty(queryParameter) && !queryParameter.equals("1")) {
                return "";
            }
        } catch (Throwable unused) {
        }
        try {
            strB = b(str);
        } catch (Exception unused2) {
            strB = "";
        }
        if (TextUtils.isEmpty(strB)) {
            return "";
        }
        try {
            String str2 = com.mbridge.msdk.foundation.same.directory.e.b(com.mbridge.msdk.foundation.same.directory.c.MBRIDGE_700_XML) + File.separator;
            File file = new File(str2, strB);
            if (file.isFile() && file.exists()) {
                return file.getPath();
            }
            String path = new URL(str).getPath();
            a(str, path.substring(path.lastIndexOf(47) + 1), str2, strB);
            return "";
        } catch (Exception unused3) {
        }
    }

    private static final void a(String str, String str2, String str3, String str4, c cVar, CampaignEx campaignEx, int i10) throws Exception {
        o0.a("test_zip_download ", "start download path： " + str3 + str2);
        DownloadMessage<?> downloadMessage = new DownloadMessage<>(campaignEx, str, str2, 100, DownloadResourceType.DOWNLOAD_RESOURCE_TYPE_OTHER);
        downloadMessage.addExtra("resource_type", Integer.valueOf(i10));
        MBDownloadManager.getInstance().download(downloadMessage).withReadTimeout((long) com.mbridge.msdk.foundation.same.a.f34517u).withConnectTimeout((long) com.mbridge.msdk.foundation.same.a.f34516t).withTimeout(60000L).withWriteTimeout((long) com.mbridge.msdk.foundation.same.a.f34515s).with("download_scene", "download_dynamic_view").withDownloadPriority(DownloadPriority.MEDIUM).withHttpRetryCounter(1).withDirectoryPathInternal(str3).withDownloadStateListener(new a(str3, str2, cVar, str, str4)).build().start();
    }

    private static final void a(String str, String str2, String str3, String str4) throws Exception {
        MBDownloadManager.getInstance().download(new DownloadMessage<>(new Object(), str, str2, 100, DownloadResourceType.DOWNLOAD_RESOURCE_TYPE_OTHER)).withReadTimeout(com.mbridge.msdk.foundation.same.a.f34517u).withConnectTimeout(com.mbridge.msdk.foundation.same.a.f34511o).with("download_scene", "download_dynamic_view").withWriteTimeout(com.mbridge.msdk.foundation.same.a.f34515s).withTimeout(60000L).withDownloadPriority(DownloadPriority.MEDIUM).withHttpRetryCounter(1).withDirectoryPathInternal(str3).withDownloadStateListener(new b(str3, str2)).build().start();
    }
}
