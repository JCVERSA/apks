package defpackage;

import android.util.Log;
import com.cloud.hisavana.abtestkit.bean.ABLayerInfo;
import com.cloud.hisavana.abtestkit.bean.ABSubExpInfo;
import com.cloud.hisavana.abtestkit.bean.ABVariant;
import com.cloud.hisavana.abtestkit.bean.ABVariantState;
import com.cloud.sdk.commonutil.util.DeviceUtil;
import com.google.common.hash.a;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

public abstract class e7d {
    public static final eo4 a;

    static {
        eo4 eo4VarB = a.b(0);
        y45.i(eo4VarB, "murmur3_128(...)");
        a = eo4VarB;
    }

    public static final ABVariantState a(ABLayerInfo aBLayerInfo) {
        List<ABSubExpInfo> subExps;
        List<Long> buckets;
        String strF = DeviceUtil.f();
        if (strF == null || strF.length() == 0) {
            ja1.Log().d("ABTEST", "ABChecker check fail, gaid is empty");
            return new ABVariantState.Closed(2);
        }
        if (aBLayerInfo == null || (subExps = aBLayerInfo.getSubExps()) == null || subExps.isEmpty()) {
            ja1.Log().d("ABTEST", "ABChecker check fail, abLayerInfo is null or subExps is empty");
            return new ABVariantState.Closed(3);
        }
        Map<String, Long> whiteList = aBLayerInfo.getWhiteList();
        boolean zContainsKey = whiteList != null ? whiteList.containsKey(DeviceUtil.f()) : false;
        if (Log.isLoggable("ADSDK", 3)) {
            ja1.Log().i("ABTEST", "ABChecker check, whiteResult = " + zContainsKey);
        }
        if (zContainsKey) {
            Map<String, Long> whiteList2 = aBLayerInfo.getWhiteList();
            Long l = whiteList2 != null ? whiteList2.get(DeviceUtil.f()) : null;
            if (Log.isLoggable("ADSDK", 3)) {
                ja1.Log().i("ABTEST", "ABChecker check, whiteValue = " + l);
            }
            for (ABSubExpInfo aBSubExpInfo : aBLayerInfo.getSubExps()) {
                if (aBSubExpInfo != null && aBSubExpInfo.getVarId() != null && y45.e(aBSubExpInfo.getVarId(), l)) {
                    return new ABVariantState.Open(ABVariant.INSTANCE.initFromSubExpInfo(aBLayerInfo.getLayerId(), aBSubExpInfo));
                }
            }
        }
        if (aBLayerInfo.getProjectId() == null || aBLayerInfo.getLayerId() == null) {
            ja1.Log().d("ABTEST", "ABChecker check fail, projectId is null or layerId is null");
            return new ABVariantState.Closed(4);
        }
        try {
            hz9 hz9Var = hz9.a;
            String str = String.format("%s_%s_%s", Arrays.copyOf(new Object[]{aBLayerInfo.getProjectId(), aBLayerInfo.getLayerId(), DeviceUtil.f()}, 3));
            y45.i(str, "format(...)");
            long jRemainderUnsigned = Long.remainderUnsigned(a.hashString(str, StandardCharsets.UTF_8).asLong(), 1000L);
            if (Log.isLoggable("ADSDK", 3)) {
                ja1.Log().i("ABTEST", "ABChecker check, hashStr = " + str + " and hashVal = " + jRemainderUnsigned);
            }
            for (ABSubExpInfo aBSubExpInfo2 : aBLayerInfo.getSubExps()) {
                if (aBSubExpInfo2 != null && (buckets = aBSubExpInfo2.getBuckets()) != null && !buckets.isEmpty() && aBSubExpInfo2.getBuckets().contains(Long.valueOf(jRemainderUnsigned))) {
                    return new ABVariantState.Open(ABVariant.INSTANCE.initFromSubExpInfo(aBLayerInfo.getLayerId(), aBSubExpInfo2));
                }
            }
            return new ABVariantState.Closed(6);
        } catch (Exception e) {
            ja1.Log().w("ABTEST", "ABChecker check fail, hashStr =  and reason = " + e.getMessage());
            return new ABVariantState.Closed(5);
        }
    }
}
