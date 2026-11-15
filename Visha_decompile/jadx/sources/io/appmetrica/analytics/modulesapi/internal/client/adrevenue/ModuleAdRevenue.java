package io.appmetrica.analytics.modulesapi.internal.client.adrevenue;

import androidx.media3.exoplayer.upstream.CmcdData;
import com.transsion.hubsdk.api.provider.TranSearchIndexablesContract;
import com.transsion.playercommon.vishaapis.gslb.GslbInterceptor;
import java.math.BigDecimal;
import java.util.Currency;
import java.util.Map;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0014\n\u0002\u0010$\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\b\u0018\u00002\u00020\u0001B\u008d\u0001\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\r\u001a\u00020\b\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u000e\u0012\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u0014\u0012\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u0014\u0012\n\b\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u0014\u0012\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010\u0014\u0012\n\b\u0002\u0010%\u001a\u0004\u0018\u00010\u0014\u0012\n\b\u0002\u0010(\u001a\u0004\u0018\u00010\u0014\u0012\u0016\b\u0002\u0010.\u001a\u0010\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u0014\u0018\u00010)\u0012\b\b\u0002\u00104\u001a\u00020/¢\u0006\u0004\b5\u00106R\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0017\u0010\r\u001a\u00020\b8\u0006¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\fR\u0019\u0010\u0013\u001a\u0004\u0018\u00010\u000e8\u0006¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012R\u0019\u0010\u0019\u001a\u0004\u0018\u00010\u00148\u0006¢\u0006\f\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018R\u0019\u0010\u001c\u001a\u0004\u0018\u00010\u00148\u0006¢\u0006\f\n\u0004\b\u001a\u0010\u0016\u001a\u0004\b\u001b\u0010\u0018R\u0019\u0010\u001f\u001a\u0004\u0018\u00010\u00148\u0006¢\u0006\f\n\u0004\b\u001d\u0010\u0016\u001a\u0004\b\u001e\u0010\u0018R\u0019\u0010\"\u001a\u0004\u0018\u00010\u00148\u0006¢\u0006\f\n\u0004\b \u0010\u0016\u001a\u0004\b!\u0010\u0018R\u0019\u0010%\u001a\u0004\u0018\u00010\u00148\u0006¢\u0006\f\n\u0004\b#\u0010\u0016\u001a\u0004\b$\u0010\u0018R\u0019\u0010(\u001a\u0004\u0018\u00010\u00148\u0006¢\u0006\f\n\u0004\b&\u0010\u0016\u001a\u0004\b'\u0010\u0018R%\u0010.\u001a\u0010\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u0014\u0018\u00010)8\u0006¢\u0006\f\n\u0004\b*\u0010+\u001a\u0004\b,\u0010-R\u0017\u00104\u001a\u00020/8\u0006¢\u0006\f\n\u0004\b0\u00101\u001a\u0004\b2\u00103¨\u00067"}, d2 = {"Lio/appmetrica/analytics/modulesapi/internal/client/adrevenue/ModuleAdRevenue;", "", "Ljava/math/BigDecimal;", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "Ljava/math/BigDecimal;", "getAdRevenue", "()Ljava/math/BigDecimal;", "adRevenue", "Ljava/util/Currency;", "b", "Ljava/util/Currency;", "getCurrency", "()Ljava/util/Currency;", "currency", "Lio/appmetrica/analytics/modulesapi/internal/client/adrevenue/ModuleAdType;", "c", "Lio/appmetrica/analytics/modulesapi/internal/client/adrevenue/ModuleAdType;", "getAdType", "()Lio/appmetrica/analytics/modulesapi/internal/client/adrevenue/ModuleAdType;", "adType", "", "d", "Ljava/lang/String;", "getAdNetwork", "()Ljava/lang/String;", "adNetwork", "e", "getAdUnitId", "adUnitId", "f", "getAdUnitName", "adUnitName", GslbInterceptor.HEADER_KEY_GSLB, "getAdPlacementId", "adPlacementId", CmcdData.STREAMING_FORMAT_HLS, "getAdPlacementName", "adPlacementName", CmcdData.OBJECT_TYPE_INIT_SEGMENT, "getPrecision", "precision", "", "j", "Ljava/util/Map;", "getPayload", "()Ljava/util/Map;", TranSearchIndexablesContract.TranRawData.PAYLOAD, "", "k", "Z", "getAutoCollected", "()Z", "autoCollected", MethodDecl.initName, "(Ljava/math/BigDecimal;Ljava/util/Currency;Lio/appmetrica/analytics/modulesapi/internal/client/adrevenue/ModuleAdType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V", "modules-api_release"}, k = 1, mv = {1, 6, 0})
public final class ModuleAdRevenue {

    private final BigDecimal adRevenue;

    private final Currency currency;

    private final ModuleAdType adType;

    private final String adNetwork;

    private final String adUnitId;

    private final String adUnitName;

    private final String adPlacementId;

    private final String adPlacementName;

    private final String precision;

    private final Map payload;

    private final boolean autoCollected;

    public ModuleAdRevenue(BigDecimal bigDecimal, Currency currency, ModuleAdType moduleAdType, String str, String str2, String str3, String str4, String str5, String str6, Map<String, String> map, boolean z) {
        this.adRevenue = bigDecimal;
        this.currency = currency;
        this.adType = moduleAdType;
        this.adNetwork = str;
        this.adUnitId = str2;
        this.adUnitName = str3;
        this.adPlacementId = str4;
        this.adPlacementName = str5;
        this.precision = str6;
        this.payload = map;
        this.autoCollected = z;
    }

    public final String getAdNetwork() {
        return this.adNetwork;
    }

    public final String getAdPlacementId() {
        return this.adPlacementId;
    }

    public final String getAdPlacementName() {
        return this.adPlacementName;
    }

    public final BigDecimal getAdRevenue() {
        return this.adRevenue;
    }

    public final ModuleAdType getAdType() {
        return this.adType;
    }

    public final String getAdUnitId() {
        return this.adUnitId;
    }

    public final String getAdUnitName() {
        return this.adUnitName;
    }

    public final boolean getAutoCollected() {
        return this.autoCollected;
    }

    public final Currency getCurrency() {
        return this.currency;
    }

    public final Map<String, String> getPayload() {
        return this.payload;
    }

    public final String getPrecision() {
        return this.precision;
    }

    public ModuleAdRevenue(BigDecimal bigDecimal, Currency currency, ModuleAdType moduleAdType, String str, String str2, String str3, String str4, String str5, String str6, Map map, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(bigDecimal, currency, (i & 4) != 0 ? null : moduleAdType, (i & 8) != 0 ? null : str, (i & 16) != 0 ? null : str2, (i & 32) != 0 ? null : str3, (i & 64) != 0 ? null : str4, (i & 128) != 0 ? null : str5, (i & 256) != 0 ? null : str6, (i & 512) != 0 ? null : map, (i & 1024) != 0 ? true : z);
    }
}
