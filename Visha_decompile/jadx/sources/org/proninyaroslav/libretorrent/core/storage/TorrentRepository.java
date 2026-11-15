package org.proninyaroslav.libretorrent.core.storage;

import defpackage.xm9;
import java.util.List;
import org.proninyaroslav.libretorrent.core.model.data.entity.FastResume;
import org.proninyaroslav.libretorrent.core.model.data.entity.Torrent;

public interface TorrentRepository {
    List a();

    void b(byte[] bArr);

    void c(Torrent torrent);

    String d();

    void e(FastResume fastResume);

    FastResume f(String str);

    void g(Torrent torrent);

    void h(Torrent torrent);

    Torrent i(String str);

    xm9 j(String str);

    void k(String str, List list);
}
