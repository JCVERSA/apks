package e5;

import c5.h1;
import com.alibaba.fastjson.serializer.SerializerFeature;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.Reader;
import java.io.Writer;
import java.nio.charset.Charset;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.StreamingOutput;
import javax.ws.rs.ext.MessageBodyReader;
import javax.ws.rs.ext.MessageBodyWriter;

public class b implements MessageBodyReader, MessageBodyWriter {

    public static final Class[] f59450f = {InputStream.class, Reader.class};

    public static final Class[] f59451g = {InputStream.class, OutputStream.class, Writer.class, StreamingOutput.class, Response.class};

    protected Charset f59452a = Charset.forName("UTF-8");

    protected SerializerFeature[] f59453b = new SerializerFeature[0];

    protected h1[] f59454c = new h1[0];

    private d5.a f59455d = new d5.a();

    private Class[] f59456e = null;
}
