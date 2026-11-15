package com.transsion.push.bean;

public class PushNotification {
    private int btnId;
    private String channelId;
    private int contentBigId;
    private int contentId;
    private String iconColor;
    private int iconId;
    private int imgBigId;
    private int layoutId;
    private boolean showDefaultLargeIcon;
    private int smallIcon;
    private int styleId;
    private int titleId;
    private int type;

    public static class Builder {
        private int btnId;
        private String channelId;
        private int contentBigId;
        private int contentId;
        private String iconColor;
        private int iconId;
        private int imgBigId;
        private int layoutId;
        private boolean showDefaultLargeIcon;
        private int smallIcon;
        private int styleId;
        private int titleId;
        private int type;

        public PushNotification build() {
            return new PushNotification(this);
        }

        public Builder setBtnId(int i10) {
            this.btnId = i10;
            return this;
        }

        public Builder setChannelId(String str) {
            this.channelId = str;
            return this;
        }

        public Builder setContentBigId(int i10) {
            this.contentBigId = i10;
            return this;
        }

        public Builder setContentId(int i10) {
            this.contentId = i10;
            return this;
        }

        public Builder setIconColor(String str) {
            this.iconColor = str;
            return this;
        }

        public Builder setIconId(int i10) {
            this.iconId = i10;
            return this;
        }

        public Builder setImgBigId(int i10) {
            this.imgBigId = i10;
            return this;
        }

        public Builder setLayoutId(int i10) {
            this.layoutId = i10;
            return this;
        }

        public Builder setShowDefaultLargeIcon(boolean z10) {
            this.showDefaultLargeIcon = z10;
            return this;
        }

        public Builder setSmallIcon(int i10) {
            this.smallIcon = i10;
            return this;
        }

        public Builder setStyleId(int i10) {
            this.styleId = i10;
            return this;
        }

        public Builder setTitleId(int i10) {
            this.titleId = i10;
            return this;
        }

        public Builder setType(int i10) {
            this.type = i10;
            return this;
        }
    }

    private void checkParam(Builder builder) {
        if (builder.smallIcon <= 0) {
            throw new RuntimeException("smallIcon must set values");
        }
    }

    public int getBtnId() {
        return this.btnId;
    }

    public String getChannelId() {
        return this.channelId;
    }

    public int getContentBigId() {
        return this.contentBigId;
    }

    public int getContentId() {
        return this.contentId;
    }

    public String getIconColor() {
        return this.iconColor;
    }

    public int getIconId() {
        return this.iconId;
    }

    public int getImgBigId() {
        return this.imgBigId;
    }

    public int getLayoutId() {
        return this.layoutId;
    }

    public boolean getShowDefaultLargeIcon() {
        return this.showDefaultLargeIcon;
    }

    public int getSmallIcon() {
        return this.smallIcon;
    }

    public int getStyleId() {
        return this.styleId;
    }

    public int getTitleId() {
        return this.titleId;
    }

    public int getType() {
        return this.type;
    }

    private PushNotification(Builder builder) {
        checkParam(builder);
        this.styleId = builder.styleId;
        this.channelId = builder.channelId;
        this.type = builder.type;
        this.smallIcon = builder.smallIcon;
        this.layoutId = builder.layoutId;
        this.iconId = builder.iconId;
        this.titleId = builder.titleId;
        this.contentId = builder.contentId;
        this.btnId = builder.btnId;
        this.imgBigId = builder.imgBigId;
        this.contentBigId = builder.contentBigId;
        this.showDefaultLargeIcon = builder.showDefaultLargeIcon;
        this.iconColor = builder.iconColor;
    }
}
