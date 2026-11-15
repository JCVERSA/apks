package org.apache.tools.ant.types;

import com.cloud.tmc.kernel.utils.UrlUtils;
import java.util.Vector;
import org.apache.tools.ant.BuildException;

public class g {

    protected Vector f68307a = new Vector();

    public static class a {

        private String f68308a;

        private String f68309b;

        public String a() {
            d();
            StringBuffer stringBuffer = new StringBuffer(this.f68308a.trim());
            stringBuffer.append(UrlUtils.EQUAL_MARK);
            stringBuffer.append(this.f68309b.trim());
            return stringBuffer.toString();
        }

        public String b() {
            return this.f68308a;
        }

        public String c() {
            return this.f68309b;
        }

        public void d() {
            if (this.f68308a == null || this.f68309b == null) {
                throw new BuildException("key and value must be specified for environment variables.");
            }
        }
    }

    public String[] a() {
        if (this.f68307a.size() == 0) {
            return null;
        }
        int size = this.f68307a.size();
        String[] strArr = new String[size];
        for (int i10 = 0; i10 < size; i10++) {
            strArr[i10] = ((a) this.f68307a.elementAt(i10)).a();
        }
        return strArr;
    }
}
