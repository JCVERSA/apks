package androidx.core.content.pm;

import androidx.annotation.AnyThread;
import androidx.annotation.RestrictTo;
import androidx.annotation.WorkerThread;
import java.util.ArrayList;
import java.util.List;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
public abstract class ShortcutInfoCompatSaver<T> {

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public static class NoopImpl extends ShortcutInfoCompatSaver<Void> {
        @Override
        public Void addShortcuts2(List<ShortcutInfoCompat> list) {
            return null;
        }

        @Override
        public Void removeAllShortcuts() {
            return null;
        }

        @Override
        public Void removeShortcuts2(List<String> list) {
            return null;
        }

        @Override
        public Void addShortcuts(List list) {
            return addShortcuts2((List<ShortcutInfoCompat>) list);
        }

        @Override
        public Void removeShortcuts(List list) {
            return removeShortcuts2((List<String>) list);
        }
    }

    @AnyThread
    public abstract T addShortcuts(List<ShortcutInfoCompat> list);

    @WorkerThread
    public List<ShortcutInfoCompat> getShortcuts() throws Exception {
        return new ArrayList();
    }

    @AnyThread
    public abstract T removeAllShortcuts();

    @AnyThread
    public abstract T removeShortcuts(List<String> list);
}
