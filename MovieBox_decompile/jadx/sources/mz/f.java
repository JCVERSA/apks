package mz;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import org.apache.tools.ant.Project;
import org.apache.tools.ant.types.t;

public class f extends t {

    private static final int f66840h = t.h("PropertyResource".getBytes());

    private static final InputStream f66841i = new e();

    public f() {
    }

    @Override
    public InputStream e() {
        if (isReference()) {
            return ((t) getCheckedRef()).e();
        }
        return k() ? new ByteArrayInputStream(q().getBytes()) : f66841i;
    }

    @Override
    public int hashCode() {
        return isReference() ? getCheckedRef().hashCode() : super.hashCode() * f66840h;
    }

    @Override
    public long i() {
        if (isReference()) {
            return ((t) getCheckedRef()).i();
        }
        if (k()) {
            return q().length();
        }
        return 0L;
    }

    @Override
    public boolean k() {
        return q() != null;
    }

    public String q() {
        Project project = getProject();
        if (project == null) {
            return null;
        }
        return project.s(getName());
    }

    @Override
    public String toString() {
        return isReference() ? getCheckedRef().toString() : String.valueOf(q());
    }

    public f(Project project, String str) {
        super(str);
        setProject(project);
    }
}
