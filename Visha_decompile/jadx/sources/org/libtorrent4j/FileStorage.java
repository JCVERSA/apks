package org.libtorrent4j;

import java.io.File;
import java.util.ArrayList;
import org.libtorrent4j.swig.error_code;
import org.libtorrent4j.swig.file_flags_t;
import org.libtorrent4j.swig.file_slice_vector;
import org.libtorrent4j.swig.file_storage;
import org.libtorrent4j.swig.torrent_info;

public final class FileStorage {
    private final file_storage fs;
    private final torrent_info ti;
    public static final long MAX_FILE_SIZE = file_storage.max_file_size;
    public static final long MAX_FILE_OFFSET = file_storage.max_file_offset;
    public static final int MAX_NUM_PIECES = file_storage.max_num_pieces;
    public static final int MAX_PIECE_SIZE = file_storage.max_piece_size;
    public static final file_flags_t FLAG_PAD_FILE = file_storage.flag_pad_file;
    public static final file_flags_t FLAG_HIDDEN = file_storage.flag_hidden;
    public static final file_flags_t FLAG_EXECUTABLE = file_storage.flag_executable;
    public static final file_flags_t FLAG_SYMLINK = file_storage.flag_symlink;

    public FileStorage(file_storage file_storageVar) {
        this(file_storageVar, null);
    }

    public void addFile(String str, long j, file_flags_t file_flags_tVar, int i, String str2) {
        error_code error_codeVar = new error_code();
        this.fs.add_file_ex(error_codeVar, str, j, file_flags_tVar, i, str2);
        if (error_codeVar.value() != 0) {
            throw new IllegalArgumentException(error_codeVar.message());
        }
    }

    public boolean fileAbsolutePath(int i) {
        return this.fs.file_absolute_path(i);
    }

    public file_flags_t fileFlags(int i) {
        return this.fs.file_flags(i);
    }

    public int fileIndexAtOffset(long j) {
        return this.fs.file_index_at_offset(j);
    }

    public int fileIndexAtPiece(int i) {
        return this.fs.file_index_at_piece(i);
    }

    public String fileName(int i) {
        return this.fs.file_name_ex(i);
    }

    public long fileOffset(int i) {
        return this.fs.file_offset(i);
    }

    public String filePath(int i, String str) {
        return str + File.separator + this.fs.file_path(i);
    }

    public long fileSize(int i) {
        return this.fs.file_size(i);
    }

    public boolean hasV2() {
        return this.fs.v2();
    }

    public boolean isValid() {
        return this.fs.is_valid();
    }

    public int lastFileIndexAtPiece(int i) {
        return this.fs.last_file_index_at_piece(i);
    }

    public int lastPieceIndexAtFile(int i) {
        return this.fs.last_piece_index_at_file(i);
    }

    public ArrayList<FileSlice> mapBlock(int i, long j, int i2) {
        return mapBlock(this.fs.map_block(i, j, i2));
    }

    public PeerRequest mapFile(int i, long j, int i2) {
        return new PeerRequest(this.fs.map_file(i, j, i2));
    }

    public String name() {
        return this.fs.name();
    }

    public int numFiles() {
        return this.fs.num_files();
    }

    public int numPieces() {
        return this.fs.num_pieces();
    }

    public boolean padFileAt(int i) {
        return this.fs.pad_file_at(i);
    }

    public int pieceIndexAtFile(int i) {
        return this.fs.piece_index_at_file(i);
    }

    public int pieceLength() {
        return this.fs.piece_length();
    }

    public int pieceSize(int i) {
        return this.fs.piece_size(i);
    }

    public void reserve(int i) {
        this.fs.reserve(i);
    }

    public void sanitizeSymlinks() {
        this.fs.sanitize_symlinks();
    }

    public long sizeOnDisk() {
        return this.fs.size_on_disk();
    }

    public file_storage swig() {
        return this.fs;
    }

    public torrent_info ti() {
        return this.ti;
    }

    public long totalSize() {
        return this.fs.total_size();
    }

    public FileStorage(file_storage file_storageVar, torrent_info torrent_infoVar) {
        this.fs = file_storageVar;
        this.ti = torrent_infoVar;
    }

    public static ArrayList<FileSlice> mapBlock(file_slice_vector file_slice_vectorVar) {
        int size = file_slice_vectorVar.size();
        ArrayList<FileSlice> arrayList = new ArrayList<>(size);
        for (int i = 0; i < size; i++) {
            arrayList.add(new FileSlice(file_slice_vectorVar.get(i)));
        }
        return arrayList;
    }

    public String filePath(int i) {
        return this.fs.file_path(i);
    }

    public void name(String str) {
        this.fs.set_name(str);
    }

    public void numPieces(int i) {
        this.fs.set_num_pieces(i);
    }

    public void pieceLength(int i) {
        this.fs.set_piece_length(i);
    }

    public void addFile(String str, long j, file_flags_t file_flags_tVar, int i) {
        error_code error_codeVar = new error_code();
        this.fs.add_file_ex(error_codeVar, str, j, file_flags_tVar, i);
        if (error_codeVar.value() != 0) {
            throw new IllegalArgumentException(error_codeVar.message());
        }
    }

    public void addFile(String str, long j, file_flags_t file_flags_tVar) {
        error_code error_codeVar = new error_code();
        this.fs.add_file_ex(error_codeVar, str, j, file_flags_tVar);
        if (error_codeVar.value() != 0) {
            throw new IllegalArgumentException(error_codeVar.message());
        }
    }

    public void addFile(String str, long j) {
        error_code error_codeVar = new error_code();
        this.fs.add_file_ex(error_codeVar, str, j);
        if (error_codeVar.value() != 0) {
            throw new IllegalArgumentException(error_codeVar.message());
        }
    }
}
