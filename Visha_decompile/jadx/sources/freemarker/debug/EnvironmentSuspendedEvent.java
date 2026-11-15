package freemarker.debug;

import defpackage.ut1;
import java.util.EventObject;

public class EnvironmentSuspendedEvent extends EventObject {
    private static final long serialVersionUID = 1;
    private final ut1 env;
    private final int line;
    private final String name;

    public EnvironmentSuspendedEvent(Object obj, String str, int i, ut1 ut1Var) {
        super(obj);
        this.name = str;
        this.line = i;
        this.env = ut1Var;
    }

    public ut1 getEnvironment() {
        return this.env;
    }

    public int getLine() {
        return this.line;
    }

    public String getName() {
        return this.name;
    }
}
