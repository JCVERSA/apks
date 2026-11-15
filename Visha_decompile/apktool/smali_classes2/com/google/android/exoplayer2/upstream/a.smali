.class public interface abstract Lcom/google/android/exoplayer2/upstream/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lms1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/upstream/a$a;
    }
.end annotation


# virtual methods
.method public abstract a(Lcom/google/android/exoplayer2/upstream/b;)J
.end method

.method public abstract b(Lu5b;)V
.end method

.method public abstract close()V
.end method

.method public getResponseHeaders()Ljava/util/Map;
    .locals 0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public abstract getUri()Landroid/net/Uri;
.end method
