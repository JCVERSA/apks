package org.apache.tools.ant.types.resources;

import java.io.IOException;

public class ImmutableResourceException extends IOException {
    public ImmutableResourceException() {
    }

    public ImmutableResourceException(String str) {
        super(str);
    }
}
