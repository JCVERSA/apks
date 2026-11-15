package com.mgtv.irouting.net;

import com.google.gson.JsonElement;
import java.io.Serializable;

public class HttpInterface {

    public interface JsonInterface extends Serializable {
    }

    public class ResponseJsonEntry implements JsonInterface {
        private int code;
        public JsonElement data;
        private int err_code;
        private String err_msg;
        private String msg;

        public ResponseJsonEntry() {
        }

        public int getCode() {
            return this.code;
        }

        public JsonElement getData() {
            return this.data;
        }

        public int getErrCode() {
            return this.err_code;
        }

        public String getErrMsg() {
            return this.err_msg;
        }

        public String getMsg() {
            return this.msg;
        }

        public String toString() {
            return (((("\nerr_code : " + this.err_code + "\n") + "code : " + this.code + "\n") + "err_msg : " + this.err_msg + "\n") + "msg : " + this.msg + "\n") + "data : " + this.data + "\n";
        }
    }
}
