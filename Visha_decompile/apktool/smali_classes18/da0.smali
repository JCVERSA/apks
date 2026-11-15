.class public abstract Lda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyu4;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lda0$b;,
        Lda0$a;
    }
.end annotation


# static fields
.field public static final g:Lda0$a;


# instance fields
.field public final a:Lda0$b;

.field public b:F

.field public c:F

.field public d:Landroid/graphics/Paint;

.field public e:Landroid/animation/ArgbEvaluator;

.field public f:Lrz4;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lda0$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lda0$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lda0;->g:Lda0$a;

    return-void
.end method

.method public constructor <init>(Lrz4;)V
    .locals 1

    const-string v0, "mIndicatorOptions"

    invoke-static {p1, v0}, Ly45;->k(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lda0;->f:Lrz4;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lda0;->d:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance p1, Lda0$b;

    invoke-direct {p1, p0}, Lda0$b;-><init>(Lda0;)V

    iput-object p1, p0, Lda0;->a:Lda0$b;

    iget-object p1, p0, Lda0;->f:Lrz4;

    invoke-virtual {p1}, Lrz4;->j()I

    move-result p1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lda0;->f:Lrz4;

    invoke-virtual {p1}, Lrz4;->j()I

    move-result p1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    :cond_0
    new-instance p1, Landroid/animation/ArgbEvaluator;

    invoke-direct {p1}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object p1, p0, Lda0;->e:Landroid/animation/ArgbEvaluator;

    :cond_1
    return-void
.end method


# virtual methods
.method public final b()Landroid/animation/ArgbEvaluator;
    .locals 0

    iget-object p0, p0, Lda0;->e:Landroid/animation/ArgbEvaluator;

    return-object p0
.end method

.method public final c()Lrz4;
    .locals 0

    iget-object p0, p0, Lda0;->f:Lrz4;

    return-object p0
.end method

.method public final d()Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Lda0;->d:Landroid/graphics/Paint;

    return-object p0
.end method

.method public final e()F
    .locals 0

    iget p0, p0, Lda0;->b:F

    return p0
.end method

.method public final f()F
    .locals 0

    iget p0, p0, Lda0;->c:F

    return p0
.end method

.method public final g()Z
    .locals 1

    iget-object v0, p0, Lda0;->f:Lrz4;

    invoke-virtual {v0}, Lrz4;->f()F

    move-result v0

    iget-object p0, p0, Lda0;->f:Lrz4;

    invoke-virtual {p0}, Lrz4;->b()F

    move-result p0

    cmpg-float p0, v0, p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public h()I
    .locals 0

    iget-object p0, p0, Lda0;->f:Lrz4;

    invoke-virtual {p0}, Lrz4;->m()F

    move-result p0

    float-to-int p0, p0

    add-int/lit8 p0, p0, 0x3

    return p0
.end method

.method public final i()I
    .locals 3

    iget-object v0, p0, Lda0;->f:Lrz4;

    invoke-virtual {v0}, Lrz4;->h()I

    move-result v0

    iget-object v1, p0, Lda0;->f:Lrz4;

    invoke-virtual {v1}, Lrz4;->l()F

    move-result v1

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    mul-float/2addr v1, v0

    iget v2, p0, Lda0;->b:F

    add-float/2addr v1, v2

    iget p0, p0, Lda0;->c:F

    mul-float/2addr v0, p0

    add-float/2addr v1, v0

    float-to-int p0, v1

    add-int/lit8 p0, p0, 0x6

    return p0
.end method

.method public final j(Landroid/animation/ArgbEvaluator;)V
    .locals 0

    iput-object p1, p0, Lda0;->e:Landroid/animation/ArgbEvaluator;

    return-void
.end method

.method public onMeasure(II)Lda0$b;
    .locals 1

    iget-object p1, p0, Lda0;->f:Lrz4;

    invoke-virtual {p1}, Lrz4;->f()F

    move-result p1

    iget-object p2, p0, Lda0;->f:Lrz4;

    invoke-virtual {p2}, Lrz4;->b()F

    move-result p2

    invoke-static {p1, p2}, Lwn8;->c(FF)F

    move-result p1

    iput p1, p0, Lda0;->b:F

    iget-object p1, p0, Lda0;->f:Lrz4;

    invoke-virtual {p1}, Lrz4;->f()F

    move-result p1

    iget-object p2, p0, Lda0;->f:Lrz4;

    invoke-virtual {p2}, Lrz4;->b()F

    move-result p2

    invoke-static {p1, p2}, Lwn8;->f(FF)F

    move-result p1

    iput p1, p0, Lda0;->c:F

    iget-object p1, p0, Lda0;->f:Lrz4;

    invoke-virtual {p1}, Lrz4;->g()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lda0;->a:Lda0$b;

    invoke-virtual {p0}, Lda0;->h()I

    move-result p2

    invoke-virtual {p0}, Lda0;->i()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Lda0$b;->c(II)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lda0;->a:Lda0$b;

    invoke-virtual {p0}, Lda0;->i()I

    move-result p2

    invoke-virtual {p0}, Lda0;->h()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Lda0$b;->c(II)V

    :goto_0
    iget-object p0, p0, Lda0;->a:Lda0$b;

    return-object p0
.end method
