package io.appmetrica.analytics.coreutils.internal.toggle;

import androidx.media3.exoplayer.upstream.CmcdData;
import com.lzy.okgo.model.Progress;
import com.yanzhenjie.recyclerview.widget.StickyNestedScrollView;
import io.appmetrica.analytics.coreapi.internal.control.Toggle;
import io.appmetrica.analytics.coreapi.internal.control.ToggleObserver;
import java.util.ArrayList;
import java.util.Iterator;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.mozilla.javascript.ES6Iterator;

@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000f\b&\u0018\u00002\u00020\u0001B\u0019\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u001f\u0010\f\u001a\u00020\u000b2\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\f\u0010\rJ\u0017\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u0017\u0010\u0011\u001a\u00020\u000b2\u0006\u0010\u0010\u001a\u00020\u0002H\u0004¢\u0006\u0004\b\u0011\u0010\u0012R\u001a\u0010\u0005\u001a\u00020\u00048\u0004X\u0084\u0004¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016R\u0014\u0010\u0019\u001a\u00020\u00028VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0017\u0010\u0018¨\u0006\u001a"}, d2 = {"Lio/appmetrica/analytics/coreutils/internal/toggle/SimpleThreadSafeToggle;", "Lio/appmetrica/analytics/coreapi/internal/control/Toggle;", "", "initialState", "", Progress.TAG, MethodDecl.initName, "(ZLjava/lang/String;)V", "Lio/appmetrica/analytics/coreapi/internal/control/ToggleObserver;", "toggleObserver", StickyNestedScrollView.STICKY_TAG, "Lzfb;", "registerObserver", "(Lio/appmetrica/analytics/coreapi/internal/control/ToggleObserver;Z)V", "removeObserver", "(Lio/appmetrica/analytics/coreapi/internal/control/ToggleObserver;)V", ES6Iterator.VALUE_PROPERTY, "updateState", "(Z)V", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "Ljava/lang/String;", "getTag", "()Ljava/lang/String;", "getActualState", "()Z", "actualState", "core-utils_release"}, k = 1, mv = {1, 6, 0})
public abstract class SimpleThreadSafeToggle implements Toggle {

    private final String tag;
    private boolean b;
    private final ArrayList c;

    public SimpleThreadSafeToggle(boolean z, String str) {
        this.tag = str;
        this.b = z;
        this.c = new ArrayList();
    }

    @Override
    public synchronized boolean getActualState() {
        return this.b;
    }

    public final String getTag() {
        return this.tag;
    }

    @Override
    public synchronized void registerObserver(ToggleObserver toggleObserver, boolean sticky) {
        this.c.add(toggleObserver);
        if (sticky) {
            toggleObserver.onStateChanged(getActualState());
        }
    }

    @Override
    public synchronized void removeObserver(ToggleObserver toggleObserver) {
        this.c.remove(toggleObserver);
    }

    public final synchronized void updateState(boolean value) {
        if (value != getActualState()) {
            this.b = value;
            Iterator it = this.c.iterator();
            while (it.hasNext()) {
                ((ToggleObserver) it.next()).onStateChanged(value);
            }
        }
    }

    public SimpleThreadSafeToggle(boolean z, String str, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? false : z, str);
    }
}
