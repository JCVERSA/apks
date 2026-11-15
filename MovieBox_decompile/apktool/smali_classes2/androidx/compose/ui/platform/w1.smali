.class public final Landroidx/compose/ui/platform/w1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroidx/compose/ui/platform/t0;


# instance fields
.field private final a:Landroidx/compose/ui/platform/AndroidComposeView;

.field private final b:Landroid/graphics/RenderNode;

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/platform/AndroidComposeView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/ui/platform/w1;->a:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 5
    .line 6
    const-string p1, "Compose"

    .line 7
    .line 8
    invoke-static {p1}, Landroidx/compose/foundation/i;->a(Ljava/lang/String;)Landroid/graphics/RenderNode;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Landroidx/compose/ui/platform/w1;->b:Landroid/graphics/RenderNode;

    .line 13
    .line 14
    sget-object p1, Landroidx/compose/ui/graphics/w3;->a:Landroidx/compose/ui/graphics/w3$a;

    .line 15
    .line 16
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/w3$a;->a()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    iput p1, p0, Landroidx/compose/ui/platform/w1;->c:I

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public A(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/w1;->b:Landroid/graphics/RenderNode;

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroidx/compose/ui/graphics/layer/o;->a(Landroid/graphics/RenderNode;F)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public B(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/w1;->b:Landroid/graphics/RenderNode;

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroidx/compose/ui/graphics/layer/p;->a(Landroid/graphics/RenderNode;F)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public C(Landroid/graphics/Outline;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/w1;->b:Landroid/graphics/RenderNode;

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroidx/compose/ui/graphics/layer/h;->a(Landroid/graphics/RenderNode;Landroid/graphics/Outline;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public D(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/w1;->b:Landroid/graphics/RenderNode;

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroidx/compose/ui/graphics/layer/u;->a(Landroid/graphics/RenderNode;I)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public E(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/w1;->b:Landroid/graphics/RenderNode;

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroidx/compose/ui/graphics/layer/b0;->a(Landroid/graphics/RenderNode;Z)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public F(Landroidx/compose/ui/graphics/n1;Landroidx/compose/ui/graphics/Path;Lkotlin/jvm/functions/Function1;)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/w1;->b:Landroid/graphics/RenderNode;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/compose/foundation/k;->a(Landroid/graphics/RenderNode;)Landroid/graphics/RecordingCanvas;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/n1;->a()Landroidx/compose/ui/graphics/g0;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/g0;->v()Landroid/graphics/Canvas;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/n1;->a()Landroidx/compose/ui/graphics/g0;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v2, v0}, Landroidx/compose/ui/graphics/g0;->w(Landroid/graphics/Canvas;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/n1;->a()Landroidx/compose/ui/graphics/g0;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz p2, :cond_0

    .line 27
    .line 28
    invoke-interface {v0}, Landroidx/compose/ui/graphics/m1;->n()V

    .line 29
    .line 30
    .line 31
    const/4 v2, 0x2

    .line 32
    const/4 v3, 0x0

    .line 33
    const/4 v4, 0x0

    .line 34
    invoke-static {v0, p2, v4, v2, v3}, Landroidx/compose/ui/graphics/l1;->c(Landroidx/compose/ui/graphics/m1;Landroidx/compose/ui/graphics/Path;IILjava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    invoke-interface {p3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    if-eqz p2, :cond_1

    .line 41
    .line 42
    invoke-interface {v0}, Landroidx/compose/ui/graphics/m1;->j()V

    .line 43
    .line 44
    .line 45
    :cond_1
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/n1;->a()Landroidx/compose/ui/graphics/g0;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p1, v1}, Landroidx/compose/ui/graphics/g0;->w(Landroid/graphics/Canvas;)V

    .line 50
    .line 51
    .line 52
    iget-object p1, p0, Landroidx/compose/ui/platform/w1;->b:Landroid/graphics/RenderNode;

    .line 53
    .line 54
    invoke-static {p1}, Landroidx/compose/foundation/l;->a(Landroid/graphics/RenderNode;)V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public G(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/w1;->b:Landroid/graphics/RenderNode;

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroidx/compose/ui/graphics/layer/y;->a(Landroid/graphics/RenderNode;I)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public H()F
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/w1;->b:Landroid/graphics/RenderNode;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/compose/ui/platform/t1;->a(Landroid/graphics/RenderNode;)F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public a(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/w1;->b:Landroid/graphics/RenderNode;

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroidx/compose/ui/graphics/layer/z;->a(Landroid/graphics/RenderNode;F)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public b(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/w1;->b:Landroid/graphics/RenderNode;

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroidx/compose/ui/graphics/layer/i;->a(Landroid/graphics/RenderNode;F)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public c(Landroidx/compose/ui/graphics/w4;)V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1f

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    sget-object v0, Landroidx/compose/ui/platform/x1;->a:Landroidx/compose/ui/platform/x1;

    .line 8
    .line 9
    iget-object v1, p0, Landroidx/compose/ui/platform/w1;->b:Landroid/graphics/RenderNode;

    .line 10
    .line 11
    invoke-virtual {v0, v1, p1}, Landroidx/compose/ui/platform/x1;->a(Landroid/graphics/RenderNode;Landroidx/compose/ui/graphics/w4;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public d(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/w1;->b:Landroid/graphics/RenderNode;

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroidx/compose/ui/graphics/layer/r;->a(Landroid/graphics/RenderNode;F)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public e(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/w1;->b:Landroid/graphics/RenderNode;

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroidx/compose/ui/graphics/layer/m;->a(Landroid/graphics/RenderNode;F)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public f(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/w1;->b:Landroid/graphics/RenderNode;

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroidx/compose/ui/graphics/layer/w;->a(Landroid/graphics/RenderNode;F)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public g(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/w1;->b:Landroid/graphics/RenderNode;

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroidx/compose/ui/graphics/layer/x;->a(Landroid/graphics/RenderNode;F)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public getAlpha()F
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/w1;->b:Landroid/graphics/RenderNode;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/compose/ui/platform/u1;->a(Landroid/graphics/RenderNode;)F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/w1;->b:Landroid/graphics/RenderNode;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/compose/ui/platform/q1;->a(Landroid/graphics/RenderNode;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/w1;->b:Landroid/graphics/RenderNode;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/compose/ui/platform/o1;->a(Landroid/graphics/RenderNode;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public h(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/w1;->b:Landroid/graphics/RenderNode;

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroidx/compose/ui/graphics/layer/f;->a(Landroid/graphics/RenderNode;F)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public i()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/w1;->b:Landroid/graphics/RenderNode;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/compose/ui/platform/r1;->a(Landroid/graphics/RenderNode;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public j(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/w1;->b:Landroid/graphics/RenderNode;

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroidx/compose/ui/graphics/layer/v;->a(Landroid/graphics/RenderNode;F)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public k()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/w1;->b:Landroid/graphics/RenderNode;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/compose/ui/graphics/layer/j;->a(Landroid/graphics/RenderNode;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public l(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/w1;->b:Landroid/graphics/RenderNode;

    .line 2
    .line 3
    sget-object v1, Landroidx/compose/ui/graphics/w3;->a:Landroidx/compose/ui/graphics/w3$a;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/w3$a;->c()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    invoke-static {p1, v2}, Landroidx/compose/ui/graphics/w3;->e(II)Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const/4 v3, 0x0

    .line 14
    const/4 v4, 0x1

    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    invoke-static {v0, v4, v3}, Landroidx/compose/ui/graphics/layer/k;->a(Landroid/graphics/RenderNode;ZLandroid/graphics/Paint;)Z

    .line 18
    .line 19
    .line 20
    invoke-static {v0, v4}, Landroidx/compose/ui/graphics/layer/l;->a(Landroid/graphics/RenderNode;Z)Z

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/w3$a;->b()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    invoke-static {p1, v1}, Landroidx/compose/ui/graphics/w3;->e(II)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    const/4 v2, 0x0

    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    invoke-static {v0, v2, v3}, Landroidx/compose/ui/graphics/layer/k;->a(Landroid/graphics/RenderNode;ZLandroid/graphics/Paint;)Z

    .line 36
    .line 37
    .line 38
    invoke-static {v0, v2}, Landroidx/compose/ui/graphics/layer/l;->a(Landroid/graphics/RenderNode;Z)Z

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    invoke-static {v0, v2, v3}, Landroidx/compose/ui/graphics/layer/k;->a(Landroid/graphics/RenderNode;ZLandroid/graphics/Paint;)Z

    .line 43
    .line 44
    .line 45
    invoke-static {v0, v4}, Landroidx/compose/ui/graphics/layer/l;->a(Landroid/graphics/RenderNode;Z)Z

    .line 46
    .line 47
    .line 48
    :goto_0
    iput p1, p0, Landroidx/compose/ui/platform/w1;->c:I

    .line 49
    .line 50
    return-void
.end method

.method public m()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/w1;->b:Landroid/graphics/RenderNode;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/compose/ui/platform/m1;->a(Landroid/graphics/RenderNode;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public n()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/w1;->b:Landroid/graphics/RenderNode;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/compose/ui/graphics/layer/s;->a(Landroid/graphics/RenderNode;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public o(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/w1;->b:Landroid/graphics/RenderNode;

    .line 2
    .line 3
    invoke-static {p1, v0}, Landroidx/compose/foundation/m;->a(Landroid/graphics/Canvas;Landroid/graphics/RenderNode;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public p(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/w1;->b:Landroid/graphics/RenderNode;

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroidx/compose/ui/graphics/layer/a0;->a(Landroid/graphics/RenderNode;Z)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public q(IIII)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/w1;->b:Landroid/graphics/RenderNode;

    .line 2
    .line 3
    invoke-static {v0, p1, p2, p3, p4}, Landroidx/compose/foundation/j;->a(Landroid/graphics/RenderNode;IIII)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public r(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/w1;->b:Landroid/graphics/RenderNode;

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroidx/compose/ui/graphics/layer/q;->a(Landroid/graphics/RenderNode;F)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public s(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/w1;->b:Landroid/graphics/RenderNode;

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroidx/compose/ui/platform/l1;->a(Landroid/graphics/RenderNode;I)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setAlpha(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/w1;->b:Landroid/graphics/RenderNode;

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroidx/compose/ui/graphics/layer/g;->a(Landroid/graphics/RenderNode;F)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public t()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/w1;->b:Landroid/graphics/RenderNode;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/compose/ui/platform/p1;->a(Landroid/graphics/RenderNode;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public u()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/w1;->b:Landroid/graphics/RenderNode;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/compose/ui/platform/v1;->a(Landroid/graphics/RenderNode;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public v()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/w1;->b:Landroid/graphics/RenderNode;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/compose/ui/platform/s1;->a(Landroid/graphics/RenderNode;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public w(Z)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/w1;->b:Landroid/graphics/RenderNode;

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroidx/compose/ui/graphics/layer/l;->a(Landroid/graphics/RenderNode;Z)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public x(Landroid/graphics/Matrix;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/w1;->b:Landroid/graphics/RenderNode;

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroidx/compose/ui/graphics/layer/t;->a(Landroid/graphics/RenderNode;Landroid/graphics/Matrix;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public y(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/w1;->b:Landroid/graphics/RenderNode;

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroidx/compose/ui/platform/k1;->a(Landroid/graphics/RenderNode;I)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public z()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/w1;->b:Landroid/graphics/RenderNode;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/compose/ui/platform/n1;->a(Landroid/graphics/RenderNode;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method
