.class public final Lio/appmetrica/analytics/impl/qg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/sl;
.implements Lio/appmetrica/analytics/impl/Na;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lio/appmetrica/analytics/impl/f5;

.field public final c:Lio/appmetrica/analytics/impl/g5;

.field public final d:Lio/appmetrica/analytics/impl/dm;

.field public final e:Lio/appmetrica/analytics/impl/Wa;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/f5;Lio/appmetrica/analytics/impl/G4;Lio/appmetrica/analytics/impl/n5;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lio/appmetrica/analytics/impl/f5;",
            "Lio/appmetrica/analytics/impl/G4;",
            "Lio/appmetrica/analytics/impl/n5;",
            ")V"
        }
    .end annotation

    .line 9
    new-instance v5, Lio/appmetrica/analytics/impl/g5;

    invoke-direct {v5}, Lio/appmetrica/analytics/impl/g5;-><init>()V

    .line 10
    invoke-static {}, Lio/appmetrica/analytics/impl/jl;->a()Lio/appmetrica/analytics/impl/jl;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 11
    invoke-direct/range {v0 .. v6}, Lio/appmetrica/analytics/impl/qg;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/f5;Lio/appmetrica/analytics/impl/G4;Lio/appmetrica/analytics/impl/n5;Lio/appmetrica/analytics/impl/g5;Lio/appmetrica/analytics/impl/jl;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/f5;Lio/appmetrica/analytics/impl/G4;Lio/appmetrica/analytics/impl/n5;Lio/appmetrica/analytics/impl/g5;Lio/appmetrica/analytics/impl/jl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lio/appmetrica/analytics/impl/f5;",
            "Lio/appmetrica/analytics/impl/G4;",
            "Lio/appmetrica/analytics/impl/n5;",
            "Lio/appmetrica/analytics/impl/g5;",
            "Lio/appmetrica/analytics/impl/jl;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/appmetrica/analytics/impl/qg;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lio/appmetrica/analytics/impl/qg;->b:Lio/appmetrica/analytics/impl/f5;

    .line 4
    iput-object p5, p0, Lio/appmetrica/analytics/impl/qg;->c:Lio/appmetrica/analytics/impl/g5;

    .line 5
    iget-object p5, p3, Lio/appmetrica/analytics/impl/G4;->a:Lio/appmetrica/analytics/impl/Bl;

    invoke-virtual {p6, p1, p2, p5}, Lio/appmetrica/analytics/impl/jl;->a(Landroid/content/Context;Lio/appmetrica/analytics/impl/f5;Lio/appmetrica/analytics/impl/Bl;)Lio/appmetrica/analytics/impl/dm;

    move-result-object p5

    iput-object p5, p0, Lio/appmetrica/analytics/impl/qg;->d:Lio/appmetrica/analytics/impl/dm;

    .line 6
    iget-object p3, p3, Lio/appmetrica/analytics/impl/G4;->b:Lio/appmetrica/analytics/impl/F4;

    .line 7
    invoke-interface {p4, p1, p2, p3, p5}, Lio/appmetrica/analytics/impl/n5;->a(Landroid/content/Context;Lio/appmetrica/analytics/impl/f5;Lio/appmetrica/analytics/impl/F4;Lio/appmetrica/analytics/impl/dm;)Lio/appmetrica/analytics/impl/Wa;

    move-result-object p1

    iput-object p1, p0, Lio/appmetrica/analytics/impl/qg;->e:Lio/appmetrica/analytics/impl/Wa;

    .line 8
    invoke-virtual {p6, p2, p0}, Lio/appmetrica/analytics/impl/jl;->a(Lio/appmetrica/analytics/impl/f5;Lio/appmetrica/analytics/impl/sl;)V

    return-void
.end method


# virtual methods
.method public final a()Lio/appmetrica/analytics/impl/f5;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iget-object p0, p0, Lio/appmetrica/analytics/impl/qg;->b:Lio/appmetrica/analytics/impl/f5;

    return-object p0
.end method

.method public final a(Lio/appmetrica/analytics/impl/G4;)V
    .locals 2

    .line 8
    iget-object v0, p0, Lio/appmetrica/analytics/impl/qg;->d:Lio/appmetrica/analytics/impl/dm;

    iget-object v1, p1, Lio/appmetrica/analytics/impl/G4;->a:Lio/appmetrica/analytics/impl/Bl;

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/dm;->a(Lio/appmetrica/analytics/impl/Bl;)V

    .line 9
    iget-object p1, p1, Lio/appmetrica/analytics/impl/G4;->b:Lio/appmetrica/analytics/impl/F4;

    .line 10
    iget-object p0, p0, Lio/appmetrica/analytics/impl/qg;->e:Lio/appmetrica/analytics/impl/Wa;

    invoke-interface {p0, p1}, Lio/appmetrica/analytics/impl/Wa;->a(Lio/appmetrica/analytics/impl/F4;)V

    return-void
.end method

.method public final a(Lio/appmetrica/analytics/impl/Hl;)V
    .locals 0

    .line 5
    iget-object p0, p0, Lio/appmetrica/analytics/impl/qg;->e:Lio/appmetrica/analytics/impl/Wa;

    invoke-interface {p0, p1}, Lio/appmetrica/analytics/impl/Wa;->a(Lio/appmetrica/analytics/impl/Hl;)V

    return-void
.end method

.method public final a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/G4;)V
    .locals 2

    .line 11
    iget v0, p1, Lio/appmetrica/analytics/impl/a6;->d:I

    .line 12
    sget-object v1, Lio/appmetrica/analytics/impl/C9;->c:Ljava/util/EnumSet;

    invoke-static {v0}, Lio/appmetrica/analytics/impl/hb;->a(I)Lio/appmetrica/analytics/impl/hb;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 13
    iget-object p2, p2, Lio/appmetrica/analytics/impl/G4;->b:Lio/appmetrica/analytics/impl/F4;

    .line 14
    iget-object v0, p0, Lio/appmetrica/analytics/impl/qg;->e:Lio/appmetrica/analytics/impl/Wa;

    invoke-interface {v0, p2}, Lio/appmetrica/analytics/impl/Wa;->a(Lio/appmetrica/analytics/impl/F4;)V

    .line 15
    :cond_0
    iget-object p0, p0, Lio/appmetrica/analytics/impl/qg;->e:Lio/appmetrica/analytics/impl/Wa;

    check-cast p0, Lio/appmetrica/analytics/impl/m5;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/m5;->a(Lio/appmetrica/analytics/impl/a6;)V

    return-void
.end method

.method public final a(Lio/appmetrica/analytics/impl/ll;Lio/appmetrica/analytics/impl/Hl;)V
    .locals 0

    .line 6
    iget-object p0, p0, Lio/appmetrica/analytics/impl/qg;->e:Lio/appmetrica/analytics/impl/Wa;

    check-cast p0, Lio/appmetrica/analytics/impl/m5;

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final a(Lio/appmetrica/analytics/impl/w4;)V
    .locals 0

    .line 2
    iget-object p0, p0, Lio/appmetrica/analytics/impl/qg;->c:Lio/appmetrica/analytics/impl/g5;

    .line 3
    iget-object p0, p0, Lio/appmetrica/analytics/impl/g5;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 4
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b()Landroid/content/Context;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iget-object p0, p0, Lio/appmetrica/analytics/impl/qg;->a:Landroid/content/Context;

    return-object p0
.end method

.method public final b(Lio/appmetrica/analytics/impl/w4;)V
    .locals 0

    .line 2
    iget-object p0, p0, Lio/appmetrica/analytics/impl/qg;->c:Lio/appmetrica/analytics/impl/g5;

    .line 3
    iget-object p0, p0, Lio/appmetrica/analytics/impl/g5;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 4
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
