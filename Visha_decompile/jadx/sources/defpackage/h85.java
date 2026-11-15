package defpackage;

import org.schabi.newpipe.extractor.exceptions.ParsingException;
import org.schabi.newpipe.extractor.utils.jsextractor.Token;

public abstract class h85 {
    public static String a(String str, String str2) throws ParsingException {
        int iIndexOf = str.indexOf(str2);
        if (iIndexOf < 0) {
            throw new ParsingException("Start not found");
        }
        String strSubstring = str.substring(iIndexOf + str2.length());
        nk5 nk5Var = new nk5(strSubstring);
        boolean z = false;
        while (true) {
            nk5.h hVarB = nk5Var.b();
            Token token = hVarB.a;
            if (token == Token.LC) {
                z = true;
            } else {
                if (z && nk5Var.g()) {
                    return strSubstring.substring(0, hVarB.c);
                }
                if (token == Token.EOF) {
                    throw new ParsingException("Could not find matching braces");
                }
            }
        }
    }
}
