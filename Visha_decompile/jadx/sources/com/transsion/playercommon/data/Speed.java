package com.transsion.playercommon.data;

public class Speed {
    private String spS;
    private float spV;

    public Speed(String str, float f) {
        this.spS = str;
        this.spV = f;
    }

    public String getSpS() {
        return this.spS;
    }

    public float getSpV() {
        return this.spV;
    }

    public void setSpS(String str) {
        this.spS = str;
    }

    public void setSpV(float f) {
        this.spV = f;
    }

    public String toString() {
        return "Speed{spS='" + this.spS + "', spV=" + this.spV + '}';
    }
}
