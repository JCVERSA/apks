package defpackage;

import freemarker.template.TemplateModelException;

public abstract class npc {
    private static gc7 defaultObjectWrapper = z22.h0;
    private gc7 objectWrapper;

    public npc() {
        this(defaultObjectWrapper);
    }

    public static gc7 getDefaultObjectWrapper() {
        return defaultObjectWrapper;
    }

    public static void setDefaultObjectWrapper(gc7 gc7Var) {
        defaultObjectWrapper = gc7Var;
    }

    public gc7 getObjectWrapper() {
        return this.objectWrapper;
    }

    public void setObjectWrapper(gc7 gc7Var) {
        this.objectWrapper = gc7Var;
    }

    public final zfa wrap(Object obj) throws TemplateModelException {
        return this.objectWrapper.c(obj);
    }

    public npc(gc7 gc7Var) {
        gc7Var = gc7Var == null ? defaultObjectWrapper : gc7Var;
        this.objectWrapper = gc7Var;
        if (gc7Var == null) {
            z22 z22Var = new z22();
            defaultObjectWrapper = z22Var;
            this.objectWrapper = z22Var;
        }
    }
}
