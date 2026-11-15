package com.google.android.material.textfield;

import androidx.annotation.NonNull;

class CustomEndIconDelegate extends EndIconDelegate {
    public CustomEndIconDelegate(@NonNull EndCompoundLayout endCompoundLayout) {
        super(endCompoundLayout);
    }

    @Override
    public void setUp() {
        this.endLayout.setEndIconOnLongClickListener(null);
    }
}
