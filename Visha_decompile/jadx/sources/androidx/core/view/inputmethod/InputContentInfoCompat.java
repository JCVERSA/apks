package androidx.core.view.inputmethod;

import android.content.ClipDescription;
import android.net.Uri;
import android.view.inputmethod.InputContentInfo;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;

public final class InputContentInfoCompat {
    private final InputContentInfoCompatImpl mImpl;

    public static final class InputContentInfoCompatBaseImpl implements InputContentInfoCompatImpl {

        @NonNull
        private final Uri mContentUri;

        @NonNull
        private final ClipDescription mDescription;

        @Nullable
        private final Uri mLinkUri;

        public InputContentInfoCompatBaseImpl(@NonNull Uri uri, @NonNull ClipDescription clipDescription, @Nullable Uri uri2) {
            this.mContentUri = uri;
            this.mDescription = clipDescription;
            this.mLinkUri = uri2;
        }

        @Override
        @NonNull
        public Uri getContentUri() {
            return this.mContentUri;
        }

        @Override
        @NonNull
        public ClipDescription getDescription() {
            return this.mDescription;
        }

        @Override
        @Nullable
        public Object getInputContentInfo() {
            return null;
        }

        @Override
        @Nullable
        public Uri getLinkUri() {
            return this.mLinkUri;
        }

        @Override
        public void releasePermission() {
        }

        @Override
        public void requestPermission() {
        }
    }

    public interface InputContentInfoCompatImpl {
        @NonNull
        Uri getContentUri();

        @NonNull
        ClipDescription getDescription();

        @Nullable
        Object getInputContentInfo();

        @Nullable
        Uri getLinkUri();

        void releasePermission();

        void requestPermission();
    }

    public InputContentInfoCompat(@NonNull Uri uri, @NonNull ClipDescription clipDescription, @Nullable Uri uri2) {
        this.mImpl = new InputContentInfoCompatApi25Impl(uri, clipDescription, uri2);
    }

    @Nullable
    public static InputContentInfoCompat wrap(@Nullable Object obj) {
        if (obj == null) {
            return null;
        }
        return new InputContentInfoCompat(new InputContentInfoCompatApi25Impl(obj));
    }

    @NonNull
    public Uri getContentUri() {
        return this.mImpl.getContentUri();
    }

    @NonNull
    public ClipDescription getDescription() {
        return this.mImpl.getDescription();
    }

    @Nullable
    public Uri getLinkUri() {
        return this.mImpl.getLinkUri();
    }

    public void releasePermission() {
        this.mImpl.releasePermission();
    }

    public void requestPermission() {
        this.mImpl.requestPermission();
    }

    @Nullable
    public Object unwrap() {
        return this.mImpl.getInputContentInfo();
    }

    @RequiresApi(25)
    public static final class InputContentInfoCompatApi25Impl implements InputContentInfoCompatImpl {

        @NonNull
        final InputContentInfo mObject;

        public InputContentInfoCompatApi25Impl(@NonNull Object obj) {
            this.mObject = (InputContentInfo) obj;
        }

        @Override
        @NonNull
        public Uri getContentUri() {
            return this.mObject.getContentUri();
        }

        @Override
        @NonNull
        public ClipDescription getDescription() {
            return this.mObject.getDescription();
        }

        @Override
        @NonNull
        public Object getInputContentInfo() {
            return this.mObject;
        }

        @Override
        @Nullable
        public Uri getLinkUri() {
            return this.mObject.getLinkUri();
        }

        @Override
        public void releasePermission() {
            this.mObject.releasePermission();
        }

        @Override
        public void requestPermission() {
            this.mObject.requestPermission();
        }

        public InputContentInfoCompatApi25Impl(@NonNull Uri uri, @NonNull ClipDescription clipDescription, @Nullable Uri uri2) {
            this.mObject = new InputContentInfo(uri, clipDescription, uri2);
        }
    }

    private InputContentInfoCompat(@NonNull InputContentInfoCompatImpl inputContentInfoCompatImpl) {
        this.mImpl = inputContentInfoCompatImpl;
    }
}
