package org.proninyaroslav.libretorrent.core.system;

import java.io.Closeable;
import java.io.FileDescriptor;

public interface FileDescriptorWrapper extends Closeable {
    FileDescriptor f(String str);
}
