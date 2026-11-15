.class public final Lcom/google/android/gms/internal/ads/o4;
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


# direct methods
.method public constructor <init>(Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/o4;->a:Lqyi;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/o4;->b:Lqyi;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/o4;->c:Lqyi;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/o4;->d:Lqyi;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/o4;->e:Lqyi;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/o4;->a:Lqyi;

    check-cast v0, Lskf;

    invoke-virtual {v0}, Lskf;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/o4;->b:Lqyi;

    check-cast v1, Lzqg;

    invoke-virtual {v1}, Lzqg;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/o4;->c:Lqyi;

    check-cast v2, Lklf;

    invoke-virtual {v2}, Lklf;->a()Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/o4;->d:Lqyi;

    invoke-interface {v3}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzbbn$zza$zza;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/o4;->e:Lqyi;

    invoke-interface {p0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    new-instance v4, Lcom/google/android/gms/internal/ads/o0;

    new-instance v5, Lexe;

    invoke-direct {v5, v0}, Lexe;-><init>(Landroid/content/Context;)V

    invoke-direct {v4, v5}, Lcom/google/android/gms/internal/ads/o0;-><init>(Lexe;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/o1;->h0()Lcom/google/android/gms/internal/ads/n1;

    move-result-object v0

    iget v5, v2, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->buddyApkVersion:I

    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/n1;->v(I)Lcom/google/android/gms/internal/ads/n1;

    iget v5, v2, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->clientJarVersion:I

    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/n1;->x(I)Lcom/google/android/gms/internal/ads/n1;

    const/4 v5, 0x1

    iget-boolean v2, v2, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->isClientJar:Z

    if-eq v5, v2, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/n1;->w(I)Lcom/google/android/gms/internal/ads/n1;

    invoke-virtual {v0}, Llsi;->q()Lcom/google/android/gms/internal/ads/ia;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/o1;

    new-instance v2, Lqkg;

    invoke-direct {v2, v3, v1, v0, p0}, Lqkg;-><init>(Lcom/google/android/gms/internal/ads/zzbbn$zza$zza;Ljava/lang/String;Lcom/google/android/gms/internal/ads/o1;Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/ads/o0;->b(Lcom/google/android/gms/internal/ads/n0;)V

    return-object v4
.end method
