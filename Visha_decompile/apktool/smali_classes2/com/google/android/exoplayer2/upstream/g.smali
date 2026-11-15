.class public final Lcom/google/android/exoplayer2/upstream/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/Loader$d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/upstream/g$a;
    }
.end annotation


# instance fields
.field public final a:J

.field public final b:Lcom/google/android/exoplayer2/upstream/b;

.field public final c:I

.field public final d:Lox9;

.field public volatile e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/a;Lcom/google/android/exoplayer2/upstream/b;ILcom/google/android/exoplayer2/upstream/g$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p4, Lox9;

    invoke-direct {p4, p1}, Lox9;-><init>(Lcom/google/android/exoplayer2/upstream/a;)V

    iput-object p4, p0, Lcom/google/android/exoplayer2/upstream/g;->d:Lox9;

    iput-object p2, p0, Lcom/google/android/exoplayer2/upstream/g;->b:Lcom/google/android/exoplayer2/upstream/b;

    iput p3, p0, Lcom/google/android/exoplayer2/upstream/g;->c:I

    invoke-static {}, Lin5;->a()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/exoplayer2/upstream/g;->a:J

    return-void
.end method

.method public static b(Lcom/google/android/exoplayer2/upstream/a;Lcom/google/android/exoplayer2/upstream/g$a;Lcom/google/android/exoplayer2/upstream/b;I)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/google/android/exoplayer2/upstream/g;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/google/android/exoplayer2/upstream/g;-><init>(Lcom/google/android/exoplayer2/upstream/a;Lcom/google/android/exoplayer2/upstream/b;ILcom/google/android/exoplayer2/upstream/g$a;)V

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/g;->load()V

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/g;->a()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/upstream/g;->e:Ljava/lang/Object;

    return-object p0
.end method

.method public final cancelLoad()V
    .locals 0

    return-void
.end method

.method public final load()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/g;->d:Lox9;

    invoke-virtual {v0}, Lox9;->f()V

    new-instance v0, Lvs1;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/g;->d:Lox9;

    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/g;->b:Lcom/google/android/exoplayer2/upstream/b;

    invoke-direct {v0, v1, v2}, Lvs1;-><init>(Lcom/google/android/exoplayer2/upstream/a;Lcom/google/android/exoplayer2/upstream/b;)V

    :try_start_0
    invoke-virtual {v0}, Lvs1;->d()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/upstream/g;->d:Lox9;

    invoke-virtual {p0}, Lox9;->getUri()Landroid/net/Uri;

    move-result-object p0

    invoke-static {p0}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/Uri;

    const/4 p0, 0x0

    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p0

    invoke-static {v0}, Lblb;->m(Ljava/io/Closeable;)V

    throw p0
.end method
