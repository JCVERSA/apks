package com.cloud.tmc.integration.structure.ui;

import android.view.View;
import androidx.annotation.Nullable;
import com.cloud.tmc.integration.structure.Page;

public interface TitleBar {
    void attachPage(Page page);

    boolean getAddScreenVisibility();

    View getContent();

    Integer getHomeAction();

    boolean isTransparent();

    void setAddScreenVisibility(boolean z10);

    void setHomeAction(int i10, boolean z10);

    void setHomeVisibility(boolean z10);

    void setOnAddScreenClickListener(View.OnClickListener onClickListener);

    void setOnBackClickListener(View.OnClickListener onClickListener);

    void setOnHomeClickListener(View.OnClickListener onClickListener);

    void setThemeMode(int i10);

    void setTitle(@Nullable String str);

    void setTitleBarVisible(boolean z10);

    void setTitleColor(boolean z10);

    void setTitleVisible(boolean z10);

    void setTransparent(boolean z10);
}
