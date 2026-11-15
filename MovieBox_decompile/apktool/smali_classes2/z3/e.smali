.class public interface abstract Lz3/e;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz3/e$a;,
        Lz3/e$b;,
        Lz3/e$c;
    }
.end annotation


# virtual methods
.method public abstract close()V
.end method

.method public abstract getDatabaseName()Ljava/lang/String;
.end method

.method public abstract getReadableDatabase()Lz3/d;
.end method

.method public abstract getWritableDatabase()Lz3/d;
.end method

.method public abstract setWriteAheadLoggingEnabled(Z)V
.end method
