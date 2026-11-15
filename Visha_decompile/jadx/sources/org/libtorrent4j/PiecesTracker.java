package org.libtorrent4j;

public final class PiecesTracker {
    private final boolean[] complete;
    private final int[][] files;
    private final int numFiles;
    private final int numPieces;
    private final long[][] sizes;

    public PiecesTracker(TorrentInfo torrentInfo) {
        int iNumFiles = torrentInfo.numFiles();
        this.numFiles = iNumFiles;
        int iNumPieces = torrentInfo.numPieces();
        this.numPieces = iNumPieces;
        this.files = new int[iNumFiles][];
        this.sizes = new long[iNumFiles][];
        this.complete = new boolean[iNumPieces];
        FileStorage fileStorageFiles = torrentInfo.files();
        for (int i = 0; i < this.numFiles; i++) {
            long jFileSize = fileStorageFiles.fileSize(i);
            int iPiece = torrentInfo.mapFile(i, 0L, 1).piece();
            int iPiece2 = torrentInfo.mapFile(i, jFileSize - 1, 1).piece();
            int i2 = (iPiece2 - iPiece) + 1;
            this.files[i] = new int[i2];
            this.sizes[i] = new long[i2];
            for (int i3 = iPiece; i3 <= iPiece2; i3++) {
                int i4 = i3 - iPiece;
                this.files[i][i4] = i3;
                for (FileSlice fileSlice : torrentInfo.mapBlock(i3, 0L, torrentInfo.pieceSize(i3))) {
                    if (fileSlice.fileIndex() == i) {
                        this.sizes[i][i4] = fileSlice.size();
                    }
                }
            }
        }
    }

    public long getSequentialDownloadedBytes(int i) {
        int[] iArr = this.files[i];
        long j = 0;
        for (int i2 = 0; i2 < iArr.length; i2++) {
            if (!this.complete[iArr[i2]]) {
                break;
            }
            j += this.sizes[i][i2];
        }
        return j;
    }

    public int getSequentialDownloadedPieces(int i) {
        int i2 = 0;
        for (int i3 : this.files[i]) {
            if (!this.complete[i3]) {
                break;
            }
            i2++;
        }
        return i2;
    }

    public boolean isComplete(int i) {
        return this.complete[i];
    }

    public int numFiles() {
        return this.numFiles;
    }

    public int numPieces() {
        return this.numPieces;
    }

    public void setComplete(int i, boolean z) {
        this.complete[i] = z;
    }
}
