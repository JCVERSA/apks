package com.transsion.widgetslib.view.liquid.vfx.light;

public enum LightTypeConfig {
    SEARCH_BAR_AUTO(3, 1.0f, 1001, 0.6f),
    SEARCH_BAR_LIGHT(3, 1.0f, 3, 1.0f),
    SEARCH_BAR_NIGHT(1001, 0.6f, 1001, 0.6f),
    BOTTOM_TOOLBAR_AUTO(3, 1.0f, 1001, 0.6f),
    BOTTOM_TOOLBAR_LIGHT(3, 1.0f, 3, 1.0f),
    BOTTOM_TOOLBAR_NIGHT(1001, 0.6f, 1001, 0.6f),
    CAROUSEL_TEXTVIEW_AUTO(3, 1.0f, 1001, 0.6f),
    CAROUSEL_TEXTVIEW_LIGHT(3, 1.0f, 3, 1.0f),
    CAROUSEL_TEXTVIEW_NIGHT(1001, 0.6f, 1001, 0.6f),
    DIALOG_AUTO(1001, 1.0f, 1001, 0.5f),
    DIALOG_LIGHT(1001, 1.0f, 1001, 1.0f),
    DIALOG_NIGHT(1001, 0.5f, 1001, 0.5f),
    TOOLBAR_AUTO(1001, 1.0f, 1001, 0.6f),
    TOOLBAR_LIGHT(1001, 1.0f, 1001, 1.0f),
    TOOLBAR_NIGHT(1001, 0.6f, 1001, 0.6f),
    POPUP_WINDOW_AUTO(1001, 1.0f, 1001, 0.6f),
    POPUP_WINDOW_LIGHT(1001, 1.0f, 1001, 1.0f),
    POPUP_WINDOW_NIGHT(1001, 0.6f, 1001, 0.6f),
    BIG_BUTTON_AUTO(1001, 1.0f, 1001, 0.6f),
    BIG_BUTTON_LIGHT(1001, 1.0f, 1001, 1.0f),
    BIG_BUTTON_NIGHT(1001, 0.6f, 1001, 0.6f),
    BUTTON_AUTO(1001, 1.0f, 1001, 0.6f),
    BUTTON_LIGHT(1001, 1.0f, 1001, 1.0f),
    BUTTON_NIGHT(1001, 0.6f, 1001, 0.6f),
    TEXT_BUTTON_AUTO(1001, 1.0f, 1001, 0.6f),
    TEXT_BUTTON_LIGHT(1001, 1.0f, 1001, 1.0f),
    TEXT_BUTTON_NIGHT(1001, 0.6f, 1001, 0.6f),
    FOB_AUTO(1001, 1.0f, 1001, 0.6f),
    FOB_LIGHT(1001, 1.0f, 1001, 1.0f),
    FOB_NIGHT(1001, 0.6f, 1001, 0.6f),
    SEGMENTED_TAB_AUTO(1001, 1.0f, 1001, 0.6f),
    SEGMENTED_TAB_LIGHT(1001, 1.0f, 1001, 1.0f),
    SEGMENTED_TAB_NIGHT(1001, 0.6f, 1001, 0.6f),
    FOOT_OPERATION_BAR_AUTO(1001, 1.0f, 1001, 0.6f),
    FOOT_OPERATION_BAR_LIGHT(1001, 1.0f, 1001, 1.0f),
    FOOT_OPERATION_BAR_NIGHT(1001, 0.6f, 1001, 0.6f),
    WIDGET_TOOLBAR_AUTO(1001, 1.0f, 1001, 0.6f),
    WIDGET_TOOLBAR_LIGHT(1001, 1.0f, 1001, 1.0f),
    WIDGET_TOOLBAR_NIGHT(1001, 0.6f, 1001, 0.6f),
    PRIVACY_DIALOG_FRAGMENT_AUTO(1001, 1.0f, 1001, 0.6f),
    PRIVACY_DIALOG_FRAGMENT_LIGHT(1001, 1.0f, 1001, 1.0f),
    PRIVACY_DIALOG_FRAGMENT_NIGHT(1001, 0.6f, 1001, 0.6f),
    DEFAULT(3, 0.0f, 3, 0.0f);

    private final int darkModeType;
    private final float darkStrength;
    private final int lightModeType;
    private final float lightStrength;

    LightTypeConfig(int i, float f, int i2, float f2) {
        this.lightModeType = i;
        this.lightStrength = f;
        this.darkModeType = i2;
        this.darkStrength = f2;
    }

    public int getDarkModeType() {
        return this.darkModeType;
    }

    public float getDarkStrength() {
        return this.darkStrength;
    }

    public int getLightModeType() {
        return this.lightModeType;
    }

    public float getLightStrength() {
        return this.lightStrength;
    }
}
