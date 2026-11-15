package androidx.webkit.internal;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.Objects;
import org.chromium.support_lib_boundary.WebMessagePayloadBoundaryInterface;

public class WebMessagePayloadAdapter implements WebMessagePayloadBoundaryInterface {

    @Nullable
    private final byte[] mArrayBuffer;

    @Nullable
    private final String mString;
    private final int mType;

    public WebMessagePayloadAdapter(@Nullable String str) {
        this.mType = 0;
        this.mString = str;
        this.mArrayBuffer = null;
    }

    private void checkType(int i) {
        if (this.mType == i) {
            return;
        }
        throw new IllegalStateException("Expected " + i + ", but type is " + this.mType);
    }

    @Override
    @NonNull
    public byte[] getAsArrayBuffer() {
        checkType(1);
        byte[] bArr = this.mArrayBuffer;
        Objects.requireNonNull(bArr);
        return bArr;
    }

    @Override
    @Nullable
    public String getAsString() {
        checkType(0);
        return this.mString;
    }

    @Override
    @NonNull
    public String[] getSupportedFeatures() {
        return new String[0];
    }

    @Override
    public int getType() {
        return this.mType;
    }

    public WebMessagePayloadAdapter(@NonNull byte[] bArr) {
        this.mType = 1;
        this.mString = null;
        this.mArrayBuffer = bArr;
    }
}
