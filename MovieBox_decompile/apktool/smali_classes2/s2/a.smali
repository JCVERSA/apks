.class public final Ls2/a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lk2/r;


# instance fields
.field private final a:Lk2/r;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Ls2/a;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    .line 3
    new-instance p1, Lk2/o0;

    const/4 v0, 0x2

    const-string v1, "image/jpeg"

    const v2, 0xffd8

    invoke-direct {p1, v2, v0, v1}, Lk2/o0;-><init>(IILjava/lang/String;)V

    iput-object p1, p0, Ls2/a;->a:Lk2/r;

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Ls2/b;

    invoke-direct {p1}, Ls2/b;-><init>()V

    iput-object p1, p0, Ls2/a;->a:Lk2/r;

    :goto_0
    return-void
.end method


# virtual methods
.method public b(Lk2/s;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Ls2/a;->a:Lk2/r;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lk2/r;->b(Lk2/s;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public synthetic c()Lk2/r;
    .locals 1

    .line 1
    invoke-static {p0}, Lk2/q;->b(Lk2/r;)Lk2/r;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public d(Lk2/s;Lk2/l0;)I
    .locals 1

    .line 1
    iget-object v0, p0, Ls2/a;->a:Lk2/r;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lk2/r;->d(Lk2/s;Lk2/l0;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public e(Lk2/t;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ls2/a;->a:Lk2/r;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lk2/r;->e(Lk2/t;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public synthetic f()Ljava/util/List;
    .locals 1

    .line 1
    invoke-static {p0}, Lk2/q;->a(Lk2/r;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public release()V
    .locals 1

    .line 1
    iget-object v0, p0, Ls2/a;->a:Lk2/r;

    .line 2
    .line 3
    invoke-interface {v0}, Lk2/r;->release()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public seek(JJ)V
    .locals 1

    .line 1
    iget-object v0, p0, Ls2/a;->a:Lk2/r;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2, p3, p4}, Lk2/r;->seek(JJ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
