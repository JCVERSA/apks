.class public final Ldi/b;
.super Landroid/text/style/CharacterStyle;
.source "source.java"

# interfaces
.implements Landroid/text/style/UpdateAppearance;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "gradientText"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    .line 7
    .line 8
    .line 9
    iput p1, p0, Ldi/b;->a:I

    .line 10
    .line 11
    iput p2, p0, Ldi/b;->b:I

    .line 12
    .line 13
    iput-object p3, p0, Ldi/b;->c:Ljava/lang/String;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 9

    .line 1
    const-string v0, "tp"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroid/graphics/LinearGradient;

    .line 7
    .line 8
    iget-object v1, p0, Ldi/b;->c:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 11
    .line 12
    .line 13
    move-result v4

    .line 14
    iget v6, p0, Ldi/b;->a:I

    .line 15
    .line 16
    iget v7, p0, Ldi/b;->b:I

    .line 17
    .line 18
    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    const/4 v3, 0x0

    .line 22
    const/4 v5, 0x0

    .line 23
    move-object v1, v0

    .line 24
    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 28
    .line 29
    .line 30
    return-void
.end method
