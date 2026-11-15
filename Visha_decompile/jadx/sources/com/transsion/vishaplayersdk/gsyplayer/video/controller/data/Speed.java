package com.transsion.vishaplayersdk.gsyplayer.video.controller.data;

public class Speed {
    private String name;
    private float speed;

    public Speed(float f, String str) {
        this.speed = f;
        this.name = str;
    }

    public String getName() {
        return this.name;
    }

    public float getSpeed() {
        return this.speed;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setSpeed(float f) {
        this.speed = f;
    }
}
