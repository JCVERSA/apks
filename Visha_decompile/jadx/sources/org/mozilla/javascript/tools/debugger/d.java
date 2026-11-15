package org.mozilla.javascript.tools.debugger;

import defpackage.ubc;
import org.mozilla.javascript.tools.debugger.treetable.TreeTableModel;

public class d implements TreeTableModel {
    public static final String[] b = {" Name", " Value"};
    public static final Class[] c = {TreeTableModel.class, String.class};
    public static final a[] d = new a[0];
    public Dim a;

    public static class a {
        public static Object a(a aVar) {
            throw null;
        }

        public static Object b(a aVar) {
            throw null;
        }
    }

    public Object a(a aVar) {
        try {
            return this.a.getObjectProperty(a.a(aVar), a.b(aVar));
        } catch (Exception unused) {
            return "undefined";
        }
    }

    @Override
    public Class getColumnClass(int i) {
        return c[i];
    }

    @Override
    public int getColumnCount() {
        return b.length;
    }

    @Override
    public String getColumnName(int i) {
        return b[i];
    }

    @Override
    public Object getValueAt(Object obj, int i) {
        String string;
        if (this.a == null) {
            return null;
        }
        ubc.a(obj);
        if (i == 0) {
            throw null;
        }
        if (i != 1) {
            return null;
        }
        try {
            string = this.a.objectToString(a(null));
        } catch (RuntimeException e) {
            String message = e.getMessage();
            string = message == null ? e.toString() : message;
        }
        StringBuilder sb = new StringBuilder();
        int length = string.length();
        for (int i2 = 0; i2 < length; i2++) {
            char cCharAt = string.charAt(i2);
            if (Character.isISOControl(cCharAt)) {
                cCharAt = ' ';
            }
            sb.append(cCharAt);
        }
        return sb.toString();
    }

    @Override
    public boolean isCellEditable(Object obj, int i) {
        return i == 0;
    }

    @Override
    public void setValueAt(Object obj, Object obj2, int i) {
    }
}
