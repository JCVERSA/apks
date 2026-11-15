package io.appmetrica.analytics.impl;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Base64;
import android.util.Pair;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import io.appmetrica.analytics.billinginterface.internal.Period;
import io.appmetrica.analytics.billinginterface.internal.ProductInfo;
import io.appmetrica.analytics.billinginterface.internal.ProductType;
import io.appmetrica.analytics.coreapi.internal.event.CounterReportApi;
import io.appmetrica.analytics.coreapi.internal.permission.PermissionState;
import io.appmetrica.analytics.coreutils.internal.collection.CollectionUtils;
import io.appmetrica.analytics.coreutils.internal.time.SystemTimeProvider;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import java.util.Collection;
import java.util.Currency;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONObject;

public class C2408a6 implements CounterReportApi, Parcelable {
    public static final Parcelable.Creator<C2408a6> CREATOR = new Z5();

    @Nullable
    protected String a;

    @Nullable
    protected String b;
    public String c;
    public int d;
    public int e;
    public Pair f;
    public int g;
    public String h;
    public long i;
    public long j;
    public EnumC2661ka k;
    public EnumC2859s9 l;
    public Bundle m;
    public Boolean n;
    public Integer o;
    public Map p;

    public C2408a6() {
        this("", 0);
    }

    public final void a(String str, String str2) {
        if (this.f == null) {
            this.f = new Pair(str, str2);
        }
    }

    @Nullable
    public final Pair<String, String> b() {
        return this.f;
    }

    public final void c(@Nullable Bundle bundle) {
        this.m = bundle;
    }

    public final long d() {
        return this.i;
    }

    @Override
    public final int describeContents() {
        return 0;
    }

    public final long e() {
        return this.j;
    }

    @Nullable
    public final String f() {
        return this.c;
    }

    @NonNull
    public final EnumC2661ka g() {
        return this.k;
    }

    @Override
    public final int getBytesTruncated() {
        return this.g;
    }

    @Override
    public final int getCustomType() {
        return this.e;
    }

    @Override
    @NonNull
    public final Map<String, byte[]> getExtras() {
        return this.p;
    }

    @Override
    @Nullable
    public final String getName() {
        return this.a;
    }

    @Override
    public final int getType() {
        return this.d;
    }

    @Override
    @Nullable
    public final String getValue() {
        return this.b;
    }

    @Override
    @Nullable
    public final byte[] getValueBytes() {
        String str = this.b;
        if (str == null) {
            return null;
        }
        return Base64.decode(str, 0);
    }

    @Nullable
    public final Integer h() {
        return this.o;
    }

    @Nullable
    public final Bundle i() {
        return this.m;
    }

    @Nullable
    public final String j() {
        return this.h;
    }

    @Nullable
    public final EnumC2859s9 k() {
        return this.l;
    }

    public final boolean l() {
        return this.a == null;
    }

    public final boolean m() {
        EnumC2588hb enumC2588hb = EnumC2588hb.EVENT_TYPE_UNDEFINED;
        return -1 == this.d;
    }

    @Override
    public final void setBytesTruncated(int i) {
        this.g = i;
    }

    @Override
    public final void setCustomType(int i) {
        this.e = i;
    }

    @Override
    public final void setExtras(@NonNull Map<String, byte[]> map) {
        this.p = map;
    }

    @Override
    public void setName(@Nullable String str) {
        this.a = str;
    }

    @Override
    public final void setType(int i) {
        this.d = i;
    }

    @Override
    public void setValue(@Nullable String str) {
        this.b = str;
    }

    @Override
    public void setValueBytes(@Nullable byte[] bArr) {
        this.b = bArr == null ? null : new String(Base64.encode(bArr, 0));
    }

    @NonNull
    public final String toString() {
        Locale locale = Locale.US;
        String str = this.a;
        String str2 = EnumC2588hb.a(this.d).b;
        String strSubstring = this.b;
        if (strSubstring == null) {
            strSubstring = null;
        } else if (strSubstring.length() > 500) {
            strSubstring = strSubstring.substring(0, 500);
        }
        return String.format(locale, "[event: %s, type: %s, value: %s]", str, str2, strSubstring);
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i) {
        Bundle bundle = new Bundle();
        bundle.putString("CounterReport.Event", this.a);
        bundle.putString("CounterReport.Value", this.b);
        bundle.putInt("CounterReport.Type", this.d);
        bundle.putInt("CounterReport.CustomType", this.e);
        bundle.putInt("CounterReport.TRUNCATED", this.g);
        bundle.putString("CounterReport.ProfileID", this.h);
        bundle.putInt("CounterReport.UniquenessStatus", this.k.a);
        Bundle bundle2 = this.m;
        if (bundle2 != null) {
            bundle.putParcelable("CounterReport.Payload", bundle2);
        }
        String str = this.c;
        if (str != null) {
            bundle.putString("CounterReport.Environment", str);
        }
        Pair pair = this.f;
        if (pair != null) {
            bundle.putString("CounterReport.AppEnvironmentDiffKey", (String) pair.first);
            bundle.putString("CounterReport.AppEnvironmentDiffValue", (String) pair.second);
        }
        bundle.putLong("CounterReport.CreationElapsedRealtime", this.i);
        bundle.putLong("CounterReport.CreationTimestamp", this.j);
        EnumC2859s9 enumC2859s9 = this.l;
        if (enumC2859s9 != null) {
            bundle.putInt("CounterReport.Source", enumC2859s9.a);
        }
        Boolean bool = this.n;
        if (bool != null) {
            bundle.putBoolean("CounterReport.AttributionIdChanged", bool.booleanValue());
        }
        Integer num = this.o;
        if (num != null) {
            bundle.putInt("CounterReport.OpenId", num.intValue());
        }
        bundle.putBundle("CounterReport.Extras", CollectionUtils.mapToBundle(this.p));
        parcel.writeBundle(bundle);
    }

    public C2408a6(@Nullable String str, int i) {
        this("", str, i);
    }

    @NonNull
    public static C2408a6 e(@NonNull C2408a6 c2408a6) {
        return a(c2408a6, EnumC2588hb.EVENT_TYPE_APP_UPDATE);
    }

    public final void b(@Nullable String str) {
        this.c = str;
    }

    public void c(@Nullable String str) {
        this.h = str;
    }

    @NonNull
    public final Bundle d(Bundle bundle) {
        if (bundle == null) {
            bundle = new Bundle();
        }
        bundle.putParcelable("CounterReport.Object", this);
        return bundle;
    }

    public C2408a6(@Nullable String str, @Nullable String str2, int i) {
        this(str, str2, i, new SystemTimeProvider());
    }

    public final void a(long j) {
        this.i = j;
    }

    public final void b(long j) {
        this.j = j;
    }

    @Nullable
    public final Boolean c() {
        return this.n;
    }

    @VisibleForTesting
    public C2408a6(@Nullable String str, @Nullable String str2, int i, @NonNull SystemTimeProvider systemTimeProvider) {
        this.k = EnumC2661ka.UNKNOWN;
        this.p = new HashMap();
        this.a = str2;
        this.d = i;
        this.b = str;
        this.i = systemTimeProvider.elapsedRealtime();
        this.j = systemTimeProvider.currentTimeMillis();
    }

    @NonNull
    public static C2408a6 b(@Nullable Bundle bundle) {
        if (bundle != null) {
            try {
                C2408a6 c2408a6 = (C2408a6) bundle.getParcelable("CounterReport.Object");
                if (c2408a6 != null) {
                    return c2408a6;
                }
            } catch (Throwable unused) {
                return new C2408a6("", 0);
            }
        }
        return new C2408a6("", 0);
    }

    @NonNull
    public static C2408a6 c(@NonNull C2408a6 c2408a6) {
        return a(c2408a6, EnumC2588hb.EVENT_TYPE_INIT);
    }

    @NonNull
    public static C2408a6 d(@NonNull C2408a6 c2408a6) {
        C2408a6 c2408a7 = new C2408a6("", 0);
        c2408a7.j = c2408a6.j;
        c2408a7.i = c2408a6.i;
        c2408a7.f = c2408a6.f;
        c2408a7.c = c2408a6.c;
        c2408a7.m = c2408a6.m;
        c2408a7.p = c2408a6.p;
        c2408a7.h = c2408a6.h;
        return c2408a7;
    }

    public final void a(@NonNull EnumC2661ka enumC2661ka) {
        this.k = enumC2661ka;
    }

    public final void a(@Nullable EnumC2859s9 enumC2859s9) {
        this.l = enumC2859s9;
    }

    public final void a(@Nullable Boolean bool) {
        this.n = bool;
    }

    public final void a(@Nullable Integer num) {
        this.o = num;
    }

    public static Pair a(Bundle bundle) {
        if (bundle.containsKey("CounterReport.AppEnvironmentDiffKey") && bundle.containsKey("CounterReport.AppEnvironmentDiffValue")) {
            return new Pair(bundle.getString("CounterReport.AppEnvironmentDiffKey"), bundle.getString("CounterReport.AppEnvironmentDiffValue"));
        }
        return null;
    }

    @NonNull
    public static C2408a6 b(@NonNull C2408a6 c2408a6) {
        return a(c2408a6, EnumC2588hb.EVENT_TYPE_FIRST_ACTIVATION);
    }

    public static C2408a6 a(C2408a6 c2408a6, EnumC2588hb enumC2588hb) {
        C2408a6 c2408a6D = d(c2408a6);
        c2408a6D.d = enumC2588hb.a;
        return c2408a6D;
    }

    @NonNull
    public static C2408a6 a(@NonNull C2408a6 c2408a6) {
        return a(c2408a6, EnumC2588hb.EVENT_TYPE_ALIVE);
    }

    @NonNull
    public static C2408a6 a(@NonNull C2408a6 c2408a6, @NonNull T9 t9) {
        C2408a6 c2408a6A = a(c2408a6, EnumC2588hb.EVENT_TYPE_START);
        c2408a6A.setValueBytes(MessageNano.toByteArray(new C2934v9().fromModel(new C2909u9((String) t9.b.a()))));
        c2408a6A.j = c2408a6.j;
        c2408a6A.i = c2408a6.i;
        return c2408a6A;
    }

    @NonNull
    public static C2408a6 a(@NonNull C2408a6 c2408a6, @NonNull Collection<PermissionState> collection, @Nullable H2 h2, @NonNull C2554g2 c2554g2, @NonNull List<String> list) {
        String string;
        String str;
        C2408a6 c2408a6D = d(c2408a6);
        try {
            JSONArray jSONArray = new JSONArray();
            for (PermissionState permissionState : collection) {
                jSONArray.put(new JSONObject().put("name", permissionState.name).put("granted", permissionState.granted));
            }
            JSONObject jSONObject = new JSONObject();
            if (h2 != null) {
                jSONObject.put("background_restricted", h2.b);
                G2 g2 = h2.a;
                c2554g2.getClass();
                if (g2 != null) {
                    int iOrdinal = g2.ordinal();
                    if (iOrdinal == 0) {
                        str = "ACTIVE";
                    } else if (iOrdinal == 1) {
                        str = "WORKING_SET";
                    } else if (iOrdinal == 2) {
                        str = "FREQUENT";
                    } else if (iOrdinal == 3) {
                        str = "RARE";
                    } else if (iOrdinal == 4) {
                        str = "RESTRICTED";
                    }
                    jSONObject.put("app_standby_bucket", str);
                }
                str = null;
                jSONObject.put("app_standby_bucket", str);
            }
            string = new JSONObject().put("permissions", jSONArray).put("background_restrictions", jSONObject).put("available_providers", new JSONArray((Collection) list)).toString();
        } catch (Throwable unused) {
            string = "";
        }
        EnumC2588hb enumC2588hb = EnumC2588hb.EVENT_TYPE_UNDEFINED;
        c2408a6D.d = 12288;
        c2408a6D.setValue(string);
        return c2408a6D;
    }

    @NonNull
    public static C2408a6 a(@NonNull C2408a6 c2408a6, @Nullable String str) {
        C2408a6 c2408a6D = d(c2408a6);
        EnumC2588hb enumC2588hb = EnumC2588hb.EVENT_TYPE_UNDEFINED;
        c2408a6D.d = 12289;
        c2408a6D.setValue(str);
        return c2408a6D;
    }

    @NonNull
    public static C2408a6 a() {
        C2408a6 c2408a6 = new C2408a6("", 0);
        EnumC2588hb enumC2588hb = EnumC2588hb.EVENT_TYPE_UNDEFINED;
        c2408a6.d = 16384;
        return c2408a6;
    }

    @NonNull
    public static C2408a6 a(@NonNull C2890tf c2890tf) {
        int i;
        String currencyCode = "";
        int i2 = 0;
        C2408a6 c2408a6 = new C2408a6("", "", 0);
        EnumC2588hb enumC2588hb = EnumC2588hb.EVENT_TYPE_UNDEFINED;
        c2408a6.d = 40976;
        ProductInfo productInfo = c2890tf.a;
        Ci ci = new Ci();
        ci.a = productInfo.quantity;
        ci.f = productInfo.priceMicros;
        try {
            currencyCode = Currency.getInstance(productInfo.priceCurrency).getCurrencyCode();
        } catch (Throwable unused) {
        }
        ci.b = currencyCode.getBytes();
        ci.c = productInfo.sku.getBytes();
        C2993xi c2993xi = new C2993xi();
        c2993xi.a = productInfo.purchaseOriginalJson.getBytes();
        c2993xi.b = productInfo.signature.getBytes();
        ci.e = c2993xi;
        ci.g = true;
        ci.h = 1;
        ci.i = AbstractC2865sf.a[productInfo.type.ordinal()] != 2 ? 1 : 2;
        Bi bi = new Bi();
        bi.a = productInfo.purchaseToken.getBytes();
        bi.b = TimeUnit.MILLISECONDS.toSeconds(productInfo.purchaseTime);
        ci.j = bi;
        if (productInfo.type == ProductType.SUBS) {
            Ai ai = new Ai();
            ai.a = productInfo.autoRenewing;
            Period period = productInfo.subscriptionPeriod;
            if (period != null) {
                C3043zi c3043zi = new C3043zi();
                c3043zi.a = period.number;
                int i3 = AbstractC2865sf.b[period.timeUnit.ordinal()];
                if (i3 == 1) {
                    i = 1;
                } else if (i3 == 2) {
                    i = 2;
                } else if (i3 != 3) {
                    i = i3 != 4 ? 0 : 4;
                } else {
                    i = 3;
                }
                c3043zi.b = i;
                ai.b = c3043zi;
            }
            C3018yi c3018yi = new C3018yi();
            c3018yi.a = productInfo.introductoryPriceMicros;
            Period period2 = productInfo.introductoryPricePeriod;
            if (period2 != null) {
                C3043zi c3043zi2 = new C3043zi();
                c3043zi2.a = period2.number;
                int i4 = AbstractC2865sf.b[period2.timeUnit.ordinal()];
                if (i4 == 1) {
                    i2 = 1;
                } else if (i4 == 2) {
                    i2 = 2;
                } else if (i4 == 3) {
                    i2 = 3;
                } else if (i4 == 4) {
                    i2 = 4;
                }
                c3043zi2.b = i2;
                c3018yi.b = c3043zi2;
            }
            c3018yi.c = productInfo.introductoryPriceCycles;
            ai.c = c3018yi;
            ci.k = ai;
        }
        c2408a6.setValueBytes(MessageNano.toByteArray(ci));
        return c2408a6;
    }

    @NonNull
    public static C2408a6 a(@NonNull String str) {
        C2408a6 c2408a6 = new C2408a6("", 0);
        EnumC2588hb enumC2588hb = EnumC2588hb.EVENT_TYPE_UNDEFINED;
        c2408a6.d = 12320;
        c2408a6.b = str;
        c2408a6.l = EnumC2859s9.JS;
        return c2408a6;
    }
}
