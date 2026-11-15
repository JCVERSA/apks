package mz;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import org.apache.tools.ant.BuildException;
import org.apache.tools.ant.types.r;
import org.apache.tools.ant.types.t;

public class c extends t {

    private static final org.apache.tools.ant.util.d f66833j = org.apache.tools.ant.util.d.k();

    private static final int f66834k = t.h("null file".getBytes());

    private File f66835h;

    private File f66836i;

    public c() {
    }

    @Override
    public boolean a() {
        return !isReference() || ((c) getCheckedRef()).a();
    }

    @Override
    public int compareTo(Object obj) {
        if (isReference()) {
            return ((Comparable) getCheckedRef()).compareTo(obj);
        }
        if (equals(obj)) {
            return 0;
        }
        if (!obj.getClass().equals(getClass())) {
            return super.compareTo(obj);
        }
        c cVar = (c) obj;
        File fileR = r();
        if (fileR == null) {
            return -1;
        }
        File fileR2 = cVar.r();
        if (fileR2 == null) {
            return 1;
        }
        return fileR.compareTo(fileR2);
    }

    @Override
    public InputStream e() {
        return isReference() ? ((t) getCheckedRef()).e() : new FileInputStream(s());
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (isReference()) {
            return getCheckedRef().equals(obj);
        }
        if (!obj.getClass().equals(getClass())) {
            return false;
        }
        c cVar = (c) obj;
        if (r() == null) {
            return cVar.r() == null;
        }
        return r().equals(cVar.r());
    }

    @Override
    public long g() {
        return isReference() ? ((t) getCheckedRef()).g() : s().lastModified();
    }

    @Override
    public String getName() {
        if (isReference()) {
            return ((t) getCheckedRef()).getName();
        }
        File fileQ = q();
        return fileQ == null ? s().getName() : f66833j.p(fileQ, s());
    }

    @Override
    public int hashCode() {
        if (isReference()) {
            return getCheckedRef().hashCode();
        }
        return t.f68372f * (r() == null ? f66834k : r().hashCode());
    }

    @Override
    public long i() {
        return isReference() ? ((t) getCheckedRef()).i() : s().length();
    }

    @Override
    public boolean j() {
        return isReference() ? ((t) getCheckedRef()).j() : s().isDirectory();
    }

    @Override
    public boolean k() {
        return isReference() ? ((t) getCheckedRef()).k() : s().exists();
    }

    public File q() {
        return isReference() ? ((c) getCheckedRef()).q() : this.f66836i;
    }

    public File r() {
        return isReference() ? ((c) getCheckedRef()).r() : this.f66835h;
    }

    protected File s() {
        if (r() != null) {
            return r();
        }
        throw new BuildException("file attribute is null!");
    }

    @Override
    public void setRefid(r rVar) {
        if (this.f66835h != null || this.f66836i != null) {
            throw tooManyAttributes();
        }
        super.setRefid(rVar);
    }

    public void t(File file) {
        checkAttributesAllowed();
        this.f66836i = file;
    }

    @Override
    public String toString() {
        if (isReference()) {
            return getCheckedRef().toString();
        }
        File file = this.f66835h;
        if (file == null) {
            return "(unbound file resource)";
        }
        return f66833j.o(file.getAbsolutePath()).getAbsolutePath();
    }

    public void u(File file) {
        checkAttributesAllowed();
        this.f66835h = file;
    }

    public c(File file, String str) {
        u(f66833j.q(file, str));
        t(file);
    }
}
