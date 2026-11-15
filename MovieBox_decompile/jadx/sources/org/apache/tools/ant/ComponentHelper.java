package org.apache.tools.ant;

import java.io.File;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.List;
import java.util.Properties;
import java.util.Set;
import java.util.Stack;

public class ComponentHelper {

    private static Properties[] f68032j = new Properties[2];

    static Class f68033k;

    private AntTypeTable f68034a;

    private Hashtable f68035b = new Hashtable();

    private boolean f68036c = true;

    private Hashtable f68037d = new Hashtable();

    private boolean f68038e = true;

    private Set f68039f = new HashSet();

    private Stack f68040g = new Stack();

    private String f68041h = null;

    private Project f68042i;

    private static class AntTypeTable extends Hashtable {
        private static final long serialVersionUID = -3060442320477772028L;
        private Project project;

        AntTypeTable(Project project) {
            this.project = project;
        }

        @Override
        public boolean contains(Object obj) {
            boolean z10;
            if (!(obj instanceof Class)) {
                return false;
            }
            Iterator it = values().iterator();
            loop0: while (true) {
                z10 = false;
                while (true) {
                    if (!it.hasNext() || z10) {
                        break loop0;
                    }
                    if (((b) it.next()).h(this.project) == obj) {
                        z10 = true;
                    }
                }
            }
            return z10;
        }

        @Override
        public boolean containsValue(Object obj) {
            return contains(obj);
        }

        Object create(String str) {
            b definition = getDefinition(str);
            if (definition == null) {
                return null;
            }
            return definition.c(this.project);
        }

        public List findMatches(String str) {
            ArrayList arrayList = new ArrayList();
            for (b bVar : values()) {
                if (bVar.i().startsWith(str)) {
                    arrayList.add(bVar);
                }
            }
            return arrayList;
        }

        @Override
        public Object get(Object obj) {
            return getTypeClass((String) obj);
        }

        b getDefinition(String str) {
            return (b) super.get(str);
        }

        Class getExposedClass(String str) {
            b definition = getDefinition(str);
            if (definition == null) {
                return null;
            }
            return definition.h(this.project);
        }

        Class getTypeClass(String str) {
            b definition = getDefinition(str);
            if (definition == null) {
                return null;
            }
            return definition.j(this.project);
        }
    }

    protected ComponentHelper() {
    }

    private synchronized void b(String str) {
        try {
            String strD = r.d(str);
            if ("".equals(strD)) {
                strD = "antlib:org.apache.tools.ant";
            }
            if (strD.startsWith("antlib:")) {
                if (this.f68039f.contains(strD)) {
                    return;
                }
                this.f68039f.add(strD);
                org.apache.tools.ant.taskdefs.n nVar = new org.apache.tools.ant.taskdefs.n();
                nVar.setProject(this.f68042i);
                nVar.m();
                nVar.x(strD);
                nVar.s(strD);
                nVar.H(org.apache.tools.ant.taskdefs.e.E(strD));
                nVar.G(new org.apache.tools.ant.taskdefs.e.a("ignore"));
                nVar.e();
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    static Class c(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e10) {
            throw new NoClassDefFoundError(e10.getMessage());
        }
    }

    public static ComponentHelper j(Project project) {
        if (project == null) {
            return null;
        }
        ComponentHelper componentHelper = (ComponentHelper) project.t("ant.ComponentHelper");
        if (componentHelper != null) {
            return componentHelper;
        }
        ComponentHelper componentHelper2 = new ComponentHelper();
        componentHelper2.u(project);
        project.d("ant.ComponentHelper", componentHelper2);
        return componentHelper2;
    }

    public static String o(Project project, Object obj, boolean z10) {
        if (project == null) {
            project = Project.q(obj);
        }
        return project == null ? p(obj.getClass(), z10) : j(project).n(obj, z10);
    }

    private static String p(Class cls, boolean z10) {
        if (!z10) {
            return cls.toString();
        }
        String name = cls.getName();
        return name.substring(name.lastIndexOf(46) + 1);
    }

    private void q(PrintWriter printWriter, String str, boolean z10, String str2) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("Cause: the class ");
        stringBuffer.append(str);
        stringBuffer.append(" was not found.");
        printWriter.println(stringBuffer.toString());
        if (z10) {
            printWriter.println("        This looks like one of Ant's optional components.");
            printWriter.println("Action: Check that the appropriate optional JAR exists in");
            printWriter.println(str2);
        } else {
            printWriter.println("Action: Check that the component has been correctly declared");
            printWriter.println("        and that the implementing JAR is in one of:");
            printWriter.println(str2);
        }
    }

    private void r(PrintWriter printWriter, boolean z10, NoClassDefFoundError noClassDefFoundError, String str) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("Cause: Could not load a dependent class ");
        stringBuffer.append(noClassDefFoundError.getMessage());
        printWriter.println(stringBuffer.toString());
        if (z10) {
            printWriter.println("       It is not enough to have Ant's optional JARs");
            printWriter.println("       you need the JAR files that the optional tasks depend upon.");
            printWriter.println("       Ant's optional task dependencies are listed in the manual.");
        } else {
            printWriter.println("       This class may be in a separate JAR that is not installed.");
        }
        printWriter.println("Action: Determine what extra JAR files are needed, and place them in one of:");
        printWriter.println(str);
    }

    private void s(PrintWriter printWriter, String str, String str2) {
        boolean z10 = str.indexOf("antlib:") == 0;
        String strD = r.d(str);
        printWriter.println("Cause: The name is undefined.");
        printWriter.println("Action: Check the spelling.");
        printWriter.println("Action: Check that any custom tasks/types have been declared.");
        printWriter.println("Action: Check that any <presetdef>/<macrodef> declarations have taken place.");
        if (strD.length() > 0) {
            List listFindMatches = this.f68034a.findMatches(strD);
            if (listFindMatches.size() <= 0) {
                printWriter.println("No types or tasks have been defined in this namespace yet");
                if (z10) {
                    printWriter.println();
                    printWriter.println("This appears to be an antlib declaration. ");
                    printWriter.println("Action: Check that the implementing library exists in one of:");
                    printWriter.println(str2);
                    return;
                }
                return;
            }
            printWriter.println();
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("The definitions in the namespace ");
            stringBuffer.append(strD);
            stringBuffer.append(" are:");
            printWriter.println(stringBuffer.toString());
            Iterator it = listFindMatches.iterator();
            while (it.hasNext()) {
                String strC = r.c(((b) it.next()).i());
                StringBuffer stringBuffer2 = new StringBuffer();
                stringBuffer2.append("    ");
                stringBuffer2.append(strC);
                printWriter.println(stringBuffer2.toString());
            }
        }
    }

    private boolean t(b bVar, b bVar2) {
        boolean zW = w(bVar);
        return zW == w(bVar2) && (!zW || bVar.n(bVar2, this.f68042i));
    }

    /* JADX WARN: Code duplicated, block: B:21:0x003a  */
    private void v(b bVar) {
        boolean z10;
        String strI = bVar.i();
        synchronized (this.f68034a) {
            try {
                this.f68036c = true;
                this.f68038e = true;
                b definition = this.f68034a.getDefinition(strI);
                if (definition != null) {
                    if (t(bVar, definition)) {
                        return;
                    }
                    Class<?> exposedClass = this.f68034a.getExposedClass(strI);
                    if (exposedClass == null) {
                        z10 = false;
                    } else {
                        Class clsC = f68033k;
                        if (clsC == null) {
                            clsC = c("org.apache.tools.ant.Task");
                            f68033k = clsC;
                        }
                        if (clsC.isAssignableFrom(exposedClass)) {
                            z10 = true;
                        } else {
                            z10 = false;
                        }
                    }
                    Project project = this.f68042i;
                    StringBuffer stringBuffer = new StringBuffer();
                    stringBuffer.append("Trying to override old definition of ");
                    stringBuffer.append(z10 ? "task " : "datatype ");
                    stringBuffer.append(strI);
                    project.x(stringBuffer.toString(), bVar.u(definition, this.f68042i) ? 3 : 1);
                }
                Project project2 = this.f68042i;
                StringBuffer stringBuffer2 = new StringBuffer();
                stringBuffer2.append(" +Datatype ");
                stringBuffer2.append(strI);
                stringBuffer2.append(" ");
                stringBuffer2.append(bVar.g());
                project2.x(stringBuffer2.toString(), 4);
                this.f68034a.put(strI, bVar);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private boolean w(b bVar) {
        return (bVar.j(this.f68042i) == null || bVar.h(this.f68042i) == null) ? false : true;
    }

    public void a(b bVar) {
        v(bVar);
    }

    public Object d(String str) {
        b bVarL = l(str);
        if (bVarL == null) {
            return null;
        }
        return bVarL.c(this.f68042i);
    }

    public Object e(w wVar, String str, String str2) {
        Object objD = d(str2);
        if (objD instanceof u) {
            u uVar = (u) objD;
            uVar.setLocation(wVar.getLocation());
            uVar.t(str2);
            uVar.s(wVar.j());
            uVar.q(wVar.g());
            uVar.m();
        }
        return objD;
    }

    public String f(String str, String str2) {
        String string;
        boolean z10;
        boolean z11;
        boolean z12;
        StringWriter stringWriter = new StringWriter();
        PrintWriter printWriter = new PrintWriter(stringWriter);
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("Problem: failed to create ");
        stringBuffer.append(str2);
        stringBuffer.append(" ");
        stringBuffer.append(str);
        printWriter.println(stringBuffer.toString());
        File file = new File(System.getProperty("user.home"), kz.a.f65498a);
        String property = System.getProperty("ant.home");
        boolean z13 = true;
        boolean z14 = false;
        if (property != null) {
            string = new File(property, "lib").getAbsolutePath();
            z10 = false;
        } else {
            StringBuffer stringBuffer2 = new StringBuffer();
            stringBuffer2.append("ANT_HOME");
            stringBuffer2.append(File.separatorChar);
            stringBuffer2.append("lib");
            string = stringBuffer2.toString();
            z10 = true;
        }
        StringBuffer stringBuffer3 = new StringBuffer();
        stringBuffer3.append("        -");
        stringBuffer3.append(string);
        stringBuffer3.append('\n');
        if (z10) {
            stringBuffer3.append("        -");
            stringBuffer3.append("the IDE Ant configuration dialogs");
        } else {
            stringBuffer3.append("        -");
            stringBuffer3.append(file);
            stringBuffer3.append('\n');
            stringBuffer3.append("        -");
            stringBuffer3.append("a directory added on the command line with the -lib argument");
        }
        String string2 = stringBuffer3.toString();
        b bVarL = l(str);
        if (bVarL == null) {
            s(printWriter, str, string2);
        } else {
            String strG = bVarL.g();
            boolean zStartsWith = strG.startsWith("org.apache.tools.ant.");
            boolean zStartsWith2 = strG.startsWith("org.apache.tools.ant.taskdefs.optional") | strG.startsWith("org.apache.tools.ant.types.optional");
            Class clsM = null;
            try {
                clsM = bVarL.m();
                z11 = false;
                z12 = false;
            } catch (ClassNotFoundException unused) {
                z12 = !zStartsWith2;
                q(printWriter, strG, zStartsWith2, string2);
                z11 = true;
            } catch (NoClassDefFoundError e10) {
                r(printWriter, zStartsWith2, e10, string2);
                z11 = true;
                z12 = false;
            }
            if (clsM != null) {
                try {
                    bVarL.l(clsM, this.f68042i);
                    printWriter.println("The component could be instantiated.");
                } catch (IllegalAccessException unused2) {
                    StringBuffer stringBuffer4 = new StringBuffer();
                    stringBuffer4.append("Cause: The constructor for ");
                    stringBuffer4.append(strG);
                    stringBuffer4.append(" is private and cannot be invoked.");
                    printWriter.println(stringBuffer4.toString());
                    z14 = true;
                } catch (InstantiationException unused3) {
                    StringBuffer stringBuffer5 = new StringBuffer();
                    stringBuffer5.append("Cause: The class ");
                    stringBuffer5.append(strG);
                    stringBuffer5.append(" is abstract and cannot be instantiated.");
                    printWriter.println(stringBuffer5.toString());
                    z14 = true;
                } catch (NoClassDefFoundError e11) {
                    StringBuffer stringBuffer6 = new StringBuffer();
                    stringBuffer6.append("Cause:  A class needed by class ");
                    stringBuffer6.append(strG);
                    stringBuffer6.append(" cannot be found: ");
                    printWriter.println(stringBuffer6.toString());
                    StringBuffer stringBuffer7 = new StringBuffer();
                    stringBuffer7.append("       ");
                    stringBuffer7.append(e11.getMessage());
                    printWriter.println(stringBuffer7.toString());
                    printWriter.println("Action: Determine what extra JAR files are needed, and place them in:");
                    printWriter.println(string2);
                } catch (NoSuchMethodException unused4) {
                    StringBuffer stringBuffer8 = new StringBuffer();
                    stringBuffer8.append("Cause: The class ");
                    stringBuffer8.append(strG);
                    stringBuffer8.append(" has no compatible constructor.");
                    printWriter.println(stringBuffer8.toString());
                    z14 = true;
                } catch (InvocationTargetException e12) {
                    Throwable targetException = e12.getTargetException();
                    printWriter.println("Cause: The constructor threw the exception");
                    printWriter.println(targetException.toString());
                    targetException.printStackTrace(printWriter);
                    z14 = true;
                }
            }
            z13 = z11;
            printWriter.println();
            printWriter.println("Do not panic, this is a common problem.");
            if (z12) {
                printWriter.println("It may just be a typographical error in the build file or the task/type declaration.");
            }
            if (z13) {
                printWriter.println("The commonest cause is a missing JAR.");
            }
            if (z14) {
                printWriter.println("This is quite a low level problem, which may need consultation with the author of the task.");
                if (zStartsWith) {
                    printWriter.println("This may be the Ant team. Please file a defect or contact the developer team.");
                } else {
                    printWriter.println("This does not appear to be a task bundled with Ant.");
                    StringBuffer stringBuffer9 = new StringBuffer();
                    stringBuffer9.append("Please take it up with the supplier of the third-party ");
                    stringBuffer9.append(str2);
                    stringBuffer9.append(".");
                    printWriter.println(stringBuffer9.toString());
                    printWriter.println("If you have written it yourself, you probably have a bug to fix.");
                }
            } else {
                printWriter.println();
                printWriter.println("This is not a bug; it is a configuration problem");
            }
        }
        printWriter.flush();
        printWriter.close();
        return stringWriter.toString();
    }

    public void g(String str) {
        this.f68041h = str;
        this.f68040g.push(str);
    }

    public void h() {
        this.f68040g.pop();
        this.f68041h = this.f68040g.size() == 0 ? null : (String) this.f68040g.peek();
    }

    public Class i(String str) {
        b bVarL = l(str);
        if (bVarL == null) {
            return null;
        }
        return bVarL.h(this.f68042i);
    }

    public String k() {
        return this.f68041h;
    }

    public b l(String str) {
        b(str);
        return this.f68034a.getDefinition(str);
    }

    public String m(Object obj) {
        return n(obj, false);
    }

    public String n(Object obj, boolean z10) {
        Class cls = obj.getClass();
        String name = cls.getName();
        for (b bVar : this.f68034a.values()) {
            if (name.equals(bVar.g()) && cls == bVar.h(this.f68042i)) {
                String strI = bVar.i();
                if (z10) {
                    return strI;
                }
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append("The <");
                stringBuffer.append(strI);
                stringBuffer.append("> type");
                return stringBuffer.toString();
            }
        }
        return p(obj.getClass(), z10);
    }

    public void u(Project project) {
        this.f68042i = project;
        this.f68034a = new AntTypeTable(project);
    }
}
