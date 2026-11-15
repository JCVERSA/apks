package defpackage;

import android.view.View;
import com.yandex.div.core.state.DivStatePath;

public interface sv2 {
    oj3 getExpressionResolver();

    View getView();

    void hideTooltip(String str);

    void showTooltip(String str, boolean z);

    default void switchToState(long j) {
        switchToState(j, true);
    }

    void switchToState(long j, boolean z);

    void switchToState(DivStatePath divStatePath, boolean z);
}
