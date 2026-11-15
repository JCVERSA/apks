package com.transsion.audiotagger.tag.images;

import android.util.Log;
import com.transsion.audiotagger.audio.flac.metadatablock.MetadataBlockDataPicture;
import com.transsion.audiotagger.tag.id3.valuepair.ImageFormats;
import com.transsion.audiotagger.tag.reference.PictureTypes;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;

public class AndroidArtwork implements Artwork {
    private byte[] binaryData;
    private int height;
    private int width;
    private String mimeType = "";
    private String description = "";
    private boolean isLinked = false;
    private String imageUrl = "";
    private int pictureType = -1;

    public static AndroidArtwork createArtworkFromFile(File file) throws IOException {
        AndroidArtwork androidArtwork = new AndroidArtwork();
        androidArtwork.setFromFile(file);
        return androidArtwork;
    }

    public static AndroidArtwork createArtworkFromMetadataBlockDataPicture(MetadataBlockDataPicture metadataBlockDataPicture) {
        AndroidArtwork androidArtwork = new AndroidArtwork();
        androidArtwork.setFromMetadataBlockDataPicture(metadataBlockDataPicture);
        return androidArtwork;
    }

    public static AndroidArtwork createLinkedArtworkFromURL(String str) throws IOException {
        AndroidArtwork androidArtwork = new AndroidArtwork();
        androidArtwork.setLinkedFromURL(str);
        return androidArtwork;
    }

    @Override
    public byte[] getBinaryData() {
        return this.binaryData;
    }

    @Override
    public String getDescription() {
        return this.description;
    }

    @Override
    public int getHeight() {
        return this.height;
    }

    @Override
    public Object getImage() throws IOException {
        throw new UnsupportedOperationException();
    }

    @Override
    public String getImageUrl() {
        return this.imageUrl;
    }

    @Override
    public String getMimeType() {
        return this.mimeType;
    }

    @Override
    public int getPictureType() {
        return this.pictureType;
    }

    @Override
    public int getWidth() {
        return this.width;
    }

    @Override
    public boolean isLinked() {
        return this.isLinked;
    }

    @Override
    public void setBinaryData(byte[] bArr) {
        this.binaryData = bArr;
    }

    @Override
    public void setDescription(String str) {
        this.description = str;
    }

    @Override
    public void setFromFile(File file) {
        try {
            RandomAccessFile randomAccessFile = new RandomAccessFile(file, "r");
            try {
                byte[] bArr = new byte[(int) randomAccessFile.length()];
                randomAccessFile.read(bArr);
                setBinaryData(bArr);
                setMimeType(ImageFormats.getMimeTypeForBinarySignature(bArr));
                setDescription("");
                setPictureType(PictureTypes.DEFAULT_ID.intValue());
                randomAccessFile.close();
            } catch (Throwable th) {
                try {
                    randomAccessFile.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (IOException e) {
            Log.e(AndroidArtwork.class.getName(), "IOException", e);
        }
    }

    @Override
    public void setFromMetadataBlockDataPicture(MetadataBlockDataPicture metadataBlockDataPicture) {
        setMimeType(metadataBlockDataPicture.getMimeType());
        setDescription(metadataBlockDataPicture.getDescription());
        setPictureType(metadataBlockDataPicture.getPictureType());
        if (metadataBlockDataPicture.isImageUrl()) {
            setLinked(metadataBlockDataPicture.isImageUrl());
            setImageUrl(metadataBlockDataPicture.getImageUrl());
        } else {
            setBinaryData(metadataBlockDataPicture.getImageData());
        }
        setWidth(metadataBlockDataPicture.getWidth());
        setHeight(metadataBlockDataPicture.getHeight());
    }

    @Override
    public void setHeight(int i) {
        this.height = i;
    }

    @Override
    public boolean setImageFromData() {
        throw new UnsupportedOperationException();
    }

    @Override
    public void setImageUrl(String str) {
        this.imageUrl = str;
    }

    @Override
    public void setLinked(boolean z) {
        this.isLinked = z;
    }

    public void setLinkedFromURL(String str) throws IOException {
        setLinked(true);
        setImageUrl(str);
    }

    @Override
    public void setMimeType(String str) {
        this.mimeType = str;
    }

    @Override
    public void setPictureType(int i) {
        this.pictureType = i;
    }

    @Override
    public void setWidth(int i) {
        this.width = i;
    }
}
