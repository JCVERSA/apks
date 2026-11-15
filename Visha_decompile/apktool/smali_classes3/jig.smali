.class public final Ljig;
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


# direct methods
.method public constructor <init>(Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljig;->a:Lqyi;

    iput-object p2, p0, Ljig;->b:Lqyi;

    iput-object p3, p0, Ljig;->c:Lqyi;

    iput-object p4, p0, Ljig;->d:Lqyi;

    iput-object p5, p0, Ljig;->e:Lqyi;

    iput-object p7, p0, Ljig;->f:Lqyi;

    iput-object p8, p0, Ljig;->g:Lqyi;

    iput-object p9, p0, Ljig;->h:Lqyi;

    iput-object p10, p0, Ljig;->i:Lqyi;

    iput-object p11, p0, Ljig;->j:Lqyi;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 13

    iget-object v0, p0, Ljig;->a:Lqyi;

    check-cast v0, Lskf;

    invoke-virtual {v0}, Lskf;->a()Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Ljig;->b:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/util/concurrent/Executor;

    iget-object v0, p0, Ljig;->c:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lfre;

    iget-object v0, p0, Ljig;->d:Lqyi;

    check-cast v0, Lklf;

    invoke-virtual {v0}, Lklf;->a()Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object v5

    iget-object v0, p0, Ljig;->e:Lqyi;

    check-cast v0, Lhnf;

    invoke-virtual {v0}, Lhnf;->a()Lcom/google/android/gms/ads/internal/zza;

    move-result-object v6

    invoke-static {}, Lsnf;->a()Lmjf;

    move-result-object v7

    iget-object v0, p0, Ljig;->f:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ldwg;

    iget-object v0, p0, Ljig;->g:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lwth;

    iget-object v0, p0, Ljig;->h:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lsmg;

    iget-object v0, p0, Ljig;->i:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/google/android/gms/internal/ads/zzebe;

    iget-object p0, p0, Ljig;->j:Lqyi;

    invoke-interface {p0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object p0

    move-object v12, p0

    check-cast v12, Linh;

    new-instance p0, Leig;

    move-object v1, p0

    invoke-direct/range {v1 .. v12}, Leig;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lfre;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/ads/internal/zza;Lmjf;Ldwg;Lwth;Lsmg;Lcom/google/android/gms/internal/ads/zzebe;Linh;)V

    return-object p0
.end method
