package com.mbridge.msdk.dycreator.wrapper;

import com.mbridge.msdk.dycreator.listener.DyCountDownListenerWrapper;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.io.File;
import java.util.List;

public class DyOption {

    private List<String> f34090a;

    private File f34091b;

    private CampaignEx f34092c;

    private DyAdType f34093d;

    private String f34094e;

    private boolean f34095f;

    private boolean f34096g;

    private boolean f34097h;

    private boolean f34098i;

    private boolean f34099j;

    private boolean f34100k;

    private int f34101l;

    private int f34102m;

    private int f34103n;

    private int f34104o;

    private int f34105p;

    private int f34106q;

    private DyCountDownListenerWrapper f34107r;

    public static class Builder implements IViewOptionBuilder {

        private List<String> f34108a;

        private File f34109b;

        private CampaignEx f34110c;

        private DyAdType f34111d;

        private boolean f34112e;

        private String f34113f;

        private boolean f34114g;

        private boolean f34115h;

        private boolean f34116i;

        private boolean f34117j;

        private boolean f34118k;

        private int f34119l;

        private int f34120m;

        private int f34121n;

        private int f34122o;

        private int f34123p;

        @Override
        public IViewOptionBuilder adChoiceLink(String str) {
            this.f34113f = str;
            return this;
        }

        @Override
        public DyOption build() {
            return new DyOption(this);
        }

        @Override
        public IViewOptionBuilder campaignEx(CampaignEx campaignEx) {
            this.f34110c = campaignEx;
            return this;
        }

        @Override
        public IViewOptionBuilder canSkip(boolean z10) {
            this.f34112e = z10;
            return this;
        }

        @Override
        public IViewOptionBuilder countDownTime(int i10) {
            this.f34122o = i10;
            return this;
        }

        @Override
        public IViewOptionBuilder dyAdType(DyAdType dyAdType) {
            this.f34111d = dyAdType;
            return this;
        }

        @Override
        public IViewOptionBuilder file(File file) {
            this.f34109b = file;
            return this;
        }

        @Override
        public IViewOptionBuilder fileDirs(List<String> list) {
            this.f34108a = list;
            return this;
        }

        @Override
        public IViewOptionBuilder isApkInfoVisible(boolean z10) {
            this.f34117j = z10;
            return this;
        }

        @Override
        public IViewOptionBuilder isClickButtonVisible(boolean z10) {
            this.f34115h = z10;
            return this;
        }

        @Override
        public IViewOptionBuilder isLogoVisible(boolean z10) {
            this.f34118k = z10;
            return this;
        }

        @Override
        public IViewOptionBuilder isScreenClick(boolean z10) {
            this.f34114g = z10;
            return this;
        }

        @Override
        public IViewOptionBuilder isShakeVisible(boolean z10) {
            this.f34116i = z10;
            return this;
        }

        @Override
        public IViewOptionBuilder orientation(int i10) {
            this.f34121n = i10;
            return this;
        }

        @Override
        public IViewOptionBuilder shakeStrenght(int i10) {
            this.f34119l = i10;
            return this;
        }

        @Override
        public IViewOptionBuilder shakeTime(int i10) {
            this.f34120m = i10;
            return this;
        }

        @Override
        public IViewOptionBuilder templateType(int i10) {
            this.f34123p = i10;
            return this;
        }
    }

    public interface IViewOptionBuilder {
        IViewOptionBuilder adChoiceLink(String str);

        DyOption build();

        IViewOptionBuilder campaignEx(CampaignEx campaignEx);

        IViewOptionBuilder canSkip(boolean z10);

        IViewOptionBuilder countDownTime(int i10);

        IViewOptionBuilder dyAdType(DyAdType dyAdType);

        IViewOptionBuilder file(File file);

        IViewOptionBuilder fileDirs(List<String> list);

        IViewOptionBuilder isApkInfoVisible(boolean z10);

        IViewOptionBuilder isClickButtonVisible(boolean z10);

        IViewOptionBuilder isLogoVisible(boolean z10);

        IViewOptionBuilder isScreenClick(boolean z10);

        IViewOptionBuilder isShakeVisible(boolean z10);

        IViewOptionBuilder orientation(int i10);

        IViewOptionBuilder shakeStrenght(int i10);

        IViewOptionBuilder shakeTime(int i10);

        IViewOptionBuilder templateType(int i10);
    }

    public DyOption(Builder builder) {
        this.f34090a = builder.f34108a;
        this.f34091b = builder.f34109b;
        this.f34092c = builder.f34110c;
        this.f34093d = builder.f34111d;
        this.f34096g = builder.f34112e;
        this.f34094e = builder.f34113f;
        this.f34095f = builder.f34114g;
        this.f34097h = builder.f34115h;
        this.f34099j = builder.f34117j;
        this.f34098i = builder.f34116i;
        this.f34100k = builder.f34118k;
        this.f34101l = builder.f34119l;
        this.f34102m = builder.f34120m;
        this.f34103n = builder.f34121n;
        this.f34104o = builder.f34122o;
        this.f34106q = builder.f34123p;
    }

    public String getAdChoiceLink() {
        return this.f34094e;
    }

    public CampaignEx getCampaignEx() {
        return this.f34092c;
    }

    public int getCountDownTime() {
        return this.f34104o;
    }

    public int getCurrentCountDown() {
        return this.f34105p;
    }

    public DyAdType getDyAdType() {
        return this.f34093d;
    }

    public File getFile() {
        return this.f34091b;
    }

    public List<String> getFileDirs() {
        return this.f34090a;
    }

    public int getOrientation() {
        return this.f34103n;
    }

    public int getShakeStrenght() {
        return this.f34101l;
    }

    public int getShakeTime() {
        return this.f34102m;
    }

    public int getTemplateType() {
        return this.f34106q;
    }

    public boolean isApkInfoVisible() {
        return this.f34099j;
    }

    public boolean isCanSkip() {
        return this.f34096g;
    }

    public boolean isClickButtonVisible() {
        return this.f34097h;
    }

    public boolean isClickScreen() {
        return this.f34095f;
    }

    public boolean isLogoVisible() {
        return this.f34100k;
    }

    public boolean isShakeVisible() {
        return this.f34098i;
    }

    public void setDyCountDownListener(int i10) {
        DyCountDownListenerWrapper dyCountDownListenerWrapper = this.f34107r;
        if (dyCountDownListenerWrapper != null) {
            dyCountDownListenerWrapper.getCountDownValue(i10);
        }
        this.f34105p = i10;
    }

    public void setDyCountDownListenerWrapper(DyCountDownListenerWrapper dyCountDownListenerWrapper) {
        this.f34107r = dyCountDownListenerWrapper;
    }
}
