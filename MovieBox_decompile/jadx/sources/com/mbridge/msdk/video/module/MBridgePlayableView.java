package com.mbridge.msdk.video.module;

import android.content.Context;
import android.util.AttributeSet;
import com.mbridge.msdk.video.signal.factory.b;

public class MBridgePlayableView extends MBridgeH5EndCardView {
    public MBridgePlayableView(Context context) {
        super(context);
    }

    @Override
    protected String getURL() {
        return super.getURL();
    }

    @Override
    public void init(Context context) {
        super.init(context);
    }

    @Override
    public void onBackPress() {
        super.onBackPress();
    }

    @Override
    public void preLoadData(b bVar) {
        super.preLoadData(bVar);
        super.setLoadPlayable(true);
    }

    public MBridgePlayableView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }
}
