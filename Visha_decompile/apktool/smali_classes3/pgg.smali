.class public final Lpgg;
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

.field public final j:Lqyi;

.field public final k:Lqyi;

.field public final l:Lqyi;

.field public final m:Lqyi;

.field public final n:Lqyi;

.field public final o:Lqyi;

.field public final p:Lqyi;


# direct methods
.method public constructor <init>(Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;)V
    .locals 2

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lpgg;->a:Lqyi;

    move-object v1, p2

    iput-object v1, v0, Lpgg;->b:Lqyi;

    move-object v1, p3

    iput-object v1, v0, Lpgg;->c:Lqyi;

    move-object v1, p4

    iput-object v1, v0, Lpgg;->d:Lqyi;

    move-object v1, p5

    iput-object v1, v0, Lpgg;->e:Lqyi;

    move-object v1, p6

    iput-object v1, v0, Lpgg;->f:Lqyi;

    move-object v1, p8

    iput-object v1, v0, Lpgg;->g:Lqyi;

    move-object v1, p9

    iput-object v1, v0, Lpgg;->h:Lqyi;

    move-object v1, p10

    iput-object v1, v0, Lpgg;->i:Lqyi;

    move-object v1, p11

    iput-object v1, v0, Lpgg;->j:Lqyi;

    move-object v1, p12

    iput-object v1, v0, Lpgg;->k:Lqyi;

    move-object v1, p13

    iput-object v1, v0, Lpgg;->l:Lqyi;

    move-object/from16 v1, p14

    iput-object v1, v0, Lpgg;->m:Lqyi;

    move-object/from16 v1, p15

    iput-object v1, v0, Lpgg;->n:Lqyi;

    move-object/from16 v1, p16

    iput-object v1, v0, Lpgg;->o:Lqyi;

    move-object/from16 v1, p17

    iput-object v1, v0, Lpgg;->p:Lqyi;

    return-void
.end method


# virtual methods
.method public final a()Logg;
    .locals 20

    move-object/from16 v0, p0

    iget-object v1, v0, Lpgg;->a:Lqyi;

    invoke-interface {v1}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/content/Context;

    iget-object v1, v0, Lpgg;->b:Lqyi;

    invoke-interface {v1}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lvfg;

    iget-object v1, v0, Lpgg;->c:Lqyi;

    invoke-interface {v1}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lfre;

    iget-object v1, v0, Lpgg;->d:Lqyi;

    check-cast v1, Lklf;

    invoke-virtual {v1}, Lklf;->a()Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object v6

    iget-object v1, v0, Lpgg;->e:Lqyi;

    check-cast v1, Lhnf;

    invoke-virtual {v1}, Lhnf;->a()Lcom/google/android/gms/ads/internal/zza;

    move-result-object v7

    iget-object v1, v0, Lpgg;->f:Lqyi;

    invoke-interface {v1}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/google/android/gms/internal/ads/o0;

    invoke-static {}, Lfqh;->b()Lg8i;

    move-result-object v9

    iget-object v1, v0, Lpgg;->g:Lqyi;

    check-cast v1, Lzyf;

    invoke-virtual {v1}, Lzyf;->a()Lenh;

    move-result-object v10

    iget-object v1, v0, Lpgg;->h:Lqyi;

    invoke-interface {v1}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Ljhg;

    iget-object v1, v0, Lpgg;->i:Lqyi;

    invoke-interface {v1}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lujg;

    iget-object v1, v0, Lpgg;->j:Lqyi;

    invoke-interface {v1}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, v0, Lpgg;->k:Lqyi;

    invoke-interface {v1}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Lsmg;

    iget-object v1, v0, Lpgg;->l:Lqyi;

    invoke-interface {v1}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Lwth;

    iget-object v1, v0, Lpgg;->m:Lqyi;

    invoke-interface {v1}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Ldwg;

    iget-object v1, v0, Lpgg;->n:Lqyi;

    invoke-interface {v1}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v17, v1

    check-cast v17, Lnig;

    iget-object v1, v0, Lpgg;->o:Lqyi;

    invoke-interface {v1}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v18, v1

    check-cast v18, Lcom/google/android/gms/internal/ads/zzebe;

    iget-object v0, v0, Lpgg;->p:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v19, v0

    check-cast v19, Linh;

    new-instance v0, Logg;

    move-object v2, v0

    invoke-direct/range {v2 .. v19}, Logg;-><init>(Landroid/content/Context;Lvfg;Lfre;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/ads/internal/zza;Lcom/google/android/gms/internal/ads/o0;Ljava/util/concurrent/Executor;Lenh;Ljhg;Lujg;Ljava/util/concurrent/ScheduledExecutorService;Lsmg;Lwth;Ldwg;Lnig;Lcom/google/android/gms/internal/ads/zzebe;Linh;)V

    return-object v0
.end method

.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lpgg;->a()Logg;

    move-result-object p0

    return-object p0
.end method
