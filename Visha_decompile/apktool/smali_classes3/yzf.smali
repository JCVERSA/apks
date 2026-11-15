.class public final Lyzf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfyi;


# instance fields
.field public final a:Lqyi;

.field public final b:Lqyi;

.field public final c:Lqyi;


# direct methods
.method public constructor <init>(Lqyi;Lqyi;Lqyi;Lqyi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyzf;->a:Lqyi;

    iput-object p2, p0, Lyzf;->b:Lqyi;

    iput-object p4, p0, Lyzf;->c:Lqyi;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lyzf;->a:Lqyi;

    check-cast v0, Lxzf;

    invoke-virtual {v0}, Lxzf;->a()Lvzf;

    move-result-object v0

    iget-object v1, p0, Lyzf;->b:Lqyi;

    check-cast v1, Ltyi;

    invoke-virtual {v1}, Ltyi;->b()Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-static {}, Lfqh;->b()Lg8i;

    move-result-object v2

    iget-object p0, p0, Lyzf;->c:Lqyi;

    invoke-interface {p0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v3, Lwzf;

    invoke-direct {v3, v0, v1, v2, p0}, Lwzf;-><init>(Lvzf;Ljava/util/Set;Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;)V

    return-object v3
.end method
