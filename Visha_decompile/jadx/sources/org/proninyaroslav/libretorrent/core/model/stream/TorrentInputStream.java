package org.proninyaroslav.libretorrent.core.model.stream;

import com.sun.jna.Pointer;
import java.io.IOException;
import java.io.InputStream;
import java.util.concurrent.locks.ReentrantLock;
import org.proninyaroslav.libretorrent.core.model.TorrentEngineListener;
import org.proninyaroslav.libretorrent.core.model.data.ReadPieceInfo;
import org.proninyaroslav.libretorrent.core.model.session.TorrentDownload;
import org.proninyaroslav.libretorrent.core.model.session.TorrentSession;

public class TorrentInputStream extends InputStream {
    public static ReentrantLock l = new ReentrantLock();
    public TorrentSession b;
    public TorrentStream c;
    public ReadSession d;
    public long e;
    public long f;
    public long g;
    public byte[] h;
    public boolean j;
    public int i = -1;
    public TorrentEngineListener k = new TorrentEngineListener() {
        @Override
        public void onPieceFinished(String str, int i) {
            if (TorrentInputStream.this.c.torrentId.equals(str)) {
                TorrentInputStream.this.g();
            }
        }

        @Override
        public void onReadPiece(String str, ReadPieceInfo readPieceInfo) {
            if (TorrentInputStream.this.c.torrentId.equals(str)) {
                TorrentInputStream.this.k(readPieceInfo);
            }
        }
    };

    public static class Piece {
        public int a;
        public int b;
        public int c;
        public int d;
        public boolean e = false;

        public Piece(int i) {
            this.a = i;
        }

        public boolean equals(Object obj) {
            return (obj instanceof Piece) && (obj == this || this.a == ((Piece) obj).a);
        }

        public int hashCode() {
            return this.a;
        }
    }

    public class ReadSession {
        public int a;
        public Piece[] b;
        public byte[] c;

        public ReadSession() {
        }
    }

    public TorrentInputStream(TorrentSession torrentSession, TorrentStream torrentStream) {
        this.b = torrentSession;
        this.c = torrentStream;
        TorrentDownload task = torrentSession.getTask(torrentStream.torrentId);
        if (task == null) {
            throw new NullPointerException("task " + torrentStream.torrentId + " is null");
        }
        int i = torrentStream.firstFilePiece;
        int i2 = i == torrentStream.lastFilePiece ? torrentStream.lastFilePieceSize : torrentStream.pieceLength;
        long j = ((long) i) * ((long) torrentStream.pieceLength);
        long j2 = i2;
        long j3 = j + j2;
        long j4 = torrentStream.fileOffset;
        if (j4 > j3) {
            throw new IllegalArgumentException();
        }
        long j5 = j2 - (j3 - j4);
        this.e = j5;
        this.f = 1 + j5;
        this.g = j5 + torrentStream.fileSize;
        torrentSession.addListener(this.k);
        task.setInterestedPieces(torrentStream, torrentStream.firstFilePiece, 1);
    }

    public final synchronized boolean D() {
        while (!Thread.currentThread().isInterrupted() && !this.j) {
            try {
                ReadSession readSession = this.d;
                if (readSession != null && readSession.a <= 0) {
                    return true;
                }
                wait();
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
            }
        }
        return false;
    }

    @Override
    public void close() throws IOException {
        synchronized (this) {
            try {
                this.j = true;
                TorrentSession torrentSession = this.b;
                if (torrentSession != null) {
                    torrentSession.removeListener(this.k);
                }
                this.b = null;
                notifyAll();
            } catch (Throwable th) {
                throw th;
            }
        }
        super.close();
    }

    public final int e(int i, long j) {
        TorrentStream torrentStream = this.c;
        int i2 = i - torrentStream.firstFilePiece;
        int i3 = i == torrentStream.lastFilePiece ? torrentStream.lastFilePieceSize : torrentStream.pieceLength;
        return i3 - ((int) (((((long) i2) * ((long) torrentStream.pieceLength)) + ((long) i3)) - j));
    }

    public void finalize() throws Throwable {
        synchronized (this) {
            try {
                this.j = true;
                TorrentSession torrentSession = this.b;
                if (torrentSession != null) {
                    torrentSession.removeListener(this.k);
                }
                this.b = null;
                notifyAll();
            } catch (Throwable th) {
                throw th;
            }
        }
        super.finalize();
    }

    public final synchronized void g() {
        notifyAll();
    }

    public final void h(Piece piece, byte[] bArr) {
        System.arraycopy(this.h, piece.c, bArr, piece.d, piece.b);
    }

    public final synchronized void k(ReadPieceInfo readPieceInfo) {
        Piece piece;
        try {
            ReadSession readSession = this.d;
            if (readSession == null) {
                return;
            }
            Piece[] pieceArr = readSession.b;
            int length = pieceArr.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    piece = null;
                    break;
                }
                piece = pieceArr[i];
                if (piece.a == readPieceInfo.a) {
                    break;
                } else {
                    i++;
                }
            }
            if (this.d.a > 0 && piece != null && this.d.c != null) {
                try {
                    if (readPieceInfo.d != null) {
                        TorrentDownload task = this.b.getTask(this.c.torrentId);
                        if (task != null) {
                            task.resume();
                        }
                        this.d.a--;
                        notifyAll();
                        return;
                    }
                    Pointer pointer = new Pointer(readPieceInfo.c);
                    if (piece.e) {
                        int i2 = readPieceInfo.b;
                        byte[] bArr = new byte[i2];
                        this.h = bArr;
                        pointer.b(0L, bArr, 0, i2);
                        this.i = piece.a;
                        h(piece, this.d.c);
                    } else {
                        pointer.b(piece.c, this.d.c, piece.d, piece.b);
                    }
                    this.d.a--;
                    notifyAll();
                } catch (Throwable th) {
                    this.d.a--;
                    notifyAll();
                    throw th;
                }
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override
    public boolean markSupported() {
        return false;
    }

    public final int n(byte b) {
        return b & 255;
    }

    public final synchronized boolean o(TorrentDownload torrentDownload, int i) {
        while (!Thread.currentThread().isInterrupted() && !this.j) {
            try {
                if (torrentDownload.havePiece(i)) {
                    return true;
                }
                wait();
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
            }
        }
        return false;
    }

    @Override
    public int read() {
        int iN;
        l.lock();
        try {
            TorrentSession torrentSession = this.b;
            if (torrentSession == null) {
                throw new IOException("Torrent session is null");
            }
            TorrentDownload task = torrentSession.getTask(this.c.torrentId);
            if (task == null) {
                throw new IOException("task " + this.c.torrentId + " is null");
            }
            long j = this.e;
            if (j != this.g) {
                int iBytesToPieceIndex = this.c.bytesToPieceIndex(j + 1);
                task.setInterestedPieces(this.c, iBytesToPieceIndex, 1);
                ReadSession readSession = new ReadSession();
                this.d = readSession;
                readSession.b = new Piece[1];
                this.d.c = new byte[1];
                this.d.a = 1;
                Piece piece = new Piece(iBytesToPieceIndex);
                piece.c = e(iBytesToPieceIndex, this.e);
                piece.b = 1;
                piece.d = 0;
                if (iBytesToPieceIndex == this.i) {
                    h(piece, this.d.c);
                    this.e++;
                    iN = n(this.d.c[0]);
                } else {
                    piece.e = true;
                    this.d.b[0] = piece;
                    if (o(task, iBytesToPieceIndex)) {
                        task.readPiece(iBytesToPieceIndex);
                        if (D()) {
                            this.e++;
                            iN = n(this.d.c[0]);
                        }
                    }
                }
                this.d = null;
                l.unlock();
                return iN;
            }
            this.h = null;
            this.d = null;
            l.unlock();
            return -1;
        } catch (Throwable th) {
            this.d = null;
            l.unlock();
            throw th;
        }
    }

    @Override
    public long skip(long j) {
        TorrentDownload task;
        l.lock();
        if (j > 0) {
            try {
                long j2 = this.e;
                long j3 = this.g;
                if (j2 != j3) {
                    if (j2 + j > j3) {
                        j = (int) (j3 - j2);
                    }
                    this.e = j2 + j;
                    TorrentSession torrentSession = this.b;
                    if (torrentSession != null && (task = torrentSession.getTask(this.c.torrentId)) != null) {
                        TorrentStream torrentStream = this.c;
                        task.setInterestedPieces(torrentStream, torrentStream.bytesToPieceIndex(this.e + 1), 1);
                    }
                    return j;
                }
            } finally {
                l.unlock();
            }
        }
        return 0L;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public int read(byte[] bArr, int i, int i2) throws Throwable {
        ReadSession readSession;
        ReadSession readSession2;
        int i3;
        boolean z;
        int i4 = i2;
        l.lock();
        if (i >= 0 && i4 >= 0) {
            try {
                if (i4 <= bArr.length - i) {
                    int i5 = 0;
                    if (i4 == 0) {
                        this.d = null;
                        l.unlock();
                        return 0;
                    }
                    TorrentSession torrentSession = this.b;
                    if (torrentSession != null) {
                        TorrentDownload task = torrentSession.getTask(this.c.torrentId);
                        if (task != null) {
                            long j = this.e;
                            long j2 = this.g;
                            if (j == j2) {
                                try {
                                    this.h = null;
                                    this.d = null;
                                    l.unlock();
                                    return -1;
                                } catch (Throwable th) {
                                    th = th;
                                    readSession = null;
                                    this.d = readSession;
                                    l.unlock();
                                    throw th;
                                }
                            }
                            if (((long) i4) + j > j2) {
                                i4 = (int) (j2 - j);
                            }
                            int iBytesToPieceIndex = this.c.bytesToPieceIndex(j + 1);
                            long j3 = i4;
                            int iBytesToPieceIndex2 = this.c.bytesToPieceIndex(this.e + j3);
                            boolean z2 = true;
                            int i6 = (iBytesToPieceIndex2 - iBytesToPieceIndex) + 1;
                            task.setInterestedPieces(this.c, iBytesToPieceIndex, i6);
                            ReadSession readSession3 = new ReadSession();
                            this.d = readSession3;
                            readSession3.b = new Piece[i6];
                            this.d.c = bArr;
                            this.d.a = i6;
                            int i7 = i;
                            int i8 = 0;
                            int i9 = iBytesToPieceIndex;
                            while (i9 <= iBytesToPieceIndex2) {
                                TorrentStream torrentStream = this.c;
                                if (i9 == torrentStream.lastFilePiece) {
                                    i3 = torrentStream.lastFilePieceSize;
                                } else {
                                    i3 = torrentStream.pieceLength;
                                }
                                Piece piece = new Piece(i9);
                                piece.d = i7;
                                piece.e = i9 == iBytesToPieceIndex2 ? z2 : i5;
                                if (i9 == iBytesToPieceIndex) {
                                    piece.c = e(iBytesToPieceIndex, this.e);
                                } else {
                                    piece.c = i5;
                                }
                                if (i9 == iBytesToPieceIndex2 && iBytesToPieceIndex != iBytesToPieceIndex2) {
                                    piece.b = e(iBytesToPieceIndex2, this.e + j3);
                                } else {
                                    int i10 = piece.c;
                                    if (i10 + i4 > i3) {
                                        piece.b = i3 - i10;
                                    } else {
                                        piece.b = i4;
                                    }
                                }
                                i7 += piece.b;
                                if (i9 == this.i) {
                                    h(piece, bArr);
                                    z = true;
                                    if (i6 == 1) {
                                        this.e += j3;
                                        readSession2 = null;
                                        this.d = readSession2;
                                        l.unlock();
                                        return i4;
                                    }
                                } else {
                                    z = true;
                                }
                                this.d.b[i8] = piece;
                                TorrentDownload torrentDownload = task;
                                if (!o(torrentDownload, i9)) {
                                    this.d = null;
                                    l.unlock();
                                    return -1;
                                }
                                torrentDownload.readPiece(i9);
                                i9++;
                                i8++;
                                z2 = z;
                                task = torrentDownload;
                                i5 = 0;
                            }
                            if (!D()) {
                                this.d = null;
                                l.unlock();
                                return -1;
                            }
                            readSession2 = null;
                            this.e += j3;
                            this.d = readSession2;
                            l.unlock();
                            return i4;
                        }
                        throw new IOException("Task " + this.c.torrentId + " is null");
                    }
                    throw new IOException("Torrent session is null");
                }
            } catch (Throwable th2) {
                th = th2;
                readSession = null;
            }
        }
        throw new IndexOutOfBoundsException();
    }

    @Override
    public int read(byte[] bArr) {
        return read(bArr, 0, bArr.length);
    }
}
