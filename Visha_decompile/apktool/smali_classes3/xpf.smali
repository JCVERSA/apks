.class public final Lxpf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfyi;


# instance fields
.field public final a:Lqyi;

.field public final b:Lqyi;

.field public final c:Lqyi;

.field public final d:Lqyi;

.field public final e:Lqyi;

.field public final f:Lqyi;


# direct methods
.method public constructor <init>(Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxpf;->a:Lqyi;

    iput-object p2, p0, Lxpf;->b:Lqyi;

    iput-object p3, p0, Lxpf;->c:Lqyi;

    iput-object p4, p0, Lxpf;->d:Lqyi;

    iput-object p6, p0, Lxpf;->e:Lqyi;

    iput-object p7, p0, Lxpf;->f:Lqyi;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 9

    iget-object v0, p0, Lxpf;->a:Lqyi;

    check-cast v0, Lskf;

    invoke-virtual {v0}, Lskf;->a()Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Lxpf;->b:Lqyi;

    check-cast v0, Lpkf;

    invoke-virtual {v0}, Lpkf;->a()Lcom/google/android/gms/ads/internal/util/zzg;

    move-result-object v3

    iget-object v0, p0, Lxpf;->c:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lgxg;

    iget-object v0, p0, Lxpf;->d:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lyjg;

    invoke-static {}, Lfqh;->b()Lg8i;

    move-result-object v6

    iget-object v0, p0, Lxpf;->e:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lg8i;

    iget-object p0, p0, Lxpf;->f:Lqyi;

    invoke-interface {p0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object p0

    move-object v8, p0

    check-cast v8, Ljava/util/concurrent/ScheduledExecutorService;

    new-instance p0, Lwpf;

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lwpf;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/zzg;Lgxg;Lyjg;Lg8i;Lg8i;Ljava/util/concurrent/ScheduledExecutorService;)V

    return-object p0
.end method
