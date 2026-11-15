package mz;

import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Stack;
import org.apache.tools.ant.BuildException;
import org.apache.tools.ant.Project;
import org.apache.tools.ant.types.u;

public abstract class a extends org.apache.tools.ant.types.e implements u, Cloneable {

    private List f66827a = new ArrayList();

    private Collection f66828b = null;

    private boolean f66829c = true;

    private synchronized Collection e() {
        try {
            if (this.f66828b == null || !j()) {
                this.f66828b = g();
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return this.f66828b;
    }

    @Override
    public synchronized boolean a() {
        if (isReference()) {
            return ((a) getCheckedRef()).a();
        }
        dieOnCircularReference();
        Iterator it = this.f66827a.iterator();
        boolean zA = true;
        while (zA && it.hasNext()) {
            zA = ((u) it.next()).a();
        }
        if (zA) {
            return true;
        }
        Iterator it2 = e().iterator();
        while (it2.hasNext()) {
            if (!(it2.next() instanceof c)) {
                return false;
            }
        }
        return true;
    }

    @Override
    public Object clone() {
        try {
            a aVar = (a) super.clone();
            aVar.f66827a = new ArrayList(this.f66827a);
            aVar.f66828b = null;
            return aVar;
        } catch (CloneNotSupportedException e10) {
            throw new BuildException(e10);
        }
    }

    public synchronized void d(u uVar) {
        Project project;
        try {
            if (isReference()) {
                throw noChildrenAllowed();
            }
            if (uVar == null) {
                return;
            }
            if (Project.q(uVar) == null && (project = getProject()) != null) {
                project.K(uVar);
            }
            this.f66827a.add(uVar);
            b.c(this);
            this.f66828b = null;
            setChecked(false);
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override
    protected synchronized void dieOnCircularReference(Stack stack, Project project) {
        try {
            if (isChecked()) {
                return;
            }
            if (isReference()) {
                super.dieOnCircularReference(stack, project);
            } else {
                for (Object obj : this.f66827a) {
                    if (obj instanceof org.apache.tools.ant.types.e) {
                        stack.push(obj);
                        org.apache.tools.ant.types.e.invokeCircularReferenceCheck((org.apache.tools.ant.types.e) obj, stack, project);
                        stack.pop();
                    }
                }
                setChecked(true);
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    protected abstract Collection g();

    protected final synchronized List i() {
        dieOnCircularReference();
        return Collections.unmodifiableList(this.f66827a);
    }

    @Override
    public final synchronized Iterator iterator() {
        if (isReference()) {
            return ((a) getCheckedRef()).iterator();
        }
        dieOnCircularReference();
        return new b(this, e().iterator());
    }

    public synchronized boolean j() {
        return this.f66829c;
    }

    public synchronized void k(boolean z10) {
        this.f66829c = z10;
    }

    @Override
    public synchronized int size() {
        if (isReference()) {
            return ((a) getCheckedRef()).size();
        }
        dieOnCircularReference();
        return e().size();
    }

    @Override
    public synchronized String toString() {
        if (isReference()) {
            return getCheckedRef().toString();
        }
        if (e().size() == 0) {
            return "";
        }
        StringBuffer stringBuffer = new StringBuffer();
        Iterator it = this.f66828b.iterator();
        while (it.hasNext()) {
            if (stringBuffer.length() > 0) {
                stringBuffer.append(File.pathSeparatorChar);
            }
            stringBuffer.append(it.next());
        }
        return stringBuffer.toString();
    }
}
