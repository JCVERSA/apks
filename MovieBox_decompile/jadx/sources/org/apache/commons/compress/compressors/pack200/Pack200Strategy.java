package org.apache.commons.compress.compressors.pack200;

import java.io.IOException;

public enum Pack200Strategy {
    IN_MEMORY {
        @Override
        b newStreamBridge() {
            return new a();
        }
    },
    TEMP_FILE {
        @Override
        b newStreamBridge() throws IOException {
            return new c();
        }
    };

    abstract b newStreamBridge() throws IOException;
}
