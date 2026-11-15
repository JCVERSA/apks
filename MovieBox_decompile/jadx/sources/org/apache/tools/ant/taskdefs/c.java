package org.apache.tools.ant.taskdefs;

public abstract class c extends b {

    private ClassLoader f68187i;

    private org.apache.tools.ant.util.a.C0835a f68188j;

    private org.apache.tools.ant.util.a.C0835a z() {
        if (this.f68188j == null) {
            this.f68188j = org.apache.tools.ant.util.a.c(this);
        }
        return this.f68188j;
    }

    @Override
    public void m() {
        super.m();
    }

    protected ClassLoader y() {
        if (u() != null && this.f68188j == null) {
            return u();
        }
        if (this.f68187i == null) {
            ClassLoader classLoaderB = z().b();
            this.f68187i = classLoaderB;
            ((org.apache.tools.ant.a) classLoaderB).h("org.apache.tools.ant");
        }
        return this.f68187i;
    }
}
