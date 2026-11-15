package com.transsion.audiotagger.audio;

import com.transsion.audiotagger.audio.generic.Utils;
import java.io.File;
import java.io.FileFilter;

public class AudioFileFilter implements FileFilter {
    private final boolean allowDirectories;

    public AudioFileFilter(boolean z) {
        this.allowDirectories = z;
    }

    @Override
    public boolean accept(File file) {
        if (!file.isHidden() && file.canRead()) {
            if (file.isDirectory()) {
                return this.allowDirectories;
            }
            try {
                if (SupportedFileFormat.valueOf(Utils.getExtension(file).toUpperCase()) != null) {
                    return true;
                }
            } catch (IllegalArgumentException unused) {
            }
        }
        return false;
    }

    public AudioFileFilter() {
        this(true);
    }
}
