package org.libtorrent4j;

import java.util.ArrayList;
import java.util.Iterator;
import org.libtorrent4j.swig.sha256_hash;
import org.libtorrent4j.swig.sha256_hash_vector;

public final class Sha256Hash extends SwigObject<sha256_hash> implements Comparable<Sha256Hash>, Cloneable {
    public Sha256Hash(sha256_hash sha256_hashVar) {
        super(sha256_hashVar);
    }

    public static ArrayList<Sha256Hash> convert(sha256_hash_vector sha256_hash_vectorVar) {
        ArrayList<Sha256Hash> arrayList = new ArrayList<>(sha256_hash_vectorVar.size());
        Iterator<sha256_hash> it = sha256_hash_vectorVar.iterator();
        while (it.hasNext()) {
            arrayList.add(new Sha256Hash(it.next()));
        }
        return arrayList;
    }

    public static Sha256Hash fromBytes(byte[] bArr) {
        if (bArr.length == 32) {
            return new Sha256Hash(new sha256_hash(Vectors.bytes2byte_vector(bArr)));
        }
        throw new IllegalArgumentException("bytes array must be of length 32");
    }

    public static Sha256Hash max() {
        return new Sha256Hash(sha256_hash.max());
    }

    public static Sha256Hash min() {
        return new Sha256Hash(sha256_hash.min());
    }

    public static Sha256Hash parseHex(String str) {
        return fromBytes(Hex.decode(str));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void clear() {
        ((sha256_hash) this.h).clear();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int countLeadingZeroes() {
        return ((sha256_hash) this.h).count_leading_zeroes();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean equals(Object obj) {
        if (obj instanceof Sha256Hash) {
            return ((sha256_hash) this.h).eq((sha256_hash) ((Sha256Hash) obj).h);
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        return ((sha256_hash) this.h).hash_code();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean isAllZeros() {
        return ((sha256_hash) this.h).is_all_zeros();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public String toHex() {
        return ((sha256_hash) this.h).to_hex();
    }

    public String toString() {
        return toHex();
    }

    public Sha256Hash() {
        this(new sha256_hash());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Sha256Hash clone() {
        return new Sha256Hash(new sha256_hash((sha256_hash) this.h));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public int compareTo(Sha256Hash sha256Hash) {
        return sha256_hash.compare((sha256_hash) this.h, (sha256_hash) sha256Hash.h);
    }
}
