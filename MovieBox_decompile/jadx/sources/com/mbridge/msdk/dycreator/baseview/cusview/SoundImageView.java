package com.mbridge.msdk.dycreator.baseview.cusview;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ImageView;
import com.mbridge.msdk.foundation.tools.g0;

public class SoundImageView extends ImageView {

    private boolean f33811a;

    public SoundImageView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f33811a = true;
    }

    public boolean getStatus() {
        return this.f33811a;
    }

    public void setSoundStatus(boolean z10) {
        this.f33811a = z10;
        if (z10) {
            setImageResource(g0.a(getContext(), "mbridge_reward_sound_open", "drawable"));
        } else {
            setImageResource(g0.a(getContext(), "mbridge_reward_sound_close", "drawable"));
        }
    }

    public SoundImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f33811a = true;
    }

    public SoundImageView(Context context) {
        super(context);
        this.f33811a = true;
    }
}
