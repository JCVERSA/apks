.class public La62;
.super Lhy5;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La62$f;,
        La62$c;,
        La62$g;,
        La62$b;,
        La62$i;,
        La62$h;,
        La62$e;,
        La62$d;
    }
.end annotation


# static fields
.field public static final k:Lcom/google/common/collect/Ordering;

.field public static final l:Lcom/google/common/collect/Ordering;


# instance fields
.field public final d:Ljava/lang/Object;

.field public final e:Landroid/content/Context;

.field public final f:Lqi3$b;

.field public final g:Z

.field public h:La62$d;

.field public i:La62$f;

.field public j:Lcom/google/android/exoplayer2/audio/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ll52;

    invoke-direct {v0}, Ll52;-><init>()V

    invoke-static {v0}, Lcom/google/common/collect/Ordering;->from(Ljava/util/Comparator;)Lcom/google/common/collect/Ordering;

    move-result-object v0

    sput-object v0, La62;->k:Lcom/google/common/collect/Ordering;

    new-instance v0, Ln52;

    invoke-direct {v0}, Ln52;-><init>()V

    invoke-static {v0}, Lcom/google/common/collect/Ordering;->from(Ljava/util/Comparator;)Lcom/google/common/collect/Ordering;

    move-result-object v0

    sput-object v0, La62;->l:Lcom/google/common/collect/Ordering;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    new-instance v0, Lf8$b;

    invoke-direct {v0}, Lf8$b;-><init>()V

    invoke-direct {p0, p1, v0}, La62;-><init>(Landroid/content/Context;Lqi3$b;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lpva;Lqi3$b;)V
    .locals 0

    .line 3
    invoke-direct {p0, p2, p3, p1}, La62;-><init>(Lpva;Lqi3$b;Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lqi3$b;)V
    .locals 1

    .line 2
    invoke-static {p1}, La62$d;->j(Landroid/content/Context;)La62$d;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, La62;-><init>(Landroid/content/Context;Lpva;Lqi3$b;)V

    return-void
.end method

.method public constructor <init>(Lpva;Lqi3$b;Landroid/content/Context;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Lhy5;-><init>()V

    .line 5
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, La62;->d:Ljava/lang/Object;

    if-eqz p3, :cond_0

    .line 6
    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, La62;->e:Landroid/content/Context;

    .line 7
    iput-object p2, p0, La62;->f:Lqi3$b;

    .line 8
    instance-of p2, p1, La62$d;

    if-eqz p2, :cond_1

    .line 9
    check-cast p1, La62$d;

    iput-object p1, p0, La62;->h:La62$d;

    goto :goto_2

    :cond_1
    if-nez p3, :cond_2

    .line 10
    sget-object p2, La62$d;->T:La62$d;

    goto :goto_1

    :cond_2
    invoke-static {p3}, La62$d;->j(Landroid/content/Context;)La62$d;

    move-result-object p2

    .line 11
    :goto_1
    invoke-virtual {p2}, La62$d;->i()La62$d$a;

    move-result-object p2

    invoke-virtual {p2, p1}, La62$d$a;->b0(Lpva;)La62$d$a;

    move-result-object p1

    invoke-virtual {p1}, La62$d$a;->X()La62$d;

    move-result-object p1

    iput-object p1, p0, La62;->h:La62$d;

    .line 12
    :goto_2
    sget-object p1, Lcom/google/android/exoplayer2/audio/a;->h:Lcom/google/android/exoplayer2/audio/a;

    iput-object p1, p0, La62;->j:Lcom/google/android/exoplayer2/audio/a;

    if-eqz p3, :cond_3

    .line 13
    invoke-static {p3}, Lblb;->p0(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    goto :goto_3

    :cond_3
    const/4 p1, 0x0

    :goto_3
    iput-boolean p1, p0, La62;->g:Z

    if-nez p1, :cond_4

    if-eqz p3, :cond_4

    .line 14
    sget p1, Lblb;->a:I

    const/16 p2, 0x20

    if-lt p1, p2, :cond_4

    .line 15
    invoke-static {p3}, La62$f;->g(Landroid/content/Context;)La62$f;

    move-result-object p1

    iput-object p1, p0, La62;->i:La62$f;

    .line 16
    :cond_4
    iget-object p0, p0, La62;->h:La62$d;

    iget-boolean p0, p0, La62$d;->N:Z

    if-eqz p0, :cond_5

    if-nez p3, :cond_5

    .line 17
    const-string p0, "DefaultTrackSelector"

    const-string p1, "Audio channel count constraints cannot be applied without reference to Context. Build the track selector instance with one of the non-deprecated constructors that take a Context argument."

    invoke-static {p0, p1}, Lop5;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public static A(Leva;Lpva;Ljava/util/Map;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Leva;->b:I

    if-ge v0, v1, :cond_3

    invoke-virtual {p0, v0}, Leva;->b(I)Lzua;

    move-result-object v1

    iget-object v2, p1, Lpva;->z:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v2, v1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llva;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Llva;->b()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Llva;

    if-eqz v2, :cond_1

    iget-object v2, v2, Llva;->c:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v1, Llva;->c:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    invoke-virtual {v1}, Llva;->b()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p2, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static B(Lcom/google/android/exoplayer2/k;Ljava/lang/String;Z)I
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/k;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x4

    return p0

    :cond_0
    invoke-static {p1}, La62;->Q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/exoplayer2/k;->d:Ljava/lang/String;

    invoke-static {p0}, La62;->Q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_4

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    const-string p2, "-"

    invoke-static {p0, p2}, Lblb;->G0(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, v0

    invoke-static {p1, p2}, Lblb;->G0(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, v0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x2

    return p0

    :cond_3
    return v0

    :cond_4
    :goto_0
    const/4 p0, 0x3

    return p0

    :cond_5
    :goto_1
    if-eqz p2, :cond_6

    if-nez p0, :cond_6

    const/4 v0, 0x1

    :cond_6
    return v0
.end method

.method public static C(Lzua;IIZ)I
    .locals 8

    const v0, 0x7fffffff

    if-eq p1, v0, :cond_2

    if-ne p2, v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lzua;->b:I

    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Lzua;->c(I)Lcom/google/android/exoplayer2/k;

    move-result-object v2

    iget v3, v2, Lcom/google/android/exoplayer2/k;->r:I

    if-lez v3, :cond_1

    iget v4, v2, Lcom/google/android/exoplayer2/k;->s:I

    if-lez v4, :cond_1

    invoke-static {p3, p1, p2, v3, v4}, La62;->D(ZIIII)Landroid/graphics/Point;

    move-result-object v3

    iget v4, v2, Lcom/google/android/exoplayer2/k;->r:I

    iget v2, v2, Lcom/google/android/exoplayer2/k;->s:I

    mul-int v5, v4, v2

    iget v6, v3, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    const v7, 0x3f7ae148    # 0.98f

    mul-float/2addr v6, v7

    float-to-int v6, v6

    if-lt v4, v6, :cond_1

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    mul-float/2addr v3, v7

    float-to-int v3, v3

    if-lt v2, v3, :cond_1

    if-ge v5, v0, :cond_1

    move v0, v5

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method public static D(ZIIII)Landroid/graphics/Point;
    .locals 3

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    const/4 v0, 0x1

    if-le p3, p4, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, p0

    :goto_0
    if-le p1, p2, :cond_1

    move p0, v0

    :cond_1
    if-eq v1, p0, :cond_2

    goto :goto_1

    :cond_2
    move v2, p2

    move p2, p1

    move p1, v2

    :goto_1
    mul-int p0, p3, p1

    mul-int v0, p4, p2

    if-lt p0, v0, :cond_3

    new-instance p0, Landroid/graphics/Point;

    invoke-static {v0, p3}, Lblb;->l(II)I

    move-result p1

    invoke-direct {p0, p2, p1}, Landroid/graphics/Point;-><init>(II)V

    return-object p0

    :cond_3
    new-instance p2, Landroid/graphics/Point;

    invoke-static {p0, p4}, Lblb;->l(II)I

    move-result p0

    invoke-direct {p2, p0, p1}, Landroid/graphics/Point;-><init>(II)V

    return-object p2
.end method

.method public static E(II)I
    .locals 0

    if-eqz p0, :cond_0

    if-ne p0, p1, :cond_0

    const p0, 0x7fffffff

    return p0

    :cond_0
    and-int/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Integer;->bitCount(I)I

    move-result p0

    return p0
.end method

.method public static F(Ljava/lang/String;)I
    .locals 6

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p0, :cond_0

    return v3

    :cond_0
    const/4 v4, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string/jumbo v5, "video/x-vnd.on2.vp9"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move v4, v0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v5, "video/avc"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    move v4, v1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v5, "video/hevc"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    move v4, v2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v5, "video/av01"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    move v4, v3

    :goto_0
    packed-switch v4, :pswitch_data_0

    return v3

    :pswitch_0
    return v1

    :pswitch_1
    return v2

    :pswitch_2
    return v0

    :pswitch_3
    const/4 p0, 0x4

    return p0

    :sswitch_data_0
    .sparse-switch
        -0x631b55f6 -> :sswitch_3
        -0x63185e82 -> :sswitch_2
        0x4f62373a -> :sswitch_1
        0x5f50bed9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static H(Lcom/google/android/exoplayer2/k;)Z
    .locals 4

    const/4 v0, 0x1

    iget-object p0, p0, Lcom/google/android/exoplayer2/k;->m:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    const/4 v2, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v3, "audio/eac3"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_1
    const-string v3, "audio/ac4"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_2
    const-string v3, "audio/ac3"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    move v2, v0

    goto :goto_0

    :sswitch_3
    const-string v3, "audio/eac3-joc"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    move v2, v1

    :goto_0
    packed-switch v2, :pswitch_data_0

    return v1

    :pswitch_0
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7e929daa -> :sswitch_3
        0xb269698 -> :sswitch_2
        0xb269699 -> :sswitch_1
        0x59ae0c65 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static I(IZ)Z
    .locals 1

    invoke-static {p0}, Lks8;->getFormatSupport(I)I

    move-result p0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static synthetic K(La62$d;Ljava/lang/String;ILzua;[I)Ljava/util/List;
    .locals 0

    invoke-static {p2, p3, p0, p4, p1}, La62$g;->f(ILzua;La62$d;[ILjava/lang/String;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic L(La62$d;[IILzua;[I)Ljava/util/List;
    .locals 0

    aget p1, p1, p2

    invoke-static {p2, p3, p0, p4, p1}, La62$i;->i(ILzua;La62$d;[II)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic M(Ljava/lang/Integer;Ljava/lang/Integer;)I
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, v1, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sub-int v1, p0, p1

    :cond_2
    :goto_0
    return v1
.end method

.method public static synthetic N(Ljava/lang/Integer;Ljava/lang/Integer;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public static O(Lhy5$a;[[[I[Lls8;[Lqi3;)V
    .locals 10

    const/4 v0, -0x1

    const/4 v1, 0x0

    move v3, v0

    move v4, v3

    move v2, v1

    :goto_0
    invoke-virtual {p0}, Lhy5$a;->d()I

    move-result v5

    const/4 v6, 0x1

    if-ge v2, v5, :cond_5

    invoke-virtual {p0, v2}, Lhy5$a;->e(I)I

    move-result v5

    aget-object v7, p3, v2

    if-eq v5, v6, :cond_0

    const/4 v8, 0x2

    if-ne v5, v8, :cond_4

    :cond_0
    if-eqz v7, :cond_4

    aget-object v8, p1, v2

    invoke-virtual {p0, v2}, Lhy5$a;->f(I)Leva;

    move-result-object v9

    invoke-static {v8, v9, v7}, La62;->R([[ILeva;Lqi3;)Z

    move-result v7

    if-eqz v7, :cond_4

    if-ne v5, v6, :cond_2

    if-eq v4, v0, :cond_1

    :goto_1
    move p0, v1

    goto :goto_3

    :cond_1
    move v4, v2

    goto :goto_2

    :cond_2
    if-eq v3, v0, :cond_3

    goto :goto_1

    :cond_3
    move v3, v2

    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    move p0, v6

    :goto_3
    if-eq v4, v0, :cond_6

    if-eq v3, v0, :cond_6

    move v1, v6

    :cond_6
    and-int/2addr p0, v1

    if-eqz p0, :cond_7

    new-instance p0, Lls8;

    invoke-direct {p0, v6}, Lls8;-><init>(Z)V

    aput-object p0, p2, v4

    aput-object p0, p2, v3

    :cond_7
    return-void
.end method

.method public static Q(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "und"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 p0, 0x0

    :cond_1
    return-object p0
.end method

.method public static R([[ILeva;Lqi3;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    :cond_0
    invoke-interface {p2}, Lhva;->getTrackGroup()Lzua;

    move-result-object v1

    invoke-virtual {p1, v1}, Leva;->c(Lzua;)I

    move-result p1

    move v1, v0

    :goto_0
    invoke-interface {p2}, Lhva;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    aget-object v2, p0, p1

    invoke-interface {p2, v1}, Lhva;->getIndexInTrackGroup(I)I

    move-result v3

    aget v2, v2, v3

    invoke-static {v2}, Lks8;->getTunnelingSupport(I)I

    move-result v2

    const/16 v3, 0x20

    if-eq v2, v3, :cond_1

    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic m(La62;Lcom/google/android/exoplayer2/k;)Z
    .locals 0

    invoke-virtual {p0, p1}, La62;->G(Lcom/google/android/exoplayer2/k;)Z

    move-result p0

    return p0
.end method

.method public static synthetic n(La62$d;[IILzua;[I)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, La62;->L(La62$d;[IILzua;[I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic o(Ljava/lang/Integer;Ljava/lang/Integer;)I
    .locals 0

    invoke-static {p0, p1}, La62;->N(Ljava/lang/Integer;Ljava/lang/Integer;)I

    move-result p0

    return p0
.end method

.method public static synthetic p(Ljava/lang/Integer;Ljava/lang/Integer;)I
    .locals 0

    invoke-static {p0, p1}, La62;->M(Ljava/lang/Integer;Ljava/lang/Integer;)I

    move-result p0

    return p0
.end method

.method public static synthetic q(La62$d;Ljava/lang/String;ILzua;[I)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, La62;->K(La62$d;Ljava/lang/String;ILzua;[I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic r(La62;La62$d;ZILzua;[I)Ljava/util/List;
    .locals 0

    invoke-virtual/range {p0 .. p5}, La62;->J(La62$d;ZILzua;[I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic s(Lzua;IIZ)I
    .locals 0

    invoke-static {p0, p1, p2, p3}, La62;->C(Lzua;IIZ)I

    move-result p0

    return p0
.end method

.method public static synthetic t(II)I
    .locals 0

    invoke-static {p0, p1}, La62;->E(II)I

    move-result p0

    return p0
.end method

.method public static synthetic u(Ljava/lang/String;)I
    .locals 0

    invoke-static {p0}, La62;->F(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static synthetic v()Lcom/google/common/collect/Ordering;
    .locals 1

    sget-object v0, La62;->k:Lcom/google/common/collect/Ordering;

    return-object v0
.end method

.method public static synthetic w()Lcom/google/common/collect/Ordering;
    .locals 1

    sget-object v0, La62;->l:Lcom/google/common/collect/Ordering;

    return-object v0
.end method

.method public static synthetic x(La62;)V
    .locals 0

    invoke-virtual {p0}, La62;->P()V

    return-void
.end method

.method public static y(Lhy5$a;La62$d;[Lqi3$a;)V
    .locals 6

    invoke-virtual {p0}, Lhy5$a;->d()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, Lhy5$a;->f(I)Leva;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, La62$d;->n(ILeva;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p1, v1, v2}, La62$d;->m(ILeva;)La62$e;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v4, v3, La62$e;->c:[I

    array-length v4, v4

    if-eqz v4, :cond_1

    new-instance v4, Lqi3$a;

    iget v5, v3, La62$e;->b:I

    invoke-virtual {v2, v5}, Leva;->b(I)Lzua;

    move-result-object v2

    iget-object v5, v3, La62$e;->c:[I

    iget v3, v3, La62$e;->e:I

    invoke-direct {v4, v2, v5, v3}, Lqi3$a;-><init>(Lzua;[II)V

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    aput-object v4, p2, v1

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static z(Lhy5$a;Lpva;[Lqi3$a;)V
    .locals 5

    invoke-virtual {p0}, Lhy5$a;->d()I

    move-result v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    invoke-virtual {p0, v3}, Lhy5$a;->f(I)Leva;

    move-result-object v4

    invoke-static {v4, p1, v1}, La62;->A(Leva;Lpva;Ljava/util/Map;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lhy5$a;->h()Leva;

    move-result-object v3

    invoke-static {v3, p1, v1}, La62;->A(Leva;Lpva;Ljava/util/Map;)V

    :goto_1
    if-ge v2, v0, :cond_3

    invoke-virtual {p0, v2}, Lhy5$a;->e(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Llva;

    if-nez p1, :cond_1

    goto :goto_3

    :cond_1
    iget-object v3, p1, Llva;->c:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v3}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p0, v2}, Lhy5$a;->f(I)Leva;

    move-result-object v3

    iget-object v4, p1, Llva;->b:Lzua;

    invoke-virtual {v3, v4}, Leva;->c(Lzua;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    new-instance v3, Lqi3$a;

    iget-object v4, p1, Llva;->b:Lzua;

    iget-object p1, p1, Llva;->c:Lcom/google/common/collect/ImmutableList;

    invoke-static {p1}, Lcom/google/common/primitives/Ints;->o(Ljava/util/Collection;)[I

    move-result-object p1

    invoke-direct {v3, v4, p1}, Lqi3$a;-><init>(Lzua;[I)V

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    aput-object v3, p2, v2

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method


# virtual methods
.method public final G(Lcom/google/android/exoplayer2/k;)Z
    .locals 3

    iget-object v0, p0, La62;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, La62;->h:La62$d;

    iget-boolean v1, v1, La62$d;->N:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, La62;->g:Z

    if-nez v1, :cond_2

    iget v1, p1, Lcom/google/android/exoplayer2/k;->z:I

    const/4 v2, 0x2

    if-le v1, v2, :cond_2

    invoke-static {p1}, La62;->H(Lcom/google/android/exoplayer2/k;)Z

    move-result v1

    const/16 v2, 0x20

    if-eqz v1, :cond_0

    sget v1, Lblb;->a:I

    if-lt v1, v2, :cond_2

    iget-object v1, p0, La62;->i:La62$f;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, La62$f;->e()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    :goto_0
    sget v1, Lblb;->a:I

    if-lt v1, v2, :cond_1

    iget-object v1, p0, La62;->i:La62$f;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, La62$f;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, La62;->i:La62$f;

    invoke-virtual {v1}, La62$f;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, La62;->i:La62$f;

    invoke-virtual {v1}, La62$f;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, La62;->i:La62$f;

    iget-object p0, p0, La62;->j:Lcom/google/android/exoplayer2/audio/a;

    invoke-virtual {v1, p0, p1}, La62$f;->a(Lcom/google/android/exoplayer2/audio/a;Lcom/google/android/exoplayer2/k;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p0, 0x1

    :goto_2
    monitor-exit v0

    return p0

    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final synthetic J(La62$d;ZILzua;[I)Ljava/util/List;
    .locals 6

    new-instance v5, Ly52;

    invoke-direct {v5, p0}, Ly52;-><init>(La62;)V

    move v0, p3

    move-object v1, p4

    move-object v2, p1

    move-object v3, p5

    move v4, p2

    invoke-static/range {v0 .. v5}, La62$b;->f(ILzua;La62$d;[IZLhe8;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method public final P()V
    .locals 3

    iget-object v0, p0, La62;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, La62;->h:La62$d;

    iget-boolean v1, v1, La62$d;->N:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, La62;->g:Z

    if-nez v1, :cond_0

    sget v1, Lblb;->a:I

    const/16 v2, 0x20

    if-lt v1, v2, :cond_0

    iget-object v1, p0, La62;->i:La62$f;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, La62$f;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lrva;->c()V

    :cond_1
    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public S(Lhy5$a;[[[I[ILa62$d;)[Lqi3$a;
    .locals 5

    invoke-virtual {p1}, Lhy5$a;->d()I

    move-result v0

    new-array v1, v0, [Lqi3$a;

    invoke-virtual {p0, p1, p2, p3, p4}, La62;->X(Lhy5$a;[[[I[ILa62$d;)Landroid/util/Pair;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lqi3$a;

    aput-object v2, v1, v3

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, La62;->T(Lhy5$a;[[[I[ILa62$d;)Landroid/util/Pair;

    move-result-object p3

    if-eqz p3, :cond_1

    iget-object v2, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lqi3$a;

    aput-object v3, v1, v2

    :cond_1
    const/4 v2, 0x0

    if-nez p3, :cond_2

    const/4 p3, 0x0

    goto :goto_0

    :cond_2
    iget-object p3, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v3, p3

    check-cast v3, Lqi3$a;

    iget-object v3, v3, Lqi3$a;->a:Lzua;

    check-cast p3, Lqi3$a;

    iget-object p3, p3, Lqi3$a;->b:[I

    aget p3, p3, v2

    invoke-virtual {v3, p3}, Lzua;->c(I)Lcom/google/android/exoplayer2/k;

    move-result-object p3

    iget-object p3, p3, Lcom/google/android/exoplayer2/k;->d:Ljava/lang/String;

    :goto_0
    invoke-virtual {p0, p1, p2, p4, p3}, La62;->V(Lhy5$a;[[[ILa62$d;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p3

    if-eqz p3, :cond_3

    iget-object v3, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object p3, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p3, Lqi3$a;

    aput-object p3, v1, v3

    :cond_3
    :goto_1
    if-ge v2, v0, :cond_5

    invoke-virtual {p1, v2}, Lhy5$a;->e(I)I

    move-result p3

    const/4 v3, 0x2

    if-eq p3, v3, :cond_4

    const/4 v3, 0x1

    if-eq p3, v3, :cond_4

    const/4 v3, 0x3

    if-eq p3, v3, :cond_4

    invoke-virtual {p1, v2}, Lhy5$a;->f(I)Leva;

    move-result-object v3

    aget-object v4, p2, v2

    invoke-virtual {p0, p3, v3, v4, p4}, La62;->U(ILeva;[[ILa62$d;)Lqi3$a;

    move-result-object p3

    aput-object p3, v1, v2

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    return-object v1
.end method

.method public T(Lhy5$a;[[[I[ILa62$d;)Landroid/util/Pair;
    .locals 6

    const/4 p3, 0x0

    move v0, p3

    :goto_0
    invoke-virtual {p1}, Lhy5$a;->d()I

    move-result v1

    if-ge v0, v1, :cond_1

    const/4 v1, 0x2

    invoke-virtual {p1, v0}, Lhy5$a;->e(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p1, v0}, Lhy5$a;->f(I)Leva;

    move-result-object v1

    iget v1, v1, Leva;->b:I

    if-lez v1, :cond_0

    const/4 p3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    new-instance v4, Ls52;

    invoke-direct {v4, p0, p4, p3}, Ls52;-><init>(La62;La62$d;Z)V

    new-instance v5, Lu52;

    invoke-direct {v5}, Lu52;-><init>()V

    const/4 v1, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, La62;->W(ILhy5$a;[[[ILa62$h$a;Ljava/util/Comparator;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public U(ILeva;[[ILa62$d;)Lqi3$a;
    .locals 10

    const/4 p0, 0x0

    const/4 p1, 0x0

    move-object v1, p0

    move-object v3, v1

    move v0, p1

    move v2, v0

    :goto_0
    iget v4, p2, Leva;->b:I

    if-ge v0, v4, :cond_3

    invoke-virtual {p2, v0}, Leva;->b(I)Lzua;

    move-result-object v4

    aget-object v5, p3, v0

    move v6, p1

    :goto_1
    iget v7, v4, Lzua;->b:I

    if-ge v6, v7, :cond_2

    aget v7, v5, v6

    iget-boolean v8, p4, La62$d;->O:Z

    invoke-static {v7, v8}, La62;->I(IZ)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v4, v6}, Lzua;->c(I)Lcom/google/android/exoplayer2/k;

    move-result-object v7

    new-instance v8, La62$c;

    aget v9, v5, v6

    invoke-direct {v8, v7, v9}, La62$c;-><init>(Lcom/google/android/exoplayer2/k;I)V

    if-eqz v3, :cond_0

    invoke-virtual {v8, v3}, La62$c;->a(La62$c;)I

    move-result v7

    if-lez v7, :cond_1

    :cond_0
    move-object v1, v4

    move v2, v6

    move-object v3, v8

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    new-instance p0, Lqi3$a;

    filled-new-array {v2}, [I

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lqi3$a;-><init>(Lzua;[I)V

    :goto_2
    return-object p0
.end method

.method public V(Lhy5$a;[[[ILa62$d;Ljava/lang/String;)Landroid/util/Pair;
    .locals 6

    new-instance v4, Lv52;

    invoke-direct {v4, p3, p4}, Lv52;-><init>(La62$d;Ljava/lang/String;)V

    new-instance v5, Lx52;

    invoke-direct {v5}, Lx52;-><init>()V

    const/4 v1, 0x3

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, La62;->W(ILhy5$a;[[[ILa62$h$a;Ljava/util/Comparator;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public final W(ILhy5$a;[[[ILa62$h$a;Ljava/util/Comparator;)Landroid/util/Pair;
    .locals 18

    move-object/from16 v0, p2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p2 .. p2}, Lhy5$a;->d()I

    move-result v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_7

    invoke-virtual {v0, v4}, Lhy5$a;->e(I)I

    move-result v5

    move/from16 v6, p1

    if-ne v6, v5, :cond_6

    invoke-virtual {v0, v4}, Lhy5$a;->f(I)Leva;

    move-result-object v5

    const/4 v7, 0x0

    :goto_1
    iget v8, v5, Leva;->b:I

    if-ge v7, v8, :cond_6

    invoke-virtual {v5, v7}, Leva;->b(I)Lzua;

    move-result-object v8

    aget-object v9, p3, v4

    aget-object v9, v9, v7

    move-object/from16 v10, p4

    invoke-interface {v10, v4, v8, v9}, La62$h$a;->a(ILzua;[I)Ljava/util/List;

    move-result-object v9

    iget v11, v8, Lzua;->b:I

    new-array v11, v11, [Z

    const/4 v12, 0x0

    :goto_2
    iget v13, v8, Lzua;->b:I

    if-ge v12, v13, :cond_5

    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, La62$h;

    invoke-virtual {v13}, La62$h;->a()I

    move-result v14

    aget-boolean v15, v11, v12

    if-nez v15, :cond_0

    if-nez v14, :cond_1

    :cond_0
    move/from16 v17, v2

    goto :goto_6

    :cond_1
    const/4 v15, 0x1

    if-ne v14, v15, :cond_2

    invoke-static {v13}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v13

    move/from16 v17, v2

    goto :goto_5

    :cond_2
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v16, v12, 0x1

    move/from16 v3, v16

    :goto_3
    iget v15, v8, Lzua;->b:I

    if-ge v3, v15, :cond_4

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, La62$h;

    invoke-virtual {v15}, La62$h;->a()I

    move-result v0

    move/from16 v17, v2

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    invoke-virtual {v13, v15}, La62$h;->b(La62$h;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    aput-boolean v0, v11, v3

    goto :goto_4

    :cond_3
    const/4 v0, 0x1

    :goto_4
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p2

    move/from16 v2, v17

    goto :goto_3

    :cond_4
    move/from16 v17, v2

    move-object v13, v14

    :goto_5
    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_6
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p2

    move/from16 v2, v17

    goto :goto_2

    :cond_5
    move/from16 v17, v2

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p2

    goto :goto_1

    :cond_6
    move-object/from16 v10, p4

    move/from16 v17, v2

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p2

    move/from16 v2, v17

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    :cond_8
    move-object/from16 v0, p5

    invoke-static {v1, v0}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [I

    const/4 v2, 0x0

    :goto_7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_9

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, La62$h;

    iget v3, v3, La62$h;->d:I

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_9
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La62$h;

    new-instance v2, Lqi3$a;

    iget-object v3, v0, La62$h;->c:Lzua;

    invoke-direct {v2, v3, v1}, Lqi3$a;-><init>(Lzua;[I)V

    iget v0, v0, La62$h;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public X(Lhy5$a;[[[I[ILa62$d;)Landroid/util/Pair;
    .locals 6

    new-instance v4, Lp52;

    invoke-direct {v4, p4, p3}, Lp52;-><init>(La62$d;[I)V

    new-instance v5, Lq52;

    invoke-direct {v5}, Lq52;-><init>()V

    const/4 v1, 0x2

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, La62;->W(ILhy5$a;[[[ILa62$h$a;Ljava/util/Comparator;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public d()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public f()V
    .locals 3

    iget-object v0, p0, La62;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget v1, Lblb;->a:I

    const/16 v2, 0x20

    if-lt v1, v2, :cond_0

    iget-object v1, p0, La62;->i:La62$f;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, La62$f;->f()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Lrva;->f()V

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public h(Lcom/google/android/exoplayer2/audio/a;)V
    .locals 2

    iget-object v0, p0, La62;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, La62;->j:Lcom/google/android/exoplayer2/audio/a;

    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer2/audio/a;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-object p1, p0, La62;->j:Lcom/google/android/exoplayer2/audio/a;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    invoke-virtual {p0}, La62;->P()V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final l(Lhy5$a;[[[I[ILcom/google/android/exoplayer2/source/i$b;Lcom/google/android/exoplayer2/a0;)Landroid/util/Pair;
    .locals 7

    iget-object v0, p0, La62;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, La62;->h:La62$d;

    iget-boolean v2, v1, La62$d;->N:Z

    if-eqz v2, :cond_0

    sget v2, Lblb;->a:I

    const/16 v3, 0x20

    if-lt v2, v3, :cond_0

    iget-object v2, p0, La62;->i:La62$f;

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-static {v3}, Lzi;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Looper;

    invoke-virtual {v2, p0, v3}, La62$f;->b(La62;Landroid/os/Looper;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Lhy5$a;->d()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v1}, La62;->S(Lhy5$a;[[[I[ILa62$d;)[Lqi3$a;

    move-result-object p3

    invoke-static {p1, v1, p3}, La62;->z(Lhy5$a;Lpva;[Lqi3$a;)V

    invoke-static {p1, v1, p3}, La62;->y(Lhy5$a;La62$d;[Lqi3$a;)V

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    const/4 v4, 0x0

    if-ge v3, v0, :cond_3

    invoke-virtual {p1, v3}, Lhy5$a;->e(I)I

    move-result v5

    invoke-virtual {v1, v3}, La62$d;->l(I)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, v1, Lpva;->A:Lcom/google/common/collect/ImmutableSet;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/google/common/collect/ImmutableCollection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    aput-object v4, p3, v3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    iget-object v3, p0, La62;->f:Lqi3$b;

    invoke-virtual {p0}, Lrva;->a()Lo70;

    move-result-object p0

    invoke-interface {v3, p3, p0, p4, p5}, Lqi3$b;->a([Lqi3$a;Lo70;Lcom/google/android/exoplayer2/source/i$b;Lcom/google/android/exoplayer2/a0;)[Lqi3;

    move-result-object p0

    new-array p3, v0, [Lls8;

    :goto_2
    if-ge v2, v0, :cond_7

    invoke-virtual {p1, v2}, Lhy5$a;->e(I)I

    move-result p4

    invoke-virtual {v1, v2}, La62$d;->l(I)Z

    move-result p5

    if-nez p5, :cond_6

    iget-object p5, v1, Lpva;->A:Lcom/google/common/collect/ImmutableSet;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p5, p4}, Lcom/google/common/collect/ImmutableCollection;->contains(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {p1, v2}, Lhy5$a;->e(I)I

    move-result p4

    const/4 p5, -0x2

    if-eq p4, p5, :cond_5

    aget-object p4, p0, v2

    if-eqz p4, :cond_6

    :cond_5
    sget-object p4, Lls8;->b:Lls8;

    goto :goto_4

    :cond_6
    :goto_3
    move-object p4, v4

    :goto_4
    aput-object p4, p3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    iget-boolean p4, v1, La62$d;->P:Z

    if-eqz p4, :cond_8

    invoke-static {p1, p2, p3, p0}, La62;->O(Lhy5$a;[[[I[Lls8;[Lqi3;)V

    :cond_8
    invoke-static {p3, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :goto_5
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
