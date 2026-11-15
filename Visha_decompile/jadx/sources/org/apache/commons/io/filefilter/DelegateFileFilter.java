package org.apache.commons.io.filefilter;

import java.io.File;
import java.io.FileFilter;
import java.io.FilenameFilter;
import java.io.Serializable;

public class DelegateFileFilter extends AbstractFileFilter implements Serializable {
    private static final long serialVersionUID = -8723373124984771318L;
    private final FileFilter fileFilter;
    private final FilenameFilter filenameFilter;

    public DelegateFileFilter(FilenameFilter filenameFilter) {
        if (filenameFilter == null) {
            throw new IllegalArgumentException("The FilenameFilter must not be null");
        }
        this.filenameFilter = filenameFilter;
        this.fileFilter = null;
    }

    @Override
    public boolean accept(File file) {
        FileFilter fileFilter = this.fileFilter;
        return fileFilter != null ? fileFilter.accept(file) : super.accept(file);
    }

    @Override
    public String toString() {
        Object obj = this.fileFilter;
        if (obj == null) {
            obj = this.filenameFilter;
        }
        return super.toString() + "(" + obj.toString() + ")";
    }

    @Override
    public boolean accept(File file, String str) {
        FilenameFilter filenameFilter = this.filenameFilter;
        if (filenameFilter != null) {
            return filenameFilter.accept(file, str);
        }
        return super.accept(file, str);
    }

    public DelegateFileFilter(FileFilter fileFilter) {
        if (fileFilter != null) {
            this.fileFilter = fileFilter;
            this.filenameFilter = null;
            return;
        }
        throw new IllegalArgumentException("The FileFilter must not be null");
    }
}
