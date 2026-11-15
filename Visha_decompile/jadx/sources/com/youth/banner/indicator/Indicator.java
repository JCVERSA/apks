package com.youth.banner.indicator;

import android.view.View;
import androidx.annotation.NonNull;
import com.youth.banner.config.IndicatorConfig;
import com.youth.banner.listener.OnPageChangeListener;

public interface Indicator extends OnPageChangeListener {
    IndicatorConfig getIndicatorConfig();

    @NonNull
    View getIndicatorView();

    void onPageChanged(int i, int i2);
}
