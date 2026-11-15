.class public final Lsd/r;
.super Lsd/w;
.source "source.java"


# instance fields
.field private final i:Lsd/w;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lsd/w;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lsd/g;

    .line 5
    .line 6
    invoke-direct {v0}, Lsd/g;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lsd/r;->i:Lsd/w;

    .line 10
    .line 11
    return-void
.end method

.method private static s(Lcom/google/zxing/j;)Lcom/google/zxing/j;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/google/zxing/j;->f()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/16 v2, 0x30

    .line 11
    .line 12
    if-ne v1, v2, :cond_1

    .line 13
    .line 14
    new-instance v1, Lcom/google/zxing/j;

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {p0}, Lcom/google/zxing/j;->e()[Lcom/google/zxing/k;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    sget-object v3, Lcom/google/zxing/BarcodeFormat;->UPC_A:Lcom/google/zxing/BarcodeFormat;

    .line 26
    .line 27
    const/4 v4, 0x0

    .line 28
    invoke-direct {v1, v0, v4, v2, v3}, Lcom/google/zxing/j;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/k;Lcom/google/zxing/BarcodeFormat;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/google/zxing/j;->d()Ljava/util/Map;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/google/zxing/j;->d()Ljava/util/Map;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-virtual {v1, p0}, Lcom/google/zxing/j;->g(Ljava/util/Map;)V

    .line 42
    .line 43
    .line 44
    :cond_0
    return-object v1

    .line 45
    :cond_1
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    throw p0
.end method


# virtual methods
.method public a(Lcom/google/zxing/b;Ljava/util/Map;)Lcom/google/zxing/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lsd/r;->i:Lsd/w;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lsd/p;->a(Lcom/google/zxing/b;Ljava/util/Map;)Lcom/google/zxing/j;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {p1}, Lsd/r;->s(Lcom/google/zxing/j;)Lcom/google/zxing/j;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public b(Lcom/google/zxing/b;)Lcom/google/zxing/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lsd/r;->i:Lsd/w;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lsd/p;->b(Lcom/google/zxing/b;)Lcom/google/zxing/j;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {p1}, Lsd/r;->s(Lcom/google/zxing/j;)Lcom/google/zxing/j;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public c(ILkd/a;Ljava/util/Map;)Lcom/google/zxing/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lsd/r;->i:Lsd/w;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lsd/w;->c(ILkd/a;Ljava/util/Map;)Lcom/google/zxing/j;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {p1}, Lsd/r;->s(Lcom/google/zxing/j;)Lcom/google/zxing/j;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method protected l(Lkd/a;[ILjava/lang/StringBuilder;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lsd/r;->i:Lsd/w;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lsd/w;->l(Lkd/a;[ILjava/lang/StringBuilder;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public m(ILkd/a;[ILjava/util/Map;)Lcom/google/zxing/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lsd/r;->i:Lsd/w;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3, p4}, Lsd/w;->m(ILkd/a;[ILjava/util/Map;)Lcom/google/zxing/j;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {p1}, Lsd/r;->s(Lcom/google/zxing/j;)Lcom/google/zxing/j;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method q()Lcom/google/zxing/BarcodeFormat;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/zxing/BarcodeFormat;->UPC_A:Lcom/google/zxing/BarcodeFormat;

    .line 2
    .line 3
    return-object v0
.end method
