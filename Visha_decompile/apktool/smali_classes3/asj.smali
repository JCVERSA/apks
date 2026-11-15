.class public final Lasj;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final g:Ljava/util/Comparator;

.field public static final h:Ljava/util/Comparator;


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public final b:[Lyrj;

.field public c:I

.field public d:I

.field public e:I

.field public f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzzt;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzzt;-><init>()V

    sput-object v0, Lasj;->g:Ljava/util/Comparator;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzzu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzzu;-><init>()V

    sput-object v0, Lasj;->h:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x5

    new-array p1, p1, [Lyrj;

    iput-object p1, p0, Lasj;->b:[Lyrj;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lasj;->a:Ljava/util/ArrayList;

    const/4 p1, -0x1

    iput p1, p0, Lasj;->c:I

    return-void
.end method


# virtual methods
.method public final a(F)F
    .locals 5

    iget p1, p0, Lasj;->c:I

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lasj;->a:Ljava/util/ArrayList;

    sget-object v1, Lasj;->h:Ljava/util/Comparator;

    invoke-static {p1, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iput v0, p0, Lasj;->c:I

    :cond_0
    iget p1, p0, Lasj;->e:I

    int-to-float p1, p1

    move v1, v0

    :goto_0
    iget-object v2, p0, Lasj;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v3, p1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyrj;

    iget v4, v2, Lyrj;->b:I

    add-int/2addr v1, v4

    int-to-float v4, v1

    cmpl-float v3, v4, v3

    if-ltz v3, :cond_1

    iget p0, v2, Lyrj;->c:F

    return p0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_3

    const/high16 p0, 0x7fc00000    # Float.NaN

    return p0

    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyrj;

    iget p0, p0, Lyrj;->c:F

    return p0
.end method

.method public final b(IF)V
    .locals 3

    iget v0, p0, Lasj;->c:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lasj;->a:Ljava/util/ArrayList;

    sget-object v2, Lasj;->g:Ljava/util/Comparator;

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iput v1, p0, Lasj;->c:I

    :cond_0
    iget v0, p0, Lasj;->f:I

    if-lez v0, :cond_1

    iget-object v1, p0, Lasj;->b:[Lyrj;

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lasj;->f:I

    aget-object v0, v1, v0

    goto :goto_0

    :cond_1
    new-instance v0, Lyrj;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lyrj;-><init>(Lzrj;)V

    :goto_0
    iget v1, p0, Lasj;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lasj;->d:I

    iput v1, v0, Lyrj;->a:I

    iput p1, v0, Lyrj;->b:I

    iput p2, v0, Lyrj;->c:F

    iget-object p2, p0, Lasj;->a:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lasj;->e:I

    add-int/2addr v0, p1

    iput v0, p0, Lasj;->e:I

    :cond_2
    :goto_1
    iget p1, p0, Lasj;->e:I

    const/16 v0, 0x7d0

    if-le p1, v0, :cond_4

    add-int/lit16 p1, p1, -0x7d0

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyrj;

    iget v2, v1, Lyrj;->b:I

    if-gt v2, p1, :cond_3

    iget p1, p0, Lasj;->e:I

    sub-int/2addr p1, v2

    iput p1, p0, Lasj;->e:I

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget p1, p0, Lasj;->f:I

    const/4 v0, 0x5

    if-ge p1, v0, :cond_2

    iget-object v0, p0, Lasj;->b:[Lyrj;

    add-int/lit8 v2, p1, 0x1

    iput v2, p0, Lasj;->f:I

    aput-object v1, v0, p1

    goto :goto_1

    :cond_3
    sub-int/2addr v2, p1

    iput v2, v1, Lyrj;->b:I

    iget v0, p0, Lasj;->e:I

    sub-int/2addr v0, p1

    iput v0, p0, Lasj;->e:I

    goto :goto_1

    :cond_4
    return-void
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lasj;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, -0x1

    iput v0, p0, Lasj;->c:I

    const/4 v0, 0x0

    iput v0, p0, Lasj;->d:I

    iput v0, p0, Lasj;->e:I

    return-void
.end method
