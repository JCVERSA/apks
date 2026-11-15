package com.mbridge.msdk.tracker.network.toolbox;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.mbridge.msdk.foundation.download.DownloadError;
import com.mbridge.msdk.foundation.download.DownloadMessage;
import com.mbridge.msdk.foundation.download.DownloadPriority;
import com.mbridge.msdk.foundation.download.DownloadResourceType;
import com.mbridge.msdk.foundation.download.MBDownloadManager;
import com.mbridge.msdk.foundation.download.OnDownloadStateListener;
import com.mbridge.msdk.foundation.tools.i0;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.q0;
import com.mbridge.msdk.interstitial.view.MBInterstitialActivity;
import com.mbridge.msdk.out.MBSupportMuteAdType;
import java.io.File;
import java.io.FileInputStream;
import java.net.InetAddress;
import java.net.URL;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;

public class i {

    private static final String f37830f = "i";

    private static volatile i f37831g;

    private final ConcurrentHashMap<String, InetAddress> f37832a = new ConcurrentHashMap<>();

    private final AtomicBoolean f37833b = new AtomicBoolean(false);

    private String f37835d = "";

    private String f37836e = "";

    private final com.mbridge.msdk.foundation.buffer.sharedperference.a f37834c = com.mbridge.msdk.foundation.buffer.sharedperference.a.b();

    private static class a implements OnDownloadStateListener<Object> {

        private final String f37837a;

        private final String f37838b;

        private final String f37839c;

        public a(String str, String str2, String str3) {
            this.f37837a = str;
            this.f37838b = str2;
            this.f37839c = str3;
        }

        @Override
        public void onCancelDownload(DownloadMessage<Object> downloadMessage) {
            i.b().c();
        }

        @Override
        public void onDownloadComplete(DownloadMessage<Object> downloadMessage) {
            i.b().b(this.f37837a, this.f37838b, this.f37839c);
        }

        @Override
        public void onDownloadError(DownloadMessage<Object> downloadMessage, DownloadError downloadError) {
            i.b().c();
        }

        @Override
        public void onDownloadStart(DownloadMessage<Object> downloadMessage) {
        }
    }

    private i() {
    }

    public static i b() {
        if (f37831g == null) {
            synchronized (i.class) {
                try {
                    if (f37831g == null) {
                        f37831g = new i();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return f37831g;
    }

    private void d(String str) {
        try {
            this.f37836e = e(com.mbridge.msdk.foundation.same.net.utils.d.h().f34660y);
            if (TextUtils.isEmpty(str)) {
                return;
            }
            JSONObject jSONObject = new JSONObject(i0.a(str));
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                if (!TextUtils.isEmpty(next) && next.contains(this.f37836e)) {
                    String string = jSONObject.getString(next);
                    if (!TextUtils.isEmpty(string)) {
                        try {
                            this.f37832a.put(next, InetAddress.getByAddress(next, com.mbridge.msdk.foundation.same.c.b(string)));
                        } catch (UnknownHostException e10) {
                            this.f37835d = String.format("create InetAddress failed for %s with ip %s", next, string);
                            o0.b(f37830f, "init: local dns cache error", e10);
                        }
                    }
                }
            }
            this.f37833b.set(true);
        } catch (Exception e11) {
            o0.b(f37830f, "init: local dns cache json parse error", e11);
            this.f37835d = "parse local dns config error";
            this.f37832a.clear();
            this.f37833b.set(false);
        }
    }

    private static String e(String str) {
        return str.replace("https://{}", "").replace("http://{}", "");
    }

    public boolean c(String str) {
        return TextUtils.equals(str, com.mbridge.msdk.foundation.same.net.utils.d.h().f34638e.replace("https://", ""));
    }

    public void f(String str) {
        if (TextUtils.isEmpty(str) || !e()) {
            return;
        }
        this.f37833b.set(false);
        this.f37832a.clear();
        a();
    }

    public void c() {
        this.f37833b.set(false);
        this.f37835d = "download local dns config error";
    }

    public boolean e() {
        return q0.a().b("local_dns", false, false);
    }

    private void a() {
        String strA = this.f37834c.a("cache");
        String strA2 = this.f37834c.a("url");
        String strB = q0.a().b("local_dns_config_url", "", false);
        if (TextUtils.isEmpty(strB)) {
            this.f37834c.a("cache", "");
        } else if (!TextUtils.isEmpty(strA) && !TextUtils.isEmpty(strA2) && TextUtils.equals(strB, strA2)) {
            d(strA);
        } else {
            a(strB);
        }
    }

    public boolean c(String str, String str2, String str3) {
        return e() && d() && TextUtils.equals(str, MBInterstitialActivity.INTENT_CAMAPIGN) && !c(str3) && (TextUtils.equals(str2, String.valueOf(94)) || TextUtils.equals(str2, String.valueOf(MBSupportMuteAdType.INTERSTITIAL_VIDEO)));
    }

    public static String b(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        try {
            String path = new URL(str).getPath();
            return path.substring(path.lastIndexOf(47) + 1);
        } catch (Exception unused) {
            return str;
        }
    }

    private void a(String str) {
        a(str, com.mbridge.msdk.foundation.same.directory.e.b(com.mbridge.msdk.foundation.same.directory.c.MBRIDGE_OTHER) + File.separator, b(str));
    }

    public void b(String str, String str2, String str3) {
        try {
            String strA = com.mbridge.msdk.foundation.same.c.a(new FileInputStream(new File(str2, str3)));
            if (TextUtils.isEmpty(strA)) {
                return;
            }
            this.f37834c.a("cache", strA);
            this.f37834c.a("url", str);
            d(strA);
        } catch (Exception e10) {
            o0.b(f37830f, "downloadLocalDNSConfig: onDownloadComplete: file not found", e10);
            this.f37835d = "find local dns config file error";
        }
    }

    private void a(String str, String str2, String str3) {
        MBDownloadManager.getInstance().download(new DownloadMessage<>(new Object(), str, str3, 100, DownloadResourceType.DOWNLOAD_RESOURCE_TYPE_OTHER)).withConnectTimeout(30000L).withReadTimeout(30000L).withWriteTimeout(30000L).withTimeout(30000L).withHttpRetryCounter(5).withDirectoryPathInternal(str2).withDownloadPriority(DownloadPriority.HIGH).withDownloadStateListener(new a(str, str2, str3)).build().start();
    }

    public boolean d() {
        return this.f37833b.get() && !this.f37832a.isEmpty();
    }

    public List<InetAddress> a(@NonNull String str, UnknownHostException unknownHostException) throws UnknownHostException {
        InetAddress inetAddress;
        try {
            inetAddress = this.f37832a.get(str);
        } catch (Exception e10) {
            o0.b(f37830f, "lookup: local dns cache error", e10);
            inetAddress = null;
        }
        if (inetAddress != null) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(inetAddress);
            return arrayList;
        }
        throw unknownHostException;
    }
}
