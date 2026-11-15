package com.yandex.mobile.ads.impl;

import androidx.media3.common.Player;
import defpackage.y45;
import java.util.Iterator;
import java.util.LinkedHashSet;

public final class a70 {
    private final LinkedHashSet a = new LinkedHashSet();
    private Player b;

    public final void a(rl1 rl1Var) {
        y45.j(rl1Var, "listener");
        this.a.add(rl1Var);
    }

    public final boolean b() {
        return this.b != null;
    }

    public final Player a() {
        return this.b;
    }

    public final void a(Player player) {
        this.b = player;
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            ((wi1) it.next()).a(player);
        }
    }
}
