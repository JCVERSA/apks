.class public final Landroidx/compose/animation/core/e1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroidx/compose/animation/core/b1;


# instance fields
.field private final a:F

.field private final b:F

.field private final synthetic c:Landroidx/compose/animation/core/c1;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(FFLandroidx/compose/animation/core/o;)V
    .locals 0

    .line 5
    invoke-static {p3, p1, p2}, Landroidx/compose/animation/core/w0;->a(Landroidx/compose/animation/core/o;FF)Landroidx/compose/animation/core/q;

    move-result-object p3

    .line 6
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/animation/core/e1;-><init>(FFLandroidx/compose/animation/core/q;)V

    return-void
.end method

.method private constructor <init>(FFLandroidx/compose/animation/core/q;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Landroidx/compose/animation/core/e1;->a:F

    .line 3
    iput p2, p0, Landroidx/compose/animation/core/e1;->b:F

    .line 4
    new-instance p1, Landroidx/compose/animation/core/c1;

    invoke-direct {p1, p3}, Landroidx/compose/animation/core/c1;-><init>(Landroidx/compose/animation/core/q;)V

    iput-object p1, p0, Landroidx/compose/animation/core/e1;->c:Landroidx/compose/animation/core/c1;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/animation/core/e1;->c:Landroidx/compose/animation/core/c1;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/animation/core/c1;->a()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public c(Landroidx/compose/animation/core/o;Landroidx/compose/animation/core/o;Landroidx/compose/animation/core/o;)Landroidx/compose/animation/core/o;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/animation/core/e1;->c:Landroidx/compose/animation/core/c1;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Landroidx/compose/animation/core/c1;->c(Landroidx/compose/animation/core/o;Landroidx/compose/animation/core/o;Landroidx/compose/animation/core/o;)Landroidx/compose/animation/core/o;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public e(JLandroidx/compose/animation/core/o;Landroidx/compose/animation/core/o;Landroidx/compose/animation/core/o;)Landroidx/compose/animation/core/o;
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/compose/animation/core/e1;->c:Landroidx/compose/animation/core/c1;

    .line 2
    .line 3
    move-wide v1, p1

    .line 4
    move-object v3, p3

    .line 5
    move-object v4, p4

    .line 6
    move-object v5, p5

    .line 7
    invoke-virtual/range {v0 .. v5}, Landroidx/compose/animation/core/c1;->e(JLandroidx/compose/animation/core/o;Landroidx/compose/animation/core/o;Landroidx/compose/animation/core/o;)Landroidx/compose/animation/core/o;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public f(Landroidx/compose/animation/core/o;Landroidx/compose/animation/core/o;Landroidx/compose/animation/core/o;)J
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/animation/core/e1;->c:Landroidx/compose/animation/core/c1;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Landroidx/compose/animation/core/c1;->f(Landroidx/compose/animation/core/o;Landroidx/compose/animation/core/o;Landroidx/compose/animation/core/o;)J

    .line 4
    .line 5
    .line 6
    move-result-wide p1

    .line 7
    return-wide p1
.end method

.method public g(JLandroidx/compose/animation/core/o;Landroidx/compose/animation/core/o;Landroidx/compose/animation/core/o;)Landroidx/compose/animation/core/o;
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/compose/animation/core/e1;->c:Landroidx/compose/animation/core/c1;

    .line 2
    .line 3
    move-wide v1, p1

    .line 4
    move-object v3, p3

    .line 5
    move-object v4, p4

    .line 6
    move-object v5, p5

    .line 7
    invoke-virtual/range {v0 .. v5}, Landroidx/compose/animation/core/c1;->g(JLandroidx/compose/animation/core/o;Landroidx/compose/animation/core/o;Landroidx/compose/animation/core/o;)Landroidx/compose/animation/core/o;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method
