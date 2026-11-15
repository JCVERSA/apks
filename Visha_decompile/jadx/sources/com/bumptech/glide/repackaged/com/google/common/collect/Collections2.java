package com.bumptech.glide.repackaged.com.google.common.collect;

import com.bumptech.glide.repackaged.com.google.common.base.Joiner;
import com.transsion.dbdata.beans.media.PlayAudioData;
import java.util.Collection;

public final class Collections2 {
    static final Joiner STANDARD_JOINER = Joiner.on(", ").useForNull("null");

    public static <T> Collection<T> cast(Iterable<T> iterable) {
        return (Collection) iterable;
    }

    public static StringBuilder newStringBuilderForCollection(int i) {
        CollectPreconditions.checkNonnegative(i, PlayAudioData.TAG_SIZE);
        return new StringBuilder((int) Math.min(((long) i) * 8, 1073741824L));
    }
}
