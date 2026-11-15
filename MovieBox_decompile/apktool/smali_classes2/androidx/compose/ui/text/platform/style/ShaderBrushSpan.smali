.class public final Landroidx/compose/ui/text/platform/style/ShaderBrushSpan;
.super Landroid/text/style/CharacterStyle;
.source "source.java"

# interfaces
.implements Landroid/text/style/UpdateAppearance;


# instance fields
.field private final a:Landroidx/compose/ui/graphics/y4;

.field private final b:F

.field private final c:Landroidx/compose/runtime/i1;

.field private final d:Landroidx/compose/runtime/a3;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/graphics/y4;F)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/ui/text/platform/style/ShaderBrushSpan;->a:Landroidx/compose/ui/graphics/y4;

    .line 5
    .line 6
    iput p2, p0, Landroidx/compose/ui/text/platform/style/ShaderBrushSpan;->b:F

    .line 7
    .line 8
    sget-object p1, Ly/m;->b:Ly/m$a;

    .line 9
    .line 10
    invoke-virtual {p1}, Ly/m$a;->a()J

    .line 11
    .line 12
    .line 13
    move-result-wide p1

    .line 14
    invoke-static {p1, p2}, Ly/m;->c(J)Ly/m;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const/4 p2, 0x0

    .line 19
    const/4 v0, 0x2

    .line 20
    invoke-static {p1, p2, v0, p2}, Landroidx/compose/runtime/r2;->f(Ljava/lang/Object;Landroidx/compose/runtime/q2;ILjava/lang/Object;)Landroidx/compose/runtime/i1;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iput-object p1, p0, Landroidx/compose/ui/text/platform/style/ShaderBrushSpan;->c:Landroidx/compose/runtime/i1;

    .line 25
    .line 26
    new-instance p1, Landroidx/compose/ui/text/platform/style/ShaderBrushSpan$shaderState$1;

    .line 27
    .line 28
    invoke-direct {p1, p0}, Landroidx/compose/ui/text/platform/style/ShaderBrushSpan$shaderState$1;-><init>(Landroidx/compose/ui/text/platform/style/ShaderBrushSpan;)V

    .line 29
    .line 30
    .line 31
    invoke-static {p1}, Landroidx/compose/runtime/r2;->c(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/a3;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iput-object p1, p0, Landroidx/compose/ui/text/platform/style/ShaderBrushSpan;->d:Landroidx/compose/runtime/a3;

    .line 36
    .line 37
    return-void
.end method


# virtual methods
.method public final a()Landroidx/compose/ui/graphics/y4;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/platform/style/ShaderBrushSpan;->a:Landroidx/compose/ui/graphics/y4;

    .line 2
    .line 3
    return-object v0
.end method

.method public final b()J
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/platform/style/ShaderBrushSpan;->c:Landroidx/compose/runtime/i1;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/compose/runtime/a3;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ly/m;

    .line 8
    .line 9
    invoke-virtual {v0}, Ly/m;->m()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    return-wide v0
.end method

.method public final c(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/platform/style/ShaderBrushSpan;->c:Landroidx/compose/runtime/i1;

    .line 2
    .line 3
    invoke-static {p1, p2}, Ly/m;->c(J)Ly/m;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {v0, p1}, Landroidx/compose/runtime/i1;->setValue(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/text/platform/style/ShaderBrushSpan;->b:F

    .line 2
    .line 3
    invoke-static {p1, v0}, Landroidx/compose/ui/text/platform/f;->a(Landroid/text/TextPaint;F)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/compose/ui/text/platform/style/ShaderBrushSpan;->d:Landroidx/compose/runtime/a3;

    .line 7
    .line 8
    invoke-interface {v0}, Landroidx/compose/runtime/a3;->getValue()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Landroid/graphics/Shader;

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 15
    .line 16
    .line 17
    return-void
.end method
