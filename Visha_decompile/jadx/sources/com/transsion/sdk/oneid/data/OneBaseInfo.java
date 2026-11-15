package com.transsion.sdk.oneid.data;

import androidx.annotation.NonNull;
import com.google.gson.Gson;
import defpackage.p6d;

public abstract class OneBaseInfo {
    @NonNull
    public String toString() {
        try {
            return new Gson().toJson(this);
        } catch (Exception e) {
            p6d.m(e);
            return "";
        }
    }
}
