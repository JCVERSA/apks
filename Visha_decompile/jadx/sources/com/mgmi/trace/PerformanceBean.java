package com.mgmi.trace;

import com.google.gson.annotations.SerializedName;
import java.io.Serializable;

public class PerformanceBean implements com.mgadplus.netlib.json.a, Serializable {

    @SerializedName("201_cpu")
    private String $201Cpu;

    @SerializedName("201_mem")
    private String $201Mem;

    @SerializedName("203_cpu")
    private String $203Cpu;

    @SerializedName("203_mem")
    private String $203Mem;

    public String get$201Cpu() {
        return this.$201Cpu;
    }

    public String get$201Mem() {
        return this.$201Mem;
    }

    public String get$203Cpu() {
        return this.$203Cpu;
    }

    public String get$203Mem() {
        return this.$203Mem;
    }

    public void set$201Cpu(String str) {
        this.$201Cpu = str;
    }

    public void set$201Mem(String str) {
        this.$201Mem = str;
    }

    public void set$203Cpu(String str) {
        this.$203Cpu = str;
    }

    public void set$203Mem(String str) {
        this.$203Mem = str;
    }
}
