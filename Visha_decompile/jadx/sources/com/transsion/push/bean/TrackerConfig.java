package com.transsion.push.bean;

import defpackage.pab;

public class TrackerConfig {

    @pab(name = "report_time")
    public long reportTime;

    @pab(name = "report_type")
    public int reportType;

    @pab(name = "version")
    public int version;

    public String toString() {
        return "TrackerConfig{reportType=" + this.reportType + ", reportTime=" + this.reportTime + ", version=" + this.version + '}';
    }
}
