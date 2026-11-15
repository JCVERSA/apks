package org.mvel2.sh;

import e00.c;
import java.io.BufferedReader;
import java.io.File;
import java.io.InputStreamReader;
import java.io.PrintStream;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;
import java.util.MissingResourceException;
import java.util.ResourceBundle;
import org.mvel2.ParserContext;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.integration.impl.MapVariableResolverFactory;
import org.mvel2.util.n;
import org.mvel2.util.s;

public class a {

    private static final String[] f68847m = new String[0];

    private final Map f68848a;

    private Map f68849b;

    private Map f68850c;

    ParserContext f68851d;

    VariableResolverFactory f68852e;

    private int f68853f;

    private boolean f68854g;

    private int f68855h;

    private PrintStream f68856i;

    private String f68857j;

    s f68858k;

    final BufferedReader f68859l;

    public static final class C0844a {
    }

    public a() {
        HashMap map = new HashMap();
        this.f68848a = map;
        this.f68851d = new ParserContext();
        this.f68854g = false;
        this.f68855h = 0;
        PrintStream printStream = System.out;
        this.f68856i = printStream;
        this.f68858k = new s();
        this.f68859l = new BufferedReader(new InputStreamReader(System.in));
        printStream.println("Starting session...");
        this.f68849b = new HashMap();
        this.f68850c = new HashMap();
        map.putAll(new d00.a().a());
        map.putAll(new c().a());
        this.f68850c.put("$PROMPT", "[@{ new java.text.SimpleDateFormat('hh:mmaa').format(new java.util.Date(System.currentTimeMillis()))}] mvel2$ ");
        this.f68850c.put("$OS_NAME", System.getProperty("os.name"));
        this.f68850c.put("$OS_VERSION", System.getProperty("os.version"));
        this.f68850c.put("$JAVA_VERSION", n.f());
        this.f68850c.put("$CWD", new File(".").getAbsolutePath());
        this.f68850c.put("$COMMAND_PASSTRU", "false");
        this.f68850c.put("$PRINTOUTPUT", "true");
        this.f68850c.put("$ECHO", "false");
        this.f68850c.put("$SHOW_TRACES", "true");
        this.f68850c.put("$USE_OPTIMIZER_ALWAYS", "false");
        this.f68850c.put("$PATH", "");
        try {
            ResourceBundle bundle = ResourceBundle.getBundle(".mvelsh.properties");
            Enumeration<String> keys = bundle.getKeys();
            while (keys.hasMoreElements()) {
                Map map2 = this.f68850c;
                String strNextElement = keys.nextElement();
                map2.put(strNextElement, bundle.getString(strNextElement));
            }
        } catch (MissingResourceException unused) {
            System.out.println("No config file found.  Loading default config.");
            if (!n.a(System.getProperty("os.name").toLowerCase(), "windows")) {
                this.f68850c.put("$PATH", "/bin:/usr/bin:/sbin:/usr/sbin");
            }
        }
        this.f68852e = new MapVariableResolverFactory((Map<String, Object>) this.f68849b, new MapVariableResolverFactory(this.f68850c));
    }

    public String j(int i10) {
        StringBuffer stringBuffer = new StringBuffer();
        for (int i11 = 0; i11 < i10; i11++) {
            stringBuffer.append(" ");
        }
        return stringBuffer.toString();
    }
}
