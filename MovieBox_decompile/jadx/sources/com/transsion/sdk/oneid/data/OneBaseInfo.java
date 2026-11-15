package com.transsion.sdk.oneid.data;

import androidx.annotation.NonNull;
import com.google.gson.Gson;
import com.transsion.sdk.oneid.b;

public abstract class OneBaseInfo {
    @NonNull
    public String toString() {
        try {
            return new Gson().toJson(this);
        } catch (Exception e10) {
            b.m(e10);
            return "";
        }
    }
}
