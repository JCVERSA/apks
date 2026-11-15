package com.cloud.hisavana.sdk.common.athena;

import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import com.cloud.hisavana.sdk.G;
import com.cloud.hisavana.sdk.common.athena.SSPTrackingHelper;
import com.cloud.hisavana.sdk.common.bean.WebPageBean;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.data.bean.response.ConfigCodeSeatDTO;
import com.cloud.hisavana.sdk.data.bean.response.ConfigTotalDTO;
import com.cloud.hisavana.sdk.data.bean.response.ccofig.ABTest;
import com.cloud.hisavana.sdk.data.bean.response.ccofig.CustomConfigManager;
import com.cloud.sdk.commonutil.gsonutil.GsonUtil;
import com.hisavana.common.tracking.TrackingKey;
import defpackage.c74;
import defpackage.cgc;
import defpackage.f09;
import defpackage.i81;
import defpackage.ied;
import defpackage.ik;
import defpackage.ikd;
import defpackage.j1a;
import defpackage.ul4;
import defpackage.y45;
import defpackage.yi5;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Result;
import kotlin.b;
import kotlin.c;

public final class SSPTrackingHelper {
    public static boolean b;
    public static final SSPTrackingHelper a = new SSPTrackingHelper();
    public static int c = 10;
    public static final yi5 d = b.a(new c74() {
        @Override
        public final Boolean invoke() {
            boolean zIsLoggable;
            try {
                zIsLoggable = Log.isLoggable("ADSDK", 3);
            } catch (Throwable unused) {
                zIsLoggable = false;
            }
            return Boolean.valueOf(zIsLoggable);
        }
    });
    public static final Map e = Collections.synchronizedMap(new LinkedHashMap<String, ConcurrentHashMap<String, Object>>() {
        @Override
        public final boolean containsKey(Object obj) {
            if (obj instanceof String) {
                return containsKey((String) obj);
            }
            return false;
        }

        @Override
        public final boolean containsValue(Object obj) {
            if (obj instanceof ConcurrentHashMap) {
                return containsValue((ConcurrentHashMap<String, Object>) obj);
            }
            return false;
        }

        @Override
        public final Set<Map.Entry<String, ConcurrentHashMap<String, Object>>> entrySet() {
            return getEntries();
        }

        @Override
        public final Object get(Object obj) {
            if (obj instanceof String) {
                return get((String) obj);
            }
            return null;
        }

        public Set<Map.Entry<String, ConcurrentHashMap<String, Object>>> getEntries() {
            return super.entrySet();
        }

        public Set<String> getKeys() {
            return super.keySet();
        }

        @Override
        public final Object getOrDefault(Object obj, Object obj2) {
            return !(obj instanceof String) ? obj2 : getOrDefault((String) obj, (ConcurrentHashMap<String, Object>) obj2);
        }

        public int getSize() {
            return super.size();
        }

        public Collection<ConcurrentHashMap<String, Object>> getValues() {
            return super.values();
        }

        @Override
        public final Set<String> keySet() {
            return getKeys();
        }

        @Override
        public final Object remove(Object obj) {
            if (obj instanceof String) {
                return remove((String) obj);
            }
            return null;
        }

        @Override
        public boolean removeEldestEntry(Map.Entry<String, ConcurrentHashMap<String, Object>> eldest) {
            return size() > 30;
        }

        @Override
        public final int size() {
            return getSize();
        }

        @Override
        public final Collection<ConcurrentHashMap<String, Object>> values() {
            return getValues();
        }

        public boolean containsKey(String str) {
            return super.containsKey((Object) str);
        }

        public boolean containsValue(ConcurrentHashMap<String, Object> concurrentHashMap) {
            return super.containsValue((Object) concurrentHashMap);
        }

        @Override
        public final ConcurrentHashMap<String, Object> get(Object obj) {
            if (obj instanceof String) {
                return get((String) obj);
            }
            return null;
        }

        public final ConcurrentHashMap getOrDefault(Object obj, ConcurrentHashMap concurrentHashMap) {
            return !(obj instanceof String) ? concurrentHashMap : getOrDefault((String) obj, (ConcurrentHashMap<String, Object>) concurrentHashMap);
        }

        @Override
        public final ConcurrentHashMap<String, Object> remove(Object obj) {
            if (obj instanceof String) {
                return remove((String) obj);
            }
            return null;
        }

        public ConcurrentHashMap<String, Object> get(String str) {
            return (ConcurrentHashMap) super.get((Object) str);
        }

        public ConcurrentHashMap<String, Object> getOrDefault(String str, ConcurrentHashMap<String, Object> concurrentHashMap) {
            return (ConcurrentHashMap) super.getOrDefault((Object) str, concurrentHashMap);
        }

        public ConcurrentHashMap<String, Object> remove(String str) {
            return (ConcurrentHashMap) super.remove((Object) str);
        }

        @Override
        public final boolean remove(Object obj, Object obj2) {
            if ((obj instanceof String) && (obj2 instanceof ConcurrentHashMap)) {
                return remove((String) obj, (ConcurrentHashMap<String, Object>) obj2);
            }
            return false;
        }

        public boolean remove(String str, ConcurrentHashMap<String, Object> concurrentHashMap) {
            return super.remove((Object) str, (Object) concurrentHashMap);
        }
    });

    public static void C(SSPTrackingHelper sSPTrackingHelper, int i, ied iedVar, List list, String str, String str2, int i2, long j, int i3, boolean z, int i4, Object obj) {
        sSPTrackingHelper.B(i, iedVar, list, str, str2, i2, j, i3, (i4 & 256) != 0 ? false : z);
    }

    public static final void D(ied iedVar, int i, int i2, boolean z, List list, long j, String str, String str2, int i3) {
        String strValueOf;
        ConfigCodeSeatDTO configCodeSeatDTOG;
        y45.j(list, "$adsDTOs");
        try {
            SSPTrackingHelper sSPTrackingHelper = a;
            Bundle bundleV = sSPTrackingHelper.v(iedVar, i);
            String string = bundleV.getString("temp_online_failed_code", "");
            bundleV.remove("temp_online_failed_code");
            if (i2 != 1) {
                bundleV.putInt("s_callback_status", i2);
            }
            if (z) {
                bundleV.putInt("s_req_bidding", 1);
            }
            sSPTrackingHelper.Y(iedVar != null ? iedVar.p() : null);
            if (i == 0) {
                strValueOf = "0";
            } else if (string == null || string.length() == 0) {
                strValueOf = String.valueOf(i);
            } else {
                strValueOf = i + '_' + string;
            }
            String str3 = strValueOf;
            y45.g(string);
            if (string.length() > 0) {
                bundleV.putString("s_online_failed_reason_v2", string);
            }
            bundleV.remove("s_online_status");
            bundleV.remove("s_default_status");
            bundleV.remove("s_offline_status");
            bundleV.remove("s_ma_d_s");
            bundleV.remove("s_req_timeout");
            bundleV.remove("s_ma_d_fr");
            AdsDTO adsDTO = (AdsDTO) i81.q0(list);
            int source = adsDTO != null ? adsDTO.getSource() : 0;
            boolean zT = iedVar != null ? iedVar.t() : false;
            String strM = iedVar != null ? iedVar.m() : null;
            if (!zT && strM != null && strM.length() != 0) {
                bundleV.putString(TrackingKey.SCENE_ID, strM);
            }
            if (source == 4) {
                AthenaTracker.a.I(list, iedVar != null ? iedVar.p() : null, iedVar != null ? iedVar.j() : null, j, bundleV);
            } else {
                AthenaTracker.a.l(list, iedVar != null ? iedVar.p() : null, iedVar != null ? iedVar.q() : 0, str, str3, j, iedVar != null ? iedVar.j() : null, (iedVar == null || (configCodeSeatDTOG = iedVar.g()) == null) ? false : configCodeSeatDTOG.isOfflineAdEnable(), str2, i3, bundleV);
            }
        } catch (Throwable unused) {
        }
    }

    public static final void F(ied iedVar, String str, String str2) {
        y45.j(iedVar, "$fetchInfo");
        try {
            AthenaTracker.a.p(iedVar, str, str2);
        } catch (Throwable unused) {
        }
    }

    public static final void H(ied iedVar, List list, long j, boolean z) {
        try {
            a.Y(iedVar != null ? iedVar.p() : null);
            AthenaTracker.a.q(iedVar, list, j, Boolean.valueOf(z));
        } catch (Throwable unused) {
        }
    }

    public static final void J(ied iedVar, List list) {
        try {
            AthenaTracker.a.r(iedVar, list);
        } catch (Throwable unused) {
        }
    }

    public static final void L(ArrayList arrayList, Integer num, AdsDTO adsDTO, Bundle bundle) {
        String strD;
        y45.j(bundle, "$bundle");
        if (arrayList != null) {
            try {
                if (arrayList.isEmpty()) {
                    arrayList = null;
                }
                if (arrayList != null && (strD = GsonUtil.d(arrayList)) != null) {
                    String str = strD.length() > 0 ? strD : null;
                    if (str != null) {
                        bundle.putString("s_click_chain_list", str);
                    }
                }
            } catch (Throwable unused) {
                return;
            }
        }
        AthenaTracker.a.k(String.valueOf(num), adsDTO, bundle);
    }

    public static void O(SSPTrackingHelper sSPTrackingHelper, Integer num, String str, String str2, AdsDTO adsDTO, Bundle bundle, int i, Object obj) {
        if ((i & 16) != 0) {
            bundle = null;
        }
        sSPTrackingHelper.N(num, str, str2, adsDTO, bundle);
    }

    public static final void P(Integer num, String str, String str2, AdsDTO adsDTO, Bundle bundle) {
        try {
            AthenaTracker.a.t(String.valueOf(num), str, str2, adsDTO, bundle);
        } catch (Throwable unused) {
        }
    }

    public static final void R(Integer num, AdsDTO adsDTO, Long l, Boolean bool, Boolean bool2, String str, Long l2, Bundle bundle) {
        Bundle bundle2;
        String string;
        int iIntValue;
        try {
            try {
                bundle2 = new Bundle();
                bundle2.putAll(bundle);
            } catch (Throwable unused) {
                bundle2 = new Bundle();
            }
            if (num == null || (string = num.toString()) == null) {
                string = "";
            }
            bundle2.putString("error_code", string);
            if (adsDTO != null) {
                try {
                    bundle2.putString(TrackingKey.TRIGGER_ID, adsDTO.getTriggerId());
                    bundle2.putString("s_click_tracking_id", adsDTO.getClickid());
                    bundle2.putString("ad_creative_id", adsDTO.getAdCreativeId());
                    Integer codeSeatType = adsDTO.getCodeSeatType();
                    if (codeSeatType == null) {
                        iIntValue = -1;
                    } else {
                        y45.g(codeSeatType);
                        iIntValue = codeSeatType.intValue();
                    }
                    bundle2.putInt("code_seat_type", iIntValue);
                    bundle2.putString(TrackingKey.CODE_SEAT_ID, adsDTO.getCodeSeatId());
                    bundle2.putString(TrackingKey.SHOW_ID, adsDTO.getUuid());
                    Boolean preloadEnable = adsDTO.getPreloadEnable();
                    y45.i(preloadEnable, "getPreloadEnable(...)");
                    bundle2.putInt("preload_enable", preloadEnable.booleanValue() ? 1 : 0);
                    bundle2.putInt("preload_status", adsDTO.getPreloadStatus());
                } catch (Throwable unused2) {
                }
            }
            bundle2.putLong("s_cct_load_time", l != null ? l.longValue() : 0L);
            bundle2.putBoolean("s_cct_aborted", bool != null ? bool.booleanValue() : false);
            bundle2.putBoolean("s_cct_warmup", bool2 != null ? bool2.booleanValue() : false);
            if (str == null) {
                str = "";
            }
            bundle2.putString("s_cct_version", str);
            bundle2.putLong("s_cct_launch_time", l2 != null ? l2.longValue() : 0L);
            bundle2.putString("s_cct_device", Build.BRAND);
            AthenaTracker.a.B(bundle2);
        } catch (Throwable th) {
            ikd.b().e("SSPTrackingHelper", "realTrackingCCTLandingPage", th);
        }
    }

    public static final void T(Integer num, AdsDTO adsDTO, Long l, Boolean bool, Boolean bool2, String str, Long l2, Long l3, Bundle bundle) {
        Bundle bundle2;
        String string;
        int iIntValue;
        try {
            try {
                bundle2 = new Bundle();
                bundle2.putAll(bundle);
            } catch (Throwable unused) {
                bundle2 = new Bundle();
            }
            if (num == null || (string = num.toString()) == null) {
                string = "";
            }
            bundle2.putString("error_code", string);
            if (adsDTO != null) {
                try {
                    bundle2.putString(TrackingKey.TRIGGER_ID, adsDTO.getTriggerId());
                    bundle2.putString("s_click_tracking_id", adsDTO.getClickid());
                    bundle2.putString("ad_creative_id", adsDTO.getAdCreativeId());
                    Integer codeSeatType = adsDTO.getCodeSeatType();
                    if (codeSeatType == null) {
                        iIntValue = -1;
                    } else {
                        y45.g(codeSeatType);
                        iIntValue = codeSeatType.intValue();
                    }
                    bundle2.putInt("code_seat_type", iIntValue);
                    bundle2.putString(TrackingKey.CODE_SEAT_ID, adsDTO.getCodeSeatId());
                    bundle2.putString(TrackingKey.SHOW_ID, adsDTO.getUuid());
                    Boolean preloadEnable = adsDTO.getPreloadEnable();
                    y45.i(preloadEnable, "getPreloadEnable(...)");
                    bundle2.putInt("preload_enable", preloadEnable.booleanValue() ? 1 : 0);
                    bundle2.putInt("preload_status", adsDTO.getPreloadStatus());
                } catch (Throwable unused2) {
                }
            }
            bundle2.putLong("s_cct_load_time", l != null ? l.longValue() : 0L);
            bundle2.putBoolean("s_cct_aborted", bool != null ? bool.booleanValue() : false);
            bundle2.putBoolean("s_cct_warmup", bool2 != null ? bool2.booleanValue() : false);
            if (str == null) {
                str = "";
            }
            bundle2.putString("s_cct_version", str);
            bundle2.putLong("s_cct_launch_time", l2 != null ? l2.longValue() : 0L);
            bundle2.putLong("s_landing_stay_time", l3 != null ? l3.longValue() : 0L);
            bundle2.putString("s_cct_device", Build.BRAND);
            AthenaTracker.a.A(bundle2);
        } catch (Throwable th) {
            ikd.b().e("SSPTrackingHelper", "realTrackingCCTLandingPageExit", th);
        }
    }

    public static final void V(Bundle bundle, ied iedVar, int i, TaErrorCode taErrorCode) {
        String string;
        String strP;
        try {
            Bundle bundle2 = new Bundle();
            if (bundle != null) {
                bundle2.putAll(bundle);
            }
            if (iedVar != null && (strP = iedVar.p()) != null) {
                bundle2.putString(TrackingKey.TRIGGER_ID, strP);
            }
            if (iedVar != null) {
                bundle2.putInt(TrackingKey.AD_TYPE, iedVar.e());
            }
            bundle2.putLong(TrackingKey.EVENT_TS, System.currentTimeMillis());
            bundle2.putInt("s_track_event_type", i);
            if (i == 2) {
                if (taErrorCode == null || (string = Integer.valueOf(taErrorCode.getErrorCode()).toString()) == null) {
                    string = "";
                }
                bundle2.putString("error_code", string);
            }
            AthenaTracker.a.o(bundle2);
        } catch (Throwable unused) {
        }
    }

    public static final void X(WebPageBean webPageBean, AdsDTO adsDTO, boolean z, List list, List list2, Boolean bool, Long l, boolean z2, Bundle bundle, Integer num) {
        Bundle bundle2;
        int iIntValue;
        String string;
        try {
            try {
                bundle2 = new Bundle();
                if (bundle != null) {
                    bundle2.putAll(bundle);
                }
            } catch (Throwable unused) {
                bundle2 = new Bundle();
            }
            if (webPageBean != null) {
                bundle2.putString("webId", webPageBean.getWebId());
                if (!z) {
                    bundle2.putString("url", webPageBean.getUrl());
                    bundle2.putLong("spendTime", webPageBean.getSpendTime());
                }
                if (num == null || (string = num.toString()) == null) {
                    string = "";
                }
                bundle2.putString("error_code", string);
            }
            if (adsDTO != null) {
                bundle2.putString(TrackingKey.TRIGGER_ID, adsDTO.getTriggerId());
                bundle2.putString("s_click_tracking_id", adsDTO.getClickid());
                try {
                    Integer codeSeatType = adsDTO.getCodeSeatType();
                    if (codeSeatType == null) {
                        iIntValue = -1;
                    } else {
                        y45.g(codeSeatType);
                        iIntValue = codeSeatType.intValue();
                    }
                    bundle2.putInt("code_seat_type", iIntValue);
                    bundle2.putString(TrackingKey.CODE_SEAT_ID, adsDTO.getCodeSeatId());
                    bundle2.putString("ad_creative_id", adsDTO.getAdCreativeId());
                    bundle2.putString(TrackingKey.SHOW_ID, adsDTO.getUuid());
                    Boolean preloadEnable = adsDTO.getPreloadEnable();
                    y45.i(preloadEnable, "getPreloadEnable(...)");
                    bundle2.putInt("preload_enable", preloadEnable.booleanValue() ? 1 : 0);
                    bundle2.putInt("preload_status", adsDTO.getPreloadStatus());
                } catch (Throwable unused2) {
                }
            }
            if (!z) {
                if (list != null && (!list.isEmpty())) {
                    bundle2.putString("s_landing_router", GsonUtil.d(list));
                }
                if (list2 != null && (!list2.isEmpty())) {
                    bundle2.putString("s_landing_ges_router", GsonUtil.d(list2));
                }
            }
            bundle2.putInt("s_landing_complete", y45.e(bool, Boolean.TRUE) ? 1 : 0);
            if (l != null) {
                if ((l.longValue() != 0 ? l : null) != null) {
                    bundle2.putLong("s_landing_stay_time", l.longValue());
                }
            }
            if (z2) {
                bundle2.putInt("s_landing_nav_finish", 1);
            }
            AthenaTracker.a.a0(bundle2);
        } catch (Throwable unused3) {
        }
    }

    public final void A(int i, ied iedVar, List list, String str, String str2, int i2, long j, int i3) {
        C(this, i, iedVar, list, str, str2, i2, j, i3, false, 256, null);
    }

    public final void B(final int i, final ied iedVar, List list, final String str, final String str2, final int i2, final long j, final int i3, final boolean z) {
        try {
            final ArrayList arrayList = new ArrayList();
            if (list != null) {
                arrayList.addAll(list);
            }
            ik.c(new Runnable() {
                @Override
                public final void run() {
                    SSPTrackingHelper.D(iedVar, i, i3, z, arrayList, j, str, str2, i2);
                }
            });
        } catch (Throwable unused) {
        }
    }

    public final void E(final ied iedVar, final String str, final String str2) {
        y45.j(iedVar, "fetchInfo");
        try {
            ik.c(new Runnable() {
                @Override
                public final void run() {
                    SSPTrackingHelper.F(iedVar, str, str2);
                }
            });
        } catch (Throwable unused) {
        }
    }

    public final void G(final ied iedVar, final List list, final long j, final boolean z) {
        try {
            ik.c(new Runnable() {
                @Override
                public final void run() {
                    SSPTrackingHelper.H(iedVar, list, j, z);
                }
            });
        } catch (Throwable unused) {
        }
    }

    public final void I(final ied iedVar, final List list) {
        try {
            ik.c(new Runnable() {
                @Override
                public final void run() {
                    SSPTrackingHelper.J(iedVar, list);
                }
            });
        } catch (Throwable unused) {
        }
    }

    public final void K(final Integer num, final AdsDTO adsDTO, final Bundle bundle, final ArrayList arrayList) {
        y45.j(bundle, "bundle");
        ik.c(new Runnable() {
            @Override
            public final void run() {
                SSPTrackingHelper.L(arrayList, num, adsDTO, bundle);
            }
        });
    }

    public final void M(Integer num, String str, String str2, AdsDTO adsDTO) {
        O(this, num, str, str2, adsDTO, null, 16, null);
    }

    public final void N(final Integer num, final String str, final String str2, final AdsDTO adsDTO, final Bundle bundle) {
        ik.c(new Runnable() {
            @Override
            public final void run() {
                SSPTrackingHelper.P(num, str, str2, adsDTO, bundle);
            }
        });
    }

    public final void Q(final Integer num, final AdsDTO adsDTO, final Long l, final Long l2, final Boolean bool, final String str, final Boolean bool2, final Bundle bundle) {
        ik.c(new Runnable() {
            @Override
            public final void run() {
                SSPTrackingHelper.R(num, adsDTO, l2, bool2, bool, str, l, bundle);
            }
        });
    }

    public final void S(final Integer num, final AdsDTO adsDTO, final Long l, final Long l2, final Long l3, final Boolean bool, final String str, final Boolean bool2, final Bundle bundle) {
        ik.c(new Runnable() {
            @Override
            public final void run() {
                SSPTrackingHelper.T(num, adsDTO, l2, bool2, bool, str, l, l3, bundle);
            }
        });
    }

    public final void U(final int i, final ied iedVar, final TaErrorCode taErrorCode, final Bundle bundle) {
        ik.c(new Runnable() {
            @Override
            public final void run() {
                SSPTrackingHelper.V(bundle, iedVar, i, taErrorCode);
            }
        });
    }

    public final void W(final Integer num, final List list, final List list2, final AdsDTO adsDTO, final WebPageBean webPageBean, final boolean z, final boolean z2, final Long l, final Boolean bool, final Bundle bundle) {
        ik.c(new Runnable() {
            @Override
            public final void run() {
                SSPTrackingHelper.X(webPageBean, adsDTO, z2, list, list2, bool, l, z, bundle, num);
            }
        });
    }

    public final void Y(String str) {
        if (str != null) {
            try {
                if (str.length() > 0) {
                    e.remove(str);
                }
            } catch (Throwable unused) {
            }
        }
    }

    public final void Z(String str, Bundle bundle) {
        if (bundle != null) {
            try {
                bundle.putInt("is_dev_open", u(str) ? 1 : 0);
            } catch (Throwable unused) {
            }
        }
    }

    public final void a0(String str, Bundle bundle) {
        if (bundle != null) {
            try {
                bundle.putInt("is_filling_dev_open", u(str) ? 1 : 0);
            } catch (Throwable unused) {
            }
        }
    }

    public final void b0(String str, Bundle bundle) {
        if (bundle != null) {
            try {
                bundle.putInt("is_show_dev_open", u(str) ? 1 : 0);
            } catch (Throwable unused) {
            }
        }
    }

    public final boolean k(String str) {
        ConfigTotalDTO.ExtInfo extInfoL;
        try {
            cgc cgcVarN = cgc.n();
            boolean z = !((cgcVarN == null || (extInfoL = cgcVarN.l()) == null) ? true : extInfoL.isEnableClientSampling()) || r() || u(str);
            if (!z) {
                ikd.b().d("SSPTrackingHelper", "eventName -> " + str + " reporting not allowed");
            }
            return z;
        } catch (Throwable unused) {
            return true;
        }
    }

    public final boolean l(String str, String str2) {
        Object objM279constructorimpl;
        boolean z;
        ArrayList<String> trackEvent;
        try {
            Result.Companion companion = Result.INSTANCE;
            ABTest aBTestData = CustomConfigManager.getABTestData(str);
            if (aBTestData != null && (trackEvent = aBTestData.getTrackEvent()) != null && !trackEvent.isEmpty()) {
                Iterator<T> it = trackEvent.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        z = false;
                        break;
                    }
                    if (y45.e((String) it.next(), str2)) {
                        z = true;
                        break;
                    }
                }
            } else {
                z = false;
                break;
            }
            objM279constructorimpl = Result.m279constructorimpl(Boolean.valueOf(z));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM279constructorimpl = Result.m279constructorimpl(c.a(th));
        }
        Boolean bool = Boolean.FALSE;
        if (Result.m285isFailureimpl(objM279constructorimpl)) {
            objM279constructorimpl = bool;
        }
        return ((Boolean) objM279constructorimpl).booleanValue();
    }

    public final AdsDTO m(G g) {
        List listS;
        if (g == null || (listS = g.s()) == null) {
            return null;
        }
        return (AdsDTO) i81.q0(listS);
    }

    public final long n() {
        Object objM279constructorimpl;
        ConfigTotalDTO.ExtInfo extInfoL;
        try {
            Result.Companion companion = Result.INSTANCE;
            cgc cgcVarN = cgc.n();
            objM279constructorimpl = Result.m279constructorimpl(Long.valueOf((cgcVarN == null || (extInfoL = cgcVarN.l()) == null) ? 0L : extInfoL.getAdReqInterval()));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM279constructorimpl = Result.m279constructorimpl(c.a(th));
        }
        if (Result.m282exceptionOrNullimpl(objM279constructorimpl) != null) {
            objM279constructorimpl = 0L;
        }
        return ((Number) objM279constructorimpl).longValue();
    }

    public final String o(G g) {
        ied iedVarP;
        String strJ = (g == null || (iedVarP = g.p()) == null) ? null : iedVarP.j();
        return strJ == null ? "" : strJ;
    }

    public final ConcurrentHashMap p(String str) {
        Object objM279constructorimpl;
        ConcurrentHashMap concurrentHashMap;
        try {
            Result.Companion companion = Result.INSTANCE;
            if (str == null || str.length() == 0) {
                str = null;
            }
            if (str != null) {
                Map map = e;
                y45.i(map, "fillingTrackingMap");
                synchronized (map) {
                    concurrentHashMap = (ConcurrentHashMap) map.get(str);
                    if (concurrentHashMap == null) {
                        concurrentHashMap = new ConcurrentHashMap();
                        y45.i(map, "fillingTrackingMap");
                        map.put(str, concurrentHashMap);
                    }
                }
            } else {
                concurrentHashMap = new ConcurrentHashMap();
                ikd.b().d("SSPTrackingHelper", Log.getStackTraceString(new Throwable("getFillingTrackingBundle: triggerId is empty")));
            }
            objM279constructorimpl = Result.m279constructorimpl(concurrentHashMap);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM279constructorimpl = Result.m279constructorimpl(c.a(th));
        }
        if (Result.m282exceptionOrNullimpl(objM279constructorimpl) != null) {
            objM279constructorimpl = new ConcurrentHashMap();
        }
        return (ConcurrentHashMap) objM279constructorimpl;
    }

    public final String q(G g) {
        ied iedVarP;
        String strP = (g == null || (iedVarP = g.p()) == null) ? null : iedVarP.p();
        return strP == null ? "" : strP;
    }

    public final boolean r() {
        return ((Boolean) d.getValue()).booleanValue();
    }

    public final String s(String str) {
        Object objM279constructorimpl;
        y45.j(str, "urlString");
        try {
            Result.Companion companion = Result.INSTANCE;
            Uri uri = Uri.parse(str);
            y45.i(uri, "parse(this)");
            objM279constructorimpl = Result.m279constructorimpl(uri.buildUpon().clearQuery().fragment(null).build().toString());
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM279constructorimpl = Result.m279constructorimpl(c.a(th));
        }
        if (Result.m282exceptionOrNullimpl(objM279constructorimpl) != null) {
            objM279constructorimpl = "";
        }
        return (String) objM279constructorimpl;
    }

    public final boolean t() {
        ConfigTotalDTO.ExtInfo extInfoL;
        try {
            cgc cgcVarN = cgc.n();
            int clientSamplingRatio = (cgcVarN == null || (extInfoL = cgcVarN.l()) == null) ? 10 : extInfoL.getClientSamplingRatio();
            if (clientSamplingRatio == 100) {
                return true;
            }
            if (AthenaTracker.b || c != clientSamplingRatio) {
                b = AthenaTracker.o(ul4.a(), clientSamplingRatio);
                c = clientSamplingRatio;
            }
            return b;
        } catch (Throwable unused) {
            return false;
        }
    }

    public final boolean u(String str) {
        if (str != null) {
            try {
                if (str.length() != 0 && t()) {
                    return true;
                }
            } catch (Throwable unused) {
            }
        }
        return false;
    }

    public final Bundle v(ied iedVar, int i) {
        String strP;
        if (iedVar != null) {
            try {
                strP = iedVar.p();
            } catch (Throwable unused) {
                return new Bundle();
            }
        } else {
            strP = null;
        }
        Bundle bundleK = f09.k(p(strP));
        if (i == 0) {
            w(bundleK);
        } else {
            w(bundleK);
        }
        return bundleK;
    }

    public final void w(Bundle bundle) {
        try {
            int i = bundle.getInt("s_online_status");
            if (i == 2) {
                String string = bundle.getString("s_online_failed_reason_v2");
                int i2 = bundle.getInt("s_ma_d_s", 0);
                TaErrorCode taErrorCode = TaErrorCode.ERROR_ONLINE_NEW_REQUEST_TIMEOUT;
                if (y45.e(string, String.valueOf(taErrorCode.getErrorCode()))) {
                    if (i2 == 1) {
                        f09.g(bundle, "temp_online_failed_code", "5032");
                        return;
                    } else {
                        f09.g(bundle, "temp_online_failed_code", String.valueOf(taErrorCode.getErrorCode()));
                        return;
                    }
                }
                if (i2 != 3) {
                    f09.g(bundle, "temp_online_failed_code", string);
                    return;
                }
                f09.g(bundle, "temp_online_failed_code", "5029_" + string);
                return;
            }
            if (i != 1) {
                String string2 = bundle.getString("s_req_chs");
                if (string2 == null || !j1a.X(string2, "2", false, 2, null)) {
                    int i3 = bundle.getInt("temp_online_without_req", -1);
                    if (i3 != -1) {
                        f09.g(bundle, "temp_online_failed_code", String.valueOf(i3));
                    }
                    f09.i(bundle, "temp_online_without_req");
                    return;
                }
                boolean z = bundle.getBoolean("s_req_timeout", false);
                int i4 = bundle.getInt("s_ma_d_s", 0);
                if (z) {
                    if (i4 == 1) {
                        f09.g(bundle, "temp_online_failed_code", "5033");
                        return;
                    } else {
                        f09.g(bundle, "temp_online_failed_code", "5025");
                        return;
                    }
                }
                if (i4 == 1) {
                    f09.g(bundle, "temp_online_failed_code", "5030");
                } else {
                    f09.g(bundle, "temp_online_failed_code", "5026");
                }
            }
        } catch (Throwable unused) {
        }
    }

    public final void x(List list, ied iedVar) {
        int source;
        if (list != null) {
            try {
                if (!list.isEmpty() && list.size() > 1 && (source = ((AdsDTO) i81.o0(list)).getSource()) != 2 && source != 1 && !list.isEmpty()) {
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        AdsDTO adsDTO = (AdsDTO) it.next();
                        if (adsDTO.getSource() == 2 || adsDTO.getSource() == 1) {
                            f09.h(p(iedVar != null ? iedVar.p() : null), "s_online_failed_reason_v2", "5031");
                            return;
                        }
                    }
                }
            } catch (Throwable unused) {
            }
        }
    }

    public final void y(int i, Bundle bundle, int i2) {
        String str;
        if (i != 1) {
            str = i != 2 ? "" : "s_click_pkg_f_r";
        } else {
            str = "s_click_dp_f_r";
        }
        if (str.length() <= 0 || bundle == null) {
            return;
        }
        bundle.putInt(str, i2);
    }

    public final void z(String str, String str2) {
        try {
            ConcurrentHashMap concurrentHashMapP = p(str);
            String strA = f09.a(concurrentHashMapP, "s_req_chs");
            if (strA != null) {
                if (strA.length() <= 0) {
                    strA = null;
                }
                if (strA != null) {
                    String str3 = strA + ',' + str2;
                    if (str3 != null) {
                        str2 = str3;
                    }
                }
            }
            f09.h(concurrentHashMapP, "s_req_chs", str2);
        } catch (Throwable unused) {
        }
    }
}
