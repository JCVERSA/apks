package com.google.firebase.perf.util;

import android.support.v4.media.session.PlaybackStateCompat;

public enum StorageUnit {
    TERABYTES(1099511627776L) {
        @Override
        public long convert(long j10, StorageUnit storageUnit) {
            return storageUnit.toTerabytes(j10);
        }
    },
    GIGABYTES(1073741824) {
        @Override
        public long convert(long j10, StorageUnit storageUnit) {
            return storageUnit.toGigabytes(j10);
        }
    },
    MEGABYTES(PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED) {
        @Override
        public long convert(long j10, StorageUnit storageUnit) {
            return storageUnit.toMegabytes(j10);
        }
    },
    KILOBYTES(1024) {
        @Override
        public long convert(long j10, StorageUnit storageUnit) {
            return storageUnit.toKilobytes(j10);
        }
    },
    BYTES(1) {
        @Override
        public long convert(long j10, StorageUnit storageUnit) {
            return storageUnit.toBytes(j10);
        }
    };

    long numBytes;

    public abstract long convert(long j10, StorageUnit storageUnit);

    public long toBytes(long j10) {
        return j10 * this.numBytes;
    }

    public long toGigabytes(long j10) {
        return (j10 * this.numBytes) / GIGABYTES.numBytes;
    }

    public long toKilobytes(long j10) {
        return (j10 * this.numBytes) / KILOBYTES.numBytes;
    }

    public long toMegabytes(long j10) {
        return (j10 * this.numBytes) / MEGABYTES.numBytes;
    }

    public long toTerabytes(long j10) {
        return (j10 * this.numBytes) / TERABYTES.numBytes;
    }

    StorageUnit(long j10) {
        this.numBytes = j10;
    }
}
