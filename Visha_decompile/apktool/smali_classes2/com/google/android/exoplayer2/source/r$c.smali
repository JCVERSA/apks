.class public final Lcom/google/android/exoplayer2/source/r$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/Loader$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final a:J

.field public final b:Lcom/google/android/exoplayer2/upstream/b;

.field public final c:Lox9;

.field public d:[B


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/b;Lcom/google/android/exoplayer2/upstream/a;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lin5;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/r$c;->a:J

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/r$c;->b:Lcom/google/android/exoplayer2/upstream/b;

    new-instance p1, Lox9;

    invoke-direct {p1, p2}, Lox9;-><init>(Lcom/google/android/exoplayer2/upstream/a;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/r$c;->c:Lox9;

    return-void
.end method

.method public static synthetic a(Lcom/google/android/exoplayer2/source/r$c;)Lox9;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/r$c;->c:Lox9;

    return-object p0
.end method

.method public static synthetic b(Lcom/google/android/exoplayer2/source/r$c;)[B
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/r$c;->d:[B

    return-object p0
.end method


# virtual methods
.method public cancelLoad()V
    .locals 0

    return-void
.end method

.method public load()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/r$c;->c:Lox9;

    invoke-virtual {v0}, Lox9;->f()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/r$c;->c:Lox9;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/r$c;->b:Lcom/google/android/exoplayer2/upstream/b;

    invoke-virtual {v0, v1}, Lox9;->a(Lcom/google/android/exoplayer2/upstream/b;)J

    const/4 v0, 0x0

    :goto_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/r$c;->c:Lox9;

    invoke-virtual {v0}, Lox9;->c()J

    move-result-wide v0

    long-to-int v0, v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/r$c;->d:[B

    if-nez v1, :cond_0

    const/16 v1, 0x400

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/google/android/exoplayer2/source/r$c;->d:[B

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    array-length v2, v1

    if-ne v0, v2, :cond_1

    array-length v2, v1

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/source/r$c;->d:[B

    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/r$c;->c:Lox9;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/r$c;->d:[B

    array-length v3, v2

    sub-int/2addr v3, v0

    invoke-virtual {v1, v2, v0, v3}, Lox9;->read([BII)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/r$c;->c:Lox9;

    invoke-static {p0}, Lws1;->a(Lcom/google/android/exoplayer2/upstream/a;)V

    return-void

    :goto_2
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/r$c;->c:Lox9;

    invoke-static {p0}, Lws1;->a(Lcom/google/android/exoplayer2/upstream/a;)V

    throw v0
.end method
