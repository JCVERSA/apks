package com.transsion.api.gateway.bean;

import java.util.List;
import nl.a;

public class GatewayHost {

    @a(name = "disablePath")
    public List<String> disablePath;

    @a(name = "enablePath")
    public List<String> enablePath;
    public String host;

    public String toString() {
        return "GatewayHost{host='" + this.host + "', enablePath=" + this.enablePath + ", disablePath=" + this.disablePath + '}';
    }
}
