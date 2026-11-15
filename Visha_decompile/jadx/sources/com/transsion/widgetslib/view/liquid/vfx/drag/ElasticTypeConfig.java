package com.transsion.widgetslib.view.liquid.vfx.drag;

public enum ElasticTypeConfig {
    FOB(150.0f, 0.5f, 0.025f, 0.025f, 0.03f, 0.04f, 0.03f, 0.04f),
    BUTTON(250.0f, 0.6f, 0.03f, 0.012f, 5.0E-4f, 0.015f, 0.004f, 0.025f),
    SEARCH_BAR(250.0f, 0.6f, 0.03f, 0.015f, 3.0E-4f, 0.01f, 0.007f, 0.025f),
    TOOL_BAR(150.0f, 0.5f, 0.025f, 0.025f, 0.03f, 0.04f, 0.03f, 0.04f),
    BOTTOM_TOOLBAR(250.0f, 0.6f, 0.03f, 0.015f, 3.0E-4f, 0.01f, 0.007f, 0.025f),
    FOOT_OPERATION_BAR(250.0f, 0.6f, 0.03f, 0.012f, 5.0E-4f, 0.015f, 0.004f, 0.025f),
    SEGMENTED_TAB(250.0f, 0.6f, 0.03f, 0.015f, 2.0E-4f, 0.01f, 0.007f, 0.025f),
    DIALOG(250.0f, 0.6f, 0.01f, 0.01f, 0.002f, 0.004f, 3.0E-4f, 0.001f),
    POPUP_WINDOW(250.0f, 0.6f, 0.01f, 0.01f, 0.003f, 0.003f, 0.003f, 0.003f),
    TEXT_SELECTOR_COLLAPSE(250.0f, 0.6f, 0.03f, 0.015f, 3.0E-4f, 0.01f, 0.007f, 0.025f),
    TEXT_SELECTOR_EXPAND(250.0f, 0.6f, 0.01f, 0.01f, 0.003f, 0.003f, 0.003f, 0.003f),
    DEFAULT(250.0f, 0.6f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f);

    private final float k1;
    private final float k2;
    private final float k3;
    private final float k4;
    private final float k5;
    private final float k6;
    private final float mSpringDamping;
    private final float mSpringStiffness;

    ElasticTypeConfig(float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8) {
        this.mSpringStiffness = f;
        this.mSpringDamping = f2;
        this.k1 = f3;
        this.k2 = f4;
        this.k3 = f5;
        this.k4 = f6;
        this.k5 = f7;
        this.k6 = f8;
    }

    public float getK1() {
        return this.k1;
    }

    public float getK2() {
        return this.k2;
    }

    public float getK3() {
        return this.k3;
    }

    public float getK4() {
        return this.k4;
    }

    public float getK5() {
        return this.k5;
    }

    public float getK6() {
        return this.k6;
    }

    public float getSpringDamping() {
        return this.mSpringDamping;
    }

    public float getSpringStiffness() {
        return this.mSpringStiffness;
    }
}
