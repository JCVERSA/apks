package defpackage;

import freemarker.core.Environment;
import freemarker.template.SimpleSequence;
import java.util.StringTokenizer;

public class zm0 extends ll0 {
    @Override
    public zfa h0(String str, Environment environment) {
        SimpleSequence simpleSequence = new SimpleSequence();
        StringTokenizer stringTokenizer = new StringTokenizer(str);
        while (stringTokenizer.hasMoreTokens()) {
            simpleSequence.add(stringTokenizer.nextToken());
        }
        return simpleSequence;
    }
}
