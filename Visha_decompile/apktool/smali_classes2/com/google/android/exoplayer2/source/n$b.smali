.class public final Lcom/google/android/exoplayer2/source/n$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/source/i$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Lcom/google/android/exoplayer2/upstream/a$a;

.field public b:Lcom/google/android/exoplayer2/source/l$a;

.field public c:Lj33;

.field public d:Lcom/google/android/exoplayer2/upstream/f;

.field public e:I

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/a$a;)V
    .locals 1

    .line 1
    new-instance v0, Ln12;

    invoke-direct {v0}, Ln12;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/source/n$b;-><init>(Lcom/google/android/exoplayer2/upstream/a$a;Luk3;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/a$a;Lcom/google/android/exoplayer2/source/l$a;)V
    .locals 6

    .line 3
    new-instance v3, Lcom/google/android/exoplayer2/drm/a;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/drm/a;-><init>()V

    new-instance v4, Lcom/google/android/exoplayer2/upstream/e;

    invoke-direct {v4}, Lcom/google/android/exoplayer2/upstream/e;-><init>()V

    const/high16 v5, 0x100000

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/n$b;-><init>(Lcom/google/android/exoplayer2/upstream/a$a;Lcom/google/android/exoplayer2/source/l$a;Lj33;Lcom/google/android/exoplayer2/upstream/f;I)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/a$a;Lcom/google/android/exoplayer2/source/l$a;Lj33;Lcom/google/android/exoplayer2/upstream/f;I)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/n$b;->a:Lcom/google/android/exoplayer2/upstream/a$a;

    .line 6
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/n$b;->b:Lcom/google/android/exoplayer2/source/l$a;

    .line 7
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/n$b;->c:Lj33;

    .line 8
    iput-object p4, p0, Lcom/google/android/exoplayer2/source/n$b;->d:Lcom/google/android/exoplayer2/upstream/f;

    .line 9
    iput p5, p0, Lcom/google/android/exoplayer2/source/n$b;->e:I

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/a$a;Luk3;)V
    .locals 1

    .line 2
    new-instance v0, Lei8;

    invoke-direct {v0, p2}, Lei8;-><init>(Luk3;)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/source/n$b;-><init>(Lcom/google/android/exoplayer2/upstream/a$a;Lcom/google/android/exoplayer2/source/l$a;)V

    return-void
.end method

.method public static synthetic d(Luk3;Lta8;)Lcom/google/android/exoplayer2/source/l;
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/source/n$b;->f(Luk3;Lta8;)Lcom/google/android/exoplayer2/source/l;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Luk3;Lta8;)Lcom/google/android/exoplayer2/source/l;
    .locals 0

    new-instance p1, Lzn0;

    invoke-direct {p1, p0}, Lzn0;-><init>(Luk3;)V

    return-object p1
.end method


# virtual methods
.method public bridge synthetic a(Lcom/google/android/exoplayer2/upstream/f;)Lcom/google/android/exoplayer2/source/i$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/n$b;->h(Lcom/google/android/exoplayer2/upstream/f;)Lcom/google/android/exoplayer2/source/n$b;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic b(Lcom/google/android/exoplayer2/n;)Lcom/google/android/exoplayer2/source/i;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/n$b;->e(Lcom/google/android/exoplayer2/n;)Lcom/google/android/exoplayer2/source/n;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic c(Lj33;)Lcom/google/android/exoplayer2/source/i$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/n$b;->g(Lj33;)Lcom/google/android/exoplayer2/source/n$b;

    move-result-object p0

    return-object p0
.end method

.method public e(Lcom/google/android/exoplayer2/n;)Lcom/google/android/exoplayer2/source/n;
    .locals 8

    iget-object v0, p1, Lcom/google/android/exoplayer2/n;->c:Lcom/google/android/exoplayer2/n$h;

    invoke-static {v0}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/exoplayer2/n;->c:Lcom/google/android/exoplayer2/n$h;

    iget-object v1, v0, Lcom/google/android/exoplayer2/n$h;->h:Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/n$b;->g:Ljava/lang/Object;

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iget-object v0, v0, Lcom/google/android/exoplayer2/n$h;->e:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/n$b;->f:Ljava/lang/String;

    if-eqz v0, :cond_1

    move v2, v3

    :cond_1
    if-eqz v1, :cond_3

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/n;->b()Lcom/google/android/exoplayer2/n$c;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/n$b;->g:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/n$c;->h(Ljava/lang/Object;)Lcom/google/android/exoplayer2/n$c;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/n$b;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/n$c;->b(Ljava/lang/String;)Lcom/google/android/exoplayer2/n$c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/n$c;->a()Lcom/google/android/exoplayer2/n;

    move-result-object p1

    :cond_2
    :goto_1
    move-object v1, p1

    goto :goto_2

    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/n;->b()Lcom/google/android/exoplayer2/n$c;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/n$b;->g:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/n$c;->h(Ljava/lang/Object;)Lcom/google/android/exoplayer2/n$c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/n$c;->a()Lcom/google/android/exoplayer2/n;

    move-result-object p1

    goto :goto_1

    :cond_4
    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/n;->b()Lcom/google/android/exoplayer2/n$c;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/n$b;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/n$c;->b(Ljava/lang/String;)Lcom/google/android/exoplayer2/n$c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/n$c;->a()Lcom/google/android/exoplayer2/n;

    move-result-object p1

    goto :goto_1

    :goto_2
    new-instance p1, Lcom/google/android/exoplayer2/source/n;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/n$b;->a:Lcom/google/android/exoplayer2/upstream/a$a;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/n$b;->b:Lcom/google/android/exoplayer2/source/l$a;

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/n$b;->c:Lj33;

    invoke-interface {v0, v1}, Lj33;->a(Lcom/google/android/exoplayer2/n;)Lcom/google/android/exoplayer2/drm/c;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/n$b;->d:Lcom/google/android/exoplayer2/upstream/f;

    iget v6, p0, Lcom/google/android/exoplayer2/source/n$b;->e:I

    const/4 v7, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/source/n;-><init>(Lcom/google/android/exoplayer2/n;Lcom/google/android/exoplayer2/upstream/a$a;Lcom/google/android/exoplayer2/source/l$a;Lcom/google/android/exoplayer2/drm/c;Lcom/google/android/exoplayer2/upstream/f;ILcom/google/android/exoplayer2/source/n$a;)V

    return-object p1
.end method

.method public g(Lj33;)Lcom/google/android/exoplayer2/source/n$b;
    .locals 1

    const-string v0, "MediaSource.Factory#setDrmSessionManagerProvider no longer handles null by instantiating a new DefaultDrmSessionManagerProvider. Explicitly construct and pass an instance in order to retain the old behavior."

    invoke-static {p1, v0}, Lzi;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj33;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/n$b;->c:Lj33;

    return-object p0
.end method

.method public h(Lcom/google/android/exoplayer2/upstream/f;)Lcom/google/android/exoplayer2/source/n$b;
    .locals 1

    const-string v0, "MediaSource.Factory#setLoadErrorHandlingPolicy no longer handles null by instantiating a new DefaultLoadErrorHandlingPolicy. Explicitly construct and pass an instance in order to retain the old behavior."

    invoke-static {p1, v0}, Lzi;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/upstream/f;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/n$b;->d:Lcom/google/android/exoplayer2/upstream/f;

    return-object p0
.end method
