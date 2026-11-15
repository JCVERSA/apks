package androidx.media3.exoplayer.offline;

import androidx.media3.common.util.UnstableApi;
import java.io.Closeable;

@UnstableApi
public interface DownloadCursor extends Closeable {
    @Override
    void close();

    int getCount();

    Download getDownload();

    int getPosition();

    default boolean isAfterLast() {
        return getCount() == 0 || getPosition() == getCount();
    }

    default boolean isBeforeFirst() {
        return getCount() == 0 || getPosition() == -1;
    }

    boolean isClosed();

    default boolean isFirst() {
        return getPosition() == 0 && getCount() != 0;
    }

    default boolean isLast() {
        int count = getCount();
        return getPosition() == count + (-1) && count != 0;
    }

    default boolean moveToFirst() {
        return moveToPosition(0);
    }

    default boolean moveToLast() {
        return moveToPosition(getCount() - 1);
    }

    default boolean moveToNext() {
        return moveToPosition(getPosition() + 1);
    }

    boolean moveToPosition(int i);

    default boolean moveToPrevious() {
        return moveToPosition(getPosition() - 1);
    }
}
