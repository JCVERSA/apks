.class public final Lkog;
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

.field public final g:Lqyi;

.field public final h:Lqyi;

.field public final i:Lqyi;


# direct methods
.method public constructor <init>(Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkog;->a:Lqyi;

    iput-object p2, p0, Lkog;->b:Lqyi;

    iput-object p3, p0, Lkog;->c:Lqyi;

    iput-object p5, p0, Lkog;->d:Lqyi;

    iput-object p6, p0, Lkog;->e:Lqyi;

    iput-object p7, p0, Lkog;->f:Lqyi;

    iput-object p8, p0, Lkog;->g:Lqyi;

    iput-object p9, p0, Lkog;->h:Lqyi;

    iput-object p10, p0, Lkog;->i:Lqyi;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 12

    iget-object v0, p0, Lkog;->a:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/util/concurrent/Executor;

    iget-object v0, p0, Lkog;->b:Lqyi;

    check-cast v0, Lskf;

    invoke-virtual {v0}, Lskf;->a()Landroid/content/Context;

    move-result-object v3

    iget-object v0, p0, Lkog;->c:Lqyi;

    check-cast v0, Ltkf;

    invoke-virtual {v0}, Ltkf;->a()Ljava/lang/ref/WeakReference;

    move-result-object v4

    invoke-static {}, Lfqh;->b()Lg8i;

    move-result-object v5

    iget-object v0, p0, Lkog;->d:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljkg;

    iget-object v0, p0, Lkog;->e:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v0, p0, Lkog;->f:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lbng;

    iget-object v0, p0, Lkog;->g:Lqyi;

    check-cast v0, Lklf;

    invoke-virtual {v0}, Lklf;->a()Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object v9

    iget-object v0, p0, Lkog;->h:Lqyi;

    check-cast v0, Lq7g;

    invoke-virtual {v0}, Lq7g;->a()Lp7g;

    move-result-object v10

    iget-object p0, p0, Lkog;->i:Lqyi;

    invoke-interface {p0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object p0

    move-object v11, p0

    check-cast v11, Lcom/google/android/gms/internal/ads/zzfgq;

    new-instance p0, Lcom/google/android/gms/internal/ads/t4;

    move-object v1, p0

    invoke-direct/range {v1 .. v11}, Lcom/google/android/gms/internal/ads/t4;-><init>(Ljava/util/concurrent/Executor;Landroid/content/Context;Ljava/lang/ref/WeakReference;Ljava/util/concurrent/Executor;Ljkg;Ljava/util/concurrent/ScheduledExecutorService;Lbng;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lp7g;Lcom/google/android/gms/internal/ads/zzfgq;)V

    return-object p0
.end method
