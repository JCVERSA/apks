package defpackage;

import java.io.PrintWriter;
import java.io.StringWriter;
import java.io.Writer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.StringTokenizer;

public final class ria {
    public static final ria a = new ria();
    public static final String b;

    static {
        String property = System.getProperty("line.separator");
        if (property == null) {
            property = "\n";
        }
        b = property;
    }

    public final String a(Throwable th) {
        List listB;
        y45.j(th, "throwable");
        ArrayList arrayList = new ArrayList();
        while (th != null && !arrayList.contains(th)) {
            arrayList.add(th);
            th = th.getCause();
        }
        int size = arrayList.size();
        ArrayList arrayList2 = new ArrayList();
        int i = size - 1;
        List listB2 = b((Throwable) arrayList.get(i));
        while (true) {
            int i2 = size - 1;
            if (i2 < 0) {
                break;
            }
            if (i2 != 0) {
                listB = b((Throwable) arrayList.get(size - 2));
                c(listB2, listB);
            } else {
                listB = listB2;
            }
            if (i2 == i) {
                arrayList2.add(((Throwable) arrayList.get(i2)).toString());
            } else {
                arrayList2.add(" Caused by: " + arrayList.get(i2));
            }
            arrayList2.addAll(listB2);
            listB2 = listB;
            size = i2;
        }
        StringBuilder sb = new StringBuilder();
        Iterator it = arrayList2.iterator();
        while (it.hasNext()) {
            sb.append((String) it.next());
            sb.append(b);
        }
        String string = sb.toString();
        y45.i(string, "toString(...)");
        return string;
    }

    public final List b(Throwable th) {
        StringWriter stringWriter = new StringWriter();
        th.printStackTrace(new PrintWriter((Writer) stringWriter, true));
        String string = stringWriter.toString();
        y45.i(string, "toString(...)");
        StringTokenizer stringTokenizer = new StringTokenizer(string, b);
        ArrayList arrayList = new ArrayList();
        boolean z = false;
        while (stringTokenizer.hasMoreTokens()) {
            String strNextToken = stringTokenizer.nextToken();
            y45.g(strNextToken);
            int iM0 = j1a.m0(strNextToken, "at", 0, false, 6, null);
            if (iM0 != -1) {
                String strSubstring = strNextToken.substring(0, iM0);
                y45.i(strSubstring, "substring(...)");
                if (j1a.i1(strSubstring).toString().length() == 0) {
                    arrayList.add(strNextToken);
                    z = true;
                }
            }
            if (z) {
                break;
            }
        }
        return arrayList;
    }

    public final void c(List list, List list2) {
        int size = list.size() - 1;
        for (int size2 = list2.size() - 1; size >= 0 && size2 >= 0; size2--) {
            if (y45.e((String) list.get(size), (String) list2.get(size2))) {
                list.remove(size);
            }
            size--;
        }
    }
}
