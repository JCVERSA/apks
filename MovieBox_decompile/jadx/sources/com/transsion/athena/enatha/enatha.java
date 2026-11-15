package com.transsion.athena.enatha;

import android.annotation.SuppressLint;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import android.util.LongSparseArray;
import android.util.SparseArray;
import androidx.core.app.NotificationCompat;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.cloud.tmc.integration.permission.PermissionConstant;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.tencent.mmkv.MMKV;
import com.transsion.api.gateway.utils.SafeStringUtils;
import com.transsion.athena.config.data.model.TidConfigBean;
import com.transsion.athena.data.AppIdData;
import com.transsion.athena.data.Track;
import com.transsion.athena.data.TrackData;
import com.transsion.athena.data.TrackDataWrapper;
import com.transsion.athena.hatnea.atnhae;
import com.transsion.ga.AthenaAnalytics;
import com.transsion.ga.i;
import com.transsion.gslb.GslbSdk;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.io.File;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class enatha extends com.transsion.athena.enatha.athena implements Handler.Callback {

    @SuppressLint({"StaticFieldLeak"})
    private static volatile enatha f41599c;

    private boolean f41600d;

    private boolean f41601e;

    private int f41602f;

    private boolean f41603g;

    private int f41604h;

    private ArrayList<Track> f41605i;

    private long f41606j;

    private final SparseArray<String> f41607k;

    private String f41608l;

    private boolean f41609m;

    private long f41610n;

    private boolean f41611o;

    private long f41612p;

    private final com.transsion.athena.aethna.aethna f41613q;

    private final Runnable f41614r;

    private long f41615s;

    private final Runnable f41616t;

    private final LocationListener f41617u;

    class aatnhe implements GslbSdk.InitListener {
        aatnhe(enatha enathaVar) {
        }

        @Override
        public void onInitFail() {
        }

        @Override
        public void onInitSuccess(Map<String, String> map) {
        }
    }

    class aethna implements GslbSdk.InitListener {
        aethna() {
        }

        @Override
        public void onInitFail() {
        }

        @Override
        public void onInitSuccess(Map<String, String> map) {
            enatha.this.f41608l = map == null ? "" : map.toString();
        }
    }

    class anateh implements GslbSdk.InitListener {

        final String f41619a;

        final int f41620b;

        final com.transsion.athena.config.data.model.athena f41621c;

        anateh(String str, int i10, com.transsion.athena.config.data.model.athena athenaVar) {
            this.f41619a = str;
            this.f41620b = i10;
            this.f41621c = athenaVar;
        }

        @Override
        public void onInitFail() {
        }

        @Override
        public void onInitSuccess(Map<String, String> map) {
            enatha.this.a(this.f41619a, this.f41620b, this.f41621c, map == null ? "" : map.toString());
        }
    }

    class anehat implements Runnable {
        anehat() {
        }

        @Override
        public void run() {
            if (!com.transsion.athena.config.data.model.ehanat.r()) {
                com.transsion.athena.taaneh.aethna.c("Athena SDK isAthenaEnable = false");
                return;
            }
            try {
                MMKV mmkvJ = MMKV.J("AthenaKV", 2);
                String[] strArrA = mmkvJ.a();
                if (strArrA != null && strArrA.length > 0) {
                    enatha.this.a(mmkvJ);
                }
                enatha.this.f41597b.postDelayed(this, 300000L);
            } catch (Exception e10) {
                com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e10));
            }
        }
    }

    class athena extends com.transsion.athena.aethna.aethna {
        athena() {
        }

        @Override
        public void a(int i10, boolean z10) {
            try {
                if (i10 > 0) {
                    enatha.this.a(i10, z10);
                } else {
                    enatha.a(enatha.this);
                }
            } catch (Exception e10) {
                com.transsion.athena.taaneh.aethna.b("onConfigChanged exception : %s", e10.getMessage());
            }
        }
    }

    class ehanat implements GslbSdk.ResultListener {
        ehanat(enatha enathaVar) {
        }

        @Override
        public void onGslbFail() {
        }

        @Override
        public void onGslbSuccess(String str) {
        }
    }

    class ehatna implements Runnable {
        ehatna() {
        }

        @Override
        @SuppressLint({"MissingPermission"})
        public void run() {
            try {
                enatha.this.a((Location) null);
                LocationManager locationManager = (LocationManager) enatha.this.f41596a.getApplicationContext().getSystemService(RequestParameters.SUBRESOURCE_LOCATION);
                if (locationManager != null) {
                    locationManager.removeUpdates(enatha.this.f41617u);
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    class C0578enatha implements com.transsion.athena.data.anateh.enatha<String> {
        C0578enatha(enatha enathaVar) {
        }

        @Override
        public void a(String str) {
            Bundle bundle = new Bundle();
            bundle.putString("v", str);
            i.a().c(new com.transsion.ga.anateh("cleanupEvents_oom", bundle));
        }
    }

    class hatnea implements LocationListener {
        hatnea() {
        }

        @Override
        @SuppressLint({"MissingPermission"})
        public void onLocationChanged(Location location) {
            enatha enathaVar = enatha.this;
            Handler handler = enathaVar.f41597b;
            if (handler != null) {
                handler.removeCallbacks(enathaVar.f41616t);
            }
            try {
                enatha.this.a(location);
                LocationManager locationManager = (LocationManager) enatha.this.f41596a.getApplicationContext().getSystemService(RequestParameters.SUBRESOURCE_LOCATION);
                if (locationManager != null) {
                    locationManager.removeUpdates(enatha.this.f41617u);
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }

        @Override
        public void onProviderDisabled(String str) {
        }

        @Override
        public void onProviderEnabled(String str) {
        }

        @Override
        public void onStatusChanged(String str, int i10, Bundle bundle) {
        }
    }

    private enatha(Context context) {
        super(context);
        this.f41600d = false;
        this.f41601e = false;
        this.f41607k = new SparseArray<>();
        this.f41612p = 0L;
        this.f41613q = new athena();
        this.f41614r = new anehat();
        this.f41615s = 0L;
        this.f41616t = new ehatna();
        this.f41617u = new hatnea();
        HandlerThread handlerThread = new HandlerThread("Athena-Worker", 10);
        handlerThread.start();
        Handler handler = new Handler(handlerThread.getLooper(), this);
        this.f41597b = handler;
        handler.sendEmptyMessage(303);
    }

    private void j() throws Throwable {
        this.f41610n = System.currentTimeMillis();
        this.f41609m = com.transsion.athena.taaneh.aatnhe.c(this.f41596a);
        com.transsion.athena.ehatna.aethna.b().d();
        com.transsion.athena.aethna.athena.c().h();
        com.transsion.athena.data.anateh.aethna.a(this.f41596a).a(new com.transsion.athena.data.anateh.enatha() {
            @Override
            public final void a(Object obj) {
                enatha.a((SparseArray) obj);
            }
        });
        AthenaAnalytics.I();
        int iB = com.transsion.athena.data.athena.b();
        if (iB != 0) {
            com.transsion.athena.config.data.model.ehanat.e(com.transsion.athena.aethna.athena.c().a(iB, "page_view", 1.0f) == 0);
        }
        if (com.transsion.athena.taaneh.anehat.c(this.f41596a) && g() && com.transsion.athena.config.data.model.ehanat.r()) {
            com.transsion.athena.taaneh.aethna.c("%s", "Dcs available");
            f();
        } else {
            com.transsion.athena.taaneh.aethna.c("%s", "Dcs unavailable because of not support or conf disable");
        }
        GslbSdk.init(this.f41596a, com.transsion.athena.anehat.athena.f41436a, new aethna());
        Handler handler = this.f41597b;
        handler.postDelayed(new com.transsion.athena.enatha.anehat(handler), 7200000L);
        if (AthenaAnalytics.V()) {
            this.f41597b.post(this.f41614r);
        }
        try {
            m4.a aVarA = m4.a.a(this.f41596a);
            for (Integer num : com.transsion.athena.data.athena.a()) {
                String str = "first_page_enter_" + num;
                if (aVarA.d(str)) {
                    this.f41607k.put(num.intValue(), aVarA.i(str));
                }
            }
            File filesDir = this.f41596a.getFilesDir();
            StringBuilder sb2 = new StringBuilder();
            sb2.append(filesDir);
            String str2 = File.separator;
            sb2.append(str2);
            sb2.append(com.transsion.athena.config.data.model.ehanat.f41485k);
            File file = new File(sb2.toString());
            File file2 = new File(filesDir + str2 + com.transsion.athena.config.data.model.ehanat.f41486l);
            if (AthenaAnalytics.S()) {
                this.f41601e = true;
            } else if (file.exists()) {
                String[] list = file.list();
                if (list != null && list.length != 0) {
                    this.f41601e = true;
                } else if (file.delete()) {
                    com.transsion.athena.taaneh.aethna.a("%s", "dataFile deleted");
                }
            }
            if (file2.exists()) {
                com.transsion.athena.taaneh.athena.a(this.f41596a, file2.getPath());
            }
        } catch (Exception e10) {
            com.transsion.athena.taaneh.aethna.a("%s", e10.getMessage());
            a("handleInit", e10);
        }
        Message messageObtainMessage = this.f41597b.obtainMessage(502);
        messageObtainMessage.arg1 = 1;
        this.f41597b.sendMessageDelayed(messageObtainMessage, 3000L);
        if (this.f41603g) {
            return;
        }
        this.f41602f = com.transsion.athena.aethna.athena.c().g() * 1000;
    }

    @Override
    public void d() {
        Handler handler = this.f41597b;
        if (handler != null) {
            this.f41597b.sendMessageAtFrontOfQueue(handler.obtainMessage(504));
        }
    }

    @Override
    public void e() {
        a(true, this.f41602f);
    }

    /* JADX WARN: Code duplicated, block: B:104:0x01ef  */
    /* JADX WARN: Code duplicated, block: B:107:0x01fb A[Catch: Exception -> 0x0048, TryCatch #4 {Exception -> 0x0048, blocks: (B:3:0x0008, B:27:0x004b, B:29:0x005d, B:31:0x0071, B:33:0x0077, B:34:0x0080, B:35:0x0088, B:39:0x008f, B:24:0x0041, B:40:0x0094, B:47:0x00ba, B:48:0x00c1, B:50:0x00d0, B:51:0x00e1, B:60:0x0111, B:62:0x011d, B:64:0x0125, B:66:0x012b, B:71:0x013c, B:73:0x0140, B:75:0x0146, B:76:0x014b, B:78:0x0151, B:79:0x0164, B:81:0x0172, B:83:0x017d, B:87:0x019f, B:89:0x01b2, B:90:0x01bc, B:92:0x01c5, B:94:0x01c9, B:96:0x01cd, B:98:0x01d3, B:100:0x01e5, B:102:0x01eb, B:109:0x0201, B:111:0x0205, B:113:0x0209, B:115:0x020d, B:117:0x0213, B:119:0x0220, B:121:0x022b, B:123:0x0232, B:125:0x023a, B:105:0x01f1, B:107:0x01fb, B:108:0x01fe, B:69:0x0133, B:70:0x0137, B:86:0x0194, B:59:0x010a, B:126:0x023e, B:127:0x0242, B:129:0x0246, B:130:0x0249, B:132:0x0251, B:134:0x0263, B:137:0x0269, B:138:0x028d, B:19:0x002d, B:21:0x0035, B:52:0x00e9, B:54:0x00f5, B:56:0x00fb, B:42:0x009f, B:44:0x00ae), top: B:154:0x0008, inners: #0, #1, #2, #3 }] */
    /* JADX WARN: Code duplicated, block: B:119:0x0220 A[Catch: Exception -> 0x0048, TryCatch #4 {Exception -> 0x0048, blocks: (B:3:0x0008, B:27:0x004b, B:29:0x005d, B:31:0x0071, B:33:0x0077, B:34:0x0080, B:35:0x0088, B:39:0x008f, B:24:0x0041, B:40:0x0094, B:47:0x00ba, B:48:0x00c1, B:50:0x00d0, B:51:0x00e1, B:60:0x0111, B:62:0x011d, B:64:0x0125, B:66:0x012b, B:71:0x013c, B:73:0x0140, B:75:0x0146, B:76:0x014b, B:78:0x0151, B:79:0x0164, B:81:0x0172, B:83:0x017d, B:87:0x019f, B:89:0x01b2, B:90:0x01bc, B:92:0x01c5, B:94:0x01c9, B:96:0x01cd, B:98:0x01d3, B:100:0x01e5, B:102:0x01eb, B:109:0x0201, B:111:0x0205, B:113:0x0209, B:115:0x020d, B:117:0x0213, B:119:0x0220, B:121:0x022b, B:123:0x0232, B:125:0x023a, B:105:0x01f1, B:107:0x01fb, B:108:0x01fe, B:69:0x0133, B:70:0x0137, B:86:0x0194, B:59:0x010a, B:126:0x023e, B:127:0x0242, B:129:0x0246, B:130:0x0249, B:132:0x0251, B:134:0x0263, B:137:0x0269, B:138:0x028d, B:19:0x002d, B:21:0x0035, B:52:0x00e9, B:54:0x00f5, B:56:0x00fb, B:42:0x009f, B:44:0x00ae), top: B:154:0x0008, inners: #0, #1, #2, #3 }] */
    /* JADX WARN: Code duplicated, block: B:127:0x0242 A[Catch: Exception -> 0x0048, TryCatch #4 {Exception -> 0x0048, blocks: (B:3:0x0008, B:27:0x004b, B:29:0x005d, B:31:0x0071, B:33:0x0077, B:34:0x0080, B:35:0x0088, B:39:0x008f, B:24:0x0041, B:40:0x0094, B:47:0x00ba, B:48:0x00c1, B:50:0x00d0, B:51:0x00e1, B:60:0x0111, B:62:0x011d, B:64:0x0125, B:66:0x012b, B:71:0x013c, B:73:0x0140, B:75:0x0146, B:76:0x014b, B:78:0x0151, B:79:0x0164, B:81:0x0172, B:83:0x017d, B:87:0x019f, B:89:0x01b2, B:90:0x01bc, B:92:0x01c5, B:94:0x01c9, B:96:0x01cd, B:98:0x01d3, B:100:0x01e5, B:102:0x01eb, B:109:0x0201, B:111:0x0205, B:113:0x0209, B:115:0x020d, B:117:0x0213, B:119:0x0220, B:121:0x022b, B:123:0x0232, B:125:0x023a, B:105:0x01f1, B:107:0x01fb, B:108:0x01fe, B:69:0x0133, B:70:0x0137, B:86:0x0194, B:59:0x010a, B:126:0x023e, B:127:0x0242, B:129:0x0246, B:130:0x0249, B:132:0x0251, B:134:0x0263, B:137:0x0269, B:138:0x028d, B:19:0x002d, B:21:0x0035, B:52:0x00e9, B:54:0x00f5, B:56:0x00fb, B:42:0x009f, B:44:0x00ae), top: B:154:0x0008, inners: #0, #1, #2, #3 }] */
    /* JADX WARN: Code duplicated, block: B:129:0x0246 A[Catch: Exception -> 0x0048, TryCatch #4 {Exception -> 0x0048, blocks: (B:3:0x0008, B:27:0x004b, B:29:0x005d, B:31:0x0071, B:33:0x0077, B:34:0x0080, B:35:0x0088, B:39:0x008f, B:24:0x0041, B:40:0x0094, B:47:0x00ba, B:48:0x00c1, B:50:0x00d0, B:51:0x00e1, B:60:0x0111, B:62:0x011d, B:64:0x0125, B:66:0x012b, B:71:0x013c, B:73:0x0140, B:75:0x0146, B:76:0x014b, B:78:0x0151, B:79:0x0164, B:81:0x0172, B:83:0x017d, B:87:0x019f, B:89:0x01b2, B:90:0x01bc, B:92:0x01c5, B:94:0x01c9, B:96:0x01cd, B:98:0x01d3, B:100:0x01e5, B:102:0x01eb, B:109:0x0201, B:111:0x0205, B:113:0x0209, B:115:0x020d, B:117:0x0213, B:119:0x0220, B:121:0x022b, B:123:0x0232, B:125:0x023a, B:105:0x01f1, B:107:0x01fb, B:108:0x01fe, B:69:0x0133, B:70:0x0137, B:86:0x0194, B:59:0x010a, B:126:0x023e, B:127:0x0242, B:129:0x0246, B:130:0x0249, B:132:0x0251, B:134:0x0263, B:137:0x0269, B:138:0x028d, B:19:0x002d, B:21:0x0035, B:52:0x00e9, B:54:0x00f5, B:56:0x00fb, B:42:0x009f, B:44:0x00ae), top: B:154:0x0008, inners: #0, #1, #2, #3 }] */
    /* JADX WARN: Code duplicated, block: B:132:0x0251 A[Catch: Exception -> 0x0048, TryCatch #4 {Exception -> 0x0048, blocks: (B:3:0x0008, B:27:0x004b, B:29:0x005d, B:31:0x0071, B:33:0x0077, B:34:0x0080, B:35:0x0088, B:39:0x008f, B:24:0x0041, B:40:0x0094, B:47:0x00ba, B:48:0x00c1, B:50:0x00d0, B:51:0x00e1, B:60:0x0111, B:62:0x011d, B:64:0x0125, B:66:0x012b, B:71:0x013c, B:73:0x0140, B:75:0x0146, B:76:0x014b, B:78:0x0151, B:79:0x0164, B:81:0x0172, B:83:0x017d, B:87:0x019f, B:89:0x01b2, B:90:0x01bc, B:92:0x01c5, B:94:0x01c9, B:96:0x01cd, B:98:0x01d3, B:100:0x01e5, B:102:0x01eb, B:109:0x0201, B:111:0x0205, B:113:0x0209, B:115:0x020d, B:117:0x0213, B:119:0x0220, B:121:0x022b, B:123:0x0232, B:125:0x023a, B:105:0x01f1, B:107:0x01fb, B:108:0x01fe, B:69:0x0133, B:70:0x0137, B:86:0x0194, B:59:0x010a, B:126:0x023e, B:127:0x0242, B:129:0x0246, B:130:0x0249, B:132:0x0251, B:134:0x0263, B:137:0x0269, B:138:0x028d, B:19:0x002d, B:21:0x0035, B:52:0x00e9, B:54:0x00f5, B:56:0x00fb, B:42:0x009f, B:44:0x00ae), top: B:154:0x0008, inners: #0, #1, #2, #3 }] */
    /* JADX WARN: Code duplicated, block: B:138:0x028d A[Catch: Exception -> 0x0048, TRY_LEAVE, TryCatch #4 {Exception -> 0x0048, blocks: (B:3:0x0008, B:27:0x004b, B:29:0x005d, B:31:0x0071, B:33:0x0077, B:34:0x0080, B:35:0x0088, B:39:0x008f, B:24:0x0041, B:40:0x0094, B:47:0x00ba, B:48:0x00c1, B:50:0x00d0, B:51:0x00e1, B:60:0x0111, B:62:0x011d, B:64:0x0125, B:66:0x012b, B:71:0x013c, B:73:0x0140, B:75:0x0146, B:76:0x014b, B:78:0x0151, B:79:0x0164, B:81:0x0172, B:83:0x017d, B:87:0x019f, B:89:0x01b2, B:90:0x01bc, B:92:0x01c5, B:94:0x01c9, B:96:0x01cd, B:98:0x01d3, B:100:0x01e5, B:102:0x01eb, B:109:0x0201, B:111:0x0205, B:113:0x0209, B:115:0x020d, B:117:0x0213, B:119:0x0220, B:121:0x022b, B:123:0x0232, B:125:0x023a, B:105:0x01f1, B:107:0x01fb, B:108:0x01fe, B:69:0x0133, B:70:0x0137, B:86:0x0194, B:59:0x010a, B:126:0x023e, B:127:0x0242, B:129:0x0246, B:130:0x0249, B:132:0x0251, B:134:0x0263, B:137:0x0269, B:138:0x028d, B:19:0x002d, B:21:0x0035, B:52:0x00e9, B:54:0x00f5, B:56:0x00fb, B:42:0x009f, B:44:0x00ae), top: B:154:0x0008, inners: #0, #1, #2, #3 }] */
    /* JADX WARN: Code duplicated, block: B:62:0x011d A[Catch: Exception -> 0x0048, JSONException -> 0x0131, TryCatch #0 {JSONException -> 0x0131, blocks: (B:60:0x0111, B:62:0x011d, B:64:0x0125, B:66:0x012b, B:71:0x013c, B:73:0x0140, B:75:0x0146, B:76:0x014b, B:78:0x0151, B:79:0x0164, B:81:0x0172, B:83:0x017d, B:69:0x0133, B:70:0x0137), top: B:146:0x0111, outer: #4 }] */
    /* JADX WARN: Code duplicated, block: B:69:0x0133 A[Catch: Exception -> 0x0048, JSONException -> 0x0131, TryCatch #0 {JSONException -> 0x0131, blocks: (B:60:0x0111, B:62:0x011d, B:64:0x0125, B:66:0x012b, B:71:0x013c, B:73:0x0140, B:75:0x0146, B:76:0x014b, B:78:0x0151, B:79:0x0164, B:81:0x0172, B:83:0x017d, B:69:0x0133, B:70:0x0137), top: B:146:0x0111, outer: #4 }] */
    /* JADX WARN: Code duplicated, block: B:70:0x0137 A[Catch: Exception -> 0x0048, JSONException -> 0x0131, TryCatch #0 {JSONException -> 0x0131, blocks: (B:60:0x0111, B:62:0x011d, B:64:0x0125, B:66:0x012b, B:71:0x013c, B:73:0x0140, B:75:0x0146, B:76:0x014b, B:78:0x0151, B:79:0x0164, B:81:0x0172, B:83:0x017d, B:69:0x0133, B:70:0x0137), top: B:146:0x0111, outer: #4 }] */
    /* JADX WARN: Code duplicated, block: B:78:0x0151 A[Catch: Exception -> 0x0048, JSONException -> 0x0131, LOOP:0: B:76:0x014b->B:78:0x0151, LOOP_END, TryCatch #0 {JSONException -> 0x0131, blocks: (B:60:0x0111, B:62:0x011d, B:64:0x0125, B:66:0x012b, B:71:0x013c, B:73:0x0140, B:75:0x0146, B:76:0x014b, B:78:0x0151, B:79:0x0164, B:81:0x0172, B:83:0x017d, B:69:0x0133, B:70:0x0137), top: B:146:0x0111, outer: #4 }] */
    /* JADX WARN: Code duplicated, block: B:89:0x01b2 A[Catch: Exception -> 0x0048, TryCatch #4 {Exception -> 0x0048, blocks: (B:3:0x0008, B:27:0x004b, B:29:0x005d, B:31:0x0071, B:33:0x0077, B:34:0x0080, B:35:0x0088, B:39:0x008f, B:24:0x0041, B:40:0x0094, B:47:0x00ba, B:48:0x00c1, B:50:0x00d0, B:51:0x00e1, B:60:0x0111, B:62:0x011d, B:64:0x0125, B:66:0x012b, B:71:0x013c, B:73:0x0140, B:75:0x0146, B:76:0x014b, B:78:0x0151, B:79:0x0164, B:81:0x0172, B:83:0x017d, B:87:0x019f, B:89:0x01b2, B:90:0x01bc, B:92:0x01c5, B:94:0x01c9, B:96:0x01cd, B:98:0x01d3, B:100:0x01e5, B:102:0x01eb, B:109:0x0201, B:111:0x0205, B:113:0x0209, B:115:0x020d, B:117:0x0213, B:119:0x0220, B:121:0x022b, B:123:0x0232, B:125:0x023a, B:105:0x01f1, B:107:0x01fb, B:108:0x01fe, B:69:0x0133, B:70:0x0137, B:86:0x0194, B:59:0x010a, B:126:0x023e, B:127:0x0242, B:129:0x0246, B:130:0x0249, B:132:0x0251, B:134:0x0263, B:137:0x0269, B:138:0x028d, B:19:0x002d, B:21:0x0035, B:52:0x00e9, B:54:0x00f5, B:56:0x00fb, B:42:0x009f, B:44:0x00ae), top: B:154:0x0008, inners: #0, #1, #2, #3 }] */
    @Override
    public boolean handleMessage(Message message) throws Throwable {
        Context context;
        long jCurrentTimeMillis;
        long j10;
        long j11;
        com.transsion.athena.config.data.model.athena athenaVarB;
        JSONObject jSONObjectA;
        Object jSONObject;
        JSONArray jSONArrayNames;
        int i10;
        this.f41600d = true;
        try {
            int i11 = message.what;
            if (i11 == 298) {
                if (message.arg1 == 1) {
                    h();
                }
                if (!this.f41597b.hasMessages(299)) {
                    context = this.f41596a;
                    int i12 = com.transsion.athena.taaneh.anehat.f41678e;
                    if (TextUtils.isEmpty(m4.a.a(context).i("first_init")) || !com.transsion.athena.config.data.model.ehanat.K) {
                        Handler handler = this.f41597b;
                        handler.sendMessageAtFrontOfQueue(Message.obtain(handler, 299));
                    } else {
                        com.transsion.athena.taaneh.aethna.a("First init delay %d s upload!", Integer.valueOf(AthenaAnalytics.f42986p));
                        this.f41597b.sendEmptyMessageDelayed(299, ((long) AthenaAnalytics.f42986p) * 1000);
                        m4.a.a(this.f41596a).g("first_init", "false");
                    }
                }
            } else if (i11 == 299) {
                i();
            } else if (i11 == 302) {
                Track track = (Track) message.obj;
                TrackData trackData = track.getTrackData();
                try {
                    if (!track.getEventName().equals("page_enter") || com.transsion.athena.taaneh.athena.d() == null) {
                        try {
                            jSONObjectA = trackData.a();
                            String str = com.transsion.athena.config.data.model.ehanat.f41482h;
                            if (jSONObjectA.has("_eparam")) {
                                jSONObject = jSONObjectA.get("_eparam");
                                if ((jSONObject instanceof JSONArray) || jSONObjectA.length() <= 1) {
                                    jSONObjectA.remove("_eparam");
                                } else {
                                    jSONObject = new JSONObject();
                                }
                            } else {
                                jSONObject = new JSONObject();
                            }
                            if ((jSONObject instanceof JSONObject) && jSONObjectA.length() > 0) {
                                jSONArrayNames = jSONObjectA.names();
                                for (i10 = 0; i10 < jSONArrayNames.length(); i10++) {
                                    String string = jSONArrayNames.getString(i10);
                                    ((JSONObject) jSONObject).put(string, jSONObjectA.get(string));
                                    jSONObjectA.remove(string);
                                }
                            }
                            JSONObject jSONObject2 = new JSONObject(jSONObject.toString());
                            jSONObjectA.put("_eparam", jSONObject);
                            jSONObjectA.put("net", com.transsion.athena.taaneh.aatnhe.b(this.f41596a));
                            jSONObjectA.put(NotificationCompat.CATEGORY_EVENT, track.getEventName());
                            track.setJsonData(jSONObjectA);
                            track.setOriginJsonData(jSONObject2);
                            track.setTrackFlag(trackData.d());
                        } catch (JSONException e10) {
                            com.transsion.athena.taaneh.aethna.b("Record track exception : %s", e10.getMessage());
                        }
                        jCurrentTimeMillis = System.currentTimeMillis();
                        if (Math.abs(jCurrentTimeMillis - this.f41610n) > 3600000) {
                            this.f41610n = jCurrentTimeMillis;
                            this.f41609m = com.transsion.athena.taaneh.aatnhe.c(this.f41596a);
                        }
                        this.f41604h--;
                        if (this.f41609m && this.f41611o && com.transsion.athena.config.data.model.ehanat.R && !AthenaAnalytics.S() && (athenaVarB = com.transsion.athena.aethna.athena.c().b(com.transsion.athena.taaneh.anehat.a(track.getTid()))) != null && athenaVarB.a()) {
                            b(track);
                        } else {
                            if (!"ev_athena".equals(track.getEventName())) {
                                h();
                            }
                            a(track);
                        }
                        if (!this.f41609m && !this.f41611o && com.transsion.athena.config.data.model.ehanat.R && com.transsion.athena.config.data.model.ehanat.r()) {
                            this.f41612p++;
                            if (g()) {
                                j10 = this.f41612p;
                                j11 = 20;
                                if (j10 % j11 == 0 && j10 / j11 <= 3 && com.transsion.athena.taaneh.anehat.c(this.f41596a)) {
                                    f();
                                }
                            }
                        }
                    } else {
                        trackData.add("fromsite", com.transsion.athena.taaneh.athena.a(com.transsion.athena.taaneh.athena.d()));
                        jSONObjectA = trackData.a();
                        String str2 = com.transsion.athena.config.data.model.ehanat.f41482h;
                        if (jSONObjectA.has("_eparam")) {
                            jSONObject = jSONObjectA.get("_eparam");
                            if (jSONObject instanceof JSONArray) {
                                jSONObjectA.remove("_eparam");
                            } else {
                                jSONObjectA.remove("_eparam");
                            }
                        } else {
                            jSONObject = new JSONObject();
                        }
                        if (jSONObject instanceof JSONObject) {
                            jSONArrayNames = jSONObjectA.names();
                            while (i10 < jSONArrayNames.length()) {
                                String string2 = jSONArrayNames.getString(i10);
                                ((JSONObject) jSONObject).put(string2, jSONObjectA.get(string2));
                                jSONObjectA.remove(string2);
                            }
                        }
                        JSONObject jSONObject3 = new JSONObject(jSONObject.toString());
                        jSONObjectA.put("_eparam", jSONObject);
                        jSONObjectA.put("net", com.transsion.athena.taaneh.aatnhe.b(this.f41596a));
                        jSONObjectA.put(NotificationCompat.CATEGORY_EVENT, track.getEventName());
                        track.setJsonData(jSONObjectA);
                        track.setOriginJsonData(jSONObject3);
                        track.setTrackFlag(trackData.d());
                        jCurrentTimeMillis = System.currentTimeMillis();
                        if (Math.abs(jCurrentTimeMillis - this.f41610n) > 3600000) {
                            this.f41610n = jCurrentTimeMillis;
                            this.f41609m = com.transsion.athena.taaneh.aatnhe.c(this.f41596a);
                        }
                        this.f41604h--;
                        if (this.f41609m) {
                            if (!"ev_athena".equals(track.getEventName())) {
                                h();
                            }
                            a(track);
                        } else {
                            if (!"ev_athena".equals(track.getEventName())) {
                                h();
                            }
                            a(track);
                        }
                        if (!this.f41609m) {
                            this.f41612p++;
                            if (g()) {
                                j10 = this.f41612p;
                                j11 = 20;
                                if (j10 % j11 == 0) {
                                    f();
                                }
                            }
                        }
                    }
                } catch (Exception e11) {
                    com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e11));
                }
            } else if (i11 == 303) {
                com.transsion.athena.taaneh.aethna.f41673a.m().r(com.transsion.athena.config.data.model.ehanat.q());
                com.transsion.athena.taaneh.aethna.c("Athena init, SDK Version is [%s]", "3.1.1.4");
                j();
                h();
            } else if (i11 == 308) {
                try {
                    com.transsion.athena.aethna.athena.c().j();
                    if (com.transsion.athena.data.anateh.aethna.a(this.f41596a) != null) {
                        com.transsion.athena.data.anateh.aethna.a(this.f41596a).a();
                    }
                } catch (Exception e12) {
                    a("handleCleanupData", e12);
                }
            } else if (i11 == 400) {
                a(message.arg1, (String) message.obj);
            } else if (i11 != 600) {
                switch (i11) {
                    case 502:
                        a(message.arg1 == 1);
                        break;
                    case 503:
                        if (com.transsion.athena.ehatna.aethna.b().a(((Long) message.obj).longValue())) {
                            String strA = com.transsion.athena.ehatna.aethna.b().a();
                            long jC = com.transsion.athena.ehatna.aethna.b().c();
                            if (jC > 0 && !TextUtils.isEmpty(strA)) {
                                com.transsion.athena.data.anateh.aethna.a(this.f41596a).a(strA, jC);
                            }
                        }
                        a(false, this.f41602f);
                        break;
                    case 504:
                        try {
                            if (com.transsion.athena.data.anateh.aethna.a(this.f41596a) != null) {
                                com.transsion.athena.data.anateh.aethna.a(this.f41596a).b();
                            }
                        } catch (Exception e13) {
                            a("disconnectDB", e13);
                        }
                        break;
                }
            } else {
                if (message.arg1 == 1) {
                    h();
                }
                if (!this.f41597b.hasMessages(299)) {
                    context = this.f41596a;
                    int i13 = com.transsion.athena.taaneh.anehat.f41678e;
                    if (TextUtils.isEmpty(m4.a.a(context).i("first_init"))) {
                        Handler handler2 = this.f41597b;
                        handler2.sendMessageAtFrontOfQueue(Message.obtain(handler2, 299));
                    } else {
                        Handler handler3 = this.f41597b;
                        handler3.sendMessageAtFrontOfQueue(Message.obtain(handler3, 299));
                    }
                }
            }
        } catch (Exception e14) {
            if (com.transsion.athena.taaneh.anehat.b()) {
                com.transsion.athena.taaneh.aethna.b("Worker handle message exception : %s", e14.getMessage());
            }
            a("handleMessage", e14);
        }
        this.f41600d = false;
        return false;
    }

    private void b(Track track) {
        if (!com.transsion.athena.config.data.model.ehanat.r()) {
            com.transsion.athena.taaneh.aethna.c("Athena SDK isAthenaEnable = false");
            return;
        }
        if (c(track)) {
            int iA = com.transsion.athena.taaneh.anehat.a(track.getTid());
            String str = "";
            if (this.f41607k.indexOfKey(iA) >= 0) {
                String str2 = this.f41607k.get(iA, "");
                if (!TextUtils.isEmpty(str2)) {
                    try {
                        JSONObject jSONObject = new JSONObject(str2);
                        String string = jSONObject.has("eparam") ? jSONObject.getString("eparam") : "";
                        JSONObject jSONObject2 = TextUtils.isEmpty(string) ? new JSONObject() : new JSONObject(string);
                        Track track2 = new Track();
                        track2.setEventName(jSONObject.getString(NotificationCompat.CATEGORY_EVENT));
                        track2.setTid(jSONObject.getLong("tid"));
                        track2.setTrackTs(jSONObject.getLong("ts"));
                        track2.setTrackErTs(SystemClock.elapsedRealtime());
                        track2.setOriginJsonData(jSONObject2);
                        this.f41607k.put(iA, "");
                        m4.a.a(AthenaAnalytics.J()).g("first_page_enter_" + iA, "");
                        b(track2);
                    } catch (Exception unused) {
                    }
                }
            }
            JSONObject jSONObject3 = new JSONObject();
            try {
                jSONObject3.put(NotificationCompat.CATEGORY_EVENT, track.getEventName());
                jSONObject3.put("tid", track.getTid());
                jSONObject3.put(NativeComponentConstants.KEY_COMPONENT_TYPE, track.getTrackFlag());
                JSONObject originJsonData = track.getOriginJsonData();
                a(originJsonData, "_apkg", com.transsion.athena.taaneh.athena.h(this.f41596a));
                a(originJsonData, "_avn", com.transsion.athena.taaneh.athena.j(this.f41596a));
                a(originJsonData, "_avc", Integer.valueOf(com.transsion.athena.taaneh.athena.i(this.f41596a)));
                a(originJsonData, "_atutp", Short.valueOf(com.transsion.athena.config.data.model.ehanat.c()));
                String strB = com.transsion.athena.config.data.model.ehanat.b();
                if (strB != null) {
                    str = strB;
                }
                a(originJsonData, "_atuid", str);
                a(originJsonData, "_achannel", com.transsion.athena.config.data.model.ehanat.g());
                a(originJsonData, "_ainstallchnl", TextUtils.isEmpty(com.transsion.athena.taaneh.athena.e(this.f41596a)) ? " " : com.transsion.athena.taaneh.athena.e(this.f41596a));
                jSONObject3.put("_eparam", originJsonData);
            } catch (JSONException e10) {
                com.transsion.athena.taaneh.aethna.b("Track by DCS exception : ", e10.getMessage());
            }
            ContentValues contentValues = new ContentValues();
            contentValues.put("trackObject", jSONObject3.toString());
            this.f41596a.getContentResolver().insert(Uri.parse("content://com.transsion.dataservice.provider/track"), contentValues);
            com.transsion.athena.taaneh.aethna.c("track by DCS:%s", jSONObject3.toString());
        }
    }

    private boolean c(Track track) {
        if (!"app_launch".equals(track.getEventName())) {
            return true;
        }
        m4.a aVarA = m4.a.a(this.f41596a);
        String str = "app_launch_" + com.transsion.athena.taaneh.anehat.a(track.getTid());
        int iE = aVarA.e(str);
        if (iE != 0 && Math.abs((track.getTrackTs() / 1000) - ((long) iE)) <= 7200) {
            return false;
        }
        aVarA.b(str, Long.valueOf(track.getTrackTs() / 1000).intValue());
        return true;
    }

    private void f() {
        Cursor cursorQuery = null;
        try {
            String strH = com.transsion.athena.taaneh.athena.h(this.f41596a);
            cursorQuery = this.f41596a.getContentResolver().query(Uri.parse("content://com.transsion.dataservice.provider/authorize"), null, "pkg = ?", new String[]{strH}, null);
            if (cursorQuery != null) {
                boolean z10 = cursorQuery.getCount() == 1;
                this.f41611o = z10;
                com.transsion.athena.taaneh.aethna.c("Pkg [%s] DCS authorize [%s]", strH, z10 ? OfflineConstantsKt.OFFLINE_CONFIG_ENABLE : "disable");
            } else {
                com.transsion.athena.taaneh.aethna.c("Cursor is null, Pkg [%s] may not on the DCS white list", strH);
            }
        } catch (Exception e10) {
            com.transsion.athena.taaneh.aethna.b("Dcs applyForAccess exception : %s", e10.getMessage());
        } finally {
            if (0 != 0) {
                cursorQuery.close();
            }
        }
    }

    private boolean g() {
        List<com.transsion.athena.config.data.model.athena> listA = com.transsion.athena.aethna.athena.c().a();
        if (com.transsion.athena.config.data.model.anehat.a(listA)) {
            return false;
        }
        for (com.transsion.athena.config.data.model.athena athenaVar : listA) {
            if (athenaVar != null && athenaVar.a()) {
                return true;
            }
        }
        return false;
    }

    private void h() {
        if (!com.transsion.athena.taaneh.aatnhe.c(this.f41596a)) {
            com.transsion.athena.taaneh.aethna.c("%s", "CheckConfig cancel, network is not available");
        } else if (GslbSdk.isInitSuccess(com.transsion.athena.config.data.model.ehanat.a(false))) {
            com.transsion.athena.aethna.athena.c().a(this.f41597b, this.f41613q);
        } else {
            com.transsion.athena.taaneh.aethna.c("%s", "CheckConfig cancel, GslbSdk is not inited");
        }
    }

    private void i() {
        if (!com.transsion.athena.taaneh.aatnhe.c(this.f41596a)) {
            com.transsion.athena.taaneh.aethna.a("%s", "checkUpload network unavailable");
            return;
        }
        if (com.transsion.athena.ehatna.aethna.b().f()) {
            if (com.transsion.athena.ehatna.aethna.b().e()) {
                return;
            }
            com.transsion.athena.taaneh.aethna.a("%s", "checkUpload sync baseTime");
            com.transsion.athena.ehatna.aethna.b().a(true);
            com.transsion.athena.hatnea.athena.a().a(new atnhae(this.f41597b));
            return;
        }
        if (!com.transsion.athena.config.data.model.ehanat.r()) {
            com.transsion.athena.taaneh.aethna.a("%s", "checkUpload sdk disable or gaid invalid");
            String strI = m4.a.a(this.f41596a).i("gdpr_close");
            if (TextUtils.isEmpty(strI)) {
                return;
            }
            com.transsion.athena.hatnea.athena.a().a(new com.transsion.athena.hatnea.aethna(this.f41597b, strI));
            return;
        }
        if (!GslbSdk.isInitSuccess(com.transsion.athena.config.data.model.ehanat.o())) {
            com.transsion.athena.taaneh.aethna.a("%s", "checkUpload GSLB is not ready");
            return;
        }
        if (com.transsion.athena.config.data.model.anehat.a(com.transsion.athena.aethna.athena.c().d())) {
            com.transsion.athena.taaneh.aethna.a("%s", "checkUpload global config is not ready");
            return;
        }
        List<AppIdData> listC = com.transsion.athena.data.anateh.aethna.a(this.f41596a).c();
        if (com.transsion.athena.config.data.model.anehat.a(listC)) {
            List<com.transsion.athena.config.data.model.athena> listA = com.transsion.athena.aethna.athena.c().a();
            if (com.transsion.athena.config.data.model.anehat.a(listA)) {
                com.transsion.athena.taaneh.aethna.a("%s", "checkUpload appid config list is null");
                return;
            }
            Iterator<com.transsion.athena.config.data.model.athena> it = listA.iterator();
            while (it.hasNext()) {
                AppIdData appIdDataA = AppIdData.a(this.f41596a, it.next().b());
                if (listC == null) {
                    listC = new ArrayList<>();
                }
                listC.add(appIdDataA);
                com.transsion.athena.data.anateh.aethna.a(this.f41596a).a(appIdDataA);
            }
        }
        HashSet hashSet = new HashSet();
        for (AppIdData appIdData : listC) {
            com.transsion.athena.config.data.model.athena athenaVarB = com.transsion.athena.aethna.athena.c().b(appIdData.f41517a);
            if (athenaVarB != null) {
                String domain = TextUtils.isEmpty(athenaVarB.h()) ? GslbSdk.getDomain(com.transsion.athena.config.data.model.ehanat.o(), true) : GslbSdk.getDomain(com.transsion.athena.config.data.model.ehanat.b(athenaVarB.h()), true);
                appIdData.f41522f = domain;
                hashSet.add(domain);
            }
        }
        Iterator it2 = hashSet.iterator();
        while (it2.hasNext()) {
            com.transsion.athena.hatnea.athena.a().a(new com.transsion.athena.hatnea.hatnea(this.f41597b, (String) it2.next(), listC, this.f41601e, this.f41607k));
        }
    }

    public static enatha a(Context context) {
        if (f41599c == null) {
            synchronized (enatha.class) {
                try {
                    if (f41599c == null) {
                        f41599c = new enatha(context);
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return f41599c;
    }

    @Override
    public boolean c() {
        return !this.f41600d;
    }

    public static void a(SparseArray sparseArray) {
        ArrayList arrayList = new ArrayList(sparseArray.size());
        for (int i10 = 0; i10 < sparseArray.size(); i10++) {
            arrayList.add((com.transsion.athena.config.data.model.athena) sparseArray.valueAt(i10));
        }
        com.transsion.athena.aethna.athena.c().a(arrayList);
    }

    public void a(MMKV mmkv) {
        try {
            String[] strArrA = mmkv.a();
            if (strArrA != null && strArrA.length >= 1) {
                ArrayList arrayList = new ArrayList();
                String[] strArr = new String[100];
                for (int i10 = 0; i10 < strArrA.length; i10++) {
                    TrackDataWrapper trackDataWrapper = (TrackDataWrapper) mmkv.i(strArrA[i10], TrackDataWrapper.class);
                    if (trackDataWrapper != null && arrayList.size() < 100) {
                        arrayList.add(a(trackDataWrapper));
                        strArr[i10] = strArrA[i10];
                    }
                }
                if (!arrayList.isEmpty()) {
                    a(arrayList);
                    mmkv.removeValuesForKeys(strArr);
                }
                if (mmkv.a() == null || mmkv.a().length <= 0) {
                    return;
                }
                a(mmkv);
            }
        } catch (Exception e10) {
            com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e10));
        }
    }

    private Track a(TrackDataWrapper trackDataWrapper) {
        Object jSONObject;
        Track track = new Track();
        track.setEventName(trackDataWrapper.a());
        track.setTid(trackDataWrapper.b());
        track.setTrackTs(System.currentTimeMillis());
        track.setTrackErTs(SystemClock.elapsedRealtime());
        TrackData trackDataC = trackDataWrapper.c();
        try {
            JSONObject jSONObjectA = trackDataC.a();
            String str = com.transsion.athena.config.data.model.ehanat.f41482h;
            if (jSONObjectA.has("_eparam")) {
                jSONObject = jSONObjectA.get("_eparam");
                if ((jSONObject instanceof JSONArray) && jSONObjectA.length() > 1) {
                    jSONObject = new JSONObject();
                } else {
                    jSONObjectA.remove("_eparam");
                }
            } else {
                jSONObject = new JSONObject();
            }
            if ((jSONObject instanceof JSONObject) && jSONObjectA.length() > 0) {
                JSONArray jSONArrayNames = jSONObjectA.names();
                for (int i10 = 0; i10 < jSONArrayNames.length(); i10++) {
                    String string = jSONArrayNames.getString(i10);
                    ((JSONObject) jSONObject).put(string, jSONObjectA.get(string));
                    jSONObjectA.remove(string);
                }
            }
            JSONObject jSONObject2 = new JSONObject(jSONObject.toString());
            jSONObjectA.put("_eparam", jSONObject);
            jSONObjectA.put("net", com.transsion.athena.taaneh.aatnhe.b(this.f41596a));
            jSONObjectA.put(NotificationCompat.CATEGORY_EVENT, track.getEventName());
            track.setJsonData(jSONObjectA);
            track.setOriginJsonData(jSONObject2);
            track.setTrackFlag(trackDataC.d());
            TidConfigBean tidConfigBeanA = com.transsion.athena.aethna.athena.c().a((int) track.getTid(), track.getEventName());
            if (tidConfigBeanA != null) {
                track.setTid(tidConfigBeanA.getTid());
            }
        } catch (JSONException e10) {
            com.transsion.athena.taaneh.aethna.b("Convert to Track exception : %s", e10.getMessage());
        }
        return track;
    }

    public static void b(String str) {
        Bundle bundle = new Bundle();
        bundle.putString("v", str);
        i.a().c(new com.transsion.ga.anateh("cleanupEvents_oom", bundle));
    }

    private void a(boolean z10, long j10) {
        if (this.f41597b.hasMessages(298)) {
            return;
        }
        Message messageObtainMessage = this.f41597b.obtainMessage(298);
        if (z10) {
            messageObtainMessage.arg1 = 1;
            this.f41597b.sendMessage(messageObtainMessage);
        } else {
            messageObtainMessage.arg1 = 0;
            this.f41597b.sendMessageDelayed(messageObtainMessage, j10);
        }
    }

    private void a(Track track) {
        TidConfigBean tidConfigBeanA;
        int iA = com.transsion.athena.taaneh.anehat.a(track.getTid());
        if (!"".equals(this.f41607k.get(iA, null)) && "page_enter".equals(track.getEventName())) {
            try {
                String string = new JSONObject().put(NotificationCompat.CATEGORY_EVENT, track.getEventName()).put("ts", track.getTrackTs()).put("tid", track.getTid()).put("net", track.getJsonData().getInt("net")).put("eparam", track.getJsonData().getJSONObject("_eparam").toString()).toString();
                this.f41607k.put(iA, string);
                m4.a.a(this.f41596a).g("first_page_enter_" + iA, string);
                com.transsion.athena.taaneh.aethna.a("save [%d] fpe to sp : %s", Integer.valueOf(iA), string);
                return;
            } catch (Exception e10) {
                com.transsion.athena.taaneh.aethna.b("saveFpeForAppId exception : %s", e10.getMessage());
            }
        }
        if (!com.transsion.athena.config.data.model.ehanat.r()) {
            com.transsion.athena.taaneh.aethna.c("%s", "Athena SDK Enable : [false]");
            return;
        }
        String string2 = track.getJsonData().toString();
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(SafeStringUtils.SP_APPID, com.transsion.athena.taaneh.anehat.a(track.getTid()));
            jSONObject.put(NotificationCompat.CATEGORY_EVENT, track.getEventName());
            jSONObject.put("ts", track.getTrackTs());
            jSONObject.put("params", track.getJsonData());
            com.transsion.athena.taaneh.aethna.c("track event:%s", jSONObject.toString());
        } catch (Exception e11) {
            com.transsion.athena.taaneh.aethna.b("handleSaveData exception:%s", e11.getMessage());
        }
        if (string2.length() >= 716800) {
            com.transsion.athena.taaneh.aethna.b("track [%d]-[%s], save2DB failed due to eparam out of limit [%d]", Long.valueOf(track.getTid()), track.getEventName(), 716800);
            return;
        }
        if (c(track)) {
            if (track.getTid() > 9999) {
                tidConfigBeanA = com.transsion.athena.aethna.athena.c().b(track.getTid());
            } else {
                tidConfigBeanA = com.transsion.athena.aethna.athena.c().a((int) track.getTid(), track.getEventName());
                if (tidConfigBeanA != null) {
                    track.setTid(tidConfigBeanA.getTid());
                }
            }
            boolean z10 = track.getTrackFlag() == 0 && tidConfigBeanA != null && tidConfigBeanA.isCacheEnable();
            int iJ = com.transsion.athena.config.data.model.ehanat.j();
            if (iJ > 0 && z10) {
                try {
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("tid", track.getTid());
                    jSONObject2.put(NotificationCompat.CATEGORY_EVENT, track.getEventName());
                    com.transsion.athena.taaneh.aethna.c("save event to memory:%s", jSONObject2.toString());
                } catch (Exception e12) {
                    com.transsion.athena.taaneh.aethna.b("print saveTrack2Mem exception:%s", e12.getMessage());
                }
                if (this.f41605i == null) {
                    this.f41605i = new ArrayList<>();
                }
                if (this.f41605i.size() >= iJ - 1) {
                    this.f41605i.add(track);
                    a(this.f41605i);
                    this.f41606j = 0L;
                    return;
                }
                long trackTs = track.getTrackTs();
                if (tidConfigBeanA.allowTrack(trackTs)) {
                    tidConfigBeanA.setLastTTime(trackTs);
                    this.f41605i.add(track);
                    long j10 = this.f41606j;
                    if (j10 == 0) {
                        this.f41606j = trackTs;
                        return;
                    } else {
                        if (trackTs - j10 >= 600000) {
                            a(this.f41605i);
                            this.f41606j = 0L;
                            return;
                        }
                        return;
                    }
                }
                com.transsion.athena.taaneh.aethna.c("save [%d]-[%s] to DB failed due to limit in one-life-cycle", Long.valueOf(track.getTid()), track.getEventName());
                return;
            }
            a(track, tidConfigBeanA);
        }
    }

    private void a(Track track, TidConfigBean tidConfigBean) {
        int iA;
        int iA2 = track.getTid() > 9999 ? com.transsion.athena.aethna.athena.c().a(track.getTid(), track.getTrackData().b()) : com.transsion.athena.aethna.athena.c().a((int) track.getTid(), track.getEventName(), track.getTrackData().b());
        if (iA2 != 0) {
            com.transsion.athena.taaneh.aethna.b("recordTrackFailed reason : %d", Integer.valueOf(iA2));
            return;
        }
        if (tidConfigBean != null && !tidConfigBean.allowTrack(track.getTrackTs())) {
            com.transsion.athena.taaneh.aethna.b("save [%d]-[%s] to DB failed due to limit in one-life-cycle", Long.valueOf(track.getTid()), track.getEventName());
            iA = 0;
        } else {
            com.transsion.athena.ehatna.aethna.b().a(track);
            iA = com.transsion.athena.data.anateh.aethna.a(this.f41596a).a(track);
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("tid", track.getTid());
                jSONObject.put(NotificationCompat.CATEGORY_EVENT, track.getEventName());
                jSONObject.put("ts", track.getTrackTs());
                jSONObject.put("db_count", iA);
                com.transsion.athena.taaneh.aethna.c("save event to DB:%s", jSONObject.toString());
            } catch (Exception e10) {
                com.transsion.athena.taaneh.aethna.b("saveTrack2DB exception:%s", e10.getMessage());
            }
        }
        if (iA == -1) {
            com.transsion.athena.taaneh.aethna.b("DB_UPDATE_ERROR");
        } else if (iA == -2) {
            com.transsion.athena.taaneh.aethna.c("save [%d]-[%s] to DB failed due to DB_OUT_OF_MEMORY_ERROR", Long.valueOf(track.getTid()), track.getEventName());
            com.transsion.athena.taaneh.aethna.c("Clean up DB due to DB_OUT_OF_MEMORY_ERROR, Count [%d]", Integer.valueOf(com.transsion.athena.data.anateh.aethna.a(this.f41596a).a(1000, new com.transsion.athena.data.anateh.enatha() {
                @Override
                public final void a(Object obj) {
                    enatha.b((String) obj);
                }
            })));
        }
        if ("ev_athena".equals(track.getEventName())) {
            return;
        }
        if (iA > 0) {
            if (tidConfigBean != null) {
                tidConfigBean.setLastTTime(track.getTrackTs());
                tidConfigBean.getTidConfig().a(iA);
            }
            if ("device".equals(track.getEventName()) && 9999 == com.transsion.athena.taaneh.anehat.a(track.getTid())) {
                com.transsion.athena.aethna.athena.c().k();
            }
        }
        a(false, this.f41602f);
    }

    private void a(final List<Track> list) {
        ArrayList<Track> arrayList = new ArrayList<>();
        for (Track track : list) {
            if (com.transsion.athena.aethna.athena.c().a(track.getTid(), track.getTrackData().b()) == 0) {
                com.transsion.athena.ehatna.aethna.b().a(track);
                arrayList.add(track);
            }
        }
        if (arrayList.size() > 0) {
            int iA = com.transsion.athena.data.anateh.aethna.a(this.f41596a).a(arrayList, new com.transsion.athena.data.anateh.enatha() {
                @Override
                public final void a(Object obj) {
                    enatha.a(list, (LongSparseArray) obj);
                }
            });
            com.transsion.athena.taaneh.aethna.c("saveMemCacheToDb Count = " + iA);
            if (iA == -2) {
                com.transsion.athena.taaneh.aethna.b("saveToDB out of memory cleanCount = " + com.transsion.athena.data.anateh.aethna.a(this.f41596a).a(1000, new C0578enatha(this)));
            }
            a(false, this.f41602f);
        }
    }

    public static void a(List list, LongSparseArray longSparseArray) {
        com.transsion.athena.taaneh.aethna.c("saveMemCacheToDb tidCountArray = " + longSparseArray);
        list.clear();
        for (int i10 = 0; i10 < longSparseArray.size(); i10++) {
            long jKeyAt = longSparseArray.keyAt(i10);
            TidConfigBean tidConfigBeanB = com.transsion.athena.aethna.athena.c().b(jKeyAt);
            if (tidConfigBeanB != null) {
                tidConfigBeanB.getTidConfig().a(((Integer) longSparseArray.valueAt(i10)).intValue());
                if ("device".equals(tidConfigBeanB.getEvent()) && 9999 == com.transsion.athena.taaneh.anehat.a(jKeyAt)) {
                    com.transsion.athena.aethna.athena.c().k();
                }
            }
        }
    }

    static void a(enatha enathaVar) {
        if (!enathaVar.f41603g) {
            enathaVar.f41602f = com.transsion.athena.aethna.athena.c().g() * 1000;
        }
        enathaVar.h();
    }

    public void a(String str, int i10, com.transsion.athena.config.data.model.athena athenaVar, String str2) {
        String domain;
        if (TextUtils.isEmpty(str)) {
            domain = GslbSdk.getDomain(com.transsion.athena.config.data.model.ehanat.o(), true);
        } else {
            domain = GslbSdk.getDomain(com.transsion.athena.config.data.model.ehanat.b(str), true);
        }
        Bundle bundle = new Bundle();
        bundle.putInt("app_id", i10);
        bundle.putString("url", domain);
        bundle.putLong("ver", athenaVar.k());
        bundle.putString("gslb_data", str2);
        new hi.a("app_cfg_log", 9999).c(bundle, null).b();
    }

    public void a(int i10, boolean z10) {
        com.transsion.athena.config.data.model.athena athenaVarB = com.transsion.athena.aethna.athena.c().b(i10);
        if (athenaVarB != null) {
            com.transsion.athena.taaneh.aethna.a("handleTidChange appconf : %s", athenaVarB.m());
            com.transsion.athena.data.anateh.aethna.a(this.f41596a).a(athenaVarB, z10);
            String strH = athenaVarB.h();
            if (!TextUtils.isEmpty(strH)) {
                if (!GslbSdk.isInitSuccess(strH)) {
                    GslbSdk.init(this.f41596a, new String[]{strH}, new anateh(strH, i10, athenaVarB));
                } else {
                    a(strH, i10, athenaVarB, this.f41608l);
                }
                GslbSdk.getDomain(strH, new ehanat(this));
            }
            String strC = athenaVarB.c();
            if (!TextUtils.isEmpty(strC)) {
                GslbSdk.init(this.f41596a, new String[]{strC}, new aatnhe(this));
                GslbSdk.getDomain(strC, (GslbSdk.ResultListener) null);
            }
        }
        if (z10) {
            List<TidConfigBean> listJ = athenaVarB.j();
            if (com.transsion.athena.config.data.model.anehat.a(listJ)) {
                com.transsion.athena.taaneh.aethna.c("%s", "handleTidChange tid config is null");
                return;
            }
            ArrayList arrayList = new ArrayList();
            for (TidConfigBean tidConfigBean : listJ) {
                if (tidConfigBean.getTidConfig().i() == -1) {
                    arrayList.add(Long.valueOf(tidConfigBean.getTid()));
                }
            }
            if (!arrayList.isEmpty()) {
                try {
                    com.transsion.athena.data.anateh.aethna.a(this.f41596a).a(arrayList, this.f41601e, new com.transsion.athena.data.anateh.enatha() {
                        @Override
                        public final void a(Object obj) {
                            enatha.a((String) obj);
                        }
                    });
                } catch (Exception e10) {
                    com.transsion.athena.taaneh.aethna.b("Handle tid change exception : %s", e10.getMessage());
                    a("handleTidChange", e10);
                }
            }
            AthenaAnalytics.I();
            if (com.transsion.athena.data.athena.b() == i10) {
                com.transsion.athena.config.data.model.ehanat.e(com.transsion.athena.aethna.athena.c().a(i10, "page_view", 1.0f) == 0);
            }
        }
    }

    public static void a(String str) {
        Bundle bundle = new Bundle();
        bundle.putString("v", str);
        i.a().c(new com.transsion.ga.anateh("cleanupEvents_off", bundle));
        com.transsion.athena.taaneh.aethna.c("handleTidChange cleanupList : %s", str);
    }

    private void a(int i10, String str) {
        com.transsion.athena.aethna.athena.c().a(i10);
        if (com.transsion.athena.data.anateh.aethna.a(this.f41596a) != null) {
            if (str == null) {
                com.transsion.athena.data.anateh.aethna.a(this.f41596a).a(AppIdData.a(this.f41596a, i10));
                return;
            }
            com.transsion.athena.data.anateh.aethna aethnaVarA = com.transsion.athena.data.anateh.aethna.a(this.f41596a);
            AppIdData appIdData = new AppIdData();
            appIdData.f41517a = i10;
            appIdData.f41518b = str;
            aethnaVarA.a(appIdData);
        }
    }

    private void a(String str, Throwable th2) {
        i.a().c(new com.transsion.ga.anateh(str, th2));
    }

    private void a(JSONObject jSONObject, String str, Object obj) throws JSONException {
        try {
            jSONObject.getString(str);
        } catch (JSONException unused) {
            jSONObject.put(str, obj);
        }
    }

    @SuppressLint({"MissingPermission"})
    private void a(boolean z10) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        if ((z10 && TextUtils.isEmpty(com.transsion.athena.config.data.model.ehanat.m())) || Math.abs(jCurrentTimeMillis - this.f41615s) < 3600000) {
            if (this.f41597b.hasMessages(502)) {
                return;
            }
            this.f41597b.sendMessageDelayed(this.f41597b.obtainMessage(502), 3600000L);
            return;
        }
        if (com.transsion.athena.aethna.athena.c().a(9999, RequestParameters.SUBRESOURCE_LOCATION, 1.0f) == 0) {
            if (com.transsion.athena.taaneh.anehat.a(this.f41596a, "android.permission.ACCESS_COARSE_LOCATION") || com.transsion.athena.taaneh.anehat.a(this.f41596a, "android.permission.ACCESS_FINE_LOCATION")) {
                LocationManager locationManager = (LocationManager) this.f41596a.getApplicationContext().getSystemService(RequestParameters.SUBRESOURCE_LOCATION);
                if (locationManager == null) {
                    a((Location) null);
                    return;
                }
                String str = "network";
                if (!locationManager.isProviderEnabled("network")) {
                    str = "passive";
                    if (!locationManager.isProviderEnabled("passive")) {
                        str = "gps";
                        if (!locationManager.isProviderEnabled("gps")) {
                            str = null;
                        }
                    }
                }
                if (str != null) {
                    this.f41597b.removeCallbacks(this.f41616t);
                    this.f41597b.postDelayed(this.f41616t, 30000L);
                    locationManager.requestSingleUpdate(str, this.f41617u, (Looper) null);
                    this.f41615s = jCurrentTimeMillis;
                }
                if (this.f41597b.hasMessages(502)) {
                    return;
                }
                this.f41597b.sendMessageDelayed(this.f41597b.obtainMessage(502), 3600000L);
            }
        }
    }

    @SuppressLint({"MissingPermission"})
    public void a(Location location) {
        boolean z10;
        TrackData trackData = new TrackData();
        boolean z11 = true;
        if (location != null) {
            BigDecimal bigDecimalValueOf = BigDecimal.valueOf(location.getLongitude());
            RoundingMode roundingMode = RoundingMode.HALF_UP;
            double dDoubleValue = bigDecimalValueOf.setScale(2, roundingMode).doubleValue();
            double dDoubleValue2 = BigDecimal.valueOf(location.getLatitude()).setScale(2, roundingMode).doubleValue();
            trackData.add("lng", dDoubleValue).add("lat", dDoubleValue2);
            try {
                trackData.add("geono", com.transsion.athena.aatnhe.aethna.a(dDoubleValue2, dDoubleValue, com.transsion.athena.aethna.athena.c().b()).a());
            } catch (Exception e10) {
                com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e10));
            }
            z10 = true;
        } else {
            trackData.add("lng", 0).add("lat", 0);
            z10 = false;
        }
        if (com.transsion.athena.taaneh.anehat.a(this.f41596a, "android.permission.ACCESS_FINE_LOCATION")) {
            List<com.transsion.athena.aatnhe.athena> listC = com.transsion.athena.taaneh.athena.c(this.f41596a);
            JSONArray jSONArray = new JSONArray();
            for (com.transsion.athena.aatnhe.athena athenaVar : (ArrayList) listC) {
                try {
                    jSONArray.put(new JSONObject().put("cellid", athenaVar.a()).put(PermissionConstant.level, athenaVar.f41417e));
                } catch (JSONException e11) {
                    com.transsion.athena.taaneh.aethna.b("%s", Log.getStackTraceString(e11));
                }
            }
            if (jSONArray.length() > 0) {
                trackData.add("cellidlist", jSONArray.toString());
            } else {
                trackData.add("cellidlist", "");
                z11 = z10;
            }
        } else {
            z11 = z10;
        }
        if (z11) {
            AthenaAnalytics.K(9999).g0(RequestParameters.SUBRESOURCE_LOCATION, trackData, 9999);
        }
    }

    @Override
    public void a(int i10) {
        this.f41602f = Math.max(i10, 2000);
        this.f41603g = true;
    }

    @Override
    public void a(String str, TrackData trackData, long j10) {
        Track track = new Track();
        track.setEventName(str);
        track.setTid(j10);
        track.setTrackTs(System.currentTimeMillis());
        track.setTrackErTs(SystemClock.elapsedRealtime());
        track.setTrackData(trackData);
        int i10 = this.f41604h;
        if (i10 < 5000) {
            this.f41604h = i10 + 1;
            Message messageObtainMessage = this.f41597b.obtainMessage(Sdk$SDKError.Reason.INVALID_IFA_STATUS_VALUE);
            messageObtainMessage.obj = track;
            this.f41597b.sendMessage(messageObtainMessage);
        }
    }

    @Override
    public void a(Runnable runnable) {
        Handler handler = this.f41597b;
        if (handler != null) {
            handler.post(runnable);
        }
    }

    @Override
    public void a(Runnable runnable, long j10) {
        Handler handler = this.f41597b;
        if (handler != null) {
            handler.postDelayed(runnable, j10);
        }
    }

    @Override
    public void a(Message message, long j10) {
        Handler handler = this.f41597b;
        if (handler != null) {
            if (j10 > 0) {
                handler.removeMessages(message.what);
            }
            this.f41597b.sendMessageDelayed(message, j10);
        }
    }

    @Override
    public void a() {
        Handler handler = this.f41597b;
        if (handler != null) {
            this.f41597b.sendMessageAtFrontOfQueue(handler.obtainMessage(308));
        }
    }
}
