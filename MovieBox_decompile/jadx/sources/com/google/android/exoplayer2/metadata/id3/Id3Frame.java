package com.google.android.exoplayer2.metadata.id3;

import com.google.android.exoplayer2.b2;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.p1;

public abstract class Id3Frame implements Metadata.Entry {

    public final String f24796id;

    public Id3Frame(String str) {
        this.f24796id = str;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public byte[] getWrappedMetadataBytes() {
        return com.google.android.exoplayer2.metadata.a.a(this);
    }

    @Override
    public p1 getWrappedMetadataFormat() {
        return com.google.android.exoplayer2.metadata.a.b(this);
    }

    @Override
    public void populateMediaMetadata(b2.b bVar) {
        com.google.android.exoplayer2.metadata.a.c(this, bVar);
    }

    public String toString() {
        return this.f24796id;
    }
}
