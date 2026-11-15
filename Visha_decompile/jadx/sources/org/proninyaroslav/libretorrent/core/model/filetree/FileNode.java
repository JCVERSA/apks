package org.proninyaroslav.libretorrent.core.model.filetree;

import java.io.Serializable;

public interface FileNode<F> extends Comparable<F> {

    public static class Type implements Serializable {
        public static int DIR = 0;
        public static int FILE = 1;
    }
}
