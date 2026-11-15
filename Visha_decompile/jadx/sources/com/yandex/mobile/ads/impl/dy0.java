package com.yandex.mobile.ads.impl;

import com.monetization.ads.mediation.base.MediatedAdapterInfo;
import defpackage.abb;
import defpackage.y45;
import java.util.Map;
import kotlin.Pair;

public final class dy0 {
    public static Map a(tx0 tx0Var) {
        y45.j(tx0Var, "mediatedAdData");
        MediatedAdapterInfo mediatedAdapterInfoB = tx0Var.b();
        String adapterVersion = mediatedAdapterInfoB.getAdapterVersion();
        if (adapterVersion == null) {
            adapterVersion = "null";
        }
        Pair pairA = abb.a("mediation_adapter_version", adapterVersion);
        String networkName = mediatedAdapterInfoB.getNetworkName();
        if (networkName == null) {
            networkName = "null";
        }
        Pair pairA2 = abb.a("mediation_network_name", networkName);
        String networkSdkVersion = mediatedAdapterInfoB.getNetworkSdkVersion();
        return kotlin.collections.a.p(pairA, pairA2, abb.a("mediation_network_sdk_version", networkSdkVersion != null ? networkSdkVersion : "null"));
    }
}
