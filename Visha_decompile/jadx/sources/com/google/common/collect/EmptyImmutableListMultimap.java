package com.google.common.collect;

import java.util.Collection;

class EmptyImmutableListMultimap extends ImmutableListMultimap<Object, Object> {
    static final EmptyImmutableListMultimap INSTANCE = new EmptyImmutableListMultimap();
    private static final long serialVersionUID = 0;

    private EmptyImmutableListMultimap() {
        super(ImmutableMap.of(), 0);
    }

    private Object readResolve() {
        return INSTANCE;
    }

    @Override
    public ImmutableMap<Object, Collection<Object>> asMap() {
        return super.asMap();
    }
}
