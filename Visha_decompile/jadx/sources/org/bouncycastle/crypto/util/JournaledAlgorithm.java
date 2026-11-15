package org.bouncycastle.crypto.util;

import defpackage.aq1;
import defpackage.fz9;
import defpackage.m1;
import defpackage.oa;
import defpackage.s1;
import defpackage.wp1;
import defpackage.y0;
import defpackage.y93;
import defpackage.zl1;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.OutputStream;
import java.io.Serializable;
import java.security.SecureRandom;

public class JournaledAlgorithm implements y93, Serializable {
    private transient oa algID;
    private transient JournalingSecureRandom journaling;

    public JournaledAlgorithm(oa oaVar, JournalingSecureRandom journalingSecureRandom) {
        if (oaVar == null) {
            throw new NullPointerException("AlgorithmIdentifier passed to JournaledAlgorithm is null");
        }
        if (journalingSecureRandom == null) {
            throw new NullPointerException("JournalingSecureRandom passed to JournaledAlgorithm is null");
        }
        this.journaling = journalingSecureRandom;
        this.algID = oaVar;
    }

    public static JournaledAlgorithm getState(File file, SecureRandom secureRandom) throws IOException, ClassNotFoundException {
        if (file == null) {
            throw new NullPointerException("File for loading is null in JournaledAlgorithm");
        }
        BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(file));
        try {
            return new JournaledAlgorithm(fz9.c(bufferedInputStream), secureRandom);
        } finally {
            bufferedInputStream.close();
        }
    }

    private void initFromEncoding(byte[] bArr, SecureRandom secureRandom) {
        s1 s1VarZ = s1.z(bArr);
        this.algID = oa.o(s1VarZ.A(0));
        this.journaling = new JournalingSecureRandom(m1.y(s1VarZ.A(1)).z(), secureRandom);
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        initFromEncoding((byte[]) objectInputStream.readObject(), zl1.d());
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(getEncoded());
    }

    public oa getAlgorithmIdentifier() {
        return this.algID;
    }

    @Override
    public byte[] getEncoded() throws IOException {
        y0 y0Var = new y0();
        y0Var.a(this.algID);
        y0Var.a(new wp1(this.journaling.getFullTranscript()));
        return new aq1(y0Var).getEncoded();
    }

    public JournalingSecureRandom getJournalingSecureRandom() {
        return this.journaling;
    }

    public void storeState(File file) throws IOException {
        if (file == null) {
            throw new NullPointerException("file for storage is null in JournaledAlgorithm");
        }
        FileOutputStream fileOutputStream = new FileOutputStream(file);
        try {
            storeState(fileOutputStream);
        } finally {
            fileOutputStream.close();
        }
    }

    public JournaledAlgorithm(byte[] bArr) {
        this(bArr, zl1.d());
    }

    public static JournaledAlgorithm getState(InputStream inputStream, SecureRandom secureRandom) throws IOException, ClassNotFoundException {
        if (inputStream == null) {
            throw new NullPointerException("stream for loading is null in JournaledAlgorithm");
        }
        BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStream);
        try {
            return new JournaledAlgorithm(fz9.c(bufferedInputStream), secureRandom);
        } finally {
            bufferedInputStream.close();
        }
    }

    public void storeState(OutputStream outputStream) throws IOException {
        if (outputStream == null) {
            throw new NullPointerException("output stream for storage is null in JournaledAlgorithm");
        }
        outputStream.write(getEncoded());
    }

    public JournaledAlgorithm(byte[] bArr, SecureRandom secureRandom) {
        if (bArr == null) {
            throw new NullPointerException("encoding passed to JournaledAlgorithm is null");
        }
        if (secureRandom == null) {
            throw new NullPointerException("random passed to JournaledAlgorithm is null");
        }
        initFromEncoding(bArr, secureRandom);
    }
}
