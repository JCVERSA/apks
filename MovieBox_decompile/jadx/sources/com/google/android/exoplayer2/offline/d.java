package com.google.android.exoplayer2.offline;

import android.net.Uri;
import com.google.android.exoplayer2.upstream.b0;
import java.io.InputStream;
import java.util.List;

public final class d implements b0.a {

    private final b0.a f24878a;

    private final List f24879b;

    public d(b0.a aVar, List list) {
        this.f24878a = aVar;
        this.f24879b = list;
    }

    @Override
    public c parse(Uri uri, InputStream inputStream) {
        c cVar = (c) this.f24878a.parse(uri, inputStream);
        List list = this.f24879b;
        return (list == null || list.isEmpty()) ? cVar : (c) cVar.copy(this.f24879b);
    }
}
