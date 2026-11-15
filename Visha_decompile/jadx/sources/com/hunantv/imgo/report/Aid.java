package com.hunantv.imgo.report;

import java.io.Serializable;
import java.util.UUID;

public class Aid implements Serializable {
    private static Aid instance = null;
    private static final long serialVersionUID = -3879112537711968102L;
    private String aid;

    private String getCid() {
        return UUID.randomUUID().toString().replaceAll("-", "");
    }

    public static Aid getInstance() {
        if (instance == null) {
            Aid aid = new Aid();
            instance = aid;
            aid.rebuild();
        }
        return instance;
    }

    public String get() {
        return this.aid;
    }

    public void rebuild() {
        this.aid = getCid();
    }
}
