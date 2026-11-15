.class public final Lby4$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lby4;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lby4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Landroid/graphics/drawable/PictureDrawable;


# direct methods
.method public synthetic constructor <init>(Landroid/graphics/drawable/PictureDrawable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lby4$b;->a:Landroid/graphics/drawable/PictureDrawable;

    return-void
.end method

.method public static final synthetic a(Landroid/graphics/drawable/PictureDrawable;)Lby4$b;
    .locals 1

    new-instance v0, Lby4$b;

    invoke-direct {v0, p0}, Lby4$b;-><init>(Landroid/graphics/drawable/PictureDrawable;)V

    return-object v0
.end method

.method public static b(Landroid/graphics/drawable/PictureDrawable;)Landroid/graphics/drawable/PictureDrawable;
    .locals 1

    const-string v0, "value"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static c(Landroid/graphics/drawable/PictureDrawable;Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lby4$b;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lby4$b;

    invoke-virtual {p1}, Lby4$b;->f()Landroid/graphics/drawable/PictureDrawable;

    move-result-object p1

    invoke-static {p0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static d(Landroid/graphics/drawable/PictureDrawable;)I
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public static e(Landroid/graphics/drawable/PictureDrawable;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PictureDrawable(value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lby4$b;->a:Landroid/graphics/drawable/PictureDrawable;

    invoke-static {p0, p1}, Lby4$b;->c(Landroid/graphics/drawable/PictureDrawable;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final synthetic f()Landroid/graphics/drawable/PictureDrawable;
    .locals 0

    iget-object p0, p0, Lby4$b;->a:Landroid/graphics/drawable/PictureDrawable;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lby4$b;->a:Landroid/graphics/drawable/PictureDrawable;

    invoke-static {p0}, Lby4$b;->d(Landroid/graphics/drawable/PictureDrawable;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lby4$b;->a:Landroid/graphics/drawable/PictureDrawable;

    invoke-static {p0}, Lby4$b;->e(Landroid/graphics/drawable/PictureDrawable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
