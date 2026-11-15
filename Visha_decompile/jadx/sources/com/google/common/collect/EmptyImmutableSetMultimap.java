package com.google.common.collect;

import java.util.Collection;

class EmptyImmutableSetMultimap extends ImmutableSetMultimap<Object, Object> {
    static final EmptyImmutableSetMultimap INSTANCE = new EmptyImmutableSetMultimap();
    private static final long serialVersionUID = 0;

    private EmptyImmutableSetMultimap() {
        super(ImmutableMap.of(), 0, null);
    }

    private Object readResolve() {
        return INSTANCE;
    }

    @Override
    public ImmutableMap<Object, Collection<Object>> asMap() {
        return super.asMap();
    }
}
