package com.transsion.compressor.image;

import java.io.IOException;
import java.io.InputStream;

public abstract class c implements d {

    private InputStream f42811a;

    public abstract InputStream a();

    @Override
    public void close() {
        InputStream inputStream = this.f42811a;
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException unused) {
            } finally {
                this.f42811a = null;
            }
        }
    }

    @Override
    public InputStream open() {
        close();
        InputStream inputStreamA = a();
        this.f42811a = inputStreamA;
        return inputStreamA;
    }
}
