package org.proninyaroslav.libretorrent.core.storage;

public class TagRepositoryImpl implements TagRepository {
    public final AppDatabase a;

    public TagRepositoryImpl(AppDatabase appDatabase) {
        this.a = appDatabase;
    }
}
