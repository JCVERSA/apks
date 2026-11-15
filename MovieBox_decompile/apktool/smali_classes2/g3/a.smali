.class public final Lg3/a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lk2/r;


# instance fields
.field private final a:Lk2/o0;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lk2/o0;

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    const-string v2, "image/png"

    .line 8
    .line 9
    const v3, 0x8950

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v3, v1, v2}, Lk2/o0;-><init>(IILjava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lg3/a;->a:Lk2/o0;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public b(Lk2/s;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lg3/a;->a:Lk2/o0;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lk2/o0;->b(Lk2/s;)Z

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
    iget-object v0, p0, Lg3/a;->a:Lk2/o0;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lk2/o0;->d(Lk2/s;Lk2/l0;)I

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
    iget-object v0, p0, Lg3/a;->a:Lk2/o0;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lk2/o0;->e(Lk2/t;)V

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
    .locals 0

    .line 1
    return-void
.end method

.method public seek(JJ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lg3/a;->a:Lk2/o0;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3, p4}, Lk2/o0;->seek(JJ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
