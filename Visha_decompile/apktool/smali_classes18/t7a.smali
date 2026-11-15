.class public Lt7a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Landroid/content/Context;

.field public b:Landroid/graphics/drawable/Drawable;

.field public c:Landroid/graphics/drawable/Drawable;

.field public d:Ljava/lang/String;

.field public e:Landroid/content/res/ColorStateList;

.field public f:I

.field public g:Landroid/graphics/Typeface;

.field public h:I

.field public i:I

.field public j:I

.field public k:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x2

    iput v0, p0, Lt7a;->i:I

    iput v0, p0, Lt7a;->j:I

    const/4 v0, 0x0

    iput v0, p0, Lt7a;->k:I

    iput-object p1, p0, Lt7a;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lt7a;->b:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public b()I
    .locals 0

    iget p0, p0, Lt7a;->j:I

    return p0
.end method

.method public c()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lt7a;->c:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public d()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lt7a;->d:Ljava/lang/String;

    return-object p0
.end method

.method public e()I
    .locals 0

    iget p0, p0, Lt7a;->h:I

    return p0
.end method

.method public f()I
    .locals 0

    iget p0, p0, Lt7a;->f:I

    return p0
.end method

.method public g()Landroid/graphics/Typeface;
    .locals 0

    iget-object p0, p0, Lt7a;->g:Landroid/graphics/Typeface;

    return-object p0
.end method

.method public h()Landroid/content/res/ColorStateList;
    .locals 0

    iget-object p0, p0, Lt7a;->e:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public i()I
    .locals 0

    iget p0, p0, Lt7a;->k:I

    return p0
.end method

.method public j()I
    .locals 0

    iget p0, p0, Lt7a;->i:I

    return p0
.end method

.method public k(I)Lt7a;
    .locals 1

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lt7a;->b:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public l(I)Lt7a;
    .locals 0

    iput p1, p0, Lt7a;->j:I

    return-object p0
.end method

.method public m(I)Lt7a;
    .locals 1

    iget-object v0, p0, Lt7a;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lt7a;->n(Landroid/graphics/drawable/Drawable;)Lt7a;

    move-result-object p0

    return-object p0
.end method

.method public n(Landroid/graphics/drawable/Drawable;)Lt7a;
    .locals 0

    iput-object p1, p0, Lt7a;->c:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public o(I)Lt7a;
    .locals 0

    iput p1, p0, Lt7a;->i:I

    return-object p0
.end method
