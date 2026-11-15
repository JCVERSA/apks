package com.transsion.transfer.wifi.qrcode;

import cm.g;
import java.util.HashSet;

public final class a implements g {
    @Override
    public HashSet providerParams() {
        HashSet hashSet = new HashSet();
        hashSet.add("transfer_share_link_url");
        return hashSet;
    }
}
