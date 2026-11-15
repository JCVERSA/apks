.class public Ltp9;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltp9$b;
    }
.end annotation


# static fields
.field public static final h:Ljava/util/Comparator;

.field public static final i:Ljava/util/Comparator;


# instance fields
.field public final a:I

.field public final b:Ljava/util/ArrayList;

.field public final c:[Ltp9$b;

.field public d:I

.field public e:I

.field public f:I

.field public g:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lrp9;

    invoke-direct {v0}, Lrp9;-><init>()V

    sput-object v0, Ltp9;->h:Ljava/util/Comparator;

    new-instance v0, Lsp9;

    invoke-direct {v0}, Lsp9;-><init>()V

    sput-object v0, Ltp9;->i:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ltp9;->a:I

    const/4 p1, 0x5

    new-array p1, p1, [Ltp9$b;

    iput-object p1, p0, Ltp9;->c:[Ltp9$b;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ltp9;->b:Ljava/util/ArrayList;

    const/4 p1, -0x1

    iput p1, p0, Ltp9;->d:I

    return-void
.end method

.method public static synthetic a(Ltp9$b;Ltp9$b;)I
    .locals 0

    invoke-static {p0, p1}, Ltp9;->g(Ltp9$b;Ltp9$b;)I

    move-result p0

    return p0
.end method

.method public static synthetic b(Ltp9$b;Ltp9$b;)I
    .locals 0

    invoke-static {p0, p1}, Ltp9;->h(Ltp9$b;Ltp9$b;)I

    move-result p0

    return p0
.end method

.method public static synthetic g(Ltp9$b;Ltp9$b;)I
    .locals 0

    iget p0, p0, Ltp9$b;->a:I

    iget p1, p1, Ltp9$b;->a:I

    sub-int/2addr p0, p1

    return p0
.end method

.method public static synthetic h(Ltp9$b;Ltp9$b;)I
    .locals 0

    iget p0, p0, Ltp9$b;->c:F

    iget p1, p1, Ltp9$b;->c:F

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    return p0
.end method


# virtual methods
.method public c(IF)V
    .locals 3

    invoke-virtual {p0}, Ltp9;->d()V

    iget v0, p0, Ltp9;->g:I

    if-lez v0, :cond_0

    iget-object v1, p0, Ltp9;->c:[Ltp9$b;

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ltp9;->g:I

    aget-object v0, v1, v0

    goto :goto_0

    :cond_0
    new-instance v0, Ltp9$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ltp9$b;-><init>(Ltp9$a;)V

    :goto_0
    iget v1, p0, Ltp9;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ltp9;->e:I

    iput v1, v0, Ltp9$b;->a:I

    iput p1, v0, Ltp9$b;->b:I

    iput p2, v0, Ltp9$b;->c:F

    iget-object p2, p0, Ltp9;->b:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget p2, p0, Ltp9;->f:I

    add-int/2addr p2, p1

    iput p2, p0, Ltp9;->f:I

    :cond_1
    :goto_1
    iget p1, p0, Ltp9;->f:I

    iget p2, p0, Ltp9;->a:I

    if-le p1, p2, :cond_3

    sub-int/2addr p1, p2

    iget-object p2, p0, Ltp9;->b:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ltp9$b;

    iget v1, p2, Ltp9$b;->b:I

    if-gt v1, p1, :cond_2

    iget p1, p0, Ltp9;->f:I

    sub-int/2addr p1, v1

    iput p1, p0, Ltp9;->f:I

    iget-object p1, p0, Ltp9;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget p1, p0, Ltp9;->g:I

    const/4 v0, 0x5

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Ltp9;->c:[Ltp9$b;

    add-int/lit8 v1, p1, 0x1

    iput v1, p0, Ltp9;->g:I

    aput-object p2, v0, p1

    goto :goto_1

    :cond_2
    sub-int/2addr v1, p1

    iput v1, p2, Ltp9$b;->b:I

    iget p2, p0, Ltp9;->f:I

    sub-int/2addr p2, p1

    iput p2, p0, Ltp9;->f:I

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final d()V
    .locals 3

    iget v0, p0, Ltp9;->d:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Ltp9;->b:Ljava/util/ArrayList;

    sget-object v2, Ltp9;->h:Ljava/util/Comparator;

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iput v1, p0, Ltp9;->d:I

    :cond_0
    return-void
.end method

.method public final e()V
    .locals 2

    iget v0, p0, Ltp9;->d:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltp9;->b:Ljava/util/ArrayList;

    sget-object v1, Ltp9;->i:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v0, 0x0

    iput v0, p0, Ltp9;->d:I

    :cond_0
    return-void
.end method

.method public f(F)F
    .locals 4

    invoke-virtual {p0}, Ltp9;->e()V

    iget v0, p0, Ltp9;->f:I

    int-to-float v0, v0

    mul-float/2addr p1, v0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Ltp9;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Ltp9;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltp9$b;

    iget v3, v2, Ltp9$b;->b:I

    add-int/2addr v1, v3

    int-to-float v3, v1

    cmpl-float v3, v3, p1

    if-ltz v3, :cond_0

    iget p0, v2, Ltp9$b;->c:F

    return p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Ltp9;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    const/high16 p0, 0x7fc00000    # Float.NaN

    goto :goto_1

    :cond_2
    iget-object p0, p0, Ltp9;->b:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ltp9$b;

    iget p0, p0, Ltp9$b;->c:F

    :goto_1
    return p0
.end method

.method public i()V
    .locals 1

    iget-object v0, p0, Ltp9;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, -0x1

    iput v0, p0, Ltp9;->d:I

    const/4 v0, 0x0

    iput v0, p0, Ltp9;->e:I

    iput v0, p0, Ltp9;->f:I

    return-void
.end method
