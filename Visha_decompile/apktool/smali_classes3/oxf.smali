.class public final Loxf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp2g;
.implements Lf9g;


# instance fields
.field public final b:Landroid/content/Context;

.field public final c:Lenh;

.field public final d:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field public final e:Lcom/google/android/gms/ads/internal/util/zzg;

.field public final f:Lcom/google/android/gms/internal/ads/t4;

.field public final g:Lcom/google/android/gms/internal/ads/zzfgq;

.field public final h:Lzog;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lenh;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/ads/internal/util/zzg;Lcom/google/android/gms/internal/ads/t4;Lcom/google/android/gms/internal/ads/zzfgq;Lzog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Loxf;->b:Landroid/content/Context;

    iput-object p2, p0, Loxf;->c:Lenh;

    iput-object p3, p0, Loxf;->d:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iput-object p4, p0, Loxf;->e:Lcom/google/android/gms/ads/internal/util/zzg;

    iput-object p5, p0, Loxf;->f:Lcom/google/android/gms/internal/ads/t4;

    iput-object p6, p0, Loxf;->g:Lcom/google/android/gms/internal/ads/zzfgq;

    iput-object p7, p0, Loxf;->h:Lzog;

    return-void
.end method

.method private final a()V
    .locals 8

    sget-object v0, Lcye;->i4:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Loxf;->e:Lcom/google/android/gms/ads/internal/util/zzg;

    iget-object v2, p0, Loxf;->b:Landroid/content/Context;

    iget-object v3, p0, Loxf;->d:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v1, p0, Loxf;->c:Lenh;

    iget-object v6, p0, Loxf;->g:Lcom/google/android/gms/internal/ads/zzfgq;

    iget-object v4, p0, Loxf;->h:Lzog;

    iget-object v5, v1, Lenh;->f:Ljava/lang/String;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/util/zzg;->zzg()Lief;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zza()Lcom/google/android/gms/ads/internal/zzf;

    move-result-object v1

    invoke-virtual {v4}, Lzog;->r()Z

    move-result v7

    move-object v4, v5

    move-object v5, v0

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/ads/internal/zzf;->zze(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/lang/String;Lief;Lcom/google/android/gms/internal/ads/zzfgq;Z)V

    :cond_0
    iget-object p0, p0, Loxf;->f:Lcom/google/android/gms/internal/ads/t4;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/t4;->r()V

    return-void
.end method


# virtual methods
.method public final g(Lcom/google/android/gms/internal/ads/zzbuy;)V
    .locals 0

    invoke-direct {p0}, Loxf;->a()V

    return-void
.end method

.method public final w(Lvmh;)V
    .locals 0

    return-void
.end method

.method public final zze(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbk;)V
    .locals 1

    sget-object p1, Lcye;->j4:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v0

    invoke-virtual {v0, p1}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Loxf;->a()V

    :cond_0
    return-void
.end method

.method public final zzf(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
