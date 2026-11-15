package com.transsion.athena.taaneh;

import java.io.File;
import java.util.Comparator;

class ehanat implements Comparator<File> {
    @Override
    public int compare(File file, File file2) {
        return file.getName().compareTo(file2.getName());
    }
}
