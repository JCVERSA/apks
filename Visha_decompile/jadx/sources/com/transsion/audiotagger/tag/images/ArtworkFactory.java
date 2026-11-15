package com.transsion.audiotagger.tag.images;

import com.transsion.audiotagger.audio.flac.metadatablock.MetadataBlockDataPicture;
import java.io.File;
import java.io.IOException;

public class ArtworkFactory {
    public static Artwork createArtworkFromFile(File file) throws IOException {
        return AndroidArtwork.createArtworkFromFile(file);
    }

    public static Artwork createArtworkFromMetadataBlockDataPicture(MetadataBlockDataPicture metadataBlockDataPicture) {
        return AndroidArtwork.createArtworkFromMetadataBlockDataPicture(metadataBlockDataPicture);
    }

    public static Artwork createLinkedArtworkFromURL(String str) throws IOException {
        return AndroidArtwork.createLinkedArtworkFromURL(str);
    }

    public static Artwork getNew() {
        return new AndroidArtwork();
    }
}
