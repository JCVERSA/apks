package defpackage;

import android.util.Log;
import java.io.StringReader;
import java.io.StringWriter;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.stream.StreamResult;
import javax.xml.transform.stream.StreamSource;
import org.apache.commons.lang3.BooleanUtils;

public abstract class yrc {
    public static String a(String str) {
        try {
            StreamSource streamSource = new StreamSource(new StringReader(str));
            StreamResult streamResult = new StreamResult(new StringWriter());
            Transformer transformerNewTransformer = TransformerFactory.newInstance().newTransformer();
            transformerNewTransformer.setOutputProperty("indent", BooleanUtils.YES);
            transformerNewTransformer.setOutputProperty("{http://xml.apache.org/xslt}indent-amount", "2");
            transformerNewTransformer.transform(streamSource, streamResult);
            return streamResult.getWriter().toString().replaceFirst(">", ">\n");
        } catch (Exception e) {
            e.printStackTrace();
            return str;
        }
    }

    public static void b(String str, String str2, String str3) {
        String str4 = str2 != null ? str3 + "\n" + a(str2) : str3 + "Log with null object";
        pe5.b(str, true);
        for (String str5 : str4.split(oe5.a)) {
            if (!pe5.a(str5)) {
                Log.d(str, "║ " + str5);
            }
        }
        pe5.b(str, false);
    }
}
