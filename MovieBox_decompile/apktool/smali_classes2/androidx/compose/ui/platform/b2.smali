.class public final Landroidx/compose/ui/platform/b2;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroidx/compose/ui/node/z0;


# instance fields
.field private final a:I

.field private final b:Ljava/util/List;

.field private c:Ljava/lang/Float;

.field private d:Ljava/lang/Float;

.field private e:Landroidx/compose/ui/semantics/g;

.field private f:Landroidx/compose/ui/semantics/g;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(ILjava/util/List;Ljava/lang/Float;Ljava/lang/Float;Landroidx/compose/ui/semantics/g;Landroidx/compose/ui/semantics/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroidx/compose/ui/platform/b2;->a:I

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/ui/platform/b2;->b:Ljava/util/List;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/compose/ui/platform/b2;->c:Ljava/lang/Float;

    .line 9
    .line 10
    iput-object p4, p0, Landroidx/compose/ui/platform/b2;->d:Ljava/lang/Float;

    .line 11
    .line 12
    iput-object p5, p0, Landroidx/compose/ui/platform/b2;->e:Landroidx/compose/ui/semantics/g;

    .line 13
    .line 14
    iput-object p6, p0, Landroidx/compose/ui/platform/b2;->f:Landroidx/compose/ui/semantics/g;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final a()Landroidx/compose/ui/semantics/g;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/b2;->e:Landroidx/compose/ui/semantics/g;

    .line 2
    .line 3
    return-object v0
.end method

.method public final b()Ljava/lang/Float;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/b2;->c:Ljava/lang/Float;

    .line 2
    .line 3
    return-object v0
.end method

.method public final c()Ljava/lang/Float;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/b2;->d:Ljava/lang/Float;

    .line 2
    .line 3
    return-object v0
.end method

.method public final d()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/platform/b2;->a:I

    .line 2
    .line 3
    return v0
.end method

.method public final e()Landroidx/compose/ui/semantics/g;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/b2;->f:Landroidx/compose/ui/semantics/g;

    .line 2
    .line 3
    return-object v0
.end method

.method public final f(Landroidx/compose/ui/semantics/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/ui/platform/b2;->e:Landroidx/compose/ui/semantics/g;

    .line 2
    .line 3
    return-void
.end method

.method public final g(Ljava/lang/Float;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/ui/platform/b2;->c:Ljava/lang/Float;

    .line 2
    .line 3
    return-void
.end method

.method public final h(Ljava/lang/Float;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/ui/platform/b2;->d:Ljava/lang/Float;

    .line 2
    .line 3
    return-void
.end method

.method public final i(Landroidx/compose/ui/semantics/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/ui/platform/b2;->f:Landroidx/compose/ui/semantics/g;

    .line 2
    .line 3
    return-void
.end method

.method public isValidOwnerScope()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/b2;->b:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method
