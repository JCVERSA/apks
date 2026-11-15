.class public Laf/c;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field protected a:Lcom/google/zxing/j;

.field protected b:Laf/r;

.field private final c:I


# direct methods
.method public constructor <init>(Lcom/google/zxing/j;Laf/r;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    iput v0, p0, Laf/c;->c:I

    .line 6
    .line 7
    iput-object p1, p0, Laf/c;->a:Lcom/google/zxing/j;

    .line 8
    .line 9
    iput-object p2, p0, Laf/c;->b:Laf/r;

    .line 10
    .line 11
    return-void
.end method

.method public static f(Ljava/util/List;Laf/r;)Ljava/util/List;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    .line 9
    .line 10
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lcom/google/zxing/k;

    .line 25
    .line 26
    invoke-virtual {p1, v1}, Laf/r;->f(Lcom/google/zxing/k;)Lcom/google/zxing/k;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    return-object v0
.end method


# virtual methods
.method public a()Lcom/google/zxing/BarcodeFormat;
    .locals 1

    .line 1
    iget-object v0, p0, Laf/c;->a:Lcom/google/zxing/j;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/zxing/j;->b()Lcom/google/zxing/BarcodeFormat;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public b()Landroid/graphics/Bitmap;
    .locals 3

    .line 1
    iget-object v0, p0, Laf/c;->b:Laf/r;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x2

    .line 5
    invoke-virtual {v0, v1, v2}, Laf/r;->b(Landroid/graphics/Rect;I)Landroid/graphics/Bitmap;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public c()[B
    .locals 1

    .line 1
    iget-object v0, p0, Laf/c;->a:Lcom/google/zxing/j;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/zxing/j;->c()[B

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public d()Ljava/util/Map;
    .locals 1

    .line 1
    iget-object v0, p0, Laf/c;->a:Lcom/google/zxing/j;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/zxing/j;->d()Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Laf/c;->a:Lcom/google/zxing/j;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/zxing/j;->f()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Laf/c;->a:Lcom/google/zxing/j;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/zxing/j;->f()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
