package com.transsion.api.gateway.bean;

import java.util.HashMap;
import nl.a;

public class DatabaseBean {

    @a(name = "maps")
    public HashMap<String, Object> maps;

    public String toString() {
        return "DatabaseBean{maps=" + this.maps + '}';
    }
}
