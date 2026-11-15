package defpackage;

import android.content.Context;
import android.net.Uri;
import android.os.Environment;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.util.zzs;
import com.google.android.gms.ads.internal.zzv;
import com.transsion.push.PushConstants;
import defpackage.gye;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.atomic.AtomicBoolean;

public final class gye {
    public String d;
    public Context e;
    public String f;
    public AtomicBoolean h;
    public File i;
    public final BlockingQueue a = new ArrayBlockingQueue(100);
    public final LinkedHashMap b = new LinkedHashMap();
    public final Map c = new HashMap();
    public final HashSet g = new HashSet(Arrays.asList("noop", "activeViewPingSent", "viewabilityChanged", "visibilityChanged"));

    public static void c(gye gyeVar) throws Throwable {
        while (true) {
            try {
                qye qyeVar = (qye) gyeVar.a.take();
                pye pyeVarA = qyeVar.a();
                if (!TextUtils.isEmpty(pyeVarA.b())) {
                    gyeVar.g(gyeVar.b(gyeVar.b, qyeVar.b()), pyeVarA);
                }
            } catch (InterruptedException e) {
                int i = zze.zza;
                zzo.zzk("CsiReporter:reporter interrupted", e);
                return;
            }
        }
    }

    public final mye a(String str) {
        mye myeVar = (mye) this.c.get(str);
        return myeVar != null ? myeVar : mye.a;
    }

    public final Map b(Map map, Map map2) {
        LinkedHashMap linkedHashMap = new LinkedHashMap(map);
        for (Map.Entry entry : map2.entrySet()) {
            String str = (String) entry.getKey();
            String str2 = (String) entry.getValue();
            linkedHashMap.put(str, a(str).a((String) linkedHashMap.get(str), str2));
        }
        return linkedHashMap;
    }

    public final void d(Context context, String str, String str2, Map map) {
        File externalStorageDirectory;
        this.e = context;
        this.f = str;
        this.d = str2;
        AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        this.h = atomicBoolean;
        atomicBoolean.set(((Boolean) uze.c.e()).booleanValue());
        if (this.h.get() && (externalStorageDirectory = Environment.getExternalStorageDirectory()) != null) {
            this.i = new File(ryh.a(qyh.a(), externalStorageDirectory, "sdk_csi_data.txt"));
        }
        for (Map.Entry entry : map.entrySet()) {
            this.b.put((String) entry.getKey(), (String) entry.getValue());
        }
        zef.a.execute(new Runnable() {
            @Override
            public final void run() throws Throwable {
                gye.c(this.zza);
            }
        });
        Map map2 = this.c;
        mye myeVar = mye.b;
        map2.put("action", myeVar);
        map2.put("ad_format", myeVar);
        map2.put("e", mye.c);
    }

    public final void e(String str) throws Throwable {
        if (this.g.contains(str)) {
            return;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(PushConstants.PROVIDER_FIELD_SDK_VERSION, this.f);
        linkedHashMap.put("ue", str);
        g(b(this.b, linkedHashMap), null);
    }

    public final boolean f(qye qyeVar) {
        return this.a.offer(qyeVar);
    }

    public final void g(Map map, pye pyeVar) throws Throwable {
        Uri.Builder builderBuildUpon = Uri.parse(this.d).buildUpon();
        for (Map.Entry entry : map.entrySet()) {
            builderBuildUpon.appendQueryParameter((String) entry.getKey(), (String) entry.getValue());
        }
        String string = builderBuildUpon.build().toString();
        if (pyeVar != null) {
            StringBuilder sb = new StringBuilder(string);
            if (!TextUtils.isEmpty(pyeVar.b())) {
                sb.append("&it=");
                sb.append(pyeVar.b());
            }
            if (!TextUtils.isEmpty(pyeVar.a())) {
                sb.append("&blat=");
                sb.append(pyeVar.a());
            }
            string = sb.toString();
        }
        if (!this.h.get()) {
            zzv.zzq();
            zzs.zzM(this.e, this.f, string);
            return;
        }
        File file = this.i;
        if (file == null) {
            int i = zze.zza;
            zzo.zzj("CsiReporter: File doesn't exist. Cannot write CSI data to file.");
            return;
        }
        FileOutputStream fileOutputStream = null;
        try {
            try {
                FileOutputStream fileOutputStream2 = new FileOutputStream(file, true);
                try {
                    fileOutputStream2.write(string.getBytes());
                    fileOutputStream2.write(10);
                    try {
                        fileOutputStream2.close();
                    } catch (IOException e) {
                        int i2 = zze.zza;
                        zzo.zzk("CsiReporter: Cannot close file: sdk_csi_data.txt.", e);
                    }
                } catch (IOException e2) {
                    e = e2;
                    fileOutputStream = fileOutputStream2;
                    int i3 = zze.zza;
                    zzo.zzk("CsiReporter: Cannot write to file: sdk_csi_data.txt.", e);
                    if (fileOutputStream != null) {
                        try {
                            fileOutputStream.close();
                        } catch (IOException e3) {
                            zzo.zzk("CsiReporter: Cannot close file: sdk_csi_data.txt.", e3);
                        }
                    }
                } catch (Throwable th) {
                    th = th;
                    fileOutputStream = fileOutputStream2;
                    if (fileOutputStream != null) {
                        try {
                            fileOutputStream.close();
                        } catch (IOException e4) {
                            int i4 = zze.zza;
                            zzo.zzk("CsiReporter: Cannot close file: sdk_csi_data.txt.", e4);
                        }
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (IOException e5) {
            e = e5;
        }
    }
}
