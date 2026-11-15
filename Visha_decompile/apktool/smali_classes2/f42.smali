.class public final Lf42;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lal3;


# instance fields
.field public final a:Loj8;

.field public final b:Loj8;

.field public final c:Loj8;

.field public final d:Loj8;

.field public final e:Loj8;


# direct methods
.method public constructor <init>(Loj8;Loj8;Loj8;Loj8;Loj8;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf42;->a:Loj8;

    iput-object p2, p0, Lf42;->b:Loj8;

    iput-object p3, p0, Lf42;->c:Loj8;

    iput-object p4, p0, Lf42;->d:Loj8;

    iput-object p5, p0, Lf42;->e:Loj8;

    return-void
.end method

.method public static a(Loj8;Loj8;Loj8;Loj8;Loj8;)Lf42;
    .locals 7

    new-instance v6, Lf42;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lf42;-><init>(Loj8;Loj8;Loj8;Loj8;Loj8;)V

    return-object v6
.end method

.method public static c(Ljava/util/concurrent/Executor;Lb50;Lfpc;Lge3;Le8a;)Le42;
    .locals 7

    new-instance v6, Le42;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Le42;-><init>(Ljava/util/concurrent/Executor;Lb50;Lfpc;Lge3;Le8a;)V

    return-object v6
.end method


# virtual methods
.method public b()Le42;
    .locals 4

    iget-object v0, p0, Lf42;->a:Loj8;

    invoke-interface {v0}, Loj8;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lf42;->b:Loj8;

    invoke-interface {v1}, Loj8;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb50;

    iget-object v2, p0, Lf42;->c:Loj8;

    invoke-interface {v2}, Loj8;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfpc;

    iget-object v3, p0, Lf42;->d:Loj8;

    invoke-interface {v3}, Loj8;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lge3;

    iget-object p0, p0, Lf42;->e:Loj8;

    invoke-interface {p0}, Loj8;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Le8a;

    invoke-static {v0, v1, v2, v3, p0}, Lf42;->c(Ljava/util/concurrent/Executor;Lb50;Lfpc;Lge3;Le8a;)Le42;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lf42;->b()Le42;

    move-result-object p0

    return-object p0
.end method
