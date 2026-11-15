package com.transsion.effectengine.bounceeffect.adapters;

import android.view.View;

public class MiscViewOverScrollDecorAdapter implements z1OoOfor {
    public final View z1OoOdo;

    public MiscViewOverScrollDecorAdapter(View view) {
        this.z1OoOdo = view;
    }

    @Override
    public final View getView() {
        return this.z1OoOdo;
    }

    @Override
    public boolean isInAbsoluteEnd() {
        return true;
    }

    @Override
    public boolean isInAbsoluteStart() {
        return true;
    }
}
