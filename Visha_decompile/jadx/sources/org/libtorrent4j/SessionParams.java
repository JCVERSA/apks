package org.libtorrent4j;

import java.io.File;
import java.io.IOException;
import org.libtorrent4j.swig.bdecode_node;
import org.libtorrent4j.swig.byte_vector;
import org.libtorrent4j.swig.error_code;
import org.libtorrent4j.swig.session_params;

public final class SessionParams extends SwigObject<session_params> {
    public SessionParams(session_params session_paramsVar) {
        super(session_paramsVar);
    }

    private static session_params bdecode0(File file) {
        try {
            return bdecode0(Files.bytes(file));
        } catch (IOException e) {
            throw new IllegalArgumentException("Can't decode data from file: " + file, e);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public SettingsPack getSettings() {
        return new SettingsPack(((session_params) this.h).getSettings());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void setDefaultDiskIO() {
        ((session_params) this.h).set_default_disk_io_constructor();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void setPosixDiskIO() {
        ((session_params) this.h).set_posix_disk_io_constructor();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void setSettings(SettingsPack settingsPack) {
        ((session_params) this.h).setSettings(settingsPack.swig());
    }

    public SessionParams() {
        this(new session_params());
    }

    public SessionParams(SettingsPack settingsPack) {
        this(new session_params(settingsPack.swig()));
    }

    public SessionParams(File file) {
        this(bdecode0(file));
    }

    private static session_params bdecode0(byte[] bArr) {
        byte_vector byte_vectorVarBytes2byte_vector = Vectors.bytes2byte_vector(bArr);
        bdecode_node bdecode_nodeVar = new bdecode_node();
        error_code error_codeVar = new error_code();
        if (bdecode_node.bdecode(byte_vectorVarBytes2byte_vector, bdecode_nodeVar, error_codeVar) == 0) {
            session_params session_paramsVar = session_params.read_session_params(bdecode_nodeVar);
            byte_vectorVarBytes2byte_vector.clear();
            return session_paramsVar;
        }
        throw new IllegalArgumentException("Can't decode data: " + error_codeVar.message());
    }

    public SessionParams(byte[] bArr) {
        this(bdecode0(bArr));
    }
}
