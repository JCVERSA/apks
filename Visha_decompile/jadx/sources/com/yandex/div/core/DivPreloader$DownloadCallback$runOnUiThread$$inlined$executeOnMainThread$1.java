package com.yandex.div.core;

import defpackage.c74;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0004\u0010\u0004\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002¨\u0006\u0003"}, d2 = {"Lzfb;", "run", "()V", "com/yandex/div/internal/util/UiThreadHandler$executeOnMainThread$1", "<anonymous>"}, k = 3, mv = {1, 8, 0})
public final class DivPreloader$DownloadCallback$runOnUiThread$$inlined$executeOnMainThread$1 implements Runnable {
    final c74 $action;

    public DivPreloader$DownloadCallback$runOnUiThread$$inlined$executeOnMainThread$1(c74 c74Var) {
        this.$action = c74Var;
    }

    @Override
    public final void run() {
        this.$action.invoke();
    }
}
