package androidx.media3.exoplayer.offline;

import java.io.Closeable;

public interface e extends Closeable {
    c N();

    @Override
    void close();

    int getPosition();

    boolean moveToNext();

    boolean moveToPosition(int i10);
}
