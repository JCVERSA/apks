package com.hisavana.common.param;

public class UserDTO {
    private String baseStation;
    private long coordTime;
    private double latitude;
    private double longitude;

    public String getBaseStation() {
        return this.baseStation;
    }

    public long getCoordTime() {
        return this.coordTime;
    }

    public double getLatitude() {
        return this.latitude;
    }

    public double getLongitude() {
        return this.longitude;
    }

    public void setBaseStation(String str) {
        this.baseStation = str;
    }

    public void setCoordTime(long j10) {
        this.coordTime = j10;
    }

    public void setLatitude(double d10) {
        this.latitude = d10;
    }

    public void setLongitude(double d10) {
        this.longitude = d10;
    }
}
