package defpackage;

import com.google.common.hash.Funnel;
import com.google.common.hash.HashCode;
import java.nio.charset.Charset;

public interface eo4 {
    HashCode hashObject(Object obj, Funnel funnel);

    HashCode hashString(CharSequence charSequence, Charset charset);

    lo4 newHasher();
}
