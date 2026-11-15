package e5;

import org.glassfish.jersey.internal.spi.AutoDiscoverable;

public class a implements AutoDiscoverable {

    public static volatile boolean f59449a = true;

    static {
        try {
            f59449a = Boolean.parseBoolean(System.getProperty("fastjson.auto.discoverable", String.valueOf(f59449a)));
        } catch (Throwable unused) {
        }
    }
}
