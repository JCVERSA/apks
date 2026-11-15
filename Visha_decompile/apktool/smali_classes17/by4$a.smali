.class public final Lby4$a;
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
    name = "a"
.end annotation


# instance fields
.field public final a:Landroid/graphics/Bitmap;


# direct methods
.method public synthetic constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lby4$a;->a:Landroid/graphics/Bitmap;

    return-void
.end method

.method public static final synthetic a(Landroid/graphics/Bitmap;)Lby4$a;
    .locals 1

    new-instance v0, Lby4$a;

    invoke-direct {v0, p0}, Lby4$a;-><init>(Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method public static b(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1

    const-string v0, "value"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static c(Landroid/graphics/Bitmap;Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lby4$a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lby4$a;

    invoke-virtual {p1}, Lby4$a;->f()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {p0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static d(Landroid/graphics/Bitmap;)I
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public static e(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bitmap(value="

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

    iget-object p0, p0, Lby4$a;->a:Landroid/graphics/Bitmap;

    invoke-static {p0, p1}, Lby4$a;->c(Landroid/graphics/Bitmap;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final synthetic f()Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lby4$a;->a:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lby4$a;->a:Landroid/graphics/Bitmap;

    invoke-static {p0}, Lby4$a;->d(Landroid/graphics/Bitmap;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lby4$a;->a:Landroid/graphics/Bitmap;

    invoke-static {p0}, Lby4$a;->e(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
