package org.apache.commons.io.input;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.OutputStream;
import java.io.RandomAccessFile;
import java.nio.charset.Charset;
import org.apache.commons.io.FileUtils;
import org.apache.commons.io.IOUtils;

public class Tailer implements Runnable {
    private static final int DEFAULT_BUFSIZE = 4096;
    private static final Charset DEFAULT_CHARSET = Charset.defaultCharset();
    private static final int DEFAULT_DELAY_MILLIS = 1000;
    private static final String RAF_MODE = "r";
    private final Charset cset;
    private final long delayMillis;
    private final boolean end;
    private final File file;
    private final byte[] inbuf;
    private final TailerListener listener;
    private final boolean reOpen;
    private volatile boolean run;

    public Tailer(File file, TailerListener tailerListener) {
        this(file, tailerListener, 1000L);
    }

    public static Tailer create(File file, TailerListener tailerListener, long j, boolean z, int i) {
        return create(file, tailerListener, j, z, false, i);
    }

    private long readLines(RandomAccessFile randomAccessFile) throws IOException {
        int i;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(64);
        long filePointer = randomAccessFile.getFilePointer();
        long filePointer2 = filePointer;
        boolean z = false;
        while (getRun() && (i = randomAccessFile.read(this.inbuf)) != -1) {
            for (int i2 = 0; i2 < i; i2++) {
                byte b = this.inbuf[i2];
                if (b == 10) {
                    this.listener.handle(new String(byteArrayOutputStream.toByteArray(), this.cset));
                    byteArrayOutputStream.reset();
                    filePointer = ((long) i2) + filePointer2 + 1;
                    z = false;
                } else if (b != 13) {
                    if (z) {
                        this.listener.handle(new String(byteArrayOutputStream.toByteArray(), this.cset));
                        byteArrayOutputStream.reset();
                        filePointer = ((long) i2) + filePointer2 + 1;
                        z = false;
                    }
                    byteArrayOutputStream.write(b);
                } else {
                    if (z) {
                        byteArrayOutputStream.write(13);
                    }
                    z = true;
                }
            }
            filePointer2 = randomAccessFile.getFilePointer();
        }
        IOUtils.closeQuietly((OutputStream) byteArrayOutputStream);
        randomAccessFile.seek(filePointer);
        TailerListener tailerListener = this.listener;
        if (tailerListener instanceof TailerListenerAdapter) {
            ((TailerListenerAdapter) tailerListener).endOfFileReached();
        }
        return filePointer;
    }

    private void stop(Exception exc) {
        this.listener.handle(exc);
        stop();
    }

    public long getDelay() {
        return this.delayMillis;
    }

    public File getFile() {
        return this.file;
    }

    public boolean getRun() {
        return this.run;
    }

    /* JADX WARN: Code duplicated, block: B:52:0x00af A[Catch: all -> 0x0018, Exception -> 0x001b, InterruptedException -> 0x001e, TryCatch #9 {all -> 0x0018, blocks: (B:3:0x0005, B:7:0x000f, B:17:0x0028, B:18:0x002e, B:20:0x0032, B:22:0x003b, B:15:0x0021, B:23:0x0045, B:25:0x004b, B:27:0x005b, B:28:0x0060, B:61:0x00d0, B:62:0x00d4, B:44:0x0085, B:46:0x008d, B:50:0x00ab, B:52:0x00af, B:53:0x00b2, B:55:0x00bd, B:57:0x00c1, B:49:0x009d), top: B:79:0x0005 }] */
    @Override
    public void run() throws Throwable {
        RandomAccessFile randomAccessFile;
        long lines;
        long jLastModified;
        RandomAccessFile randomAccessFile2 = null;
        long jLastModified2 = 0;
        long length = 0;
        while (getRun() && randomAccessFile2 == null) {
            try {
                try {
                    try {
                        randomAccessFile2 = new RandomAccessFile(this.file, RAF_MODE);
                    } catch (FileNotFoundException unused) {
                        this.listener.fileNotFound();
                    }
                    if (randomAccessFile2 == null) {
                        Thread.sleep(this.delayMillis);
                    } else {
                        length = this.end ? this.file.length() : 0L;
                        jLastModified2 = this.file.lastModified();
                        randomAccessFile2.seek(length);
                    }
                } catch (Throwable th) {
                    th = th;
                }
            } catch (InterruptedException e) {
                e = e;
            } catch (Exception e2) {
                e = e2;
            }
        }
        while (getRun()) {
            boolean zIsFileNewer = FileUtils.isFileNewer(this.file, jLastModified2);
            long length2 = this.file.length();
            if (length2 < length) {
                this.listener.fileRotated();
                try {
                    randomAccessFile = new RandomAccessFile(this.file, RAF_MODE);
                    try {
                        try {
                            readLines(randomAccessFile2);
                        } catch (IOException e3) {
                            try {
                                this.listener.handle(e3);
                            } catch (FileNotFoundException unused2) {
                                randomAccessFile2 = randomAccessFile;
                                this.listener.fileNotFound();
                            }
                        }
                        try {
                            IOUtils.closeQuietly(randomAccessFile2);
                            length = 0;
                            randomAccessFile2 = randomAccessFile;
                        } catch (FileNotFoundException unused3) {
                            length = 0;
                            randomAccessFile2 = randomAccessFile;
                            this.listener.fileNotFound();
                        }
                    } catch (InterruptedException e4) {
                        e = e4;
                        randomAccessFile2 = randomAccessFile;
                        Thread.currentThread().interrupt();
                        stop(e);
                        IOUtils.closeQuietly(randomAccessFile2);
                    } catch (Exception e5) {
                        e = e5;
                        randomAccessFile2 = randomAccessFile;
                        stop(e);
                        IOUtils.closeQuietly(randomAccessFile2);
                    } catch (Throwable th2) {
                        th = th2;
                        randomAccessFile2 = randomAccessFile;
                        IOUtils.closeQuietly(randomAccessFile2);
                        throw th;
                    }
                } catch (FileNotFoundException unused4) {
                }
            } else {
                if (length2 > length) {
                    lines = readLines(randomAccessFile2);
                    jLastModified = this.file.lastModified();
                } else if (zIsFileNewer) {
                    randomAccessFile2.seek(0L);
                    lines = readLines(randomAccessFile2);
                    jLastModified = this.file.lastModified();
                } else {
                    if (this.reOpen) {
                        IOUtils.closeQuietly(randomAccessFile2);
                    }
                    Thread.sleep(this.delayMillis);
                    if (!getRun() && this.reOpen) {
                        randomAccessFile = new RandomAccessFile(this.file, RAF_MODE);
                        randomAccessFile.seek(length);
                        randomAccessFile2 = randomAccessFile;
                    }
                }
                long j = lines;
                jLastModified2 = jLastModified;
                length = j;
                if (this.reOpen) {
                    IOUtils.closeQuietly(randomAccessFile2);
                }
                Thread.sleep(this.delayMillis);
                if (!getRun()) {
                }
            }
        }
        IOUtils.closeQuietly(randomAccessFile2);
    }

    public Tailer(File file, TailerListener tailerListener, long j) {
        this(file, tailerListener, j, false);
    }

    public static Tailer create(File file, TailerListener tailerListener, long j, boolean z, boolean z2, int i) {
        return create(file, DEFAULT_CHARSET, tailerListener, j, z, z2, i);
    }

    public Tailer(File file, TailerListener tailerListener, long j, boolean z) {
        this(file, tailerListener, j, z, 4096);
    }

    public static Tailer create(File file, Charset charset, TailerListener tailerListener, long j, boolean z, boolean z2, int i) {
        Tailer tailer = new Tailer(file, charset, tailerListener, j, z, z2, i);
        Thread thread = new Thread(tailer);
        thread.setDaemon(true);
        thread.start();
        return tailer;
    }

    public void stop() {
        this.run = false;
    }

    public Tailer(File file, TailerListener tailerListener, long j, boolean z, boolean z2) {
        this(file, tailerListener, j, z, z2, 4096);
    }

    public Tailer(File file, TailerListener tailerListener, long j, boolean z, int i) {
        this(file, tailerListener, j, z, false, i);
    }

    public Tailer(File file, TailerListener tailerListener, long j, boolean z, boolean z2, int i) {
        this(file, DEFAULT_CHARSET, tailerListener, j, z, z2, i);
    }

    public Tailer(File file, Charset charset, TailerListener tailerListener, long j, boolean z, boolean z2, int i) {
        this.run = true;
        this.file = file;
        this.delayMillis = j;
        this.end = z;
        this.inbuf = new byte[i];
        this.listener = tailerListener;
        tailerListener.init(this);
        this.reOpen = z2;
        this.cset = charset;
    }

    public static Tailer create(File file, TailerListener tailerListener, long j, boolean z) {
        return create(file, tailerListener, j, z, 4096);
    }

    public static Tailer create(File file, TailerListener tailerListener, long j, boolean z, boolean z2) {
        return create(file, tailerListener, j, z, z2, 4096);
    }

    public static Tailer create(File file, TailerListener tailerListener, long j) {
        return create(file, tailerListener, j, false);
    }

    public static Tailer create(File file, TailerListener tailerListener) {
        return create(file, tailerListener, 1000L, false);
    }
}
