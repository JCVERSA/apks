.class public Lme/zhanghai/android/materialratingbar/a;
.super Landroid/graphics/drawable/LayerDrawable;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 4

    if-eqz p2, :cond_0

    sget v0, Lme/zhanghai/android/materialratingbar/R$drawable;->mrb_star_icon_black_36dp:I

    goto :goto_0

    :cond_0
    sget v0, Lme/zhanghai/android/materialratingbar/R$drawable;->mrb_star_border_icon_black_36dp:I

    :goto_0
    if-eqz p2, :cond_1

    sget v1, Lme/zhanghai/android/materialratingbar/R$attr;->colorControlHighlight:I

    goto :goto_1

    :cond_1
    sget v1, Lme/zhanghai/android/materialratingbar/R$attr;->colorControlNormal:I

    :goto_1
    invoke-static {v0, v1, p1}, Lme/zhanghai/android/materialratingbar/a;->c(IILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    sget p2, Lme/zhanghai/android/materialratingbar/R$drawable;->mrb_star_icon_black_36dp:I

    invoke-static {p2, v1, p1}, Lme/zhanghai/android/materialratingbar/a;->b(IILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    goto :goto_2

    :cond_2
    sget p2, Lme/zhanghai/android/materialratingbar/R$drawable;->mrb_star_border_icon_black_36dp:I

    sget v2, Lme/zhanghai/android/materialratingbar/R$attr;->colorControlActivated:I

    invoke-static {p2, v2, p1}, Lme/zhanghai/android/materialratingbar/a;->a(IILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    :goto_2
    sget v2, Lme/zhanghai/android/materialratingbar/R$drawable;->mrb_star_icon_black_36dp:I

    sget v3, Lme/zhanghai/android/materialratingbar/R$attr;->colorControlActivated:I

    invoke-static {v2, v3, p1}, Lme/zhanghai/android/materialratingbar/a;->a(IILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    filled-new-array {v0, p2, p1}, [Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    const/high16 p1, 0x1020000

    invoke-virtual {p0, v1, p1}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    const/4 p1, 0x1

    const p2, 0x102000f

    invoke-virtual {p0, p1, p2}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    const/4 p1, 0x2

    const p2, 0x102000d

    invoke-virtual {p0, p1, p2}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    return-void
.end method

.method public static a(IILandroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1

    new-instance v0, Lcy0;

    invoke-static {p0, p1, p2}, Lme/zhanghai/android/materialratingbar/a;->c(IILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    const/4 p1, 0x3

    const/4 p2, 0x1

    invoke-direct {v0, p0, p1, p2}, Lcy0;-><init>(Landroid/graphics/drawable/Drawable;II)V

    return-object v0
.end method

.method public static b(IILandroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1

    new-instance v0, Lcy0;

    invoke-static {p0, p1, p2}, Lme/zhanghai/android/materialratingbar/a;->d(IILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    const/4 p1, 0x3

    const/4 p2, 0x1

    invoke-direct {v0, p0, p1, p2}, Lcy0;-><init>(Landroid/graphics/drawable/Drawable;II)V

    return-object v0
.end method

.method public static c(IILandroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 0

    invoke-static {p1, p2}, Luha;->a(ILandroid/content/Context;)I

    move-result p1

    invoke-static {p0, p1, p2}, Lme/zhanghai/android/materialratingbar/a;->d(IILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static d(IILandroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1

    new-instance v0, Llna;

    invoke-static {p2, p0}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-direct {v0, p0}, Llna;-><init>(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0}, Llna;->mutate()Landroid/graphics/drawable/Drawable;

    invoke-interface {v0, p1}, Lroa;->setTint(I)V

    return-object v0
.end method


# virtual methods
.method public final e(I)Llna;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    const/high16 v0, 0x1020000

    if-eq p1, v0, :cond_2

    const v0, 0x102000d

    if-eq p1, v0, :cond_1

    const v0, 0x102000f

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_1
    :goto_0
    check-cast p0, Lcy0;

    invoke-virtual {p0}, Lcy0;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Llna;

    return-object p0

    :cond_2
    check-cast p0, Llna;

    return-object p0
.end method

.method public f()F
    .locals 1

    const v0, 0x102000d

    invoke-virtual {p0, v0}, Lme/zhanghai/android/materialratingbar/a;->e(I)Llna;

    move-result-object p0

    invoke-virtual {p0}, Llna;->d()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr v0, p0

    return v0
.end method

.method public g(I)V
    .locals 1

    const/high16 v0, 0x1020000

    invoke-virtual {p0, v0}, Lme/zhanghai/android/materialratingbar/a;->e(I)Llna;

    move-result-object v0

    invoke-virtual {v0, p1}, Llna;->e(I)V

    const v0, 0x102000f

    invoke-virtual {p0, v0}, Lme/zhanghai/android/materialratingbar/a;->e(I)Llna;

    move-result-object v0

    invoke-virtual {v0, p1}, Llna;->e(I)V

    const v0, 0x102000d

    invoke-virtual {p0, v0}, Lme/zhanghai/android/materialratingbar/a;->e(I)Llna;

    move-result-object p0

    invoke-virtual {p0, p1}, Llna;->e(I)V

    return-void
.end method
