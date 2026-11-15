package com.cloud.hisavana.abtestkit;

import android.content.Context;
import android.util.Log;
import com.cloud.hisavana.abtestkit.bean.ABLayerInfo;
import com.cloud.hisavana.abtestkit.bean.ABVariantState;
import com.cloud.hisavana.abtestkit.bean.OnlineABLayerDTO;
import defpackage.e7d;
import defpackage.g1a;
import defpackage.ja1;
import defpackage.l3d;
import defpackage.lhd;
import defpackage.sad;
import defpackage.ul4;
import defpackage.y45;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J!\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0007¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\r\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000bH\u0007¢\u0006\u0004\b\r\u0010\u000eJ-\u0010\u0014\u001a\u00020\u00132\b\u0010\u000f\u001a\u0004\u0018\u00010\u000b2\b\u0010\u0010\u001a\u0004\u0018\u00010\u000b2\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0007¢\u0006\u0004\b\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\bH\u0007¢\u0006\u0004\b\u0016\u0010\u0003¨\u0006\u0017"}, d2 = {"Lcom/cloud/hisavana/abtestkit/ABTestKit;", "", MethodDecl.initName, "()V", "Landroid/content/Context;", "context", "Lcom/cloud/hisavana/abtestkit/ABTestKitConfig;", "config", "Lzfb;", "init", "(Landroid/content/Context;Lcom/cloud/hisavana/abtestkit/ABTestKitConfig;)V", "", "interval", "updateHttpRequestTimeInterval", "(J)V", "layerId", "localRequestInterval", "", "layerSwitchStatus", "Lcom/cloud/hisavana/abtestkit/bean/ABVariantState;", "getABTestVariant", "(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)Lcom/cloud/hisavana/abtestkit/bean/ABVariantState;", "deleteTable", "abtestkit_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ABTestKit {
    public static final ABTestKit INSTANCE = new ABTestKit();
    public static ABTestKitConfig a;

    public static final void deleteTable() {
        l3d.a();
    }

    public static final ABVariantState getABTestVariant(Long layerId, Long localRequestInterval, String layerSwitchStatus) {
        ConcurrentHashMap concurrentHashMap;
        ABLayerInfo aBLayerInfo;
        ABTestKitConfig aBTestKitConfig = a;
        if (layerId == null) {
            return new ABVariantState.Closed(8);
        }
        if (layerSwitchStatus == null || layerSwitchStatus.length() == 0) {
            return new ABVariantState.Closed(1);
        }
        if (!g1a.E(layerSwitchStatus, "OPEN", true)) {
            if (g1a.E(layerSwitchStatus, "PUSH_ALL", true)) {
                return ABVariantState.PushAll.INSTANCE;
            }
            return g1a.E(layerSwitchStatus, "CLOSED", true) ? new ABVariantState.Closed(7) : new ABVariantState.Closed(9);
        }
        sad.a(layerId.longValue(), ((localRequestInterval == null && (aBTestKitConfig == null || (localRequestInterval = aBTestKitConfig.getHttpRequestTimeInterval()) == null)) ? 259200L : localRequestInterval.longValue()) * ((long) 1000), aBTestKitConfig);
        AtomicBoolean atomicBoolean = l3d.a;
        OnlineABLayerDTO onlineABLayerDTO = (OnlineABLayerDTO) lhd.a.get(layerId);
        String info = onlineABLayerDTO != null ? onlineABLayerDTO.getInfo() : null;
        if ((info == null || info.length() == 0) && (concurrentHashMap = lhd.b) != null && (aBLayerInfo = (ABLayerInfo) concurrentHashMap.get(layerId)) != null) {
            onlineABLayerDTO = new OnlineABLayerDTO(null, 1, null);
            onlineABLayerDTO.setLayerId(layerId.longValue());
            onlineABLayerDTO.setRequestTime(System.currentTimeMillis());
            onlineABLayerDTO.setAbLayerInfo(aBLayerInfo);
        }
        if (Log.isLoggable("ADSDK", 3)) {
            ja1.Log().i("ABTEST", "ABMemoryCache queryMemoryCacheForLayerId, result = " + onlineABLayerDTO);
        }
        ABVariantState aBVariantStateA = e7d.a(onlineABLayerDTO != null ? onlineABLayerDTO.getAbLayerInfo() : null);
        if (Log.isLoggable("ADSDK", 3)) {
            ja1.Log().i("ABTEST", "ABChecker check, state = " + aBVariantStateA);
        }
        return aBVariantStateA;
    }

    public static final void init(Context context, ABTestKitConfig config) {
        y45.j(context, "context");
        ul4.g(context);
        INSTANCE.getClass();
        if (a != null || config == null) {
            return;
        }
        a = config;
        AtomicBoolean atomicBoolean = l3d.a;
        l3d.b(config.getInitCompleteListener());
    }

    public static final void updateHttpRequestTimeInterval(long interval) {
        ABTestKitConfig aBTestKitConfig = a;
        if (aBTestKitConfig == null) {
            return;
        }
        aBTestKitConfig.setHttpRequestTimeInterval(Long.valueOf(Math.max(1L, interval)));
    }
}
