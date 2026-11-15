package org.proninyaroslav.libretorrent.core.sorting;

import org.proninyaroslav.libretorrent.core.model.data.TorrentInfo;

public class TorrentSorting extends BaseSorting {

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static abstract class SortingColumns implements BaseSorting.SortingColumnsInterface<TorrentInfo> {
        private static final SortingColumns[] $VALUES = $values();
        public static final SortingColumns DATE_ADDED;
        public static final SortingColumns ETA;
        public static final SortingColumns NAME;
        public static final SortingColumns NONE;
        public static final SortingColumns PEERS;
        public static final SortingColumns PROGRESS;
        public static final SortingColumns SIZE;

        public final enum AnonymousClass1 extends SortingColumns {
            @Override
            public int compare(TorrentInfo torrentInfo, TorrentInfo torrentInfo2, BaseSorting.Direction direction) {
                return 0;
            }

            public AnonymousClass1(String str, int i) {
                super(str, i);
            }
        }

        public final enum AnonymousClass2 extends SortingColumns {
            public AnonymousClass2(String str, int i) {
                super(str, i);
            }

            @Override
            public int compare(TorrentInfo torrentInfo, TorrentInfo torrentInfo2, BaseSorting.Direction direction) {
                return direction == BaseSorting.Direction.ASC ? torrentInfo.name.compareTo(torrentInfo2.name) : torrentInfo2.name.compareTo(torrentInfo.name);
            }
        }

        public final enum AnonymousClass3 extends SortingColumns {
            public AnonymousClass3(String str, int i) {
                super(str, i);
            }

            @Override
            public int compare(TorrentInfo torrentInfo, TorrentInfo torrentInfo2, BaseSorting.Direction direction) {
                return direction == BaseSorting.Direction.ASC ? Long.compare(torrentInfo.totalBytes, torrentInfo2.totalBytes) : Long.compare(torrentInfo2.totalBytes, torrentInfo.totalBytes);
            }
        }

        public final enum AnonymousClass4 extends SortingColumns {
            public AnonymousClass4(String str, int i) {
                super(str, i);
            }

            @Override
            public int compare(TorrentInfo torrentInfo, TorrentInfo torrentInfo2, BaseSorting.Direction direction) {
                return direction == BaseSorting.Direction.ASC ? Integer.compare(torrentInfo.progress, torrentInfo2.progress) : Integer.compare(torrentInfo2.progress, torrentInfo.progress);
            }
        }

        public final enum AnonymousClass5 extends SortingColumns {
            public AnonymousClass5(String str, int i) {
                super(str, i);
            }

            @Override
            public int compare(TorrentInfo torrentInfo, TorrentInfo torrentInfo2, BaseSorting.Direction direction) {
                return direction == BaseSorting.Direction.ASC ? Long.compare(torrentInfo.ETA, torrentInfo2.ETA) : Long.compare(torrentInfo2.ETA, torrentInfo.ETA);
            }
        }

        public final enum AnonymousClass6 extends SortingColumns {
            public AnonymousClass6(String str, int i) {
                super(str, i);
            }

            @Override
            public int compare(TorrentInfo torrentInfo, TorrentInfo torrentInfo2, BaseSorting.Direction direction) {
                return direction == BaseSorting.Direction.ASC ? Integer.compare(torrentInfo.peers, torrentInfo2.peers) : Integer.compare(torrentInfo2.peers, torrentInfo.peers);
            }
        }

        public final enum AnonymousClass7 extends SortingColumns {
            public AnonymousClass7(String str, int i) {
                super(str, i);
            }

            @Override
            public int compare(TorrentInfo torrentInfo, TorrentInfo torrentInfo2, BaseSorting.Direction direction) {
                return direction == BaseSorting.Direction.ASC ? Long.compare(torrentInfo.dateAdded, torrentInfo2.dateAdded) : Long.compare(torrentInfo2.dateAdded, torrentInfo.dateAdded);
            }
        }

        private static SortingColumns[] $values() {
            return new SortingColumns[]{NONE, NAME, SIZE, PROGRESS, ETA, PEERS, DATE_ADDED};
        }

        static {
            NONE = new AnonymousClass1("NONE", 0);
            NAME = new AnonymousClass2("NAME", 1);
            SIZE = new AnonymousClass3("SIZE", 2);
            PROGRESS = new AnonymousClass4("PROGRESS", 3);
            ETA = new AnonymousClass5("ETA", 4);
            PEERS = new AnonymousClass6("PEERS", 5);
            DATE_ADDED = new AnonymousClass7("DATE_ADDED", 6);
        }

        public static SortingColumns fromValue(String str) {
            for (SortingColumns sortingColumns : (SortingColumns[]) SortingColumns.class.getEnumConstants()) {
                if (sortingColumns.toString().equalsIgnoreCase(str)) {
                    return sortingColumns;
                }
            }
            return NONE;
        }

        public static SortingColumns valueOf(String str) {
            return (SortingColumns) Enum.valueOf(SortingColumns.class, str);
        }

        public static SortingColumns[] values() {
            return (SortingColumns[]) $VALUES.clone();
        }

        public abstract int compare(Object obj, Object obj2, BaseSorting.Direction direction);

        private SortingColumns(String str, int i) {
            super(str, i);
        }
    }
}
