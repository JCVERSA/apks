package com.transsion.wrapperad.view.secondfloor;

import java.util.HashSet;

public final class a implements cm.g {
    @Override
    public HashSet providerParams() {
        HashSet hashSet = new HashSet();
        hashSet.add(CustomSwipeRefreshLayout.KEY_AB_CONFIG);
        hashSet.add("activate_config");
        return hashSet;
    }
}
