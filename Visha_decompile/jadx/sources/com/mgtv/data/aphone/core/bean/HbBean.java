package com.mgtv.data.aphone.core.bean;

import android.content.Context;
import com.mgtv.json.JsonInterface;
import java.util.List;

public class HbBean extends BaseBean implements JsonInterface {
    public String act;
    public String ap;
    public String bdid;
    public String cf;
    public String cid;
    public String cpn;
    public String def;
    public String istry;
    public List<HbListBean> list;
    public String pay;
    public String plid;
    public String pt;
    public String suuid;
    public String vid;
    public String vts;

    public HbBean(Context context) {
        super(context);
    }

    public String toString() {
        return com.mgtv.json.a.a(this, (Class<? extends HbBean>) HbBean.class);
    }

    public HbBean() {
    }
}
