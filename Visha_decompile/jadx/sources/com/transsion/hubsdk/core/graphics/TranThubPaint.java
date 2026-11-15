package com.transsion.hubsdk.core.graphics;

import android.graphics.Paint;
import com.transsion.hubsdk.common.reflect.TranDoorMan;
import com.transsion.hubsdk.graphics.TranPaint;
import com.transsion.hubsdk.interfaces.graphics.ITranPaintAdapter;
import com.transsion.hubsdk.view.TranUnionRenderEffect;

public class TranThubPaint implements ITranPaintAdapter {
    private TranPaint mTranPaint;

    private TranPaint getTranPaintImpl() {
        if (this.mTranPaint == null) {
            this.mTranPaint = new TranPaint();
        }
        return this.mTranPaint;
    }

    @Override
    public void setUnionRenderEffect(Paint paint, Object obj) {
        if (TranDoorMan.getMethod(getTranPaintImpl().getClass(), "setUnionRenderEffect", Paint.class, TranUnionRenderEffect.class) == null) {
            return;
        }
        if (obj == null) {
            getTranPaintImpl().setUnionRenderEffect(paint, (TranUnionRenderEffect) null);
        } else if (obj instanceof TranUnionRenderEffect) {
            getTranPaintImpl().setUnionRenderEffect(paint, (TranUnionRenderEffect) obj);
        }
    }
}
