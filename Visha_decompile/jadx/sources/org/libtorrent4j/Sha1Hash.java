package org.libtorrent4j;

import java.util.ArrayList;
import java.util.Iterator;
import org.libtorrent4j.swig.sha1_hash;
import org.libtorrent4j.swig.sha1_hash_vector;

public final class Sha1Hash extends SwigObject<sha1_hash> implements Comparable<Sha1Hash>, Cloneable {
    public Sha1Hash(sha1_hash sha1_hashVar) {
        super(sha1_hashVar);
    }

    public static ArrayList<Sha1Hash> convert(sha1_hash_vector sha1_hash_vectorVar) {
        ArrayList<Sha1Hash> arrayList = new ArrayList<>(sha1_hash_vectorVar.size());
        Iterator<sha1_hash> it = sha1_hash_vectorVar.iterator();
        while (it.hasNext()) {
            arrayList.add(new Sha1Hash(it.next()));
        }
        return arrayList;
    }

    public static Sha1Hash fromBytes(byte[] bArr) {
        if (bArr.length == 20) {
            return new Sha1Hash(new sha1_hash(Vectors.bytes2byte_vector(bArr)));
        }
        throw new IllegalArgumentException("bytes array must be of length 20");
    }

    public static Sha1Hash max() {
        return new Sha1Hash(sha1_hash.max());
    }

    public static Sha1Hash min() {
        return new Sha1Hash(sha1_hash.min());
    }

    public static Sha1Hash parseHex(String str) {
        return fromBytes(Hex.decode(str));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void clear() {
        ((sha1_hash) this.h).clear();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int countLeadingZeroes() {
        return ((sha1_hash) this.h).count_leading_zeroes();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean equals(Object obj) {
        if (obj instanceof Sha1Hash) {
            return ((sha1_hash) this.h).eq((sha1_hash) ((Sha1Hash) obj).h);
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        return ((sha1_hash) this.h).hash_code();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean isAllZeros() {
        return ((sha1_hash) this.h).is_all_zeros();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public String toHex() {
        return ((sha1_hash) this.h).to_hex();
    }

    public String toString() {
        return toHex();
    }

    public Sha1Hash() {
        this(new sha1_hash());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Sha1Hash clone() {
        return new Sha1Hash(new sha1_hash((sha1_hash) this.h));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public int compareTo(Sha1Hash sha1Hash) {
        return sha1_hash.compare((sha1_hash) this.h, (sha1_hash) sha1Hash.h);
    }
}
