package com.transsion.dbdata.beans.cloudctrlconfigbean;

import java.util.List;

public class CloudCtrlConfigBean {
    public static final String TAG = "CloudCtrlConfig";
    private int code;
    private List<CloudCtrl> data;
    private String message;
    private boolean success;

    public static class CloudCtrl {
        private int onlineStatus;
        private int type;

        public int getOnlineStatus() {
            return this.onlineStatus;
        }

        public int getType() {
            return this.type;
        }

        public void setOnlineStatus(int i) {
            this.onlineStatus = i;
        }

        public void setType(int i) {
            this.type = i;
        }

        public String toString() {
            return "CloudCtrl{type=" + this.type + ", onlineStatus=" + this.onlineStatus + '}';
        }
    }

    public int getCode() {
        return this.code;
    }

    public List<CloudCtrl> getData() {
        return this.data;
    }

    public String getMessage() {
        return this.message;
    }

    public boolean isSuccess() {
        return this.success;
    }

    public void setCode(int i) {
        this.code = i;
    }

    public void setData(List<CloudCtrl> list) {
        this.data = list;
    }

    public void setMessage(String str) {
        this.message = str;
    }

    public void setSuccess(boolean z) {
        this.success = z;
    }

    public String toString() {
        return "CloudCtrlConfigBean{code=" + this.code + ", message='" + this.message + "', success=" + this.success + ", data=" + this.data + '}';
    }
}
