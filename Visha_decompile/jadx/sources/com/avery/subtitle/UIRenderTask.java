package com.avery.subtitle;

import defpackage.gf;
import defpackage.m2a;

public class UIRenderTask implements Runnable {
    private b.a mOnSubtitleChangeListener;
    private m2a mSubtitle;

    public UIRenderTask(b.a aVar) {
        this.mOnSubtitleChangeListener = aVar;
    }

    public void execute(m2a m2aVar) {
        this.mSubtitle = m2aVar;
        gf.h().execute(this);
    }

    @Override
    public void run() {
        b.a aVar = this.mOnSubtitleChangeListener;
        if (aVar != null) {
            aVar.onSubtitleChanged(this.mSubtitle);
        }
    }
}
