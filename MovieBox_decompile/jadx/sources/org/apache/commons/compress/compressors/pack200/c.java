package org.apache.commons.compress.compressors.pack200;

import java.io.File;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.OpenOption;

class c extends b {

    private final File f68031b;

    c() throws IOException {
        File fileCreateTempFile = File.createTempFile("commons-compress", "packtemp");
        this.f68031b = fileCreateTempFile;
        fileCreateTempFile.deleteOnExit();
        ((FilterOutputStream) this).out = Files.newOutputStream(fileCreateTempFile.toPath(), new OpenOption[0]);
    }
}
