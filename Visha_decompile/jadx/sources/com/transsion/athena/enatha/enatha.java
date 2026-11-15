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
import androidx.media3.common.C;
import com.hisavana.common.tracking.TrackingKey;
import com.hunantv.media.player.subtitle.MediaFormat;
import com.mgtv.downloader.p2p.mg.DownloadFacadeEnum;
import com.tencent.mmkv.MMKV;
import com.transsion.athena.config.data.model.TidConfigBean;
import com.transsion.athena.config.data.model.athena;
import com.transsion.athena.config.data.model.ehanat;
import com.transsion.athena.data.AppIdData;
import com.transsion.athena.data.Track;
import com.transsion.athena.data.TrackData;
import com.transsion.athena.data.TrackDataWrapper;
import com.transsion.athena.data.anateh.aethna;
import com.transsion.athena.enatha.enatha;
import com.transsion.athena.hatnea.atnhae;
import com.transsion.athena.hatnea.hatnea;
import com.transsion.ga.AthenaAnalytics;
import com.transsion.ga.anateh;
import com.transsion.gslb.GslbSdk;
import com.transsion.tranplayer.MediaPlayer;
import defpackage.a4d;
import defpackage.c4d;
import defpackage.d5d;
import defpackage.e4d;
import defpackage.e5d;
import defpackage.i5d;
import defpackage.j5d;
import defpackage.o3d;
import defpackage.wj;
import defpackage.x3d;
import defpackage.y3d;
import defpackage.zbd;
import java.io.File;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.apache.commons.lang3.BooleanUtils;
import org.apache.commons.lang3.time.DateUtils;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class enatha extends j5d implements Handler.Callback {
    public static volatile enatha v;
    public boolean d;
    public boolean e;
    public int f;
    public boolean g;
    public int h;
    public ArrayList i;
    public long j;
    public final SparseArray k;
    public String l;
    public boolean m;
    public long n;
    public boolean o;
    public long p;
    public final y3d q;
    public final Runnable r;
    public long s;
    public final Runnable t;
    public final LocationListener u;

    public class a implements GslbSdk.InitListener {
        public a(enatha enathaVar) {
        }

        @Override
        public void onInitFail() {
        }

        @Override
        public void onInitSuccess(Map map) {
        }
    }

    public class anehat implements Runnable {
        public anehat() {
        }

        @Override
        public void run() {
            if (!ehanat.r()) {
                c4d.f("Athena SDK isAthenaEnable = false");
                return;
            }
            try {
                MMKV mmkvI = MMKV.I("AthenaKV", 2);
                String[] strArrA = mmkvI.a();
                if (strArrA != null && strArrA.length > 0) {
                    enatha.this.s(mmkvI);
                }
                enatha.this.c.postDelayed(this, 300000L);
            } catch (Exception e) {
                c4d.d(Log.getStackTraceString(e));
            }
        }
    }

    public class b implements GslbSdk.InitListener {
        public b() {
        }

        @Override
        public void onInitFail() {
        }

        @Override
        public void onInitSuccess(Map map) {
            enatha.this.l = map == null ? "" : map.toString();
        }
    }

    public class c implements GslbSdk.InitListener {
        public final String a;
        public final int b;
        public final athena c;

        public c(String str, int i, athena athenaVar) {
            this.a = str;
            this.b = i;
            this.c = athenaVar;
        }

        @Override
        public void onInitFail() {
        }

        @Override
        public void onInitSuccess(Map map) {
            enatha.this.B(this.a, this.b, this.c, map == null ? "" : map.toString());
        }
    }

    public class d extends y3d {
        public d() {
        }

        @Override
        public void a(int i, boolean z) {
            try {
                if (i > 0) {
                    enatha.this.p(i, z);
                } else {
                    enatha.v(enatha.this);
                }
            } catch (Exception e) {
                c4d.e("onConfigChanged exception : %s", e.getMessage());
            }
        }
    }

    public class e implements GslbSdk.ResultListener {
        public e(enatha enathaVar) {
        }

        @Override
        public void onGslbFail() {
        }

        @Override
        public void onGslbSuccess(String str) {
        }
    }

    public class ehatna implements Runnable {
        public ehatna() {
        }

        @Override
        @SuppressLint({"MissingPermission"})
        public void run() {
            try {
                enatha.this.q(null);
                LocationManager locationManager = (LocationManager) enatha.this.b.getApplicationContext().getSystemService("location");
                if (locationManager != null) {
                    locationManager.removeUpdates(enatha.this.u);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public class f implements com.transsion.athena.data.anateh.enatha {
        public f(enatha enathaVar) {
        }

        @Override
        public void a(Object obj) {
            Bundle bundle = new Bundle();
            bundle.putString("v", (String) obj);
            zbd.a().c(new anateh("cleanupEvents_oom", bundle));
        }
    }

    public class g implements LocationListener {
        public g() {
        }

        @Override
        public void onLocationChanged(Location location) {
            enatha enathaVar = enatha.this;
            Handler handler = enathaVar.c;
            if (handler != null) {
                handler.removeCallbacks(enathaVar.t);
            }
            try {
                enatha.this.q(location);
                LocationManager locationManager = (LocationManager) enatha.this.b.getApplicationContext().getSystemService("location");
                if (locationManager != null) {
                    locationManager.removeUpdates(enatha.this.u);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        @Override
        public void onProviderDisabled(String str) {
        }

        @Override
        public void onProviderEnabled(String str) {
        }

        @Override
        public void onStatusChanged(String str, int i, Bundle bundle) {
        }
    }

    public enatha(Context context) {
        super(context);
        this.d = false;
        this.e = false;
        this.k = new SparseArray();
        this.p = 0L;
        this.q = new d();
        this.r = new anehat();
        this.s = 0L;
        this.t = new ehatna();
        this.u = new g();
        HandlerThread handlerThread = new HandlerThread("Athena-Worker", 10);
        handlerThread.start();
        Handler handler = new Handler(handlerThread.getLooper(), this);
        this.c = handler;
        handler.sendEmptyMessage(303);
    }

    public static void A(String str) {
        Bundle bundle = new Bundle();
        bundle.putString("v", str);
        zbd.a().c(new anateh("cleanupEvents_off", bundle));
        c4d.g("handleTidChange cleanupList : %s", str);
    }

    public static void E(List list, LongSparseArray longSparseArray) {
        c4d.f("saveMemCacheToDb tidCountArray = " + longSparseArray);
        list.clear();
        for (int i = 0; i < longSparseArray.size(); i++) {
            long jKeyAt = longSparseArray.keyAt(i);
            TidConfigBean tidConfigBeanM = e5d.o().m(jKeyAt);
            if (tidConfigBeanM != null) {
                tidConfigBeanM.getTidConfig().a(((Integer) longSparseArray.valueAt(i)).intValue());
                if ("device".equals(tidConfigBeanM.getEvent()) && 9999 == com.transsion.athena.taaneh.a.a(jKeyAt)) {
                    e5d.o().w();
                }
            }
        }
    }

    private void F(JSONObject jSONObject, String str, Object obj) throws JSONException {
        try {
            jSONObject.getString(str);
        } catch (JSONException unused) {
            jSONObject.put(str, obj);
        }
    }

    public static void K(String str) {
        Bundle bundle = new Bundle();
        bundle.putString("v", str);
        zbd.a().c(new anateh("cleanupEvents_oom", bundle));
    }

    private void N() {
        Cursor cursorQuery = null;
        try {
            String strX = com.transsion.athena.taaneh.athena.x(this.b);
            cursorQuery = this.b.getContentResolver().query(Uri.parse("content://com.transsion.dataservice.provider/authorize"), null, "pkg = ?", new String[]{strX}, null);
            if (cursorQuery != null) {
                boolean z = true;
                if (cursorQuery.getCount() != 1) {
                    z = false;
                }
                this.o = z;
                c4d.g("Pkg [%s] DCS authorize [%s]", strX, z ? "enable" : "disable");
            } else {
                c4d.g("Cursor is null, Pkg [%s] may not on the DCS white list", strX);
            }
        } catch (Exception e2) {
            c4d.e("Dcs applyForAccess exception : %s", e2.getMessage());
        } finally {
            if (0 != 0) {
                cursorQuery.close();
            }
        }
    }

    public static enatha m(Context context) {
        if (v == null) {
            synchronized (enatha.class) {
                try {
                    if (v == null) {
                        v = new enatha(context);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return v;
    }

    private void o(int i, String str) {
        e5d.o().f(i);
        if (aethna.a(this.b) != null) {
            if (str == null) {
                aethna.a(this.b).a(AppIdData.a(this.b, i));
                return;
            }
            aethna aethnaVarA = aethna.a(this.b);
            AppIdData appIdData = new AppIdData();
            appIdData.a = i;
            appIdData.b = str;
            aethnaVarA.a(appIdData);
        }
    }

    public static void r(SparseArray sparseArray) {
        ArrayList arrayList = new ArrayList(sparseArray.size());
        for (int i = 0; i < sparseArray.size(); i++) {
            arrayList.add((athena) sparseArray.valueAt(i));
        }
        e5d.o().j(arrayList);
    }

    public static void v(enatha enathaVar) {
        if (!enathaVar.g) {
            enathaVar.f = e5d.o().s() * 1000;
        }
        enathaVar.P();
    }

    public final void B(String str, int i, athena athenaVar, String str2) {
        String domain = TextUtils.isEmpty(str) ? GslbSdk.getDomain(ehanat.o(), true) : GslbSdk.getDomain(ehanat.b(str), true);
        Bundle bundle = new Bundle();
        bundle.putInt("app_id", i);
        bundle.putString("url", domain);
        bundle.putLong("ver", athenaVar.k());
        bundle.putString("gslb_data", str2);
        new wj("app_cfg_log", 9999).c(bundle, null).b();
    }

    public final void C(String str, Throwable th) {
        zbd.a().c(new anateh(str, th));
    }

    public final void D(final List list) {
        ArrayList<Track> arrayList = new ArrayList<>();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            Track track = (Track) it.next();
            if (e5d.o().b(track.getTid(), track.getTrackData().b()) == 0) {
                a4d.f().c(track);
                arrayList.add(track);
            }
        }
        if (arrayList.size() > 0) {
            int iA = aethna.a(this.b).a(arrayList, new com.transsion.athena.data.anateh.enatha() {
                @Override
                public final void a(Object obj) {
                    enatha.E(list, (LongSparseArray) obj);
                }
            });
            c4d.f("saveMemCacheToDb Count = " + iA);
            if (iA == -2) {
                c4d.d("saveToDB out of memory cleanCount = " + aethna.a(this.b).a(1000, new f(this)));
            }
            H(false, this.f);
        }
    }

    public final void G(boolean z) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        if ((z && TextUtils.isEmpty(ehanat.m())) || Math.abs(jCurrentTimeMillis - this.s) < DateUtils.MILLIS_PER_HOUR) {
            if (this.c.hasMessages(502)) {
                return;
            }
            this.c.sendMessageDelayed(this.c.obtainMessage(502), DateUtils.MILLIS_PER_HOUR);
            return;
        }
        if (e5d.o().a(9999, "location", 1.0f) == 0) {
            if (com.transsion.athena.taaneh.a.f(this.b, "android.permission.ACCESS_COARSE_LOCATION") || com.transsion.athena.taaneh.a.f(this.b, "android.permission.ACCESS_FINE_LOCATION")) {
                LocationManager locationManager = (LocationManager) this.b.getApplicationContext().getSystemService("location");
                if (locationManager == null) {
                    q(null);
                    return;
                }
                String str = "network";
                if (!locationManager.isProviderEnabled("network")) {
                    str = "passive";
                    if (!locationManager.isProviderEnabled("passive")) {
                        str = DownloadFacadeEnum.USER_GPS;
                        if (!locationManager.isProviderEnabled(DownloadFacadeEnum.USER_GPS)) {
                            str = null;
                        }
                    }
                }
                if (str != null) {
                    this.c.removeCallbacks(this.t);
                    this.c.postDelayed(this.t, 30000L);
                    locationManager.requestSingleUpdate(str, this.u, (Looper) null);
                    this.s = jCurrentTimeMillis;
                }
                if (this.c.hasMessages(502)) {
                    return;
                }
                this.c.sendMessageDelayed(this.c.obtainMessage(502), DateUtils.MILLIS_PER_HOUR);
            }
        }
    }

    public final void H(boolean z, long j) {
        if (this.c.hasMessages(MediaPlayer.Event.VideoFPS)) {
            return;
        }
        Message messageObtainMessage = this.c.obtainMessage(MediaPlayer.Event.VideoFPS);
        if (z) {
            messageObtainMessage.arg1 = 1;
            this.c.sendMessage(messageObtainMessage);
        } else {
            messageObtainMessage.arg1 = 0;
            this.c.sendMessageDelayed(messageObtainMessage, j);
        }
    }

    public final void J(Track track) {
        if (!ehanat.r()) {
            c4d.f("Athena SDK isAthenaEnable = false");
            return;
        }
        if (M(track)) {
            int iA = com.transsion.athena.taaneh.a.a(track.getTid());
            String str = "";
            if (this.k.indexOfKey(iA) >= 0) {
                String str2 = (String) this.k.get(iA, "");
                if (!TextUtils.isEmpty(str2)) {
                    try {
                        JSONObject jSONObject = new JSONObject(str2);
                        String string = jSONObject.has("eparam") ? jSONObject.getString("eparam") : "";
                        JSONObject jSONObject2 = TextUtils.isEmpty(string) ? new JSONObject() : new JSONObject(string);
                        Track track2 = new Track();
                        track2.setEventName(jSONObject.getString(NotificationCompat.CATEGORY_EVENT));
                        track2.setTid(jSONObject.getLong("tid"));
                        track2.setTrackTs(jSONObject.getLong(TrackingKey.TS));
                        track2.setTrackErTs(SystemClock.elapsedRealtime());
                        track2.setOriginJsonData(jSONObject2);
                        this.k.put(iA, "");
                        e4d.a(AthenaAnalytics.I()).g("first_page_enter_" + iA, "");
                        J(track2);
                    } catch (Exception unused) {
                    }
                }
            }
            JSONObject jSONObject3 = new JSONObject();
            try {
                jSONObject3.put(NotificationCompat.CATEGORY_EVENT, track.getEventName());
                jSONObject3.put("tid", track.getTid());
                jSONObject3.put("type", track.getTrackFlag());
                JSONObject originJsonData = track.getOriginJsonData();
                F(originJsonData, "_apkg", com.transsion.athena.taaneh.athena.x(this.b));
                F(originJsonData, "_avn", com.transsion.athena.taaneh.athena.z(this.b));
                F(originJsonData, "_avc", Integer.valueOf(com.transsion.athena.taaneh.athena.y(this.b)));
                F(originJsonData, "_atutp", Short.valueOf(ehanat.c()));
                String strB = ehanat.b();
                if (strB != null) {
                    str = strB;
                }
                F(originJsonData, "_atuid", str);
                F(originJsonData, "_achannel", ehanat.g());
                F(originJsonData, "_ainstallchnl", TextUtils.isEmpty(com.transsion.athena.taaneh.athena.u(this.b)) ? " " : com.transsion.athena.taaneh.athena.u(this.b));
                jSONObject3.put("_eparam", originJsonData);
            } catch (JSONException e2) {
                c4d.e("Track by DCS exception : ", e2.getMessage());
            }
            ContentValues contentValues = new ContentValues();
            contentValues.put("trackObject", jSONObject3.toString());
            this.b.getContentResolver().insert(Uri.parse("content://com.transsion.dataservice.provider/track"), contentValues);
            c4d.g("track by DCS:%s", jSONObject3.toString());
        }
    }

    public final boolean M(Track track) {
        if (!"app_launch".equals(track.getEventName())) {
            return true;
        }
        e4d e4dVarA = e4d.a(this.b);
        String str = "app_launch_" + com.transsion.athena.taaneh.a.a(track.getTid());
        int iE = e4dVarA.e(str);
        if (iE != 0 && Math.abs((track.getTrackTs() / 1000) - ((long) iE)) <= 7200) {
            return false;
        }
        e4dVarA.b(str, Long.valueOf(track.getTrackTs() / 1000).intValue());
        return true;
    }

    public final boolean O() {
        List<athena> listE = e5d.o().e();
        if (com.transsion.athena.config.data.model.anehat.a(listE)) {
            return false;
        }
        for (athena athenaVar : listE) {
            if (athenaVar != null && athenaVar.a()) {
                return true;
            }
        }
        return false;
    }

    public final void P() {
        if (!o3d.f(this.b)) {
            c4d.g("%s", "CheckConfig cancel, network is not available");
        } else if (GslbSdk.isInitSuccess(ehanat.a(false))) {
            e5d.o().g(this.c, this.q);
        } else {
            c4d.g("%s", "CheckConfig cancel, GslbSdk is not inited");
        }
    }

    public final void Q() {
        if (!o3d.f(this.b)) {
            c4d.c("%s", "checkUpload network unavailable");
            return;
        }
        if (a4d.f().j()) {
            if (a4d.f().i()) {
                return;
            }
            c4d.c("%s", "checkUpload sync baseTime");
            a4d.f().d(true);
            com.transsion.athena.hatnea.c.d().e(new atnhae(this.c));
            return;
        }
        if (!ehanat.r()) {
            c4d.c("%s", "checkUpload sdk disable or gaid invalid");
            String strI = e4d.a(this.b).i("gdpr_close");
            if (TextUtils.isEmpty(strI)) {
                return;
            }
            com.transsion.athena.hatnea.c.d().e(new com.transsion.athena.hatnea.aethna(this.c, strI));
            return;
        }
        if (!GslbSdk.isInitSuccess(ehanat.o())) {
            c4d.c("%s", "checkUpload GSLB is not ready");
            return;
        }
        if (com.transsion.athena.config.data.model.anehat.a(e5d.o().p())) {
            c4d.c("%s", "checkUpload global config is not ready");
            return;
        }
        List<AppIdData> listB = aethna.a(this.b).b();
        if (com.transsion.athena.config.data.model.anehat.a(listB)) {
            List listE = e5d.o().e();
            if (com.transsion.athena.config.data.model.anehat.a(listE)) {
                c4d.c("%s", "checkUpload appid config list is null");
                return;
            }
            Iterator it = listE.iterator();
            while (it.hasNext()) {
                AppIdData appIdDataA = AppIdData.a(this.b, ((athena) it.next()).b());
                if (listB == null) {
                    listB = new ArrayList<>();
                }
                listB.add(appIdDataA);
                aethna.a(this.b).a(appIdDataA);
            }
        }
        HashSet hashSet = new HashSet();
        for (AppIdData appIdData : listB) {
            athena athenaVarN = e5d.o().n(appIdData.a);
            if (athenaVarN != null) {
                String domain = TextUtils.isEmpty(athenaVarN.h()) ? GslbSdk.getDomain(ehanat.o(), true) : GslbSdk.getDomain(ehanat.b(athenaVarN.h()), true);
                appIdData.f = domain;
                hashSet.add(domain);
            }
        }
        Iterator it2 = hashSet.iterator();
        while (it2.hasNext()) {
            com.transsion.athena.hatnea.c.d().e(new hatnea(this.c, (String) it2.next(), listB, this.e, this.k));
        }
    }

    public final void R() throws Throwable {
        this.n = System.currentTimeMillis();
        this.m = o3d.f(this.b);
        a4d.f().h();
        e5d.o().t();
        aethna.a(this.b).a(new com.transsion.athena.data.anateh.enatha() {
            @Override
            public final void a(Object obj) {
                enatha.r((SparseArray) obj);
            }
        });
        AthenaAnalytics.H();
        int iB = com.transsion.athena.data.athena.b();
        if (iB != 0) {
            ehanat.e(e5d.o().a(iB, "page_view", 1.0f) == 0);
        }
        if (com.transsion.athena.taaneh.a.l(this.b) && O() && ehanat.r()) {
            c4d.g("%s", "Dcs available");
            N();
        } else {
            c4d.g("%s", "Dcs unavailable because of not support or conf disable");
        }
        GslbSdk.init(this.b, i5d.a, new b());
        Handler handler = this.c;
        handler.postDelayed(new com.transsion.athena.enatha.anehat(handler), 7200000L);
        if (AthenaAnalytics.U()) {
            this.c.post(this.r);
        }
        try {
            e4d e4dVarA = e4d.a(this.b);
            for (Integer num : com.transsion.athena.data.athena.a()) {
                String str = "first_page_enter_" + num;
                if (e4dVarA.d(str)) {
                    this.k.put(num.intValue(), e4dVarA.i(str));
                }
            }
            File filesDir = this.b.getFilesDir();
            StringBuilder sb = new StringBuilder();
            sb.append(filesDir);
            String str2 = File.separator;
            sb.append(str2);
            sb.append(ehanat.k);
            File file = new File(sb.toString());
            File file2 = new File(filesDir + str2 + ehanat.l);
            if (AthenaAnalytics.R()) {
                this.e = true;
            } else if (file.exists()) {
                String[] list = file.list();
                if (list != null && list.length != 0) {
                    this.e = true;
                } else if (file.delete()) {
                    c4d.c("%s", "dataFile deleted");
                }
            }
            if (file2.exists()) {
                com.transsion.athena.taaneh.athena.i(this.b, file2.getPath());
            }
        } catch (Exception e2) {
            c4d.c("%s", e2.getMessage());
            C("handleInit", e2);
        }
        Message messageObtainMessage = this.c.obtainMessage(502);
        messageObtainMessage.arg1 = 1;
        this.c.sendMessageDelayed(messageObtainMessage, C.DEFAULT_MAX_SEEK_TO_PREVIOUS_POSITION_MS);
        if (this.g) {
            return;
        }
        this.f = e5d.o().s() * 1000;
    }

    @Override
    public void a() {
        Handler handler = this.c;
        if (handler != null) {
            this.c.sendMessageAtFrontOfQueue(handler.obtainMessage(308));
        }
    }

    @Override
    public void b(Message message, long j) {
        Handler handler = this.c;
        if (handler != null) {
            if (j > 0) {
                handler.removeMessages(message.what);
            }
            this.c.sendMessageDelayed(message, j);
        }
    }

    @Override
    public void c(Runnable runnable) {
        Handler handler = this.c;
        if (handler != null) {
            handler.post(runnable);
        }
    }

    @Override
    public void d(Runnable runnable, long j) {
        Handler handler = this.c;
        if (handler != null) {
            handler.postDelayed(runnable, j);
        }
    }

    @Override
    public void e(String str, TrackData trackData, long j) {
        Track track = new Track();
        track.setEventName(str);
        track.setTid(j);
        track.setTrackTs(System.currentTimeMillis());
        track.setTrackErTs(SystemClock.elapsedRealtime());
        track.setTrackData(trackData);
        int i = this.h;
        if (i < 5000) {
            this.h = i + 1;
            Message messageObtainMessage = this.c.obtainMessage(302);
            messageObtainMessage.obj = track;
            this.c.sendMessage(messageObtainMessage);
        }
    }

    @Override
    public void g() {
        H(true, this.f);
    }

    /* JADX WARN: Code duplicated, block: B:100:0x01d9  */
    /* JADX WARN: Code duplicated, block: B:103:0x01e5 A[Catch: Exception -> 0x0068, TryCatch #0 {Exception -> 0x0068, blocks: (B:3:0x0008, B:21:0x0032, B:23:0x0044, B:25:0x0058, B:27:0x005e, B:30:0x006b, B:31:0x0073, B:35:0x0079, B:36:0x007e, B:43:0x00a4, B:44:0x00ab, B:46:0x00ba, B:47:0x00cb, B:56:0x00fb, B:58:0x0107, B:60:0x010f, B:62:0x0115, B:67:0x0126, B:69:0x012a, B:71:0x0130, B:72:0x0135, B:74:0x013b, B:75:0x014e, B:77:0x015c, B:79:0x0167, B:83:0x0189, B:85:0x019c, B:86:0x01a6, B:88:0x01af, B:90:0x01b3, B:92:0x01b7, B:94:0x01bd, B:96:0x01cf, B:98:0x01d5, B:105:0x01eb, B:107:0x01ef, B:109:0x01f3, B:111:0x01f7, B:113:0x01fd, B:115:0x020a, B:117:0x0215, B:119:0x021c, B:121:0x0224, B:101:0x01db, B:103:0x01e5, B:104:0x01e8, B:65:0x011d, B:66:0x0121, B:82:0x017e, B:55:0x00f4, B:122:0x0228, B:123:0x022c, B:125:0x0230, B:126:0x0233, B:128:0x023b, B:130:0x024d, B:133:0x0253, B:134:0x0277, B:48:0x00d3, B:50:0x00df, B:52:0x00e5, B:38:0x0089, B:40:0x0098), top: B:142:0x0008, inners: #1, #2, #3 }] */
    /* JADX WARN: Code duplicated, block: B:115:0x020a A[Catch: Exception -> 0x0068, TryCatch #0 {Exception -> 0x0068, blocks: (B:3:0x0008, B:21:0x0032, B:23:0x0044, B:25:0x0058, B:27:0x005e, B:30:0x006b, B:31:0x0073, B:35:0x0079, B:36:0x007e, B:43:0x00a4, B:44:0x00ab, B:46:0x00ba, B:47:0x00cb, B:56:0x00fb, B:58:0x0107, B:60:0x010f, B:62:0x0115, B:67:0x0126, B:69:0x012a, B:71:0x0130, B:72:0x0135, B:74:0x013b, B:75:0x014e, B:77:0x015c, B:79:0x0167, B:83:0x0189, B:85:0x019c, B:86:0x01a6, B:88:0x01af, B:90:0x01b3, B:92:0x01b7, B:94:0x01bd, B:96:0x01cf, B:98:0x01d5, B:105:0x01eb, B:107:0x01ef, B:109:0x01f3, B:111:0x01f7, B:113:0x01fd, B:115:0x020a, B:117:0x0215, B:119:0x021c, B:121:0x0224, B:101:0x01db, B:103:0x01e5, B:104:0x01e8, B:65:0x011d, B:66:0x0121, B:82:0x017e, B:55:0x00f4, B:122:0x0228, B:123:0x022c, B:125:0x0230, B:126:0x0233, B:128:0x023b, B:130:0x024d, B:133:0x0253, B:134:0x0277, B:48:0x00d3, B:50:0x00df, B:52:0x00e5, B:38:0x0089, B:40:0x0098), top: B:142:0x0008, inners: #1, #2, #3 }] */
    /* JADX WARN: Code duplicated, block: B:123:0x022c A[Catch: Exception -> 0x0068, TryCatch #0 {Exception -> 0x0068, blocks: (B:3:0x0008, B:21:0x0032, B:23:0x0044, B:25:0x0058, B:27:0x005e, B:30:0x006b, B:31:0x0073, B:35:0x0079, B:36:0x007e, B:43:0x00a4, B:44:0x00ab, B:46:0x00ba, B:47:0x00cb, B:56:0x00fb, B:58:0x0107, B:60:0x010f, B:62:0x0115, B:67:0x0126, B:69:0x012a, B:71:0x0130, B:72:0x0135, B:74:0x013b, B:75:0x014e, B:77:0x015c, B:79:0x0167, B:83:0x0189, B:85:0x019c, B:86:0x01a6, B:88:0x01af, B:90:0x01b3, B:92:0x01b7, B:94:0x01bd, B:96:0x01cf, B:98:0x01d5, B:105:0x01eb, B:107:0x01ef, B:109:0x01f3, B:111:0x01f7, B:113:0x01fd, B:115:0x020a, B:117:0x0215, B:119:0x021c, B:121:0x0224, B:101:0x01db, B:103:0x01e5, B:104:0x01e8, B:65:0x011d, B:66:0x0121, B:82:0x017e, B:55:0x00f4, B:122:0x0228, B:123:0x022c, B:125:0x0230, B:126:0x0233, B:128:0x023b, B:130:0x024d, B:133:0x0253, B:134:0x0277, B:48:0x00d3, B:50:0x00df, B:52:0x00e5, B:38:0x0089, B:40:0x0098), top: B:142:0x0008, inners: #1, #2, #3 }] */
    /* JADX WARN: Code duplicated, block: B:125:0x0230 A[Catch: Exception -> 0x0068, TryCatch #0 {Exception -> 0x0068, blocks: (B:3:0x0008, B:21:0x0032, B:23:0x0044, B:25:0x0058, B:27:0x005e, B:30:0x006b, B:31:0x0073, B:35:0x0079, B:36:0x007e, B:43:0x00a4, B:44:0x00ab, B:46:0x00ba, B:47:0x00cb, B:56:0x00fb, B:58:0x0107, B:60:0x010f, B:62:0x0115, B:67:0x0126, B:69:0x012a, B:71:0x0130, B:72:0x0135, B:74:0x013b, B:75:0x014e, B:77:0x015c, B:79:0x0167, B:83:0x0189, B:85:0x019c, B:86:0x01a6, B:88:0x01af, B:90:0x01b3, B:92:0x01b7, B:94:0x01bd, B:96:0x01cf, B:98:0x01d5, B:105:0x01eb, B:107:0x01ef, B:109:0x01f3, B:111:0x01f7, B:113:0x01fd, B:115:0x020a, B:117:0x0215, B:119:0x021c, B:121:0x0224, B:101:0x01db, B:103:0x01e5, B:104:0x01e8, B:65:0x011d, B:66:0x0121, B:82:0x017e, B:55:0x00f4, B:122:0x0228, B:123:0x022c, B:125:0x0230, B:126:0x0233, B:128:0x023b, B:130:0x024d, B:133:0x0253, B:134:0x0277, B:48:0x00d3, B:50:0x00df, B:52:0x00e5, B:38:0x0089, B:40:0x0098), top: B:142:0x0008, inners: #1, #2, #3 }] */
    /* JADX WARN: Code duplicated, block: B:128:0x023b A[Catch: Exception -> 0x0068, TryCatch #0 {Exception -> 0x0068, blocks: (B:3:0x0008, B:21:0x0032, B:23:0x0044, B:25:0x0058, B:27:0x005e, B:30:0x006b, B:31:0x0073, B:35:0x0079, B:36:0x007e, B:43:0x00a4, B:44:0x00ab, B:46:0x00ba, B:47:0x00cb, B:56:0x00fb, B:58:0x0107, B:60:0x010f, B:62:0x0115, B:67:0x0126, B:69:0x012a, B:71:0x0130, B:72:0x0135, B:74:0x013b, B:75:0x014e, B:77:0x015c, B:79:0x0167, B:83:0x0189, B:85:0x019c, B:86:0x01a6, B:88:0x01af, B:90:0x01b3, B:92:0x01b7, B:94:0x01bd, B:96:0x01cf, B:98:0x01d5, B:105:0x01eb, B:107:0x01ef, B:109:0x01f3, B:111:0x01f7, B:113:0x01fd, B:115:0x020a, B:117:0x0215, B:119:0x021c, B:121:0x0224, B:101:0x01db, B:103:0x01e5, B:104:0x01e8, B:65:0x011d, B:66:0x0121, B:82:0x017e, B:55:0x00f4, B:122:0x0228, B:123:0x022c, B:125:0x0230, B:126:0x0233, B:128:0x023b, B:130:0x024d, B:133:0x0253, B:134:0x0277, B:48:0x00d3, B:50:0x00df, B:52:0x00e5, B:38:0x0089, B:40:0x0098), top: B:142:0x0008, inners: #1, #2, #3 }] */
    /* JADX WARN: Code duplicated, block: B:134:0x0277 A[Catch: Exception -> 0x0068, TRY_LEAVE, TryCatch #0 {Exception -> 0x0068, blocks: (B:3:0x0008, B:21:0x0032, B:23:0x0044, B:25:0x0058, B:27:0x005e, B:30:0x006b, B:31:0x0073, B:35:0x0079, B:36:0x007e, B:43:0x00a4, B:44:0x00ab, B:46:0x00ba, B:47:0x00cb, B:56:0x00fb, B:58:0x0107, B:60:0x010f, B:62:0x0115, B:67:0x0126, B:69:0x012a, B:71:0x0130, B:72:0x0135, B:74:0x013b, B:75:0x014e, B:77:0x015c, B:79:0x0167, B:83:0x0189, B:85:0x019c, B:86:0x01a6, B:88:0x01af, B:90:0x01b3, B:92:0x01b7, B:94:0x01bd, B:96:0x01cf, B:98:0x01d5, B:105:0x01eb, B:107:0x01ef, B:109:0x01f3, B:111:0x01f7, B:113:0x01fd, B:115:0x020a, B:117:0x0215, B:119:0x021c, B:121:0x0224, B:101:0x01db, B:103:0x01e5, B:104:0x01e8, B:65:0x011d, B:66:0x0121, B:82:0x017e, B:55:0x00f4, B:122:0x0228, B:123:0x022c, B:125:0x0230, B:126:0x0233, B:128:0x023b, B:130:0x024d, B:133:0x0253, B:134:0x0277, B:48:0x00d3, B:50:0x00df, B:52:0x00e5, B:38:0x0089, B:40:0x0098), top: B:142:0x0008, inners: #1, #2, #3 }] */
    /* JADX WARN: Code duplicated, block: B:58:0x0107 A[Catch: Exception -> 0x0068, JSONException -> 0x011b, TryCatch #1 {JSONException -> 0x011b, blocks: (B:56:0x00fb, B:58:0x0107, B:60:0x010f, B:62:0x0115, B:67:0x0126, B:69:0x012a, B:71:0x0130, B:72:0x0135, B:74:0x013b, B:75:0x014e, B:77:0x015c, B:79:0x0167, B:65:0x011d, B:66:0x0121), top: B:143:0x00fb, outer: #0 }] */
    /* JADX WARN: Code duplicated, block: B:65:0x011d A[Catch: Exception -> 0x0068, JSONException -> 0x011b, TryCatch #1 {JSONException -> 0x011b, blocks: (B:56:0x00fb, B:58:0x0107, B:60:0x010f, B:62:0x0115, B:67:0x0126, B:69:0x012a, B:71:0x0130, B:72:0x0135, B:74:0x013b, B:75:0x014e, B:77:0x015c, B:79:0x0167, B:65:0x011d, B:66:0x0121), top: B:143:0x00fb, outer: #0 }] */
    /* JADX WARN: Code duplicated, block: B:66:0x0121 A[Catch: Exception -> 0x0068, JSONException -> 0x011b, TryCatch #1 {JSONException -> 0x011b, blocks: (B:56:0x00fb, B:58:0x0107, B:60:0x010f, B:62:0x0115, B:67:0x0126, B:69:0x012a, B:71:0x0130, B:72:0x0135, B:74:0x013b, B:75:0x014e, B:77:0x015c, B:79:0x0167, B:65:0x011d, B:66:0x0121), top: B:143:0x00fb, outer: #0 }] */
    /* JADX WARN: Code duplicated, block: B:74:0x013b A[Catch: Exception -> 0x0068, JSONException -> 0x011b, LOOP:0: B:72:0x0135->B:74:0x013b, LOOP_END, TryCatch #1 {JSONException -> 0x011b, blocks: (B:56:0x00fb, B:58:0x0107, B:60:0x010f, B:62:0x0115, B:67:0x0126, B:69:0x012a, B:71:0x0130, B:72:0x0135, B:74:0x013b, B:75:0x014e, B:77:0x015c, B:79:0x0167, B:65:0x011d, B:66:0x0121), top: B:143:0x00fb, outer: #0 }] */
    /* JADX WARN: Code duplicated, block: B:85:0x019c A[Catch: Exception -> 0x0068, TryCatch #0 {Exception -> 0x0068, blocks: (B:3:0x0008, B:21:0x0032, B:23:0x0044, B:25:0x0058, B:27:0x005e, B:30:0x006b, B:31:0x0073, B:35:0x0079, B:36:0x007e, B:43:0x00a4, B:44:0x00ab, B:46:0x00ba, B:47:0x00cb, B:56:0x00fb, B:58:0x0107, B:60:0x010f, B:62:0x0115, B:67:0x0126, B:69:0x012a, B:71:0x0130, B:72:0x0135, B:74:0x013b, B:75:0x014e, B:77:0x015c, B:79:0x0167, B:83:0x0189, B:85:0x019c, B:86:0x01a6, B:88:0x01af, B:90:0x01b3, B:92:0x01b7, B:94:0x01bd, B:96:0x01cf, B:98:0x01d5, B:105:0x01eb, B:107:0x01ef, B:109:0x01f3, B:111:0x01f7, B:113:0x01fd, B:115:0x020a, B:117:0x0215, B:119:0x021c, B:121:0x0224, B:101:0x01db, B:103:0x01e5, B:104:0x01e8, B:65:0x011d, B:66:0x0121, B:82:0x017e, B:55:0x00f4, B:122:0x0228, B:123:0x022c, B:125:0x0230, B:126:0x0233, B:128:0x023b, B:130:0x024d, B:133:0x0253, B:134:0x0277, B:48:0x00d3, B:50:0x00df, B:52:0x00e5, B:38:0x0089, B:40:0x0098), top: B:142:0x0008, inners: #1, #2, #3 }] */
    @Override
    public boolean handleMessage(Message message) throws Throwable {
        Context context;
        long jCurrentTimeMillis;
        long j;
        long j2;
        JSONObject jSONObjectA;
        Object jSONObject;
        JSONArray jSONArrayNames;
        int i;
        boolean z = true;
        this.d = true;
        try {
            int i2 = message.what;
            if (i2 == 298) {
                if (message.arg1 == 1) {
                    P();
                }
                if (!this.c.hasMessages(MediaPlayer.Event.VideoCodecInfo)) {
                    context = this.b;
                    String str = com.transsion.athena.taaneh.a.a;
                    if (TextUtils.isEmpty(e4d.a(context).i("first_init")) || !ehanat.K) {
                        Handler handler = this.c;
                        handler.sendMessageAtFrontOfQueue(Message.obtain(handler, MediaPlayer.Event.VideoCodecInfo));
                    } else {
                        c4d.c("First init delay %d s upload!", Integer.valueOf(AthenaAnalytics.p));
                        this.c.sendEmptyMessageDelayed(MediaPlayer.Event.VideoCodecInfo, ((long) AthenaAnalytics.p) * 1000);
                        e4d.a(this.b).g("first_init", BooleanUtils.FALSE);
                    }
                }
            } else if (i2 == 299) {
                Q();
            } else if (i2 == 302) {
                Track track = (Track) message.obj;
                TrackData trackData = track.getTrackData();
                try {
                    if (!track.getEventName().equals("page_enter") || com.transsion.athena.taaneh.athena.s() == null) {
                        try {
                            jSONObjectA = trackData.a();
                            String str2 = ehanat.h;
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
                                for (i = 0; i < jSONArrayNames.length(); i++) {
                                    String string = jSONArrayNames.getString(i);
                                    ((JSONObject) jSONObject).put(string, jSONObjectA.get(string));
                                    jSONObjectA.remove(string);
                                }
                            }
                            JSONObject jSONObject2 = new JSONObject(jSONObject.toString());
                            jSONObjectA.put("_eparam", jSONObject);
                            jSONObjectA.put(DownloadFacadeEnum.USER_NET, o3d.d(this.b));
                            jSONObjectA.put(NotificationCompat.CATEGORY_EVENT, track.getEventName());
                            track.setJsonData(jSONObjectA);
                            track.setOriginJsonData(jSONObject2);
                            track.setTrackFlag(trackData.d());
                        } catch (JSONException e2) {
                            c4d.e("Record track exception : %s", e2.getMessage());
                        }
                        jCurrentTimeMillis = System.currentTimeMillis();
                        if (Math.abs(jCurrentTimeMillis - this.n) > DateUtils.MILLIS_PER_HOUR) {
                            this.n = jCurrentTimeMillis;
                            this.m = o3d.f(this.b);
                        }
                        this.h--;
                        if (this.m && this.o && ehanat.R && !AthenaAnalytics.R()) {
                            athena athenaVarN = e5d.o().n(com.transsion.athena.taaneh.a.a(track.getTid()));
                            if (athenaVarN == null || !athenaVarN.a()) {
                                if (!"ev_athena".equals(track.getEventName())) {
                                    P();
                                }
                                t(track);
                            } else {
                                J(track);
                            }
                        } else {
                            if (!"ev_athena".equals(track.getEventName())) {
                                P();
                            }
                            t(track);
                        }
                        if (!this.m && !this.o && ehanat.R && ehanat.r()) {
                            this.p++;
                            if (O()) {
                                j = this.p;
                                j2 = 20;
                                if (j % j2 == 0 && j / j2 <= 3 && com.transsion.athena.taaneh.a.l(this.b)) {
                                    N();
                                }
                            }
                        }
                    } else {
                        trackData.add("fromsite", com.transsion.athena.taaneh.athena.a(com.transsion.athena.taaneh.athena.s()));
                        jSONObjectA = trackData.a();
                        String str3 = ehanat.h;
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
                            while (i < jSONArrayNames.length()) {
                                String string2 = jSONArrayNames.getString(i);
                                ((JSONObject) jSONObject).put(string2, jSONObjectA.get(string2));
                                jSONObjectA.remove(string2);
                            }
                        }
                        JSONObject jSONObject3 = new JSONObject(jSONObject.toString());
                        jSONObjectA.put("_eparam", jSONObject);
                        jSONObjectA.put(DownloadFacadeEnum.USER_NET, o3d.d(this.b));
                        jSONObjectA.put(NotificationCompat.CATEGORY_EVENT, track.getEventName());
                        track.setJsonData(jSONObjectA);
                        track.setOriginJsonData(jSONObject3);
                        track.setTrackFlag(trackData.d());
                        jCurrentTimeMillis = System.currentTimeMillis();
                        if (Math.abs(jCurrentTimeMillis - this.n) > DateUtils.MILLIS_PER_HOUR) {
                            this.n = jCurrentTimeMillis;
                            this.m = o3d.f(this.b);
                        }
                        this.h--;
                        if (this.m) {
                            if (!"ev_athena".equals(track.getEventName())) {
                                P();
                            }
                            t(track);
                        } else {
                            if (!"ev_athena".equals(track.getEventName())) {
                                P();
                            }
                            t(track);
                        }
                        if (!this.m) {
                            this.p++;
                            if (O()) {
                                j = this.p;
                                j2 = 20;
                                if (j % j2 == 0) {
                                    N();
                                }
                            }
                        }
                    }
                } catch (Exception e3) {
                    c4d.d(Log.getStackTraceString(e3));
                }
            } else if (i2 == 303) {
                c4d.a.m().r(ehanat.q());
                c4d.g("Athena init, SDK Version is [%s]", "3.1.1.2");
                R();
                P();
            } else if (i2 == 308) {
                try {
                    e5d.o().v();
                    if (aethna.a(this.b) != null) {
                        aethna.a(this.b).a();
                    }
                } catch (Exception e4) {
                    C("handleCleanupData", e4);
                }
            } else if (i2 == 400) {
                o(message.arg1, (String) message.obj);
            } else if (i2 == 600) {
                if (message.arg1 == 1) {
                    P();
                }
                if (!this.c.hasMessages(MediaPlayer.Event.VideoCodecInfo)) {
                    context = this.b;
                    String str4 = com.transsion.athena.taaneh.a.a;
                    if (TextUtils.isEmpty(e4d.a(context).i("first_init"))) {
                        Handler handler2 = this.c;
                        handler2.sendMessageAtFrontOfQueue(Message.obtain(handler2, MediaPlayer.Event.VideoCodecInfo));
                    } else {
                        Handler handler3 = this.c;
                        handler3.sendMessageAtFrontOfQueue(Message.obtain(handler3, MediaPlayer.Event.VideoCodecInfo));
                    }
                }
            } else if (i2 == 502) {
                if (message.arg1 != 1) {
                    z = false;
                }
                G(z);
            } else if (i2 == 503) {
                if (a4d.f().e(((Long) message.obj).longValue())) {
                    String strB = a4d.f().b();
                    long jG = a4d.f().g();
                    if (jG > 0 && !TextUtils.isEmpty(strB)) {
                        aethna.a(this.b).a(strB, jG);
                    }
                }
                H(false, this.f);
            }
        } catch (Exception e5) {
            if (com.transsion.athena.taaneh.a.i()) {
                c4d.e("Worker handle message exception : %s", e5.getMessage());
            }
            C("handleMessage", e5);
        }
        this.d = false;
        return false;
    }

    public final Track l(TrackDataWrapper trackDataWrapper) {
        Object jSONObject;
        Track track = new Track();
        track.setEventName(trackDataWrapper.a());
        track.setTid(trackDataWrapper.b());
        track.setTrackTs(System.currentTimeMillis());
        track.setTrackErTs(SystemClock.elapsedRealtime());
        TrackData trackDataC = trackDataWrapper.c();
        try {
            JSONObject jSONObjectA = trackDataC.a();
            String str = ehanat.h;
            if (jSONObjectA.has("_eparam")) {
                jSONObject = jSONObjectA.get("_eparam");
                if (!(jSONObject instanceof JSONArray) || jSONObjectA.length() <= 1) {
                    jSONObjectA.remove("_eparam");
                } else {
                    jSONObject = new JSONObject();
                }
            } else {
                jSONObject = new JSONObject();
            }
            if ((jSONObject instanceof JSONObject) && jSONObjectA.length() > 0) {
                JSONArray jSONArrayNames = jSONObjectA.names();
                for (int i = 0; i < jSONArrayNames.length(); i++) {
                    String string = jSONArrayNames.getString(i);
                    ((JSONObject) jSONObject).put(string, jSONObjectA.get(string));
                    jSONObjectA.remove(string);
                }
            }
            JSONObject jSONObject2 = new JSONObject(jSONObject.toString());
            jSONObjectA.put("_eparam", jSONObject);
            jSONObjectA.put(DownloadFacadeEnum.USER_NET, o3d.d(this.b));
            jSONObjectA.put(NotificationCompat.CATEGORY_EVENT, track.getEventName());
            track.setJsonData(jSONObjectA);
            track.setOriginJsonData(jSONObject2);
            track.setTrackFlag(trackDataC.d());
            TidConfigBean tidConfigBeanC = e5d.o().c((int) track.getTid(), track.getEventName());
            if (tidConfigBeanC != null) {
                track.setTid(tidConfigBeanC.getTid());
            }
        } catch (JSONException e2) {
            c4d.e("Convert to Track exception : %s", e2.getMessage());
        }
        return track;
    }

    public final void p(int i, boolean z) {
        athena athenaVarN = e5d.o().n(i);
        if (athenaVarN != null) {
            c4d.c("handleTidChange appconf : %s", athenaVarN.m());
            aethna.a(this.b).a(athenaVarN, z);
            String strH = athenaVarN.h();
            if (!TextUtils.isEmpty(strH)) {
                if (GslbSdk.isInitSuccess(strH)) {
                    B(strH, i, athenaVarN, this.l);
                } else {
                    GslbSdk.init(this.b, new String[]{strH}, new c(strH, i, athenaVarN));
                }
                GslbSdk.getDomain(strH, new e(this));
            }
            String strC = athenaVarN.c();
            if (!TextUtils.isEmpty(strC)) {
                GslbSdk.init(this.b, new String[]{strC}, new a(this));
                GslbSdk.getDomain(strC, (GslbSdk.ResultListener) null);
            }
        }
        if (z) {
            List<TidConfigBean> listJ = athenaVarN.j();
            if (com.transsion.athena.config.data.model.anehat.a(listJ)) {
                c4d.g("%s", "handleTidChange tid config is null");
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
                    aethna.a(this.b).a(arrayList, this.e, new com.transsion.athena.data.anateh.enatha() {
                        @Override
                        public final void a(Object obj) {
                            enatha.A((String) obj);
                        }
                    });
                } catch (Exception e2) {
                    c4d.e("Handle tid change exception : %s", e2.getMessage());
                    C("handleTidChange", e2);
                }
            }
            AthenaAnalytics.H();
            if (com.transsion.athena.data.athena.b() == i) {
                ehanat.e(e5d.o().a(i, "page_view", 1.0f) == 0);
            }
        }
    }

    public final void q(Location location) {
        boolean z;
        TrackData trackData = new TrackData();
        boolean z2 = true;
        if (location != null) {
            BigDecimal bigDecimalValueOf = BigDecimal.valueOf(location.getLongitude());
            RoundingMode roundingMode = RoundingMode.HALF_UP;
            double dDoubleValue = bigDecimalValueOf.setScale(2, roundingMode).doubleValue();
            double dDoubleValue2 = BigDecimal.valueOf(location.getLatitude()).setScale(2, roundingMode).doubleValue();
            trackData.add("lng", dDoubleValue).add("lat", dDoubleValue2);
            try {
                trackData.add("geono", x3d.a(dDoubleValue2, dDoubleValue, e5d.o().l()).b());
            } catch (Exception e2) {
                c4d.d(Log.getStackTraceString(e2));
            }
            z = true;
        } else {
            z = false;
            trackData.add("lng", 0).add("lat", 0);
        }
        if (com.transsion.athena.taaneh.a.f(this.b, "android.permission.ACCESS_FINE_LOCATION")) {
            List listR = com.transsion.athena.taaneh.athena.r(this.b);
            JSONArray jSONArray = new JSONArray();
            for (d5d d5dVar : (ArrayList) listR) {
                try {
                    jSONArray.put(new JSONObject().put("cellid", d5dVar.a()).put(MediaFormat.KEY_LEVEL, d5dVar.e));
                } catch (JSONException e3) {
                    c4d.e("%s", Log.getStackTraceString(e3));
                }
            }
            if (jSONArray.length() > 0) {
                trackData.add("cellidlist", jSONArray.toString());
            } else {
                trackData.add("cellidlist", "");
                z2 = z;
            }
        } else {
            z2 = z;
        }
        if (z2) {
            AthenaAnalytics.J(9999).c0("location", trackData, 9999);
        }
    }

    public final void s(MMKV mmkv) {
        try {
            String[] strArrA = mmkv.a();
            if (strArrA != null && strArrA.length >= 1) {
                ArrayList arrayList = new ArrayList();
                String[] strArr = new String[100];
                for (int i = 0; i < strArrA.length; i++) {
                    TrackDataWrapper trackDataWrapper = (TrackDataWrapper) mmkv.j(strArrA[i], TrackDataWrapper.class);
                    if (trackDataWrapper != null && arrayList.size() < 100) {
                        arrayList.add(l(trackDataWrapper));
                        strArr[i] = strArrA[i];
                    }
                }
                if (!arrayList.isEmpty()) {
                    D(arrayList);
                    mmkv.removeValuesForKeys(strArr);
                }
                if (mmkv.a() == null || mmkv.a().length <= 0) {
                    return;
                }
                s(mmkv);
            }
        } catch (Exception e2) {
            c4d.d(Log.getStackTraceString(e2));
        }
    }

    public final void t(Track track) {
        TidConfigBean tidConfigBeanC;
        int iA = com.transsion.athena.taaneh.a.a(track.getTid());
        if (!"".equals((String) this.k.get(iA, null)) && "page_enter".equals(track.getEventName())) {
            try {
                String string = new JSONObject().put(NotificationCompat.CATEGORY_EVENT, track.getEventName()).put(TrackingKey.TS, track.getTrackTs()).put("tid", track.getTid()).put(DownloadFacadeEnum.USER_NET, track.getJsonData().getInt(DownloadFacadeEnum.USER_NET)).put("eparam", track.getJsonData().getJSONObject("_eparam").toString()).toString();
                this.k.put(iA, string);
                e4d.a(this.b).g("first_page_enter_" + iA, string);
                c4d.c("save [%d] fpe to sp : %s", Integer.valueOf(iA), string);
                return;
            } catch (Exception e2) {
                c4d.e("saveFpeForAppId exception : %s", e2.getMessage());
            }
        }
        if (!ehanat.r()) {
            c4d.g("%s", "Athena SDK Enable : [false]");
            return;
        }
        String string2 = track.getJsonData().toString();
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("appid", com.transsion.athena.taaneh.a.a(track.getTid()));
            jSONObject.put(NotificationCompat.CATEGORY_EVENT, track.getEventName());
            jSONObject.put(TrackingKey.TS, track.getTrackTs());
            jSONObject.put("params", track.getJsonData());
            c4d.g("track event:%s", jSONObject.toString());
        } catch (Exception e3) {
            c4d.e("handleSaveData exception:%s", e3.getMessage());
        }
        if (string2.length() >= 716800) {
            c4d.e("track [%d]-[%s], save2DB failed due to eparam out of limit [%d]", Long.valueOf(track.getTid()), track.getEventName(), 716800);
            return;
        }
        if (M(track)) {
            if (track.getTid() > 9999) {
                tidConfigBeanC = e5d.o().m(track.getTid());
            } else {
                tidConfigBeanC = e5d.o().c((int) track.getTid(), track.getEventName());
                if (tidConfigBeanC != null) {
                    track.setTid(tidConfigBeanC.getTid());
                }
            }
            boolean z = false;
            if (track.getTrackFlag() == 0 && tidConfigBeanC != null && tidConfigBeanC.isCacheEnable()) {
                z = true;
            }
            int iJ = ehanat.j();
            if (iJ <= 0 || !z) {
                u(track, tidConfigBeanC);
                return;
            }
            try {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("tid", track.getTid());
                jSONObject2.put(NotificationCompat.CATEGORY_EVENT, track.getEventName());
                c4d.g("save event to memory:%s", jSONObject2.toString());
            } catch (Exception e4) {
                c4d.e("print saveTrack2Mem exception:%s", e4.getMessage());
            }
            if (this.i == null) {
                this.i = new ArrayList();
            }
            if (this.i.size() >= iJ - 1) {
                this.i.add(track);
                D(this.i);
                this.j = 0L;
                return;
            }
            long trackTs = track.getTrackTs();
            if (!tidConfigBeanC.allowTrack(trackTs)) {
                c4d.g("save [%d]-[%s] to DB failed due to limit in one-life-cycle", Long.valueOf(track.getTid()), track.getEventName());
                return;
            }
            tidConfigBeanC.setLastTTime(trackTs);
            this.i.add(track);
            long j = this.j;
            if (j == 0) {
                this.j = trackTs;
            } else if (trackTs - j >= 600000) {
                D(this.i);
                this.j = 0L;
            }
        }
    }

    public final void u(Track track, TidConfigBean tidConfigBean) {
        int iA;
        int iB = track.getTid() > 9999 ? e5d.o().b(track.getTid(), track.getTrackData().b()) : e5d.o().a((int) track.getTid(), track.getEventName(), track.getTrackData().b());
        if (iB != 0) {
            c4d.e("recordTrackFailed reason : %d", Integer.valueOf(iB));
            return;
        }
        if (tidConfigBean == null || tidConfigBean.allowTrack(track.getTrackTs())) {
            a4d.f().c(track);
            iA = aethna.a(this.b).a(track);
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("tid", track.getTid());
                jSONObject.put(NotificationCompat.CATEGORY_EVENT, track.getEventName());
                jSONObject.put(TrackingKey.TS, track.getTrackTs());
                jSONObject.put("db_count", iA);
                c4d.g("save event to DB:%s", jSONObject.toString());
            } catch (Exception e2) {
                c4d.e("saveTrack2DB exception:%s", e2.getMessage());
            }
        } else {
            c4d.e("save [%d]-[%s] to DB failed due to limit in one-life-cycle", Long.valueOf(track.getTid()), track.getEventName());
            iA = 0;
        }
        if (iA == -1) {
            c4d.d("DB_UPDATE_ERROR");
        } else if (iA == -2) {
            c4d.g("save [%d]-[%s] to DB failed due to DB_OUT_OF_MEMORY_ERROR", Long.valueOf(track.getTid()), track.getEventName());
            c4d.g("Clean up DB due to DB_OUT_OF_MEMORY_ERROR, Count [%d]", Integer.valueOf(aethna.a(this.b).a(1000, new com.transsion.athena.data.anateh.enatha() {
                @Override
                public final void a(Object obj) {
                    enatha.K((String) obj);
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
            if ("device".equals(track.getEventName()) && 9999 == com.transsion.athena.taaneh.a.a(track.getTid())) {
                e5d.o().w();
            }
        }
        H(false, this.f);
    }
}
