package com.yandex.mobile.ads.impl;

import com.transsion.dbdata.beans.sniff.SniffSoucreBean;
import defpackage.y45;
import java.util.List;

final class ps implements qs {
    @Override
    public final List<os> a(gi0 gi0Var) {
        y45.j(gi0Var, "url");
        return defpackage.y71.k();
    }

    @Override
    public final void a(gi0 gi0Var, List<os> list) {
        y45.j(gi0Var, "url");
        y45.j(list, SniffSoucreBean.JSON_KEY_COOKIES);
    }
}
