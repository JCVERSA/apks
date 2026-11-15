package androidx.window.area;

import android.content.Context;
import android.view.View;
import androidx.window.core.ExperimentalWindowApi;
import kotlin.Metadata;

@ExperimentalWindowApi
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\bg\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&¢\u0006\u0004\b\u0005\u0010\u0006R\u0014\u0010\n\u001a\u00020\u00078&X¦\u0004¢\u0006\u0006\u001a\u0004\b\b\u0010\tø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u000bÀ\u0006\u0001"}, d2 = {"Landroidx/window/area/WindowAreaSessionPresenter;", "Landroidx/window/area/WindowAreaSession;", "Landroid/view/View;", "view", "Lzfb;", "setContentView", "(Landroid/view/View;)V", "Landroid/content/Context;", "getContext", "()Landroid/content/Context;", "context", "window_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public interface WindowAreaSessionPresenter extends WindowAreaSession {
    Context getContext();

    void setContentView(View view);
}
