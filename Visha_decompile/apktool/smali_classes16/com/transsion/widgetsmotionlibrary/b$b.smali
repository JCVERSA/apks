.class public final Lcom/transsion/widgetsmotionlibrary/b$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetsmotionlibrary/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:F

.field public final b:F

.field public final c:F

.field public final d:Landroid/graphics/drawable/Drawable;

.field public e:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(FFFLandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/transsion/widgetsmotionlibrary/b$b;->a:F

    .line 3
    iput p2, p0, Lcom/transsion/widgetsmotionlibrary/b$b;->b:F

    .line 4
    iput p3, p0, Lcom/transsion/widgetsmotionlibrary/b$b;->c:F

    .line 5
    iput-object p4, p0, Lcom/transsion/widgetsmotionlibrary/b$b;->d:Landroid/graphics/drawable/Drawable;

    .line 6
    iput-object p5, p0, Lcom/transsion/widgetsmotionlibrary/b$b;->e:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public synthetic constructor <init>(FFFLandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    const/4 p5, 0x0

    :cond_0
    move-object v5, p5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    .line 7
    invoke-direct/range {v0 .. v5}, Lcom/transsion/widgetsmotionlibrary/b$b;-><init>(FFFLandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public final a()F
    .locals 0

    iget p0, p0, Lcom/transsion/widgetsmotionlibrary/b$b;->c:F

    return p0
.end method

.method public final b()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetsmotionlibrary/b$b;->d:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public final c()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetsmotionlibrary/b$b;->e:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public final d()F
    .locals 0

    iget p0, p0, Lcom/transsion/widgetsmotionlibrary/b$b;->a:F

    return p0
.end method

.method public final e()F
    .locals 0

    iget p0, p0, Lcom/transsion/widgetsmotionlibrary/b$b;->b:F

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/transsion/widgetsmotionlibrary/b$b;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/transsion/widgetsmotionlibrary/b$b;

    iget v1, p0, Lcom/transsion/widgetsmotionlibrary/b$b;->a:F

    iget v3, p1, Lcom/transsion/widgetsmotionlibrary/b$b;->a:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/transsion/widgetsmotionlibrary/b$b;->b:F

    iget v3, p1, Lcom/transsion/widgetsmotionlibrary/b$b;->b:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/transsion/widgetsmotionlibrary/b$b;->c:F

    iget v3, p1, Lcom/transsion/widgetsmotionlibrary/b$b;->c:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/transsion/widgetsmotionlibrary/b$b;->d:Landroid/graphics/drawable/Drawable;

    iget-object v3, p1, Lcom/transsion/widgetsmotionlibrary/b$b;->d:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object p0, p0, Lcom/transsion/widgetsmotionlibrary/b$b;->e:Landroid/graphics/drawable/Drawable;

    iget-object p1, p1, Lcom/transsion/widgetsmotionlibrary/b$b;->e:Landroid/graphics/drawable/Drawable;

    invoke-static {p0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final f(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetsmotionlibrary/b$b;->e:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/transsion/widgetsmotionlibrary/b$b;->a:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/transsion/widgetsmotionlibrary/b$b;->b:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/transsion/widgetsmotionlibrary/b$b;->c:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/widgetsmotionlibrary/b$b;->d:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/transsion/widgetsmotionlibrary/b$b;->e:Landroid/graphics/drawable/Drawable;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget v0, p0, Lcom/transsion/widgetsmotionlibrary/b$b;->a:F

    iget v1, p0, Lcom/transsion/widgetsmotionlibrary/b$b;->b:F

    iget v2, p0, Lcom/transsion/widgetsmotionlibrary/b$b;->c:F

    iget-object v3, p0, Lcom/transsion/widgetsmotionlibrary/b$b;->d:Landroid/graphics/drawable/Drawable;

    iget-object p0, p0, Lcom/transsion/widgetsmotionlibrary/b$b;->e:Landroid/graphics/drawable/Drawable;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PressState(scaleX="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", scaleY="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", alpha="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", foreground="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", mask="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
