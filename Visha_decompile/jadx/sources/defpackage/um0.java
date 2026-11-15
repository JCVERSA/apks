package defpackage;

import com.alibaba.android.arouter.utils.Consts;
import freemarker.core.f1;
import freemarker.template.SimpleScalar;
import freemarker.template.TemplateModelException;
import java.util.List;

public class um0 implements yfa {
    public final String b;
    public final vm0 c;

    public um0(vm0 vm0Var, String str) {
        this.c = vm0Var;
        this.b = str;
    }

    public final TemplateModelException b(int i, int i2, int i3) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("?");
        stringBuffer.append(this.c.i);
        return f1.o(stringBuffer.toString(), i, new Object[]{"The index mustn't be greater than the length of the string, ", new Integer(i3), ", but it was ", new Integer(i2), Consts.DOT});
    }

    public final TemplateModelException c(int i, int i2) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("?");
        stringBuffer.append(this.c.i);
        return f1.o(stringBuffer.toString(), i, new Object[]{"The index must be at least 0, but was ", new Integer(i2), Consts.DOT});
    }

    @Override
    public Object exec(List list) throws TemplateModelException {
        int size = list.size();
        this.c.Y(size, 1, 2);
        int iIntValue = this.c.b0(list, 0).intValue();
        int length = this.b.length();
        if (iIntValue < 0) {
            throw c(0, iIntValue);
        }
        if (iIntValue > length) {
            throw b(0, iIntValue, length);
        }
        if (size <= 1) {
            return new SimpleScalar(this.b.substring(iIntValue));
        }
        int iIntValue2 = this.c.b0(list, 1).intValue();
        if (iIntValue2 < 0) {
            throw c(1, iIntValue2);
        }
        if (iIntValue2 > length) {
            throw b(1, iIntValue2, length);
        }
        if (iIntValue <= iIntValue2) {
            return new SimpleScalar(this.b.substring(iIntValue, iIntValue2));
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("?");
        stringBuffer.append(this.c.i);
        throw f1.s(stringBuffer.toString(), new Object[]{"The begin index argument, ", new Integer(iIntValue), ", shouldn't be greater than the end index argument, ", new Integer(iIntValue2), Consts.DOT});
    }
}
