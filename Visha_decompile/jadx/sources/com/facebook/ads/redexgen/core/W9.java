package com.facebook.ads.redexgen.core;

import android.content.ActivityNotFoundException;

public final class W9 extends Exception {
    public W9(ActivityNotFoundException activityNotFoundException) {
        super(activityNotFoundException);
    }
}
