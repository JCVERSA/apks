package defpackage;

import freemarker.ext.dom.d;
import org.w3c.dom.ProcessingInstruction;

public class uu7 extends d implements mga {
    public uu7(ProcessingInstruction processingInstruction) {
        super(processingInstruction);
    }

    @Override
    public String d() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("@pi$");
        stringBuffer.append(((ProcessingInstruction) this.b).getTarget());
        return stringBuffer.toString();
    }

    @Override
    public String getAsString() {
        return ((ProcessingInstruction) this.b).getData();
    }

    @Override
    public boolean isEmpty() {
        return true;
    }
}
