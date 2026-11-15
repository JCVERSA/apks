.class public final Lcom/google/android/exoplayer2/source/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/e$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/google/android/exoplayer2/upstream/a;

.field public final b:I

.field public final c:Lcom/google/android/exoplayer2/source/e$a;

.field public final d:[B

.field public e:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/a;ILcom/google/android/exoplayer2/source/e$a;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-lez p2, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lzi;->a(Z)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/e;->a:Lcom/google/android/exoplayer2/upstream/a;

    iput p2, p0, Lcom/google/android/exoplayer2/source/e;->b:I

    iput-object p3, p0, Lcom/google/android/exoplayer2/source/e;->c:Lcom/google/android/exoplayer2/source/e$a;

    new-array p1, v0, [B

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/e;->d:[B

    iput p2, p0, Lcom/google/android/exoplayer2/source/e;->e:I

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/upstream/b;)J
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public b(Lu5b;)V
    .locals 0

    invoke-static {p1}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/e;->a:Lcom/google/android/exoplayer2/upstream/a;

    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/upstream/a;->b(Lu5b;)V

    return-void
.end method

.method public final c()Z
    .locals 8

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/e;->a:Lcom/google/android/exoplayer2/upstream/a;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/e;->d:[B

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lms1;->read([BII)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/e;->d:[B

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_1

    return v3

    :cond_1
    new-array v4, v0, [B

    move v5, v0

    move v6, v2

    :goto_0
    if-lez v5, :cond_3

    iget-object v7, p0, Lcom/google/android/exoplayer2/source/e;->a:Lcom/google/android/exoplayer2/upstream/a;

    invoke-interface {v7, v4, v6, v5}, Lms1;->read([BII)I

    move-result v7

    if-ne v7, v1, :cond_2

    return v2

    :cond_2
    add-int/2addr v6, v7

    sub-int/2addr v5, v7

    goto :goto_0

    :cond_3
    :goto_1
    if-lez v0, :cond_4

    add-int/lit8 v1, v0, -0x1

    aget-byte v1, v4, v1

    if-nez v1, :cond_4

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_4
    if-lez v0, :cond_5

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/e;->c:Lcom/google/android/exoplayer2/source/e$a;

    new-instance v1, Lqw7;

    invoke-direct {v1, v4, v0}, Lqw7;-><init>([BI)V

    invoke-interface {p0, v1}, Lcom/google/android/exoplayer2/source/e$a;->a(Lqw7;)V

    :cond_5
    return v3
.end method

.method public close()V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public getResponseHeaders()Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/e;->a:Lcom/google/android/exoplayer2/upstream/a;

    invoke-interface {p0}, Lcom/google/android/exoplayer2/upstream/a;->getResponseHeaders()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/e;->a:Lcom/google/android/exoplayer2/upstream/a;

    invoke-interface {p0}, Lcom/google/android/exoplayer2/upstream/a;->getUri()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public read([BII)I
    .locals 3

    iget v0, p0, Lcom/google/android/exoplayer2/source/e;->e:I

    const/4 v1, -0x1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/e;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/source/e;->b:I

    iput v0, p0, Lcom/google/android/exoplayer2/source/e;->e:I

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/e;->a:Lcom/google/android/exoplayer2/upstream/a;

    iget v2, p0, Lcom/google/android/exoplayer2/source/e;->e:I

    invoke-static {v2, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    invoke-interface {v0, p1, p2, p3}, Lms1;->read([BII)I

    move-result p1

    if-eq p1, v1, :cond_2

    iget p2, p0, Lcom/google/android/exoplayer2/source/e;->e:I

    sub-int/2addr p2, p1

    iput p2, p0, Lcom/google/android/exoplayer2/source/e;->e:I

    :cond_2
    return p1
.end method
