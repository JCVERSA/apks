package org.proninyaroslav.libretorrent.core.storage;

import android.content.Context;
import defpackage.xm9;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.apache.commons.io.FileUtils;
import org.proninyaroslav.libretorrent.core.model.data.entity.FastResume;
import org.proninyaroslav.libretorrent.core.model.data.entity.TagInfo;
import org.proninyaroslav.libretorrent.core.model.data.entity.Torrent;
import org.proninyaroslav.libretorrent.core.model.data.entity.TorrentTagInfo;
import org.proninyaroslav.libretorrent.core.system.SystemFacadeHelper;

public class TorrentRepositoryImpl implements TorrentRepository {
    public Context a;
    public AppDatabase b;

    public static final class FileDataModel {
        private FileDataModel() {
        }
    }

    public TorrentRepositoryImpl(Context context, AppDatabase appDatabase) {
        this.a = context;
        this.b = appDatabase;
    }

    @Override
    public List a() {
        return this.b.d().getAllTorrents();
    }

    @Override
    public void b(byte[] bArr) throws Throwable {
        FileUtils.writeByteArrayToFile(new File(this.a.getExternalFilesDir(null).getAbsolutePath(), "session"), bArr);
    }

    @Override
    public void c(Torrent torrent) {
        this.b.d().update(torrent);
    }

    @Override
    public String d() {
        if (SystemFacadeHelper.a(this.a).k()) {
            File file = new File(this.a.getExternalFilesDir(null).getAbsolutePath(), "session");
            if (file.exists()) {
                return file.getAbsolutePath();
            }
        }
        return null;
    }

    @Override
    public void e(FastResume fastResume) {
        this.b.b().add(fastResume);
    }

    @Override
    public FastResume f(String str) {
        return this.b.b().getByTorrentId(str);
    }

    @Override
    public void g(Torrent torrent) {
        this.b.d().delete(torrent);
    }

    @Override
    public void h(Torrent torrent) {
        this.b.d().add(torrent);
    }

    @Override
    public Torrent i(String str) {
        return this.b.d().getTorrentById(str);
    }

    @Override
    public xm9 j(String str) {
        return this.b.d().getTorrentByIdSingle(str);
    }

    @Override
    public void k(String str, List list) {
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(new TorrentTagInfo(((TagInfo) it.next()).id, str));
        }
        this.b.d().replaceTags(str, arrayList);
    }
}
