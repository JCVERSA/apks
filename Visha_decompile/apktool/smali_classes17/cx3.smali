.class public final Lcx3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/widget/TextView;

.field public b:I

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcx3;->a:Landroid/widget/TextView;

    const/4 v0, -0x1

    iput v0, p0, Lcx3;->d:I

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    return-void
.end method

.method public static final synthetic a(Lcx3;)I
    .locals 0

    iget p0, p0, Lcx3;->c:I

    return p0
.end method

.method public static final synthetic b(Lcx3;)I
    .locals 0

    iget p0, p0, Lcx3;->b:I

    return p0
.end method

.method public static final synthetic c(Lcx3;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcx3;->a:Landroid/widget/TextView;

    return-object p0
.end method


# virtual methods
.method public final d(I)V
    .locals 2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcx3;->i()V

    return-void

    :cond_0
    iget-object v0, p0, Lcx3;->a:Landroid/widget/TextView;

    invoke-static {v0}, Lpha;->c(Landroid/widget/TextView;)I

    move-result v0

    sub-int v0, p1, v0

    if-gez v0, :cond_1

    div-int/lit8 v1, v0, 0x2

    iput v1, p0, Lcx3;->b:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcx3;->c:I

    goto :goto_0

    :cond_1
    div-int/lit8 v1, v0, 0x2

    iput v1, p0, Lcx3;->c:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcx3;->b:I

    :goto_0
    int-to-float p1, p1

    iget-object v0, p0, Lcx3;->a:Landroid/widget/TextView;

    invoke-static {v0}, Lpha;->b(Landroid/widget/TextView;)F

    move-result v0

    sub-float/2addr p1, v0

    iget-object v0, p0, Lcx3;->a:Landroid/widget/TextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, p1, v1}, Landroid/widget/TextView;->setLineSpacing(FF)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcx3;->j(Z)V

    return-void
.end method

.method public final e()I
    .locals 0

    iget p0, p0, Lcx3;->c:I

    return p0
.end method

.method public final f()I
    .locals 0

    iget p0, p0, Lcx3;->b:I

    return p0
.end method

.method public final g()I
    .locals 0

    iget p0, p0, Lcx3;->d:I

    return p0
.end method

.method public final h()V
    .locals 1

    iget v0, p0, Lcx3;->d:I

    invoke-virtual {p0, v0}, Lcx3;->d(I)V

    return-void
.end method

.method public final i()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lcx3;->b:I

    iput v0, p0, Lcx3;->c:I

    iget-object v0, p0, Lcx3;->a:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcx3;->j(Z)V

    return-void
.end method

.method public final j(Z)V
    .locals 0

    iget-object p0, p0, Lcx3;->a:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setFallbackLineSpacing(Z)V

    return-void
.end method

.method public final k(I)V
    .locals 1

    iget v0, p0, Lcx3;->d:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcx3;->d:I

    invoke-virtual {p0, p1}, Lcx3;->d(I)V

    return-void
.end method
