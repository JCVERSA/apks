package com.cloud.hisavana.sdk.common.athena;

import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import com.cloud.hisavana.sdk.F;
import com.cloud.hisavana.sdk.b4;
import com.cloud.hisavana.sdk.common.bean.WebPageBean;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.cloud.hisavana.sdk.common.util.f0;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.data.bean.response.ConfigCodeSeatDTO;
import com.cloud.hisavana.sdk.data.bean.response.ConfigTotalDTO;
import com.cloud.hisavana.sdk.data.bean.response.ccofig.ABTest;
import com.cloud.hisavana.sdk.data.bean.response.ccofig.CustomConfigManager;
import com.cloud.hisavana.sdk.g1;
import com.cloud.hisavana.sdk.p3;
import com.cloud.sdk.commonutil.gsonutil.GsonUtil;
import com.hisavana.common.tracking.TrackingKey;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

public final class SSPTrackingHelper {

    private static boolean f21369b;

    public static final SSPTrackingHelper f21368a = new SSPTrackingHelper();

    private static int f21370c = 10;

    private static final Lazy f21371d = LazyKt.b(new Function0<Boolean>() {
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

    private static final Map f21372e = Collections.synchronizedMap(new LinkedHashMap<String, ConcurrentHashMap<String, Object>>() {
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
        protected boolean removeEldestEntry(Map.Entry<String, ConcurrentHashMap<String, Object>> eldest) {
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

    private SSPTrackingHelper() {
    }

    public static void C(SSPTrackingHelper sSPTrackingHelper, int i10, p3 p3Var, List list, String str, String str2, int i11, long j10, int i12, boolean z10, int i13, Object obj) {
        sSPTrackingHelper.B(i10, p3Var, list, str, str2, i11, j10, i12, (i13 & 256) != 0 ? false : z10);
    }

    public static final void D(p3 p3Var, int i10, int i11, boolean z10, List adsDTOs, long j10, String str, String str2, int i12) {
        String strValueOf;
        ConfigCodeSeatDTO configCodeSeatDTOF;
        Intrinsics.h(adsDTOs, "$adsDTOs");
        try {
            SSPTrackingHelper sSPTrackingHelper = f21368a;
            Bundle bundleV = sSPTrackingHelper.v(p3Var, i10);
            String string = bundleV.getString("temp_online_failed_code", "");
            bundleV.remove("temp_online_failed_code");
            if (i11 != 1) {
                bundleV.putInt("s_callback_status", i11);
            }
            if (z10) {
                bundleV.putInt("s_req_bidding", 1);
            }
            sSPTrackingHelper.Y(p3Var != null ? p3Var.n() : null);
            if (i10 == 0) {
                strValueOf = "0";
            } else if (string == null || string.length() == 0) {
                strValueOf = String.valueOf(i10);
            } else {
                strValueOf = i10 + '_' + string;
            }
            String str3 = strValueOf;
            Intrinsics.e(string);
            if (string.length() > 0) {
                bundleV.putString("s_online_failed_reason_v2", string);
            }
            bundleV.remove("s_online_status");
            bundleV.remove("s_default_status");
            bundleV.remove("s_offline_status");
            bundleV.remove("s_ma_d_s");
            bundleV.remove("s_req_timeout");
            bundleV.remove("s_ma_d_fr");
            AdsDTO adsDTO = (AdsDTO) CollectionsKt.k0(adsDTOs);
            if ((adsDTO != null ? adsDTO.getSource() : 0) == 4) {
                AthenaTracker.a.H(adsDTOs, p3Var != null ? p3Var.n() : null, p3Var != null ? p3Var.i() : null, j10, bundleV);
            } else {
                AthenaTracker.a.k(adsDTOs, p3Var != null ? p3Var.n() : null, p3Var != null ? p3Var.o() : 0, str, str3, j10, p3Var != null ? p3Var.i() : null, (p3Var == null || (configCodeSeatDTOF = p3Var.f()) == null) ? false : configCodeSeatDTOF.isOfflineAdEnable(), str2, i12, bundleV);
            }
        } catch (Throwable unused) {
        }
    }

    public static final void F(p3 fetchInfo, String str, String str2) {
        Intrinsics.h(fetchInfo, "$fetchInfo");
        try {
            AthenaTracker.a.o(fetchInfo, str, str2);
        } catch (Throwable unused) {
        }
    }

    public static final void H(p3 p3Var, List list, long j10, boolean z10) {
        try {
            f21368a.Y(p3Var != null ? p3Var.n() : null);
            AthenaTracker.a.p(p3Var, list, j10, Boolean.valueOf(z10));
        } catch (Throwable unused) {
        }
    }

    public static final void J(p3 p3Var, List list) {
        try {
            AthenaTracker.a.q(p3Var, list);
        } catch (Throwable unused) {
        }
    }

    public static final void L(ArrayList arrayList, Integer num, AdsDTO adsDTO, Bundle bundle) {
        String strD;
        Intrinsics.h(bundle, "$bundle");
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
        AthenaTracker.a.j(String.valueOf(num), adsDTO, bundle);
    }

    public static void O(SSPTrackingHelper sSPTrackingHelper, Integer num, String str, String str2, AdsDTO adsDTO, Bundle bundle, int i10, Object obj) {
        if ((i10 & 16) != 0) {
            bundle = null;
        }
        sSPTrackingHelper.N(num, str, str2, adsDTO, bundle);
    }

    public static final void P(Integer num, String str, String str2, AdsDTO adsDTO, Bundle bundle) {
        try {
            AthenaTracker.a.s(String.valueOf(num), str, str2, adsDTO, bundle);
        } catch (Throwable unused) {
        }
    }

    public static final void R(Integer num, AdsDTO adsDTO, Long l10, Boolean bool, Boolean bool2, String str, Long l11, Bundle bundle) {
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
                        Intrinsics.e(codeSeatType);
                        iIntValue = codeSeatType.intValue();
                    }
                    bundle2.putInt("code_seat_type", iIntValue);
                    bundle2.putString(TrackingKey.CODE_SEAT_ID, adsDTO.getCodeSeatId());
                    bundle2.putString(TrackingKey.SHOW_ID, adsDTO.getUuid());
                    Boolean preloadEnable = adsDTO.getPreloadEnable();
                    Intrinsics.g(preloadEnable, "getPreloadEnable(...)");
                    bundle2.putInt("preload_enable", preloadEnable.booleanValue() ? 1 : 0);
                    bundle2.putInt("preload_status", adsDTO.getPreloadStatus());
                } catch (Throwable unused2) {
                }
            }
            bundle2.putLong("s_cct_load_time", l10 != null ? l10.longValue() : 0L);
            bundle2.putBoolean("s_cct_aborted", bool != null ? bool.booleanValue() : false);
            bundle2.putBoolean("s_cct_warmup", bool2 != null ? bool2.booleanValue() : false);
            if (str == null) {
                str = "";
            }
            bundle2.putString("s_cct_version", str);
            bundle2.putLong("s_cct_launch_time", l11 != null ? l11.longValue() : 0L);
            bundle2.putString("s_cct_device", Build.BRAND);
            AthenaTracker.a.A(bundle2);
        } catch (Throwable th2) {
            b4.b().e("SSPTrackingHelper", "realTrackingCCTLandingPage", th2);
        }
    }

    public static final void T(Integer num, AdsDTO adsDTO, Long l10, Boolean bool, Boolean bool2, String str, Long l11, Long l12, Bundle bundle) {
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
                        Intrinsics.e(codeSeatType);
                        iIntValue = codeSeatType.intValue();
                    }
                    bundle2.putInt("code_seat_type", iIntValue);
                    bundle2.putString(TrackingKey.CODE_SEAT_ID, adsDTO.getCodeSeatId());
                    bundle2.putString(TrackingKey.SHOW_ID, adsDTO.getUuid());
                    Boolean preloadEnable = adsDTO.getPreloadEnable();
                    Intrinsics.g(preloadEnable, "getPreloadEnable(...)");
                    bundle2.putInt("preload_enable", preloadEnable.booleanValue() ? 1 : 0);
                    bundle2.putInt("preload_status", adsDTO.getPreloadStatus());
                } catch (Throwable unused2) {
                }
            }
            bundle2.putLong("s_cct_load_time", l10 != null ? l10.longValue() : 0L);
            bundle2.putBoolean("s_cct_aborted", bool != null ? bool.booleanValue() : false);
            bundle2.putBoolean("s_cct_warmup", bool2 != null ? bool2.booleanValue() : false);
            if (str == null) {
                str = "";
            }
            bundle2.putString("s_cct_version", str);
            bundle2.putLong("s_cct_launch_time", l11 != null ? l11.longValue() : 0L);
            bundle2.putLong("s_landing_stay_time", l12 != null ? l12.longValue() : 0L);
            bundle2.putString("s_cct_device", Build.BRAND);
            AthenaTracker.a.z(bundle2);
        } catch (Throwable th2) {
            b4.b().e("SSPTrackingHelper", "realTrackingCCTLandingPageExit", th2);
        }
    }

    public static final void V(Bundle bundle, p3 p3Var, int i10, TaErrorCode taErrorCode) {
        String string;
        String strN;
        try {
            Bundle bundle2 = new Bundle();
            if (bundle != null) {
                bundle2.putAll(bundle);
            }
            if (p3Var != null && (strN = p3Var.n()) != null) {
                bundle2.putString(TrackingKey.TRIGGER_ID, strN);
            }
            if (p3Var != null) {
                bundle2.putInt("ad_type", p3Var.e());
            }
            bundle2.putLong(TrackingKey.EVENT_TS, System.currentTimeMillis());
            bundle2.putInt("s_track_event_type", i10);
            if (i10 == 2) {
                if (taErrorCode == null || (string = Integer.valueOf(taErrorCode.getErrorCode()).toString()) == null) {
                    string = "";
                }
                bundle2.putString("error_code", string);
            }
            AthenaTracker.a.n(bundle2);
        } catch (Throwable unused) {
        }
    }

    public static final void X(WebPageBean webPageBean, AdsDTO adsDTO, boolean z10, List list, List list2, Boolean bool, Long l10, boolean z11, Bundle bundle, Integer num) {
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
                if (!z10) {
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
                        Intrinsics.e(codeSeatType);
                        iIntValue = codeSeatType.intValue();
                    }
                    bundle2.putInt("code_seat_type", iIntValue);
                    bundle2.putString(TrackingKey.CODE_SEAT_ID, adsDTO.getCodeSeatId());
                    bundle2.putString("ad_creative_id", adsDTO.getAdCreativeId());
                    bundle2.putString(TrackingKey.SHOW_ID, adsDTO.getUuid());
                    Boolean preloadEnable = adsDTO.getPreloadEnable();
                    Intrinsics.g(preloadEnable, "getPreloadEnable(...)");
                    bundle2.putInt("preload_enable", preloadEnable.booleanValue() ? 1 : 0);
                    bundle2.putInt("preload_status", adsDTO.getPreloadStatus());
                } catch (Throwable unused2) {
                }
            }
            if (!z10) {
                if (list != null && (!list.isEmpty())) {
                    bundle2.putString("s_landing_router", GsonUtil.d(list));
                }
                if (list2 != null && (!list2.isEmpty())) {
                    bundle2.putString("s_landing_ges_router", GsonUtil.d(list2));
                }
            }
            bundle2.putInt("s_landing_complete", Intrinsics.c(bool, Boolean.TRUE) ? 1 : 0);
            if (l10 != null) {
                if ((l10.longValue() != 0 ? l10 : null) != null) {
                    bundle2.putLong("s_landing_stay_time", l10.longValue());
                }
            }
            if (z11) {
                bundle2.putInt("s_landing_nav_finish", 1);
            }
            AthenaTracker.a.Y(bundle2);
        } catch (Throwable unused3) {
        }
    }

    private final void Y(String str) {
        if (str != null) {
            try {
                if (str.length() > 0) {
                    f21372e.remove(str);
                }
            } catch (Throwable unused) {
            }
        }
    }

    private final boolean r() {
        return ((Boolean) f21371d.getValue()).booleanValue();
    }

    private final boolean u(String str) {
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

    private final Bundle v(p3 p3Var, int i10) {
        String strN;
        if (p3Var != null) {
            try {
                strN = p3Var.n();
            } catch (Throwable unused) {
                return new Bundle();
            }
        } else {
            strN = null;
        }
        Bundle bundleK = f0.k(p(strN));
        if (i10 == 0) {
            w(bundleK);
        } else {
            w(bundleK);
        }
        return bundleK;
    }

    private final void w(Bundle bundle) {
        try {
            int i10 = bundle.getInt("s_online_status");
            if (i10 == 2) {
                String string = bundle.getString("s_online_failed_reason_v2");
                int i11 = bundle.getInt("s_ma_d_s", 0);
                TaErrorCode taErrorCode = TaErrorCode.ERROR_ONLINE_NEW_REQUEST_TIMEOUT;
                if (Intrinsics.c(string, String.valueOf(taErrorCode.getErrorCode()))) {
                    if (i11 == 1) {
                        f0.g(bundle, "temp_online_failed_code", "5032");
                        return;
                    } else {
                        f0.g(bundle, "temp_online_failed_code", String.valueOf(taErrorCode.getErrorCode()));
                        return;
                    }
                }
                if (i11 != 3) {
                    f0.g(bundle, "temp_online_failed_code", string);
                    return;
                }
                f0.g(bundle, "temp_online_failed_code", "5029_" + string);
                return;
            }
            if (i10 != 1) {
                String string2 = bundle.getString("s_req_chs");
                if (string2 == null || !StringsKt.c0(string2, "2", false, 2, null)) {
                    int i12 = bundle.getInt("temp_online_without_req", -1);
                    if (i12 != -1) {
                        f0.g(bundle, "temp_online_failed_code", String.valueOf(i12));
                    }
                    f0.i(bundle, "temp_online_without_req");
                    return;
                }
                boolean z10 = bundle.getBoolean("s_req_timeout", false);
                int i13 = bundle.getInt("s_ma_d_s", 0);
                if (z10) {
                    if (i13 == 1) {
                        f0.g(bundle, "temp_online_failed_code", "5033");
                        return;
                    } else {
                        f0.g(bundle, "temp_online_failed_code", "5025");
                        return;
                    }
                }
                if (i13 == 1) {
                    f0.g(bundle, "temp_online_failed_code", "5030");
                } else {
                    f0.g(bundle, "temp_online_failed_code", "5026");
                }
            }
        } catch (Throwable unused) {
        }
    }

    public final void A(int i10, p3 p3Var, List list, String str, String str2, int i11, long j10, int i12) {
        C(this, i10, p3Var, list, str, str2, i11, j10, i12, false, 256, null);
    }

    public final void B(final int i10, final p3 p3Var, List list, final String str, final String str2, final int i11, final long j10, final int i12, final boolean z10) {
        try {
            final ArrayList arrayList = new ArrayList();
            if (list != null) {
                arrayList.addAll(list);
            }
            k7.b.c(new Runnable() {
                @Override
                public final void run() {
                    SSPTrackingHelper.D(p3Var, i10, i12, z10, arrayList, j10, str, str2, i11);
                }
            });
        } catch (Throwable unused) {
        }
    }

    public final void E(final p3 fetchInfo, final String str, final String str2) {
        Intrinsics.h(fetchInfo, "fetchInfo");
        try {
            k7.b.c(new Runnable() {
                @Override
                public final void run() {
                    SSPTrackingHelper.F(fetchInfo, str, str2);
                }
            });
        } catch (Throwable unused) {
        }
    }

    public final void G(final p3 p3Var, final List list, final long j10, final boolean z10) {
        try {
            k7.b.c(new Runnable() {
                @Override
                public final void run() {
                    SSPTrackingHelper.H(p3Var, list, j10, z10);
                }
            });
        } catch (Throwable unused) {
        }
    }

    public final void I(final p3 p3Var, final List list) {
        try {
            k7.b.c(new Runnable() {
                @Override
                public final void run() {
                    SSPTrackingHelper.J(p3Var, list);
                }
            });
        } catch (Throwable unused) {
        }
    }

    public final void K(final Integer num, final AdsDTO adsDTO, final Bundle bundle, final ArrayList arrayList) {
        Intrinsics.h(bundle, "bundle");
        k7.b.c(new Runnable() {
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
        k7.b.c(new Runnable() {
            @Override
            public final void run() {
                SSPTrackingHelper.P(num, str, str2, adsDTO, bundle);
            }
        });
    }

    public final void Q(final Integer num, final AdsDTO adsDTO, final Long l10, final Long l11, final Boolean bool, final String str, final Boolean bool2, final Bundle bundle) {
        k7.b.c(new Runnable() {
            @Override
            public final void run() {
                SSPTrackingHelper.R(num, adsDTO, l11, bool2, bool, str, l10, bundle);
            }
        });
    }

    public final void S(final Integer num, final AdsDTO adsDTO, final Long l10, final Long l11, final Long l12, final Boolean bool, final String str, final Boolean bool2, final Bundle bundle) {
        k7.b.c(new Runnable() {
            @Override
            public final void run() {
                SSPTrackingHelper.T(num, adsDTO, l11, bool2, bool, str, l10, l12, bundle);
            }
        });
    }

    public final void U(final int i10, final p3 p3Var, final TaErrorCode taErrorCode, final Bundle bundle) {
        k7.b.c(new Runnable() {
            @Override
            public final void run() {
                SSPTrackingHelper.V(bundle, p3Var, i10, taErrorCode);
            }
        });
    }

    public final void W(final Integer num, final List list, final List list2, final AdsDTO adsDTO, final WebPageBean webPageBean, final boolean z10, final boolean z11, final Long l10, final Boolean bool, final Bundle bundle) {
        k7.b.c(new Runnable() {
            @Override
            public final void run() {
                SSPTrackingHelper.X(webPageBean, adsDTO, z11, list, list2, bool, l10, z10, bundle, num);
            }
        });
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
        ConfigTotalDTO.ExtInfo extInfoM;
        try {
            g1 g1VarO = g1.o();
            boolean z10 = !((g1VarO == null || (extInfoM = g1VarO.m()) == null) ? true : extInfoM.isEnableClientSampling()) || r() || u(str);
            if (!z10) {
                b4.b().d("SSPTrackingHelper", "eventName -> " + str + " reporting not allowed");
            }
            return z10;
        } catch (Throwable unused) {
            return true;
        }
    }

    public final boolean l(String str, String str2) {
        Object objM453constructorimpl;
        boolean z10;
        ArrayList<String> trackEvent;
        try {
            Result.Companion companion = Result.INSTANCE;
            ABTest aBTestData = CustomConfigManager.getABTestData(str);
            if (aBTestData != null && (trackEvent = aBTestData.getTrackEvent()) != null && !trackEvent.isEmpty()) {
                Iterator<T> it = trackEvent.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        z10 = false;
                        break;
                    }
                    if (Intrinsics.c((String) it.next(), str2)) {
                        z10 = true;
                        break;
                    }
                }
            } else {
                z10 = false;
                break;
            }
            objM453constructorimpl = Result.m453constructorimpl(Boolean.valueOf(z10));
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        Boolean bool = Boolean.FALSE;
        if (Result.m459isFailureimpl(objM453constructorimpl)) {
            objM453constructorimpl = bool;
        }
        return ((Boolean) objM453constructorimpl).booleanValue();
    }

    public final AdsDTO m(F f10) {
        List listS;
        if (f10 == null || (listS = f10.s()) == null) {
            return null;
        }
        return (AdsDTO) CollectionsKt.k0(listS);
    }

    public final long n() {
        Object objM453constructorimpl;
        ConfigTotalDTO.ExtInfo extInfoM;
        try {
            Result.Companion companion = Result.INSTANCE;
            g1 g1VarO = g1.o();
            objM453constructorimpl = Result.m453constructorimpl(Long.valueOf((g1VarO == null || (extInfoM = g1VarO.m()) == null) ? 0L : extInfoM.getAdReqInterval()));
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        if (Result.m456exceptionOrNullimpl(objM453constructorimpl) != null) {
            objM453constructorimpl = 0L;
        }
        return ((Number) objM453constructorimpl).longValue();
    }

    public final String o(F f10) {
        p3 p3VarP;
        String strI = (f10 == null || (p3VarP = f10.p()) == null) ? null : p3VarP.i();
        return strI == null ? "" : strI;
    }

    public final ConcurrentHashMap p(String str) {
        Object objM453constructorimpl;
        ConcurrentHashMap concurrentHashMap;
        try {
            Result.Companion companion = Result.INSTANCE;
            if (str == null || str.length() == 0) {
                str = null;
            }
            if (str != null) {
                Map fillingTrackingMap = f21372e;
                Intrinsics.g(fillingTrackingMap, "fillingTrackingMap");
                synchronized (fillingTrackingMap) {
                    concurrentHashMap = (ConcurrentHashMap) fillingTrackingMap.get(str);
                    if (concurrentHashMap == null) {
                        concurrentHashMap = new ConcurrentHashMap();
                        Intrinsics.g(fillingTrackingMap, "fillingTrackingMap");
                        fillingTrackingMap.put(str, concurrentHashMap);
                    }
                }
            } else {
                concurrentHashMap = new ConcurrentHashMap();
                b4.b().d("SSPTrackingHelper", Log.getStackTraceString(new Throwable("getFillingTrackingBundle: triggerId is empty")));
            }
            objM453constructorimpl = Result.m453constructorimpl(concurrentHashMap);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        if (Result.m456exceptionOrNullimpl(objM453constructorimpl) != null) {
            objM453constructorimpl = new ConcurrentHashMap();
        }
        return (ConcurrentHashMap) objM453constructorimpl;
    }

    public final String q(F f10) {
        p3 p3VarP;
        String strN = (f10 == null || (p3VarP = f10.p()) == null) ? null : p3VarP.n();
        return strN == null ? "" : strN;
    }

    public final String s(String urlString) {
        Object objM453constructorimpl;
        Intrinsics.h(urlString, "urlString");
        try {
            Result.Companion companion = Result.INSTANCE;
            Uri uri = Uri.parse(urlString);
            Intrinsics.g(uri, "parse(this)");
            objM453constructorimpl = Result.m453constructorimpl(uri.buildUpon().clearQuery().fragment(null).build().toString());
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        if (Result.m456exceptionOrNullimpl(objM453constructorimpl) != null) {
            objM453constructorimpl = "";
        }
        return (String) objM453constructorimpl;
    }

    public final boolean t() {
        ConfigTotalDTO.ExtInfo extInfoM;
        try {
            g1 g1VarO = g1.o();
            int clientSamplingRatio = (g1VarO == null || (extInfoM = g1VarO.m()) == null) ? 10 : extInfoM.getClientSamplingRatio();
            if (clientSamplingRatio == 100) {
                return true;
            }
            if (AthenaTracker.f21365b || f21370c != clientSamplingRatio) {
                f21369b = AthenaTracker.n(com.cloud.sdk.commonutil.util.e.a(), clientSamplingRatio);
                f21370c = clientSamplingRatio;
            }
            return f21369b;
        } catch (Throwable unused) {
            return false;
        }
    }

    public final void x(List list, p3 p3Var) {
        int source;
        if (list != null) {
            try {
                if (!list.isEmpty() && list.size() > 1 && (source = ((AdsDTO) CollectionsKt.i0(list)).getSource()) != 2 && source != 1 && !list.isEmpty()) {
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        AdsDTO adsDTO = (AdsDTO) it.next();
                        if (adsDTO.getSource() == 2 || adsDTO.getSource() == 1) {
                            f0.h(p(p3Var != null ? p3Var.n() : null), "s_online_failed_reason_v2", "5031");
                            return;
                        }
                    }
                }
            } catch (Throwable unused) {
            }
        }
    }

    public final void y(int i10, Bundle bundle, int i11) {
        String str;
        if (i10 != 1) {
            str = i10 != 2 ? "" : "s_click_pkg_f_r";
        } else {
            str = "s_click_dp_f_r";
        }
        if (str.length() <= 0 || bundle == null) {
            return;
        }
        bundle.putInt(str, i11);
    }

    public final void z(String str, String str2) {
        try {
            ConcurrentHashMap concurrentHashMapP = p(str);
            String strA = f0.a(concurrentHashMapP, "s_req_chs");
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
            f0.h(concurrentHashMapP, "s_req_chs", str2);
        } catch (Throwable unused) {
        }
    }
}
