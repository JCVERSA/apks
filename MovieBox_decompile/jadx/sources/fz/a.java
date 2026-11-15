package fz;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import org.apache.tools.ant.BuildException;
import org.apache.tools.ant.w;

public class a {
    public static final void a(Object obj) {
        try {
            if (obj instanceof w) {
                ((w) obj).B();
            }
            Method method = obj.getClass().getMethod("execute", null);
            if (method != null) {
                method.invoke(obj, null);
                if (obj instanceof w) {
                    ((w) obj).J(null);
                    return;
                }
                return;
            }
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("No public ");
            stringBuffer.append("execute");
            stringBuffer.append("() in ");
            stringBuffer.append(obj.getClass());
            throw new BuildException(stringBuffer.toString());
        } catch (IllegalAccessException e10) {
            throw new BuildException(e10);
        } catch (NoSuchMethodException e11) {
            throw new BuildException(e11);
        } catch (InvocationTargetException e12) {
            Throwable targetException = e12.getTargetException();
            if (!(targetException instanceof BuildException)) {
                throw new BuildException(targetException);
            }
            throw ((BuildException) targetException);
        }
    }
}
