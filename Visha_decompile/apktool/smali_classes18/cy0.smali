.class public Lcy0;
.super Landroid/graphics/drawable/ClipDrawable;
.source "SourceFile"

# interfaces
.implements Lroa;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcy0$b;
    }
.end annotation


# static fields
.field public static final d:Ljava/lang/String; = "cy0"


# instance fields
.field public b:Landroid/graphics/drawable/Drawable;

.field public c:Lcy0$b;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    new-instance p2, Lcy0$b;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcy0$b;-><init>(Lcy0;Lcy0$a;)V

    iput-object p2, p0, Lcy0;->c:Lcy0$b;

    iput-object p1, p0, Lcy0;->b:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 0

    iget-object p0, p0, Lcy0;->c:Lcy0$b;

    return-object p0
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcy0;->b:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setTint(I)V
    .locals 2

    iget-object v0, p0, Lcy0;->b:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Lroa;

    if-eqz v1, :cond_0

    check-cast v0, Lroa;

    invoke-interface {v0, p1}, Lroa;->setTint(I)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcy0;->d:Ljava/lang/String;

    const-string v1, "Drawable did not implement TintableDrawable, it won\'t be tinted below Lollipop"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :goto_0
    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 2

    iget-object v0, p0, Lcy0;->b:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Lroa;

    if-eqz v1, :cond_0

    check-cast v0, Lroa;

    invoke-interface {v0, p1}, Lroa;->setTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcy0;->d:Ljava/lang/String;

    const-string v1, "Drawable did not implement TintableDrawable, it won\'t be tinted below Lollipop"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :goto_0
    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    iget-object v0, p0, Lcy0;->b:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Lroa;

    if-eqz v1, :cond_0

    check-cast v0, Lroa;

    invoke-interface {v0, p1}, Lroa;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcy0;->d:Ljava/lang/String;

    const-string v1, "Drawable did not implement TintableDrawable, it won\'t be tinted below Lollipop"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :goto_0
    return-void
.end method
