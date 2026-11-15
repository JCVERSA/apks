package com.transsion.dbdata.beans.onlinevideo;

import androidx.annotation.Keep;
import com.google.gson.annotations.SerializedName;
import java.util.List;

@Keep
public class SimpleMediaBeans {

    @SerializedName("data")
    public List<SimpleMediaBean> data;

    @SerializedName("errMsg")
    public String errMsg;

    @SerializedName("resultState")
    public State resultState;

    public enum State {
        ERROR,
        EMPTY,
        SUCESS
    }

    public void addData(SimpleMediaBean simpleMediaBean) {
        List<SimpleMediaBean> list = this.data;
        if (list != null) {
            list.add(simpleMediaBean);
        }
    }

    public void addFirst(SimpleMediaBean simpleMediaBean) {
        List<SimpleMediaBean> list = this.data;
        if (list != null) {
            list.add(0, simpleMediaBean);
        }
    }

    public void addLast(SimpleMediaBean simpleMediaBean) {
        List<SimpleMediaBean> list = this.data;
        if (list != null) {
            list.add(list.size(), simpleMediaBean);
        }
    }
}
