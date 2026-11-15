.class public final Lcom/yandex/mobile/ads/impl/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/z70;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/v;

.field private final b:Lcom/yandex/mobile/ads/impl/ag1;

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Loud;

    invoke-direct {v0}, Loud;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/yandex/mobile/ads/impl/v;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/v;-><init>()V

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/u;->a:Lcom/yandex/mobile/ads/impl/v;

    new-instance v0, Lcom/yandex/mobile/ads/impl/ag1;

    const/16 v1, 0x4000

    invoke-direct {v0, v1}, Lcom/yandex/mobile/ads/impl/ag1;-><init>(I)V

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/u;->b:Lcom/yandex/mobile/ads/impl/ag1;

    return-void
.end method

.method private static synthetic a()[Lcom/yandex/mobile/ads/impl/z70;
    .locals 3

    .line 18
    new-instance v0, Lcom/yandex/mobile/ads/impl/u;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/u;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/yandex/mobile/ads/impl/z70;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    return-object v1
.end method

.method public static synthetic b()[Lcom/yandex/mobile/ads/impl/z70;
    .locals 1

    invoke-static {}, Lcom/yandex/mobile/ads/impl/u;->a()[Lcom/yandex/mobile/ads/impl/z70;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/a80;Lcom/yandex/mobile/ads/impl/pj1;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    iget-object p2, p0, Lcom/yandex/mobile/ads/impl/u;->b:Lcom/yandex/mobile/ads/impl/ag1;

    .line 9
    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/ag1;->c()[B

    move-result-object p2

    check-cast p1, Lcom/yandex/mobile/ads/impl/wz;

    const/16 v0, 0x4000

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1, v0}, Lcom/yandex/mobile/ads/impl/wz;->read([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    return p2

    .line 10
    :cond_0
    iget-object p2, p0, Lcom/yandex/mobile/ads/impl/u;->b:Lcom/yandex/mobile/ads/impl/ag1;

    invoke-virtual {p2, v1}, Lcom/yandex/mobile/ads/impl/ag1;->e(I)V

    .line 11
    iget-object p2, p0, Lcom/yandex/mobile/ads/impl/u;->b:Lcom/yandex/mobile/ads/impl/ag1;

    invoke-virtual {p2, p1}, Lcom/yandex/mobile/ads/impl/ag1;->d(I)V

    .line 12
    iget-boolean p1, p0, Lcom/yandex/mobile/ads/impl/u;->c:Z

    if-nez p1, :cond_1

    .line 13
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/u;->a:Lcom/yandex/mobile/ads/impl/v;

    const/4 p2, 0x4

    const-wide/16 v2, 0x0

    invoke-virtual {p1, p2, v2, v3}, Lcom/yandex/mobile/ads/impl/v;->a(IJ)V

    const/4 p1, 0x1

    .line 14
    iput-boolean p1, p0, Lcom/yandex/mobile/ads/impl/u;->c:Z

    .line 15
    :cond_1
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/u;->a:Lcom/yandex/mobile/ads/impl/v;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/u;->b:Lcom/yandex/mobile/ads/impl/ag1;

    invoke-virtual {p1, p0}, Lcom/yandex/mobile/ads/impl/v;->a(Lcom/yandex/mobile/ads/impl/ag1;)V

    return v1
.end method

.method public final a(JJ)V
    .locals 0

    const/4 p1, 0x0

    .line 16
    iput-boolean p1, p0, Lcom/yandex/mobile/ads/impl/u;->c:Z

    .line 17
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/u;->a:Lcom/yandex/mobile/ads/impl/v;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/v;->a()V

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/b80;)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/u;->a:Lcom/yandex/mobile/ads/impl/v;

    new-instance v0, Lcom/yandex/mobile/ads/impl/p72$d;

    const/4 v1, 0x1

    const/high16 v2, -0x80000000

    const/4 v3, 0x0

    .line 2
    invoke-direct {v0, v2, v3, v1}, Lcom/yandex/mobile/ads/impl/p72$d;-><init>(III)V

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/yandex/mobile/ads/impl/v;->a(Lcom/yandex/mobile/ads/impl/b80;Lcom/yandex/mobile/ads/impl/p72$d;)V

    .line 4
    invoke-interface {p1}, Lcom/yandex/mobile/ads/impl/b80;->a()V

    .line 5
    new-instance p0, Lcom/yandex/mobile/ads/impl/ex1$b;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v2, 0x0

    .line 6
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/yandex/mobile/ads/impl/ex1$b;-><init>(JJ)V

    .line 7
    invoke-interface {p1, p0}, Lcom/yandex/mobile/ads/impl/b80;->a(Lcom/yandex/mobile/ads/impl/ex1;)V

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/a80;)Z
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19
    new-instance p0, Lcom/yandex/mobile/ads/impl/ag1;

    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/yandex/mobile/ads/impl/ag1;-><init>(I)V

    const/4 v1, 0x0

    move v2, v1

    .line 20
    :goto_0
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ag1;->c()[B

    move-result-object v3

    move-object v4, p1

    check-cast v4, Lcom/yandex/mobile/ads/impl/wz;

    .line 21
    invoke-virtual {v4, v3, v1, v0, v1}, Lcom/yandex/mobile/ads/impl/wz;->b([BIIZ)Z

    .line 22
    invoke-virtual {p0, v1}, Lcom/yandex/mobile/ads/impl/ag1;->e(I)V

    .line 23
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ag1;->w()I

    move-result v3

    const v5, 0x494433

    const/4 v6, 0x3

    if-eq v3, v5, :cond_7

    .line 24
    invoke-virtual {v4}, Lcom/yandex/mobile/ads/impl/wz;->c()V

    .line 25
    invoke-virtual {v4, v1, v2}, Lcom/yandex/mobile/ads/impl/wz;->a(ZI)Z

    move p1, v1

    move v0, v2

    .line 26
    :goto_1
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ag1;->c()[B

    move-result-object v3

    const/4 v5, 0x7

    .line 27
    invoke-virtual {v4, v3, v1, v5, v1}, Lcom/yandex/mobile/ads/impl/wz;->b([BIIZ)Z

    .line 28
    invoke-virtual {p0, v1}, Lcom/yandex/mobile/ads/impl/ag1;->e(I)V

    .line 29
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ag1;->z()I

    move-result v3

    const v7, 0xac40

    const v8, 0xac41

    if-eq v3, v7, :cond_1

    if-eq v3, v8, :cond_1

    .line 30
    invoke-virtual {v4}, Lcom/yandex/mobile/ads/impl/wz;->c()V

    add-int/lit8 v0, v0, 0x1

    sub-int p1, v0, v2

    const/16 v3, 0x2000

    if-lt p1, v3, :cond_0

    return v1

    .line 31
    :cond_0
    invoke-virtual {v4, v1, v0}, Lcom/yandex/mobile/ads/impl/wz;->a(ZI)Z

    move p1, v1

    goto :goto_1

    :cond_1
    const/4 v7, 0x1

    add-int/2addr p1, v7

    const/4 v9, 0x4

    if-lt p1, v9, :cond_2

    return v7

    .line 32
    :cond_2
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ag1;->c()[B

    move-result-object v7

    .line 33
    array-length v10, v7

    const/4 v11, -0x1

    if-ge v10, v5, :cond_3

    move v10, v11

    goto :goto_3

    :cond_3
    const/4 v10, 0x2

    .line 34
    aget-byte v10, v7, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    aget-byte v12, v7, v6

    and-int/lit16 v12, v12, 0xff

    or-int/2addr v10, v12

    const v12, 0xffff

    if-ne v10, v12, :cond_4

    .line 35
    aget-byte v9, v7, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x10

    const/4 v10, 0x5

    aget-byte v10, v7, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    or-int/2addr v9, v10

    const/4 v10, 0x6

    aget-byte v7, v7, v10

    and-int/lit16 v7, v7, 0xff

    or-int v10, v9, v7

    goto :goto_2

    :cond_4
    move v5, v9

    :goto_2
    if-ne v3, v8, :cond_5

    add-int/lit8 v5, v5, 0x2

    :cond_5
    add-int/2addr v10, v5

    :goto_3
    if-ne v10, v11, :cond_6

    return v1

    :cond_6
    add-int/lit8 v10, v10, -0x7

    .line 36
    invoke-virtual {v4, v1, v10}, Lcom/yandex/mobile/ads/impl/wz;->a(ZI)Z

    goto :goto_1

    .line 37
    :cond_7
    invoke-virtual {p0, v6}, Lcom/yandex/mobile/ads/impl/ag1;->f(I)V

    .line 38
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ag1;->s()I

    move-result v3

    add-int/lit8 v5, v3, 0xa

    add-int/2addr v2, v5

    .line 39
    invoke-virtual {v4, v1, v3}, Lcom/yandex/mobile/ads/impl/wz;->a(ZI)Z

    goto/16 :goto_0
.end method

.method public final release()V
    .locals 0

    return-void
.end method
