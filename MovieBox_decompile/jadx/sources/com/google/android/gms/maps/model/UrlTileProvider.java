package com.google.android.gms.maps.model;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;

public abstract class UrlTileProvider implements TileProvider {
    private final int height;
    private final int width;

    public UrlTileProvider(int i10, int i11) {
        this.width = i10;
        this.height = i11;
    }

    @Override
    public final Tile getTile(int i10, int i11, int i12) {
        URL tileUrl = getTileUrl(i10, i11, i12);
        if (tileUrl == null) {
            return TileProvider.NO_TILE;
        }
        try {
            int i13 = this.width;
            int i14 = this.height;
            InputStream inputStreamOpenStream = tileUrl.openStream();
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            byte[] bArr = new byte[4096];
            while (true) {
                int i15 = inputStreamOpenStream.read(bArr);
                if (i15 == -1) {
                    return new Tile(i13, i14, byteArrayOutputStream.toByteArray());
                }
                byteArrayOutputStream.write(bArr, 0, i15);
            }
        } catch (IOException unused) {
            return null;
        }
    }

    public abstract URL getTileUrl(int i10, int i11, int i12);
}
