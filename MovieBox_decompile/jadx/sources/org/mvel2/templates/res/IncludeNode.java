package org.mvel2.templates.res;

import g00.c;
import g00.d;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.templates.TemplateError;

public class IncludeNode extends Node {
    int includeOffset;
    int includeStart;
    int preOffset;
    int preStart;

    public IncludeNode(int i10, String str, char[] cArr, int i11, int i12) {
        this.begin = i10;
        this.name = str;
        this.contents = cArr;
        this.cStart = i11;
        this.cEnd = i12 - 1;
        this.end = i12;
        int iA = d.a(cArr, 0);
        int i13 = this.cStart;
        this.includeStart = i13;
        this.includeOffset = iA - i13;
        int i14 = iA + 1;
        this.preStart = i14;
        this.preOffset = this.cEnd - i14;
    }

    public static String readInFile(f00.d dVar, String str) {
        File file = new File(String.valueOf(dVar.i().k()) + "/" + str);
        try {
            FileInputStream fileInputStream = new FileInputStream(file);
            BufferedInputStream bufferedInputStream = new BufferedInputStream(fileInputStream);
            dVar.i().q(file.getParent());
            byte[] bArr = new byte[10];
            StringBuilder sb2 = new StringBuilder();
            while (true) {
                int i10 = bufferedInputStream.read(bArr);
                if (i10 == -1) {
                    bufferedInputStream.close();
                    fileInputStream.close();
                    dVar.i().n();
                    return sb2.toString();
                }
                for (int i11 = 0; i11 < i10; i11++) {
                    sb2.append((char) bArr[i11]);
                }
            }
        } catch (FileNotFoundException unused) {
            throw new TemplateError("cannot include template '" + str + "': file not found.");
        } catch (IOException e10) {
            throw new TemplateError("unknown I/O exception while including '" + str + "' (stacktrace nested)", e10);
        }
    }

    @Override
    public boolean demarcate(Node node, char[] cArr) {
        return false;
    }

    @Override
    public Object eval(f00.d dVar, c cVar, Object obj, VariableResolverFactory variableResolverFactory) {
        String str = (String) org.mvel2.d.p(this.contents, this.includeStart, this.includeOffset, obj, variableResolverFactory, String.class);
        int i10 = this.preOffset;
        if (i10 != 0) {
            org.mvel2.d.o(this.contents, this.preStart, i10, obj, variableResolverFactory);
        }
        Node node = this.next;
        return node != null ? node.eval(dVar, cVar.append(String.valueOf(f00.d.a(readInFile(dVar, str), obj, variableResolverFactory))), obj, variableResolverFactory) : cVar.append(String.valueOf(org.mvel2.d.l(readInFile(dVar, str), obj, variableResolverFactory)));
    }
}
