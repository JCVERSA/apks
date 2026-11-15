package org.mvel2.util;

import java.util.logging.Level;
import java.util.logging.Logger;
import org.mvel2.CompileException;

public class f {

    private static final Logger f68884a = Logger.getLogger(f.class.getName());

    public static CompileException a(CompileException compileException, char[] cArr, int i10) {
        if (cArr != compileException.getExpr()) {
            if (compileException.getExpr().length <= compileException.getCursor()) {
                compileException.setCursor(compileException.getExpr().length - 1);
            }
            try {
                String strSubstring = new String(compileException.getExpr()).substring(compileException.getCursor());
                compileException.setExpr(cArr);
                String str = new String(cArr);
                compileException.setCursor(str.substring(str.indexOf(new String(compileException.getExpr()))).indexOf(strSubstring));
            } catch (Throwable th2) {
                f68884a.log(Level.WARNING, "", th2);
            }
        }
        return compileException;
    }

    public static org.mvel2.c b(org.mvel2.c cVar, char[] cArr, int i10) {
        if (cArr != cVar.d()) {
            String strSubstring = new String(cVar.d()).substring(cVar.c());
            cVar.j(cArr);
            cVar.i(i10 + new String(cArr).substring(i10).indexOf(strSubstring));
        }
        return cVar;
    }
}
