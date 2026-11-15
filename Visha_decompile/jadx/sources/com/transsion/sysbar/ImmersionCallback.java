package com.transsion.sysbar;

import defpackage.ff7;

interface ImmersionCallback extends ff7, Runnable {
    @Override
    void onNavigationBarChange(boolean z, NavigationBarType navigationBarType);
}
