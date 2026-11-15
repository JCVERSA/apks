package org.mozilla.javascript;

import javassist.compiler.ast.MethodDecl;

public class NativeJavaConstructor extends BaseFunction {
    private static final long serialVersionUID = -8149253217482668463L;
    MemberBox ctor;

    public NativeJavaConstructor(MemberBox memberBox) {
        this.ctor = memberBox;
    }

    @Override
    public Object call(Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        return NativeJavaClass.constructSpecific(context, scriptable, objArr, this.ctor);
    }

    @Override
    public String getFunctionName() {
        return MethodDecl.initName.concat(f.p(this.ctor.argTypes));
    }

    public String toString() {
        return "[JavaConstructor " + this.ctor.getName() + "]";
    }
}
