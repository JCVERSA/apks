package org.apache.commons.compress.archivers.zip;

import java.io.Closeable;
import java.util.Comparator;

public abstract class ZipFile implements Closeable {

    class AnonymousClass2 implements Comparator<ZipArchiveEntry> {
        final ZipFile this$0;

        AnonymousClass2(ZipFile zipFile) {
        }

        public int compare2(ZipArchiveEntry zipArchiveEntry, ZipArchiveEntry zipArchiveEntry2) {
            return zipArchiveEntry == zipArchiveEntry2 ? 0 : 1;
        }

        @Override
        public int compare(ZipArchiveEntry zipArchiveEntry, ZipArchiveEntry zipArchiveEntry2) {
            android.support.v4.media.session.c.a(zipArchiveEntry);
            android.support.v4.media.session.c.a(zipArchiveEntry2);
            return compare2((ZipArchiveEntry) null, (ZipArchiveEntry) null);
        }
    }
}
