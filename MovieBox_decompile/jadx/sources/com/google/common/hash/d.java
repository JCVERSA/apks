package com.google.common.hash;

import java.nio.charset.Charset;

public interface d {
    HashCode hashObject(Object obj, Funnel funnel);

    HashCode hashString(CharSequence charSequence, Charset charset);

    e newHasher();
}
