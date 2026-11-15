package defpackage;

import androidx.media3.exoplayer.upstream.CmcdConfiguration;

public class l0d extends f0d {
    public l0d(Object obj) {
        super(obj);
    }

    @Override
    public String a(Object obj) {
        if (!(obj instanceof Number)) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("");
            stringBuffer.append(obj);
            return stringBuffer.toString();
        }
        long jLongValue = ((Number) obj).longValue();
        long j = jLongValue % 10;
        if (j == 1 && jLongValue % 100 != 11) {
            StringBuffer stringBuffer2 = new StringBuffer();
            stringBuffer2.append(jLongValue);
            stringBuffer2.append(CmcdConfiguration.KEY_STREAM_TYPE);
            return stringBuffer2.toString();
        }
        if (j == 2 && jLongValue % 100 != 12) {
            StringBuffer stringBuffer3 = new StringBuffer();
            stringBuffer3.append(jLongValue);
            stringBuffer3.append("nd");
            return stringBuffer3.toString();
        }
        if (j != 3 || jLongValue % 100 == 13) {
            StringBuffer stringBuffer4 = new StringBuffer();
            stringBuffer4.append(jLongValue);
            stringBuffer4.append("th");
            return stringBuffer4.toString();
        }
        StringBuffer stringBuffer5 = new StringBuffer();
        stringBuffer5.append(jLongValue);
        stringBuffer5.append("rd");
        return stringBuffer5.toString();
    }
}
