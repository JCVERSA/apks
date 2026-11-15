package org.libtorrent4j;

import org.libtorrent4j.swig.bdecode_node;
import org.libtorrent4j.swig.byte_vector;
import org.libtorrent4j.swig.error_code;

public final class BDecodeNode {
    private final byte_vector buffer;
    private final bdecode_node n;

    public BDecodeNode(bdecode_node bdecode_nodeVar) {
        this(bdecode_nodeVar, null);
    }

    public static BDecodeNode bdecode(byte[] bArr) {
        byte_vector byte_vectorVarBytes2byte_vector = Vectors.bytes2byte_vector(bArr);
        bdecode_node bdecode_nodeVar = new bdecode_node();
        error_code error_codeVar = new error_code();
        if (bdecode_node.bdecode(byte_vectorVarBytes2byte_vector, bdecode_nodeVar, error_codeVar) == 0) {
            return new BDecodeNode(bdecode_nodeVar, byte_vectorVarBytes2byte_vector);
        }
        throw new IllegalArgumentException("Can't decode data: " + error_codeVar.message());
    }

    public byte_vector buffer() {
        return this.buffer;
    }

    public bdecode_node swig() {
        return this.n;
    }

    public String toString() {
        return bdecode_node.to_string(this.n, false, 2);
    }

    public BDecodeNode(bdecode_node bdecode_nodeVar, byte_vector byte_vectorVar) {
        this.n = bdecode_nodeVar;
        this.buffer = byte_vectorVar;
    }
}
