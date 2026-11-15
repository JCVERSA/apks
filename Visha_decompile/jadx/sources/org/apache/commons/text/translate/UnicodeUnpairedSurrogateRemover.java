package org.apache.commons.text.translate;

import java.io.IOException;
import java.io.Writer;

public class UnicodeUnpairedSurrogateRemover extends CodePointTranslator {
    @Override
    public boolean translate(int i, Writer writer) throws IOException {
        return i >= 55296 && i <= 57343;
    }
}
