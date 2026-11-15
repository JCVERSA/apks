.class public final Lcpg;
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


# direct methods
.method public constructor <init>(Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcpg;->a:Lqyi;

    iput-object p2, p0, Lcpg;->b:Lqyi;

    iput-object p3, p0, Lcpg;->c:Lqyi;

    iput-object p4, p0, Lcpg;->d:Lqyi;

    iput-object p5, p0, Lcpg;->e:Lqyi;

    iput-object p6, p0, Lcpg;->f:Lqyi;

    iput-object p7, p0, Lcpg;->g:Lqyi;

    iput-object p10, p0, Lcpg;->h:Lqyi;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 12

    iget-object v0, p0, Lcpg;->a:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljpg;

    iget-object v0, p0, Lcpg;->b:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/google/android/gms/internal/ads/w4;

    iget-object v0, p0, Lcpg;->c:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/google/android/gms/internal/ads/u4;

    iget-object v0, p0, Lcpg;->d:Lqyi;

    check-cast v0, Lskf;

    invoke-virtual {v0}, Lskf;->a()Landroid/content/Context;

    move-result-object v5

    iget-object v0, p0, Lcpg;->e:Lqyi;

    check-cast v0, Lklf;

    invoke-virtual {v0}, Lklf;->a()Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object v6

    iget-object v0, p0, Lcpg;->f:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/google/android/gms/internal/ads/v4;

    iget-object v0, p0, Lcpg;->g:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/google/android/gms/internal/ads/zzdva;

    new-instance v9, Lgpg;

    invoke-direct {v9}, Lgpg;-><init>()V

    new-instance v10, Lgpg;

    invoke-direct {v10}, Lgpg;-><init>()V

    iget-object p0, p0, Lcpg;->h:Lqyi;

    check-cast p0, Lxkf;

    invoke-virtual {p0}, Lxkf;->a()Ljava/lang/String;

    move-result-object v11

    new-instance p0, Lzog;

    move-object v1, p0

    invoke-direct/range {v1 .. v11}, Lzog;-><init>(Ljpg;Lcom/google/android/gms/internal/ads/w4;Lcom/google/android/gms/internal/ads/u4;Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/ads/v4;Lcom/google/android/gms/internal/ads/zzdva;Lgpg;Lgpg;Ljava/lang/String;)V

    return-object p0
.end method
