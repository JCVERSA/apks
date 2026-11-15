package com.transsion.home.viewmodel;

import androidx.p009lifecycle.t0;
import androidx.p009lifecycle.u0;
import com.transsion.home.bean.RankAllData;
import com.transsion.moviedetailapi.bean.Subject;
import java.util.List;
import kotlinx.coroutines.y0;

public final class RankAllViewModel extends t0 {

    private final androidx.p009lifecycle.b0 f44471a = new androidx.p009lifecycle.b0();

    private final androidx.p009lifecycle.b0 f44472b = new androidx.p009lifecycle.b0();

    private int f44473c = 1;

    private final yk.d f44474d = (yk.d) kg.c.f63982e.a().h(yk.d.class);

    private String f44475e;

    private int f44476f;

    private String f44477g;

    public final void m(RankAllData rankAllData) {
        List<Subject> subjects;
        String ops = rankAllData != null ? rankAllData.getOps() : null;
        if (ops == null || ops.length() == 0 || rankAllData == null || (subjects = rankAllData.getSubjects()) == null) {
            return;
        }
        for (Subject subject : subjects) {
            String ops2 = subject.getOps();
            if (ops2 == null || ops2.length() == 0) {
                subject.setOps(ops);
            }
        }
    }

    private final void n(boolean z10) {
        kotlinx.coroutines.k.d(u0.a(this), y0.b(), null, new RankAllViewModel$startRequest$1(z10, this, null), 2, null);
    }

    public final androidx.p009lifecycle.b0 i() {
        return this.f44472b;
    }

    public final androidx.p009lifecycle.b0 j() {
        return this.f44471a;
    }

    public final void k(String str, int i10, String str2) {
        this.f44475e = str;
        this.f44476f = i10;
        this.f44477g = str2;
        this.f44473c = 1;
        n(false);
    }

    public final void l() {
        n(true);
    }
}
