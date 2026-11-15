package org.libtorrent4j;

import java.io.File;
import java.io.IOException;
import java.nio.MappedByteBuffer;
import java.util.ArrayList;
import org.libtorrent4j.swig.bdecode_node;
import org.libtorrent4j.swig.byte_vector;
import org.libtorrent4j.swig.error_code;
import org.libtorrent4j.swig.libtorrent_jni;
import org.libtorrent4j.swig.string_vector;
import org.libtorrent4j.swig.torrent_info;

public final class TorrentInfo {
    private final torrent_info ti;

    public TorrentInfo(torrent_info torrent_infoVar) {
        this.ti = torrent_infoVar;
    }

    public static TorrentInfo bdecode(byte[] bArr) {
        return new TorrentInfo(bdecode0(bArr));
    }

    private static torrent_info bdecode0(File file) {
        try {
            return bdecode0(Files.bytes(file));
        } catch (IOException e) {
            throw new IllegalArgumentException("Can't decode data from file: " + file, e);
        }
    }

    public ArrayList<String> collections() {
        string_vector string_vectorVarCollections = this.ti.collections();
        int size = string_vectorVarCollections.size();
        ArrayList<String> arrayList = new ArrayList<>(size);
        for (int i = 0; i < size; i++) {
            arrayList.add(string_vectorVarCollections.get(i));
        }
        return arrayList;
    }

    public FileStorage files() {
        return new FileStorage(this.ti.layout(), this.ti);
    }

    public boolean hasV1() {
        return this.ti.v1();
    }

    public boolean hasV2() {
        return this.ti.v2();
    }

    public Sha1Hash hashForPiece(int i) {
        return new Sha1Hash(this.ti.hash_for_piece(i));
    }

    public bdecode_node info(String str) {
        return this.ti.info(str);
    }

    public Sha1Hash infoHash() {
        return new Sha1Hash(this.ti.info_hash());
    }

    public InfoHash infoHashes() {
        return new InfoHash(this.ti.info_hashes());
    }

    public boolean isI2p() {
        return this.ti.is_i2p();
    }

    public boolean isLoaded() {
        return this.ti.is_loaded();
    }

    public boolean isPrivate() {
        return this.ti.priv();
    }

    public boolean isValid() {
        return this.ti.is_valid();
    }

    public ArrayList<FileSlice> mapBlock(int i, long j, int i2) {
        return FileStorage.mapBlock(this.ti.map_block(i, j, i2));
    }

    public PeerRequest mapFile(int i, long j, int i2) {
        return new PeerRequest(this.ti.map_file(i, j, i2));
    }

    public String name() {
        return this.ti.name();
    }

    public int numFiles() {
        return this.ti.num_files();
    }

    public int numPieces() {
        return this.ti.num_pieces();
    }

    public int pieceLength() {
        return this.ti.piece_length();
    }

    public int pieceSize(int i) {
        return this.ti.piece_size(i);
    }

    public ArrayList<Sha1Hash> similarTorrents() {
        return Sha1Hash.convert(this.ti.similar_torrents());
    }

    public long sizeOnDisk() {
        return this.ti.size_on_disk();
    }

    public torrent_info swig() {
        return this.ti;
    }

    public long totalSize() {
        return this.ti.total_size();
    }

    public TorrentInfo(File file) {
        this(bdecode0(file));
    }

    public TorrentInfo(byte[] bArr) {
        this(bdecode0(bArr));
    }

    private static torrent_info bdecode0(byte[] bArr) {
        byte_vector byte_vectorVarBytes2byte_vector = Vectors.bytes2byte_vector(bArr);
        bdecode_node bdecode_nodeVar = new bdecode_node();
        error_code error_codeVar = new error_code();
        if (bdecode_node.bdecode(byte_vectorVarBytes2byte_vector, bdecode_nodeVar, error_codeVar) != 0) {
            throw new IllegalArgumentException("Can't decode data: " + error_codeVar.message());
        }
        error_codeVar.clear();
        torrent_info torrent_infoVarCreate_torrent_info = torrent_info.create_torrent_info(bdecode_nodeVar.dict_find_dict_ex("info"), error_codeVar);
        byte_vectorVarBytes2byte_vector.clear();
        if (error_codeVar.value() == 0) {
            return torrent_infoVarCreate_torrent_info;
        }
        throw new IllegalArgumentException("Can't decode data: " + error_codeVar.message());
    }

    public TorrentInfo(MappedByteBuffer mappedByteBuffer) {
        this(bdecode0(mappedByteBuffer));
    }

    private static torrent_info bdecode0(MappedByteBuffer mappedByteBuffer) {
        try {
            long jDirectBufferAddress = libtorrent_jni.directBufferAddress(mappedByteBuffer);
            long jDirectBufferCapacity = libtorrent_jni.directBufferCapacity(mappedByteBuffer);
            bdecode_node bdecode_nodeVar = new bdecode_node();
            error_code error_codeVar = new error_code();
            if (bdecode_node.bdecode(jDirectBufferAddress, (int) jDirectBufferCapacity, bdecode_nodeVar, error_codeVar) != 0) {
                throw new IllegalArgumentException("Can't decode data: " + error_codeVar.message());
            }
            error_codeVar.clear();
            torrent_info torrent_infoVarCreate_torrent_info = torrent_info.create_torrent_info(bdecode_nodeVar.dict_find_dict_ex("info"), error_codeVar);
            if (error_codeVar.value() == 0) {
                return torrent_infoVarCreate_torrent_info;
            }
            throw new IllegalArgumentException("Can't decode data: " + error_codeVar.message());
        } catch (Throwable th) {
            throw new IllegalArgumentException("Can't decode data mapped buffer: " + th.getMessage(), th);
        }
    }
}
