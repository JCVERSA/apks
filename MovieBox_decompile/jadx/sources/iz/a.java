package iz;

import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Vector;
import org.apache.tools.ant.Location;
import org.apache.tools.ant.Project;
import org.apache.tools.ant.RuntimeConfigurable;
import org.apache.tools.ant.t;
import org.xml.sax.Attributes;
import org.xml.sax.Locator;

public class a {

    private Project f62817a;

    private File f62818b;

    private File f62820d;

    private String f62821e;

    private Locator f62822f;

    private Vector f62819c = new Vector();

    private t f62823g = new t();

    private t f62824h = null;

    private Vector f62825i = new Vector();

    private boolean f62826j = false;

    private Map f62827k = new HashMap();

    private Map f62828l = null;

    public a(Project project) {
        this.f62817a = project;
        this.f62823g.m(project);
        this.f62823g.l("");
        this.f62819c.addElement(this.f62823g);
    }

    public void a(t tVar) {
        this.f62819c.addElement(tVar);
        this.f62824h = tVar;
    }

    public void b(Object obj, Attributes attributes) {
        String value = attributes.getValue("id");
        if (value != null) {
            this.f62817a.b(value, obj);
        }
    }

    public RuntimeConfigurable c() {
        if (this.f62825i.size() < 1) {
            return null;
        }
        Vector vector = this.f62825i;
        return (RuntimeConfigurable) vector.elementAt(vector.size() - 1);
    }

    public void d(String str) {
        List list = (List) this.f62827k.get(str);
        if (list == null || list.size() == 0) {
            return;
        }
        list.remove(list.size() - 1);
    }

    public File e() {
        return this.f62818b;
    }

    public File f() {
        return this.f62820d;
    }

    public String g() {
        return this.f62821e;
    }

    public t h() {
        return this.f62824h;
    }

    public Map i() {
        return this.f62828l;
    }

    public t j() {
        return this.f62823g;
    }

    public Locator k() {
        return this.f62822f;
    }

    public String l(String str) {
        List list = (List) this.f62827k.get(str);
        if (list == null || list.size() == 0) {
            return null;
        }
        return (String) list.get(list.size() - 1);
    }

    public Project m() {
        return this.f62817a;
    }

    public boolean n() {
        return this.f62826j;
    }

    public void o() {
        if (this.f62825i.size() > 0) {
            Vector vector = this.f62825i;
            vector.removeElementAt(vector.size() - 1);
        }
    }

    public void p(RuntimeConfigurable runtimeConfigurable) {
        this.f62825i.addElement(runtimeConfigurable);
    }

    public void q(File file) {
        this.f62818b = file;
        this.f62820d = new File(file.getParent());
        this.f62823g.k(new Location(file.getAbsolutePath()));
    }

    public void r(String str) {
        this.f62821e = str;
    }

    public void s(t tVar) {
        this.f62824h = tVar;
    }

    public void t(t tVar) {
        this.f62823g = tVar;
    }

    public void u(Locator locator) {
        this.f62822f = locator;
    }

    public void v(String str, String str2) {
        List arrayList = (List) this.f62827k.get(str);
        if (arrayList == null) {
            arrayList = new ArrayList();
            this.f62827k.put(str, arrayList);
        }
        arrayList.add(str2);
    }
}
