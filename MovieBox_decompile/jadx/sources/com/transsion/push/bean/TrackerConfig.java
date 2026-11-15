package com.transsion.push.bean;

public class TrackerConfig {

    @nl.a(name = "report_time")
    public long reportTime;

    @nl.a(name = "report_type")
    public int reportType;

    @nl.a(name = "version")
    public int version;

    public String toString() {
        return "TrackerConfig{reportType=" + this.reportType + ", reportTime=" + this.reportTime + ", version=" + this.version + '}';
    }
}
