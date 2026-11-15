.class public final Lwjg;
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

    iput-object p2, p0, Lwjg;->a:Lqyi;

    iput-object p3, p0, Lwjg;->b:Lqyi;

    iput-object p4, p0, Lwjg;->c:Lqyi;

    iput-object p5, p0, Lwjg;->d:Lqyi;

    iput-object p6, p0, Lwjg;->e:Lqyi;

    iput-object p7, p0, Lwjg;->f:Lqyi;

    iput-object p8, p0, Lwjg;->g:Lqyi;

    iput-object p9, p0, Lwjg;->h:Lqyi;

    iput-object p10, p0, Lwjg;->i:Lqyi;

    iput-object p11, p0, Lwjg;->j:Lqyi;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 12

    invoke-static {}, Lsnf;->a()Lmjf;

    move-result-object v1

    iget-object v0, p0, Lwjg;->a:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/content/Context;

    iget-object v0, p0, Lwjg;->b:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lfre;

    iget-object v0, p0, Lwjg;->c:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lbze;

    iget-object v0, p0, Lwjg;->d:Lqyi;

    check-cast v0, Lklf;

    invoke-virtual {v0}, Lklf;->a()Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object v5

    iget-object v0, p0, Lwjg;->e:Lqyi;

    check-cast v0, Lhnf;

    invoke-virtual {v0}, Lhnf;->a()Lcom/google/android/gms/ads/internal/zza;

    move-result-object v6

    iget-object v0, p0, Lwjg;->f:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/google/android/gms/internal/ads/o0;

    iget-object v0, p0, Lwjg;->g:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/google/android/gms/internal/ads/i4;

    iget-object v0, p0, Lwjg;->h:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/google/android/gms/internal/ads/zzebe;

    iget-object v0, p0, Lwjg;->i:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Linh;

    iget-object p0, p0, Lwjg;->j:Lqyi;

    invoke-interface {p0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object p0

    move-object v11, p0

    check-cast v11, Lsmg;

    new-instance p0, Lujg;

    move-object v0, p0

    invoke-direct/range {v0 .. v11}, Lujg;-><init>(Lmjf;Landroid/content/Context;Lfre;Lbze;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/ads/internal/zza;Lcom/google/android/gms/internal/ads/o0;Lcom/google/android/gms/internal/ads/i4;Lcom/google/android/gms/internal/ads/zzebe;Linh;Lsmg;)V

    return-object p0
.end method
