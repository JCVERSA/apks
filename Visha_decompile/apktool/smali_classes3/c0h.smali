.class public final Lc0h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfyi;


# instance fields
.field public final a:Lqyi;

.field public final b:Lqyi;

.field public final c:Lqyi;

.field public final d:Lqyi;


# direct methods
.method public constructor <init>(Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lc0h;->a:Lqyi;

    iput-object p3, p0, Lc0h;->b:Lqyi;

    iput-object p4, p0, Lc0h;->c:Lqyi;

    iput-object p5, p0, Lc0h;->d:Lqyi;

    return-void
.end method


# virtual methods
.method public final a()La0h;
    .locals 6

    invoke-static {}, Lfqh;->b()Lg8i;

    move-result-object v1

    iget-object v0, p0, Lc0h;->a:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v0, p0, Lc0h;->b:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Leuf;

    iget-object v0, p0, Lc0h;->c:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lq0h;

    iget-object p0, p0, Lc0h;->d:Lqyi;

    invoke-interface {p0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object p0

    move-object v5, p0

    check-cast v5, Lsth;

    new-instance p0, La0h;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, La0h;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Leuf;Lq0h;Lsth;)V

    return-object p0
.end method

.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lc0h;->a()La0h;

    move-result-object p0

    return-object p0
.end method
