package org.apache.commons.io.output;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.nio.charset.Charset;
import org.apache.commons.io.Charsets;
import org.apache.commons.io.FileUtils;
import org.apache.commons.io.IOUtils;

public class LockableFileWriter extends Writer {
    private static final String LCK = ".lck";
    private final File lockFile;
    private final Writer out;

    public LockableFileWriter(String str) throws IOException {
        this(str, false, (String) null);
    }

    private void createLock() throws IOException {
        synchronized (LockableFileWriter.class) {
            try {
                if (!this.lockFile.createNewFile()) {
                    throw new IOException("Can't write file, lock " + this.lockFile.getAbsolutePath() + " exists");
                }
                this.lockFile.deleteOnExit();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private Writer initWriter(File file, Charset charset, boolean z) throws IOException {
        FileOutputStream fileOutputStream;
        boolean zExists = file.exists();
        try {
            fileOutputStream = new FileOutputStream(file.getAbsolutePath(), z);
            try {
                return new OutputStreamWriter(fileOutputStream, Charsets.toCharset(charset));
            } catch (IOException e) {
                e = e;
                IOUtils.closeQuietly((Writer) null);
                IOUtils.closeQuietly((OutputStream) fileOutputStream);
                FileUtils.deleteQuietly(this.lockFile);
                if (!zExists) {
                    FileUtils.deleteQuietly(file);
                }
                throw e;
            } catch (RuntimeException e2) {
                e = e2;
                IOUtils.closeQuietly((Writer) null);
                IOUtils.closeQuietly((OutputStream) fileOutputStream);
                FileUtils.deleteQuietly(this.lockFile);
                if (!zExists) {
                    FileUtils.deleteQuietly(file);
                }
                throw e;
            }
        } catch (IOException e3) {
            e = e3;
            fileOutputStream = null;
        } catch (RuntimeException e4) {
            e = e4;
            fileOutputStream = null;
        }
    }

    private void testLockDir(File file) throws IOException {
        if (!file.exists()) {
            throw new IOException("Could not find lockDir: " + file.getAbsolutePath());
        }
        if (file.canWrite()) {
            return;
        }
        throw new IOException("Could not write to lockDir: " + file.getAbsolutePath());
    }

    @Override
    public void close() throws IOException {
        try {
            this.out.close();
        } finally {
            this.lockFile.delete();
        }
    }

    @Override
    public void flush() throws IOException {
        this.out.flush();
    }

    @Override
    public void write(int i) throws IOException {
        this.out.write(i);
    }

    public LockableFileWriter(String str, boolean z) throws IOException {
        this(str, z, (String) null);
    }

    @Override
    public void write(char[] cArr) throws IOException {
        this.out.write(cArr);
    }

    public LockableFileWriter(String str, boolean z, String str2) throws IOException {
        this(new File(str), z, str2);
    }

    @Override
    public void write(char[] cArr, int i, int i2) throws IOException {
        this.out.write(cArr, i, i2);
    }

    public LockableFileWriter(File file) throws IOException {
        this(file, false, (String) null);
    }

    @Override
    public void write(String str) throws IOException {
        this.out.write(str);
    }

    public LockableFileWriter(File file, boolean z) throws IOException {
        this(file, z, (String) null);
    }

    @Override
    public void write(String str, int i, int i2) throws IOException {
        this.out.write(str, i, i2);
    }

    @Deprecated
    public LockableFileWriter(File file, boolean z, String str) throws IOException {
        this(file, Charset.defaultCharset(), z, str);
    }

    public LockableFileWriter(File file, Charset charset) throws IOException {
        this(file, charset, false, (String) null);
    }

    public LockableFileWriter(File file, String str) throws IOException {
        this(file, str, false, (String) null);
    }

    public LockableFileWriter(File file, Charset charset, boolean z, String str) throws IOException {
        File absoluteFile = file.getAbsoluteFile();
        if (absoluteFile.getParentFile() != null) {
            FileUtils.forceMkdir(absoluteFile.getParentFile());
        }
        if (!absoluteFile.isDirectory()) {
            File file2 = new File(str == null ? System.getProperty("java.io.tmpdir") : str);
            FileUtils.forceMkdir(file2);
            testLockDir(file2);
            this.lockFile = new File(file2, absoluteFile.getName() + LCK);
            createLock();
            this.out = initWriter(absoluteFile, charset, z);
            return;
        }
        throw new IOException("File specified is a directory");
    }

    public LockableFileWriter(File file, String str, boolean z, String str2) throws IOException {
        this(file, Charsets.toCharset(str), z, str2);
    }
}
