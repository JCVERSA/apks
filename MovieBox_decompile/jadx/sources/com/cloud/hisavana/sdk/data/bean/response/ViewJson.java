package com.cloud.hisavana.sdk.data.bean.response;

import android.os.Parcel;
import android.os.Parcelable;

public class ViewJson implements Parcelable {
    public static final Parcelable.Creator<ViewJson> CREATOR = new Parcelable.Creator<ViewJson>() {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public ViewJson createFromParcel(Parcel parcel) {
            return new ViewJson(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public ViewJson[] newArray(int i10) {
            return new ViewJson[i10];
        }
    };
    private DialogJson dialogJson;
    private Integer dialogType;
    private String formPath;
    private OfflineJson offline;

    public static class DialogJson implements Parcelable {
        public static final Parcelable.Creator<DialogJson> CREATOR = new Parcelable.Creator<DialogJson>() {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override
            public DialogJson createFromParcel(Parcel parcel) {
                return new DialogJson(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override
            public DialogJson[] newArray(int i10) {
                return new DialogJson[i10];
            }
        };
        private String height;
        private String url;

        protected DialogJson(Parcel parcel) {
            this.url = parcel.readString();
            this.height = parcel.readString();
        }

        @Override
        public int describeContents() {
            return 0;
        }

        public String getHeight() {
            return this.height;
        }

        public String getUrl() {
            String str = this.url;
            return str == null ? "" : str;
        }

        public void setHeight(String str) {
            this.height = str;
        }

        public void setUrl(String str) {
            this.url = str;
        }

        @Override
        public void writeToParcel(Parcel parcel, int i10) {
            parcel.writeString(this.url);
            parcel.writeString(this.height);
        }
    }

    public static class OfflineJson implements Parcelable {
        public static final Parcelable.Creator<OfflineJson> CREATOR = new Parcelable.Creator<OfflineJson>() {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override
            public OfflineJson createFromParcel(Parcel parcel) {
                return new OfflineJson(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override
            public OfflineJson[] newArray(int i10) {
                return new OfflineJson[i10];
            }
        };
        private Integer maxShowPPPD;
        private String res;
        private String zipRes;

        protected OfflineJson(Parcel parcel) {
            this.res = parcel.readString();
            this.zipRes = parcel.readString();
            if (parcel.readByte() == 0) {
                this.maxShowPPPD = null;
            } else {
                this.maxShowPPPD = Integer.valueOf(parcel.readInt());
            }
        }

        @Override
        public int describeContents() {
            return 0;
        }

        public Integer getMaxShowPPPD() {
            Integer num = this.maxShowPPPD;
            return Integer.valueOf(num == null ? 0 : num.intValue());
        }

        public String getRes() {
            String str = this.res;
            return str == null ? "" : str;
        }

        public String getZipRes() {
            String str = this.zipRes;
            return str == null ? "" : str;
        }

        public void setMaxShowPPPD(Integer num) {
            this.maxShowPPPD = num;
        }

        public void setRes(String str) {
            this.res = str;
        }

        public void setZipRes(String str) {
            this.zipRes = str;
        }

        @Override
        public void writeToParcel(Parcel parcel, int i10) {
            parcel.writeString(this.res);
            parcel.writeString(this.zipRes);
            if (this.maxShowPPPD == null) {
                parcel.writeByte((byte) 0);
            } else {
                parcel.writeByte((byte) 1);
                parcel.writeInt(this.maxShowPPPD.intValue());
            }
        }
    }

    public ViewJson() {
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public DialogJson getDialogJson() {
        return this.dialogJson;
    }

    public Integer getDialogType() {
        Integer num = this.dialogType;
        return Integer.valueOf(num == null ? 0 : num.intValue());
    }

    public String getFormPath() {
        return this.formPath;
    }

    public OfflineJson getOffline() {
        return this.offline;
    }

    public void setDialogJson(DialogJson dialogJson) {
        this.dialogJson = dialogJson;
    }

    public void setDialogType(Integer num) {
        this.dialogType = num;
    }

    public void setFormPath(String str) {
        this.formPath = str;
    }

    public void setOffline(OfflineJson offlineJson) {
        this.offline = offlineJson;
    }

    @Override
    public void writeToParcel(Parcel parcel, int i10) {
        if (this.dialogType == null) {
            parcel.writeByte((byte) 0);
        } else {
            parcel.writeByte((byte) 1);
            parcel.writeInt(this.dialogType.intValue());
        }
        parcel.writeString(this.formPath);
    }

    protected ViewJson(Parcel parcel) {
        if (parcel.readByte() == 0) {
            this.dialogType = null;
        } else {
            this.dialogType = Integer.valueOf(parcel.readInt());
        }
        this.formPath = parcel.readString();
    }
}
