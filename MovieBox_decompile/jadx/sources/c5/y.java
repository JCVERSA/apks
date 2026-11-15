package c5;

import com.alibaba.fastjson.JSONException;
import java.io.IOException;
import java.io.Reader;
import java.lang.reflect.Type;
import java.sql.Clob;
import java.sql.SQLException;

public class y implements z0 {

    public static final y f16683a = new y();

    @Override
    public void c(o0 o0Var, Object obj, Object obj2, Type type, int i10) throws IOException {
        try {
            if (obj == null) {
                o0Var.C();
                return;
            }
            Reader characterStream = ((Clob) obj).getCharacterStream();
            StringBuilder sb2 = new StringBuilder();
            try {
                char[] cArr = new char[2048];
                while (true) {
                    int i11 = characterStream.read(cArr, 0, 2048);
                    if (i11 < 0) {
                        String string = sb2.toString();
                        characterStream.close();
                        o0Var.B(string);
                        return;
                    }
                    sb2.append(cArr, 0, i11);
                }
            } catch (Exception e10) {
                throw new JSONException("read string from reader error", e10);
            }
        } catch (SQLException e11) {
            throw new IOException("write clob error", e11);
        }
    }
}
