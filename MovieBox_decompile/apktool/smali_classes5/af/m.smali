.class public Laf/m;
.super Laf/g;
.source "source.java"


# instance fields
.field private c:Z


# direct methods
.method public constructor <init>(Lcom/google/zxing/i;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Laf/g;-><init>(Lcom/google/zxing/i;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Laf/m;->c:Z

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method protected e(Lcom/google/zxing/e;)Lcom/google/zxing/b;
    .locals 2

    .line 1
    iget-boolean v0, p0, Laf/m;->c:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Laf/m;->c:Z

    .line 7
    .line 8
    new-instance v0, Lcom/google/zxing/b;

    .line 9
    .line 10
    new-instance v1, Lkd/l;

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/google/zxing/e;->e()Lcom/google/zxing/e;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-direct {v1, p1}, Lkd/l;-><init>(Lcom/google/zxing/e;)V

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, v1}, Lcom/google/zxing/b;-><init>(Lcom/google/zxing/a;)V

    .line 20
    .line 21
    .line 22
    return-object v0

    .line 23
    :cond_0
    const/4 v0, 0x1

    .line 24
    iput-boolean v0, p0, Laf/m;->c:Z

    .line 25
    .line 26
    new-instance v0, Lcom/google/zxing/b;

    .line 27
    .line 28
    new-instance v1, Lkd/l;

    .line 29
    .line 30
    invoke-direct {v1, p1}, Lkd/l;-><init>(Lcom/google/zxing/e;)V

    .line 31
    .line 32
    .line 33
    invoke-direct {v0, v1}, Lcom/google/zxing/b;-><init>(Lcom/google/zxing/a;)V

    .line 34
    .line 35
    .line 36
    return-object v0
.end method
