package com.transsion.dbdata.source.data.repository;

import defpackage.s74;
import defpackage.y45;
import kotlin.Metadata;
import kotlin.Pair;

@Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
public final class SystemAudioQueryRepository$getCachedResult$stored$1 implements s74 {
    final Pair<Long, Object> $candidate;
    final long $currentTime;
    final long $expireTime;

    public SystemAudioQueryRepository$getCachedResult$stored$1(long j, long j2, Pair<Long, ? extends Object> pair) {
        this.$currentTime = j;
        this.$expireTime = j2;
        this.$candidate = pair;
    }

    @Override
    public final Pair<Long, Object> invoke(String str, Pair<Long, ? extends Object> pair) {
        y45.j(str, "<unused var>");
        return (pair == null || this.$currentTime - pair.getFirst().longValue() >= this.$expireTime) ? this.$candidate : pair;
    }
}
