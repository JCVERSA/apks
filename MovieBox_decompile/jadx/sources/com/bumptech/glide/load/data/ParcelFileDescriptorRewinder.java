package com.bumptech.glide.load.data;

import android.os.Build;
import android.os.ParcelFileDescriptor;
import android.system.ErrnoException;
import android.system.Os;
import android.system.OsConstants;
import androidx.annotation.NonNull;
import java.io.IOException;

public final class ParcelFileDescriptorRewinder implements DataRewinder<ParcelFileDescriptor> {
    private final InternalRewinder rewinder;

    public static final class Factory implements DataRewinder.Factory<ParcelFileDescriptor> {
        @Override
        @NonNull
        public Class<ParcelFileDescriptor> getDataClass() {
            return ParcelFileDescriptor.class;
        }

        @Override
        @NonNull
        public DataRewinder<ParcelFileDescriptor> build(@NonNull ParcelFileDescriptor parcelFileDescriptor) {
            return new ParcelFileDescriptorRewinder(parcelFileDescriptor);
        }
    }

    private static final class InternalRewinder {
        private final ParcelFileDescriptor parcelFileDescriptor;

        InternalRewinder(ParcelFileDescriptor parcelFileDescriptor) {
            this.parcelFileDescriptor = parcelFileDescriptor;
        }

        ParcelFileDescriptor rewind() throws IOException {
            try {
                Os.lseek(this.parcelFileDescriptor.getFileDescriptor(), 0L, OsConstants.SEEK_SET);
                return this.parcelFileDescriptor;
            } catch (ErrnoException e10) {
                throw new IOException(e10);
            }
        }
    }

    public ParcelFileDescriptorRewinder(ParcelFileDescriptor parcelFileDescriptor) {
        this.rewinder = new InternalRewinder(parcelFileDescriptor);
    }

    public static boolean isSupported() {
        return !"robolectric".equals(Build.FINGERPRINT);
    }

    @Override
    public void cleanup() {
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    @NonNull
    public ParcelFileDescriptor rewindAndGet() throws IOException {
        return this.rewinder.rewind();
    }
}
