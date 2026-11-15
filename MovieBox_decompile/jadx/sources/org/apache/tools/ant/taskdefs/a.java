package org.apache.tools.ant.taskdefs;

import com.google.firebase.perf.network.FirebasePerfUrlConnection;
import java.io.IOException;
import java.net.URL;
import java.net.URLConnection;
import java.util.ArrayList;
import java.util.List;
import org.apache.tools.ant.BuildException;
import org.apache.tools.ant.ComponentHelper;
import org.apache.tools.ant.Project;
import org.apache.tools.ant.u;
import org.apache.tools.ant.v;
import org.apache.tools.ant.w;

public class a extends u implements v {

    static Class f68181j;

    private ClassLoader f68182g;

    private String f68183h = "";

    private List f68184i = new ArrayList();

    static Class u(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e10) {
            throw new NoClassDefFoundError(e10.getMessage());
        }
    }

    public static a v(Project project, URL url, String str) {
        try {
            ((URLConnection) FirebasePerfUrlConnection.instrument(url.openConnection())).connect();
            ComponentHelper componentHelperJ = ComponentHelper.j(project);
            componentHelperJ.g(str);
            try {
                w wVarK = new iz.b().k(project, url);
                if (!wVarK.C().equals("antlib")) {
                    StringBuffer stringBuffer = new StringBuffer();
                    stringBuffer.append("Unexpected tag ");
                    stringBuffer.append(wVarK.C());
                    stringBuffer.append(" expecting ");
                    stringBuffer.append("antlib");
                    throw new BuildException(stringBuffer.toString(), wVarK.getLocation());
                }
                a aVar = new a();
                aVar.setProject(project);
                aVar.setLocation(wVarK.getLocation());
                aVar.s("antlib");
                aVar.m();
                wVarK.v(aVar);
                componentHelperJ.h();
                return aVar;
            } catch (Throwable th2) {
                componentHelperJ.h();
                throw th2;
            }
        } catch (IOException e10) {
            StringBuffer stringBuffer2 = new StringBuffer();
            stringBuffer2.append("Unable to find ");
            stringBuffer2.append(url);
            throw new BuildException(stringBuffer2.toString(), e10);
        }
    }

    private ClassLoader w() {
        if (this.f68182g == null) {
            Class clsU = f68181j;
            if (clsU == null) {
                clsU = u("org.apache.tools.ant.taskdefs.Antlib");
                f68181j = clsU;
            }
            this.f68182g = clsU.getClassLoader();
        }
        return this.f68182g;
    }

    @Override
    public void b(u uVar) {
        this.f68184i.add(uVar);
    }

    @Override
    public void e() {
        for (w wVar : this.f68184i) {
            setLocation(wVar.getLocation());
            wVar.n();
            Object objB = wVar.B();
            if (objB != null) {
                if (!(objB instanceof b)) {
                    StringBuffer stringBuffer = new StringBuffer();
                    stringBuffer.append("Invalid task in antlib ");
                    stringBuffer.append(wVar.C());
                    stringBuffer.append(" ");
                    stringBuffer.append(objB.getClass());
                    stringBuffer.append(" does not ");
                    stringBuffer.append("extend org.apache.tools.ant.taskdefs.AntlibDefinition");
                    throw new BuildException(stringBuffer.toString());
                }
                b bVar = (b) objB;
                bVar.x(this.f68183h);
                bVar.w(w());
                bVar.m();
                bVar.e();
            }
        }
    }

    protected void x(ClassLoader classLoader) {
        this.f68182g = classLoader;
    }

    protected void y(String str) {
        this.f68183h = str;
    }
}
