package org.libtorrent4j;

import java.io.File;
import java.io.IOException;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import org.libtorrent4j.swig.create_file_entry_vector;
import org.libtorrent4j.swig.create_flags_t;
import org.libtorrent4j.swig.create_torrent;
import org.libtorrent4j.swig.error_code;
import org.libtorrent4j.swig.libtorrent;
import org.libtorrent4j.swig.list_files_listener;
import org.libtorrent4j.swig.set_piece_hashes_listener;

public final class TorrentBuilder {
    private String comment;
    private Long creationDate;
    private String creator;
    private Listener listener;
    private File path;
    private boolean priv;
    public static final create_flags_t MODIFICATION_TIME = create_torrent.modification_time;
    public static final create_flags_t SYMLINKS = create_torrent.symlinks;
    public static final create_flags_t V2_ONLY = create_torrent.v2_only;
    public static final create_flags_t V1_ONLY = create_torrent.v1_only;
    public static final create_flags_t CANONICAL_FILES = create_torrent.canonical_files;
    private int pieceSize = 0;
    private create_flags_t flags = new create_flags_t();
    private int alignment = -1;
    private List<String> urlSeeds = new LinkedList();
    private List<Pair<String, Integer>> nodes = new LinkedList();
    private List<Pair<String, Integer>> trackers = new LinkedList();
    private List<Sha1Hash> similarTorrents = new LinkedList();
    private List<String> collections = new LinkedList();

    public interface Listener {
        boolean accept(String str);

        void progress(int i, int i2);
    }

    public static final class Result {
        private final Entry entry;
        private final create_torrent t;

        public Entry entry() {
            return this.entry;
        }

        public int numPieces() {
            return this.t.num_pieces();
        }

        public int pieceLength() {
            return this.t.piece_length();
        }

        public int pieceSize(int i) {
            return this.t.piece_size(i);
        }

        private Result(create_torrent create_torrentVar) {
            this.t = create_torrentVar;
            this.entry = new Entry(create_torrentVar.generate());
        }
    }

    public TorrentBuilder addCollection(String str) {
        if (str != null) {
            this.collections.add(str);
        }
        return this;
    }

    public TorrentBuilder addCollections(List<String> list) {
        if (list != null) {
            this.collections.addAll(list);
        }
        return this;
    }

    public TorrentBuilder addNode(Pair<String, Integer> pair) {
        if (pair != null) {
            this.nodes.add(pair);
        }
        return this;
    }

    public TorrentBuilder addNodes(List<Pair<String, Integer>> list) {
        if (list != null) {
            this.nodes.addAll(list);
        }
        return this;
    }

    public TorrentBuilder addSimilarTorrent(Sha1Hash sha1Hash) {
        if (sha1Hash != null) {
            this.similarTorrents.add(sha1Hash);
        }
        return this;
    }

    public TorrentBuilder addSimilarTorrents(List<Sha1Hash> list) {
        if (list != null) {
            this.similarTorrents.addAll(list);
        }
        return this;
    }

    public TorrentBuilder addTracker(Pair<String, Integer> pair) {
        if (pair != null) {
            this.trackers.add(pair);
        }
        return this;
    }

    public TorrentBuilder addTrackers(List<Pair<String, Integer>> list) {
        if (list != null) {
            this.trackers.addAll(list);
        }
        return this;
    }

    public TorrentBuilder addUrlSeed(String str) {
        if (str != null) {
            this.urlSeeds.add(str);
        }
        return this;
    }

    public TorrentBuilder addUrlSeeds(List<String> list) {
        if (list != null) {
            this.urlSeeds.addAll(list);
        }
        return this;
    }

    public int alignment() {
        return this.alignment;
    }

    public List<String> collections() {
        return this.collections;
    }

    public String comment() {
        return this.comment;
    }

    public long creationDate() {
        return this.creationDate.longValue();
    }

    public String creator() {
        return this.creator;
    }

    public create_flags_t flags() {
        return this.flags;
    }

    public Result generate() throws IOException {
        File file = this.path;
        if (file == null) {
            throw new IOException("path can't be null");
        }
        File absoluteFile = file.getAbsoluteFile();
        create_file_entry_vector create_file_entry_vectorVarList_files_ex = libtorrent.list_files_ex(absoluteFile.getPath(), new list_files_listener() {
            @Override
            public boolean pred(String str) {
                return TorrentBuilder.this.listener == null || TorrentBuilder.this.listener.accept(str);
            }
        }, this.flags);
        if (create_file_entry_vectorVarList_files_ex.size() == 0) {
            throw new IOException("content files can't be empty");
        }
        create_torrent create_torrentVar = new create_torrent(create_file_entry_vectorVarList_files_ex, this.pieceSize, this.flags);
        final int iNum_pieces = create_torrentVar.num_pieces();
        set_piece_hashes_listener set_piece_hashes_listenerVar = new set_piece_hashes_listener() {
            @Override
            public void progress(int i) {
                if (TorrentBuilder.this.listener != null) {
                    TorrentBuilder.this.listener.progress(i, iNum_pieces);
                }
            }
        };
        File parentFile = absoluteFile.getParentFile();
        if (parentFile == null) {
            throw new IOException("path's parent can't be null");
        }
        error_code error_codeVar = new error_code();
        libtorrent.set_piece_hashes_ex(create_torrentVar, parentFile.getAbsolutePath(), set_piece_hashes_listenerVar, error_codeVar);
        if (error_codeVar.value() != 0) {
            throw new IOException(error_codeVar.message());
        }
        String str = this.comment;
        if (str != null) {
            create_torrentVar.set_comment(str);
        }
        String str2 = this.creator;
        if (str2 != null) {
            create_torrentVar.set_creator(str2);
        }
        Long l = this.creationDate;
        if (l != null) {
            create_torrentVar.set_creation_date(l.longValue());
        }
        Iterator<String> it = this.urlSeeds.iterator();
        while (it.hasNext()) {
            create_torrentVar.add_url_seed(it.next());
        }
        Iterator<Pair<String, Integer>> it2 = this.nodes.iterator();
        while (it2.hasNext()) {
            create_torrentVar.add_node(it2.next().to_string_int_pair());
        }
        for (Pair<String, Integer> pair : this.trackers) {
            create_torrentVar.add_tracker(pair.first, pair.second.intValue());
        }
        boolean z = this.priv;
        if (z) {
            create_torrentVar.set_priv(z);
        }
        if (!this.similarTorrents.isEmpty()) {
            Iterator<Sha1Hash> it3 = this.similarTorrents.iterator();
            while (it3.hasNext()) {
                create_torrentVar.add_similar_torrent(it3.next().swig());
            }
        }
        if (!this.collections.isEmpty()) {
            Iterator<String> it4 = this.collections.iterator();
            while (it4.hasNext()) {
                create_torrentVar.add_collection(it4.next());
            }
        }
        return new Result(create_torrentVar);
    }

    public boolean isPrivate() {
        return this.priv;
    }

    public Listener listener() {
        return this.listener;
    }

    public List<Pair<String, Integer>> nodes() {
        return this.nodes;
    }

    public File path() {
        return this.path;
    }

    public int pieceSize() {
        return this.pieceSize;
    }

    public TorrentBuilder setPrivate(boolean z) {
        this.priv = z;
        return this;
    }

    public List<Sha1Hash> similarTorrents() {
        return this.similarTorrents;
    }

    public List<Pair<String, Integer>> trackers() {
        return this.trackers;
    }

    public List<String> urlSeeds() {
        return this.urlSeeds;
    }

    public TorrentBuilder addTracker(String str, int i) {
        return addTracker(new Pair<>(str, Integer.valueOf(i)));
    }

    public TorrentBuilder alignment(int i) {
        this.alignment = i;
        return this;
    }

    public TorrentBuilder comment(String str) {
        this.comment = str;
        return this;
    }

    public TorrentBuilder creationDate(long j) {
        this.creationDate = Long.valueOf(j);
        return this;
    }

    public TorrentBuilder creator(String str) {
        this.creator = str;
        return this;
    }

    public TorrentBuilder flags(create_flags_t create_flags_tVar) {
        this.flags = create_flags_tVar;
        return this;
    }

    public TorrentBuilder listener(Listener listener) {
        this.listener = listener;
        return this;
    }

    public TorrentBuilder path(File file) {
        this.path = file;
        return this;
    }

    public TorrentBuilder pieceSize(int i) {
        this.pieceSize = i;
        return this;
    }

    public TorrentBuilder addTracker(String str) {
        return addTracker(str, 0);
    }
}
