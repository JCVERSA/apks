package com.transsion.vishaplayersdk.base.config;

import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import com.blankj.utilcode.util.LogUtils;

public class ControllerLayoutConfig {
    private static final String TAG = PlayerConstant.TAG_GLOBAL_PREFIX_PLAYER + ControllerLayoutConfig.class.getSimpleName();
    private View controllerView;
    private ViewGroup parentContainer;
    private int parentHeight;
    private int parentWidth;

    public static final class ControllerLayoutConfigBuilder {
        private View controllerView;
        private ViewGroup parentContainer;
        private int parentHeight;
        private int parentWidth;

        private ControllerLayoutConfigBuilder() {
        }

        public static ControllerLayoutConfigBuilder aControllerLayoutConfig() {
            return new ControllerLayoutConfigBuilder();
        }

        public ControllerLayoutConfig build() {
            ControllerLayoutConfig controllerLayoutConfig = new ControllerLayoutConfig();
            controllerLayoutConfig.controllerView = this.controllerView;
            controllerLayoutConfig.parentHeight = this.parentHeight;
            controllerLayoutConfig.parentContainer = this.parentContainer;
            controllerLayoutConfig.parentWidth = this.parentWidth;
            return controllerLayoutConfig;
        }

        public ControllerLayoutConfigBuilder withControllerView(View view) {
            this.controllerView = view;
            return this;
        }

        public ControllerLayoutConfigBuilder withParentContainer(ViewGroup viewGroup) {
            this.parentContainer = viewGroup;
            return this;
        }

        public ControllerLayoutConfigBuilder withParentHeight(int i) {
            this.parentHeight = i;
            return this;
        }

        public ControllerLayoutConfigBuilder withParentWidth(int i) {
            this.parentWidth = i;
            return this;
        }
    }

    public View getControllerView() {
        return this.controllerView;
    }

    public ViewGroup getParentContainer() {
        return this.parentContainer;
    }

    public int getParentHeight() {
        return this.parentHeight;
    }

    public int getParentWidth() {
        return this.parentWidth;
    }

    public boolean isValidConfig() {
        if (this.parentContainer != null) {
            return false;
        }
        LogUtils.m(TAG, "ControllerLayoutConfig invalid: must set parent view");
        return true;
    }

    @NonNull
    public String toString() {
        return "ControllerLayoutConfig{parentWidth=" + this.parentWidth + ", parentHeight=" + this.parentHeight + ", parentContainer=" + this.parentContainer + ", controllerView=" + this.controllerView + '}';
    }

    private ControllerLayoutConfig() {
    }
}
