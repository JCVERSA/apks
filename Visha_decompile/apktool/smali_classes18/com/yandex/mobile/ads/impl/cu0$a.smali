.class public final Lcom/yandex/mobile/ads/impl/cu0$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/cu0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:I

.field private final b:[I

.field private final c:[Lcom/yandex/mobile/ads/impl/z52;

.field private final d:[I

.field private final e:[[[I

.field private final f:Lcom/yandex/mobile/ads/impl/z52;


# direct methods
.method public constructor <init>([I[Lcom/yandex/mobile/ads/impl/z52;[I[[[ILcom/yandex/mobile/ads/impl/z52;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/cu0$a;->b:[I

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/cu0$a;->c:[Lcom/yandex/mobile/ads/impl/z52;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/cu0$a;->e:[[[I

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/cu0$a;->d:[I

    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/cu0$a;->f:Lcom/yandex/mobile/ads/impl/z52;

    array-length p1, p1

    iput p1, p0, Lcom/yandex/mobile/ads/impl/cu0$a;->a:I

    return-void
.end method

.method public static bridge synthetic a(Lcom/yandex/mobile/ads/impl/cu0$a;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/yandex/mobile/ads/impl/cu0$a;->a:I

    return p0
.end method

.method public static bridge synthetic b(Lcom/yandex/mobile/ads/impl/cu0$a;)[Lcom/yandex/mobile/ads/impl/z52;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/cu0$a;->c:[Lcom/yandex/mobile/ads/impl/z52;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/yandex/mobile/ads/impl/cu0$a;)Lcom/yandex/mobile/ads/impl/z52;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/cu0$a;->f:Lcom/yandex/mobile/ads/impl/z52;

    return-object p0
.end method


# virtual methods
.method public final a()I
    .locals 0

    .line 15
    iget p0, p0, Lcom/yandex/mobile/ads/impl/cu0$a;->a:I

    return p0
.end method

.method public final a(I)I
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/cu0$a;->b:[I

    aget p0, p0, p1

    return p0
.end method

.method public final a(II)I
    .locals 8

    .line 2
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/cu0$a;->c:[Lcom/yandex/mobile/ads/impl/z52;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/yandex/mobile/ads/impl/z52;->a(I)Lcom/yandex/mobile/ads/impl/y52;

    move-result-object v0

    iget v0, v0, Lcom/yandex/mobile/ads/impl/y52;->b:I

    .line 3
    new-array v1, v0, [I

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v0, :cond_1

    .line 4
    invoke-virtual {p0, p1, p2, v3}, Lcom/yandex/mobile/ads/impl/cu0$a;->a(III)I

    move-result v5

    const/4 v6, 0x4

    if-eq v5, v6, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v4, 0x1

    .line 5
    aput v3, v1, v4

    move v4, v5

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    const/16 v1, 0x10

    const/4 v3, 0x0

    move v4, v2

    move-object v5, v3

    move v3, v4

    .line 7
    :goto_2
    array-length v6, v0

    if-ge v2, v6, :cond_3

    .line 8
    aget v6, v0, v2

    .line 9
    iget-object v7, p0, Lcom/yandex/mobile/ads/impl/cu0$a;->c:[Lcom/yandex/mobile/ads/impl/z52;

    aget-object v7, v7, p1

    .line 10
    invoke-virtual {v7, p2}, Lcom/yandex/mobile/ads/impl/z52;->a(I)Lcom/yandex/mobile/ads/impl/y52;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/yandex/mobile/ads/impl/y52;->a(I)Lcom/yandex/mobile/ads/impl/jc0;

    move-result-object v6

    iget-object v6, v6, Lcom/yandex/mobile/ads/impl/jc0;->m:Ljava/lang/String;

    add-int/lit8 v7, v4, 0x1

    if-nez v4, :cond_2

    move-object v5, v6

    goto :goto_3

    .line 11
    :cond_2
    invoke-static {v5, v6}, Lcom/yandex/mobile/ads/impl/f92;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    or-int/2addr v3, v4

    .line 12
    :goto_3
    iget-object v4, p0, Lcom/yandex/mobile/ads/impl/cu0$a;->e:[[[I

    aget-object v4, v4, p1

    aget-object v4, v4, p2

    aget v4, v4, v2

    and-int/lit8 v4, v4, 0x18

    .line 13
    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    add-int/lit8 v2, v2, 0x1

    move v4, v7

    goto :goto_2

    :cond_3
    if-eqz v3, :cond_4

    .line 14
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/cu0$a;->d:[I

    aget p0, p0, p1

    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_4
    return v1
.end method

.method public final a(III)I
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/cu0$a;->e:[[[I

    aget-object p0, p0, p1

    aget-object p0, p0, p2

    aget p0, p0, p3

    and-int/lit8 p0, p0, 0x7

    return p0
.end method

.method public final b()Lcom/yandex/mobile/ads/impl/z52;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/cu0$a;->f:Lcom/yandex/mobile/ads/impl/z52;

    return-object p0
.end method

.method public final b(I)Lcom/yandex/mobile/ads/impl/z52;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/cu0$a;->c:[Lcom/yandex/mobile/ads/impl/z52;

    aget-object p0, p0, p1

    return-object p0
.end method
