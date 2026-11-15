package androidx.loader.content;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.FileDescriptor;
import java.io.PrintWriter;

public abstract class a {
    Context mContext;
    int mId;
    b mListener;
    InterfaceC0080a mOnLoadCanceledListener;
    boolean mStarted = false;
    boolean mAbandoned = false;
    boolean mReset = true;
    boolean mContentChanged = false;
    boolean mProcessingChange = false;

    public interface InterfaceC0080a {
    }

    public interface b {
        void a(a aVar, Object obj);
    }

    public a(Context context) {
        this.mContext = context.getApplicationContext();
    }

    public void abandon() {
        this.mAbandoned = true;
        onAbandon();
    }

    public boolean cancelLoad() {
        return onCancelLoad();
    }

    public void commitContentChanged() {
        this.mProcessingChange = false;
    }

    @NonNull
    public String dataToString(@Nullable Object obj) {
        StringBuilder sb2 = new StringBuilder(64);
        androidx.core.util.b.a(obj, sb2);
        sb2.append("}");
        return sb2.toString();
    }

    public void deliverResult(@Nullable Object obj) {
        b bVar = this.mListener;
        if (bVar != null) {
            bVar.a(this, obj);
        }
    }

    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        printWriter.print(str);
        printWriter.print("mId=");
        printWriter.print(this.mId);
        printWriter.print(" mListener=");
        printWriter.println(this.mListener);
        if (this.mStarted || this.mContentChanged || this.mProcessingChange) {
            printWriter.print(str);
            printWriter.print("mStarted=");
            printWriter.print(this.mStarted);
            printWriter.print(" mContentChanged=");
            printWriter.print(this.mContentChanged);
            printWriter.print(" mProcessingChange=");
            printWriter.println(this.mProcessingChange);
        }
        if (this.mAbandoned || this.mReset) {
            printWriter.print(str);
            printWriter.print("mAbandoned=");
            printWriter.print(this.mAbandoned);
            printWriter.print(" mReset=");
            printWriter.println(this.mReset);
        }
    }

    public void forceLoad() {
        onForceLoad();
    }

    @NonNull
    public Context getContext() {
        return this.mContext;
    }

    public int getId() {
        return this.mId;
    }

    public boolean isAbandoned() {
        return this.mAbandoned;
    }

    public boolean isReset() {
        return this.mReset;
    }

    public boolean isStarted() {
        return this.mStarted;
    }

    protected abstract boolean onCancelLoad();

    public void onContentChanged() {
        if (this.mStarted) {
            forceLoad();
        } else {
            this.mContentChanged = true;
        }
    }

    protected abstract void onStartLoading();

    public void registerListener(int i10, @NonNull b bVar) {
        if (this.mListener != null) {
            throw new IllegalStateException("There is already a listener registered");
        }
        this.mListener = bVar;
        this.mId = i10;
    }

    public void reset() {
        onReset();
        this.mReset = true;
        this.mStarted = false;
        this.mAbandoned = false;
        this.mContentChanged = false;
        this.mProcessingChange = false;
    }

    public void rollbackContentChanged() {
        if (this.mProcessingChange) {
            onContentChanged();
        }
    }

    public final void startLoading() {
        this.mStarted = true;
        this.mReset = false;
        this.mAbandoned = false;
        onStartLoading();
    }

    public void stopLoading() {
        this.mStarted = false;
        onStopLoading();
    }

    public boolean takeContentChanged() {
        boolean z10 = this.mContentChanged;
        this.mContentChanged = false;
        this.mProcessingChange |= z10;
        return z10;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder(64);
        androidx.core.util.b.a(this, sb2);
        sb2.append(" id=");
        sb2.append(this.mId);
        sb2.append("}");
        return sb2.toString();
    }

    public void unregisterListener(@NonNull b bVar) {
        b bVar2 = this.mListener;
        if (bVar2 == null) {
            throw new IllegalStateException("No listener register");
        }
        if (bVar2 != bVar) {
            throw new IllegalArgumentException("Attempting to unregister the wrong listener");
        }
        this.mListener = null;
    }

    public void unregisterOnLoadCanceledListener(@NonNull InterfaceC0080a interfaceC0080a) {
        throw new IllegalStateException("No listener register");
    }

    public void deliverCancellation() {
    }

    protected void onAbandon() {
    }

    protected void onForceLoad() {
    }

    protected void onReset() {
    }

    protected void onStopLoading() {
    }

    public void registerOnLoadCanceledListener(@NonNull InterfaceC0080a interfaceC0080a) {
    }
}
