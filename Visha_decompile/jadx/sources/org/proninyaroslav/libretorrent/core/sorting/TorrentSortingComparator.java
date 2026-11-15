package org.proninyaroslav.libretorrent.core.sorting;

import java.util.Comparator;
import org.proninyaroslav.libretorrent.core.model.data.TorrentInfo;

public class TorrentSortingComparator implements Comparator<TorrentInfo> {
    private TorrentSorting sorting;

    public TorrentSortingComparator(TorrentSorting torrentSorting) {
        this.sorting = torrentSorting;
    }

    public TorrentSorting getSorting() {
        return this.sorting;
    }

    @Override
    public int compare(TorrentInfo torrentInfo, TorrentInfo torrentInfo2) {
        return TorrentSorting.SortingColumns.fromValue(this.sorting.a()).compare(torrentInfo, torrentInfo2, this.sorting.b());
    }
}
