package org.apache.tools.ant.types;

import java.net.SocketPermission;
import java.security.Permission;
import java.security.Permissions;
import java.security.UnresolvedPermission;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.ListIterator;
import java.util.PropertyPermission;
import java.util.Set;
import java.util.StringTokenizer;
import org.apache.tools.ant.BuildException;
import org.apache.tools.ant.ExitException;

public class o {

    private static final Class[] f68340g;

    static Class f68341h;

    private List f68342a;

    private List f68343b;

    private Permissions f68344c;

    private SecurityManager f68345d;

    private boolean f68346e;

    private boolean f68347f;

    private class a extends SecurityManager {
        private a() {
        }

        private void a(Permission permission) {
            ListIterator listIterator = o.this.f68343b.listIterator();
            while (listIterator.hasNext()) {
                if (((b) listIterator.next()).d(permission)) {
                    StringBuffer stringBuffer = new StringBuffer();
                    stringBuffer.append("Permission ");
                    stringBuffer.append(permission);
                    stringBuffer.append(" was revoked.");
                    throw new SecurityException(stringBuffer.toString());
                }
            }
        }

        @Override
        public void checkExit(int i10) {
            try {
                checkPermission(new RuntimePermission("exitVM", null));
            } catch (SecurityException e10) {
                throw new ExitException(e10.getMessage(), i10);
            }
        }

        @Override
        public void checkPermission(Permission permission) {
            if (o.this.f68346e) {
                if (o.this.f68347f && !permission.getName().equals("exitVM")) {
                    boolean zImplies = o.this.f68344c.implies(permission);
                    a(permission);
                    if (zImplies || o.this.f68345d == null) {
                        return;
                    }
                    o.this.f68345d.checkPermission(permission);
                    return;
                }
                if (o.this.f68344c.implies(permission)) {
                    a(permission);
                    return;
                }
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append("Permission ");
                stringBuffer.append(permission);
                stringBuffer.append(" was not granted.");
                throw new SecurityException(stringBuffer.toString());
            }
        }
    }

    public static class b {

        private String f68349a;

        private String f68350b;

        private String f68351c;

        private Set f68352d;

        private Set e(String str) {
            HashSet hashSet = new HashSet();
            StringTokenizer stringTokenizer = new StringTokenizer(str, ",");
            while (stringTokenizer.hasMoreTokens()) {
                String strTrim = stringTokenizer.nextToken().trim();
                if (!strTrim.equals("")) {
                    hashSet.add(strTrim);
                }
            }
            return hashSet;
        }

        public String a() {
            return this.f68351c;
        }

        public String b() {
            return this.f68349a;
        }

        public String c() {
            return this.f68350b;
        }

        boolean d(Permission permission) {
            if (!this.f68349a.equals(permission.getClass().getName())) {
                return false;
            }
            String str = this.f68350b;
            if (str != null) {
                if (str.endsWith("*")) {
                    String name = permission.getName();
                    String str2 = this.f68350b;
                    if (!name.startsWith(str2.substring(0, str2.length() - 1))) {
                        return false;
                    }
                } else if (!this.f68350b.equals(permission.getName())) {
                    return false;
                }
            }
            if (this.f68352d != null) {
                Set setE = e(permission.getActions());
                int size = setE.size();
                setE.removeAll(this.f68352d);
                if (setE.size() == size) {
                    return false;
                }
            }
            return true;
        }

        public String toString() {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("Permission: ");
            stringBuffer.append(this.f68349a);
            stringBuffer.append(" (\"");
            stringBuffer.append(this.f68350b);
            stringBuffer.append("\", \"");
            stringBuffer.append(this.f68352d);
            stringBuffer.append("\")");
            return stringBuffer.toString();
        }
    }

    static {
        Class clsF = f68341h;
        if (clsF == null) {
            clsF = f("java.lang.String");
            f68341h = clsF;
        }
        Class clsF2 = f68341h;
        if (clsF2 == null) {
            clsF2 = f("java.lang.String");
            f68341h = clsF2;
        }
        f68340g = new Class[]{clsF, clsF2};
    }

    public o() {
        this(false);
    }

    static Class f(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e10) {
            throw new NoClassDefFoundError(e10.getMessage());
        }
    }

    private Permission g(b bVar) {
        try {
            return (Permission) Class.forName(bVar.b()).getConstructor(f68340g).newInstance(bVar.c(), bVar.a());
        } catch (Exception unused) {
            return new UnresolvedPermission(bVar.b(), bVar.c(), bVar.a(), null);
        }
    }

    private void h() {
        this.f68344c = new Permissions();
        ListIterator listIterator = this.f68343b.listIterator();
        while (listIterator.hasNext()) {
            b bVar = (b) listIterator.next();
            if (bVar.b() == null) {
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append("Revoked permission ");
                stringBuffer.append(bVar);
                stringBuffer.append(" does not contain a class.");
                throw new BuildException(stringBuffer.toString());
            }
        }
        ListIterator listIterator2 = this.f68342a.listIterator();
        while (listIterator2.hasNext()) {
            b bVar2 = (b) listIterator2.next();
            if (bVar2.b() == null) {
                StringBuffer stringBuffer2 = new StringBuffer();
                stringBuffer2.append("Granted permission ");
                stringBuffer2.append(bVar2);
                stringBuffer2.append(" does not contain a class.");
                throw new BuildException(stringBuffer2.toString());
            }
            this.f68344c.add(g(bVar2));
        }
        this.f68344c.add(new SocketPermission("localhost:1024-", "listen"));
        this.f68344c.add(new PropertyPermission("java.version", "read"));
        this.f68344c.add(new PropertyPermission("java.vendor", "read"));
        this.f68344c.add(new PropertyPermission("java.vendor.url", "read"));
        this.f68344c.add(new PropertyPermission("java.class.version", "read"));
        this.f68344c.add(new PropertyPermission("os.name", "read"));
        this.f68344c.add(new PropertyPermission("os.version", "read"));
        this.f68344c.add(new PropertyPermission("os.arch", "read"));
        this.f68344c.add(new PropertyPermission("file.encoding", "read"));
        this.f68344c.add(new PropertyPermission("file.separator", "read"));
        this.f68344c.add(new PropertyPermission("path.separator", "read"));
        this.f68344c.add(new PropertyPermission("line.separator", "read"));
        this.f68344c.add(new PropertyPermission("java.specification.version", "read"));
        this.f68344c.add(new PropertyPermission("java.specification.vendor", "read"));
        this.f68344c.add(new PropertyPermission("java.specification.name", "read"));
        this.f68344c.add(new PropertyPermission("java.vm.specification.version", "read"));
        this.f68344c.add(new PropertyPermission("java.vm.specification.vendor", "read"));
        this.f68344c.add(new PropertyPermission("java.vm.specification.name", "read"));
        this.f68344c.add(new PropertyPermission("java.vm.version", "read"));
        this.f68344c.add(new PropertyPermission("java.vm.vendor", "read"));
        this.f68344c.add(new PropertyPermission("java.vm.name", "read"));
    }

    public synchronized void i() {
        this.f68346e = false;
        System.setSecurityManager(this.f68345d);
    }

    public synchronized void j() {
        this.f68345d = System.getSecurityManager();
        h();
        System.setSecurityManager(new a());
        this.f68346e = true;
    }

    public o(boolean z10) {
        this.f68342a = new LinkedList();
        this.f68343b = new LinkedList();
        this.f68344c = null;
        this.f68345d = null;
        this.f68346e = false;
        this.f68347f = z10;
    }
}
