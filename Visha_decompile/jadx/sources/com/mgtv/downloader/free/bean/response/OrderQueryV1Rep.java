package com.mgtv.downloader.free.bean.response;

import com.mgtv.json.JsonInterface;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;

public class OrderQueryV1Rep implements JsonInterface, Serializable {
    private String userid = "";
    private String cpid = "";
    private String spid = "";
    private String ordertime = "";
    private String canceltime = "";
    private String endtime = "";
    private String channel = "";
    private String province = "";
    private String area = "";
    private String ordertype = "";
    private String orderstatus = "";
    private String videoid = "";
    private String last_updated = "";
    private String devid = "";
    private String tips = "";
    private ArrayList<String> definition = null;
    private HashMap<String, String> mode = null;
    private String subtitle = "";

    public String getArea() {
        return this.area;
    }

    public String getCanceltime() {
        return this.canceltime;
    }

    public String getChannel() {
        return this.channel;
    }

    public String getCpid() {
        return this.cpid;
    }

    public ArrayList<String> getDefinition() {
        return this.definition;
    }

    public String getDevid() {
        return this.devid;
    }

    public String getEndtime() {
        return this.endtime;
    }

    public String getLast_updated() {
        return this.last_updated;
    }

    public HashMap<String, String> getMode() {
        return this.mode;
    }

    public String getOrderstatus() {
        return this.orderstatus;
    }

    public String getOrdertime() {
        return this.ordertime;
    }

    public String getOrdertype() {
        return this.ordertype;
    }

    public String getProvince() {
        return this.province;
    }

    public String getSpid() {
        return this.spid;
    }

    public String getSubtitle() {
        return this.subtitle;
    }

    public String getTips() {
        return this.tips;
    }

    public String getUserid() {
        return this.userid;
    }

    public String getVideoid() {
        return this.videoid;
    }

    public void setArea(String str) {
        this.area = str;
    }

    public void setCanceltime(String str) {
        this.canceltime = str;
    }

    public void setChannel(String str) {
        this.channel = str;
    }

    public void setCpid(String str) {
        this.cpid = str;
    }

    public void setDefinition(ArrayList<String> arrayList) {
        this.definition = arrayList;
    }

    public void setDevid(String str) {
        this.devid = str;
    }

    public void setEndtime(String str) {
        this.endtime = str;
    }

    public void setLast_updated(String str) {
        this.last_updated = str;
    }

    public void setMode(HashMap<String, String> map) {
        this.mode = map;
    }

    public void setOrderstatus(String str) {
        this.orderstatus = str;
    }

    public void setOrdertime(String str) {
        this.ordertime = str;
    }

    public void setOrdertype(String str) {
        this.ordertype = str;
    }

    public void setProvince(String str) {
        this.province = str;
    }

    public void setSpid(String str) {
        this.spid = str;
    }

    public void setSubtitle(String str) {
        this.subtitle = str;
    }

    public void setTips(String str) {
        this.tips = str;
    }

    public void setUserid(String str) {
        this.userid = str;
    }

    public void setVideoid(String str) {
        this.videoid = str;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{\"userid\":\"");
        sb.append(this.userid);
        sb.append("\", \"cpid\":\"");
        sb.append(this.cpid);
        sb.append("\", \"spid\":\"");
        sb.append(this.spid);
        sb.append("\", \"ordertime\":\"");
        sb.append(this.ordertime);
        sb.append("\", \"canceltime\":\"");
        sb.append(this.canceltime);
        sb.append("\", \"endtime\":\"");
        sb.append(this.endtime);
        sb.append("\", \"channel\":\"");
        sb.append(this.channel);
        sb.append("\", \"province\":\"");
        sb.append(this.province);
        sb.append("\", \"area\":\"");
        sb.append(this.area);
        sb.append("\", \"ordertype\":\"");
        sb.append(this.ordertype);
        sb.append("\", \"orderstatus\":\"");
        sb.append(this.orderstatus);
        sb.append("\", \"videoid\":\"");
        sb.append(this.videoid);
        sb.append("\", \"last_updated\":\"");
        sb.append(this.last_updated);
        sb.append("\", \"devid\":\"");
        sb.append(this.devid);
        sb.append("\", \"tips\":\"");
        sb.append(this.tips);
        sb.append("\", \"defintion\":\"");
        Object string = this.definition;
        if (string != null) {
            string = string.toString();
        }
        sb.append(string);
        sb.append("\", \"subtitle\":\"");
        sb.append(this.subtitle);
        sb.append("\"}");
        return sb.toString();
    }
}
