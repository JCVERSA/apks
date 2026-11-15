package androidx.core.os;

import android.os.LocaleList;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import java.util.Locale;

@RequiresApi(24)
final class LocaleListPlatformWrapper implements LocaleListInterface {
    private final LocaleList mLocaleList;

    public LocaleListPlatformWrapper(Object obj) {
        this.mLocaleList = (LocaleList) obj;
    }

    public boolean equals(Object obj) {
        return this.mLocaleList.equals(((LocaleListInterface) obj).getLocaleList());
    }

    @Override
    public Locale get(int i) {
        return this.mLocaleList.get(i);
    }

    @Override
    @Nullable
    public Locale getFirstMatch(@NonNull String[] strArr) {
        return this.mLocaleList.getFirstMatch(strArr);
    }

    @Override
    public Object getLocaleList() {
        return this.mLocaleList;
    }

    public int hashCode() {
        return this.mLocaleList.hashCode();
    }

    @Override
    public int indexOf(Locale locale) {
        return this.mLocaleList.indexOf(locale);
    }

    @Override
    public boolean isEmpty() {
        return this.mLocaleList.isEmpty();
    }

    @Override
    public int size() {
        return this.mLocaleList.size();
    }

    @Override
    public String toLanguageTags() {
        return this.mLocaleList.toLanguageTags();
    }

    public String toString() {
        return this.mLocaleList.toString();
    }
}
