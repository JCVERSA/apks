.class public final Leie;
.super Liwe;
.source "SourceFile"


# instance fields
.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Lcom/google/android/gms/ads/internal/client/zzr;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Lcom/google/android/gms/internal/ads/zzboy;

.field public final synthetic f:Lcom/google/android/gms/ads/internal/client/zzaz;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/client/zzaz;Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/zzr;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzboy;)V
    .locals 0

    iput-object p2, p0, Leie;->b:Landroid/content/Context;

    iput-object p3, p0, Leie;->c:Lcom/google/android/gms/ads/internal/client/zzr;

    iput-object p4, p0, Leie;->d:Ljava/lang/String;

    iput-object p5, p0, Leie;->e:Lcom/google/android/gms/internal/ads/zzboy;

    iput-object p1, p0, Leie;->f:Lcom/google/android/gms/ads/internal/client/zzaz;

    invoke-direct {p0}, Liwe;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Leie;->b:Landroid/content/Context;

    const-string v0, "banner"

    invoke-static {p0, v0}, Lcom/google/android/gms/ads/internal/client/zzaz;->j(Landroid/content/Context;Ljava/lang/String;)V

    new-instance p0, Lcom/google/android/gms/ads/internal/client/zzfg;

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/client/zzfg;-><init>()V

    return-object p0
.end method

.method public final bridge synthetic b(Lcom/google/android/gms/ads/internal/client/zzco;)Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Leie;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    iget-object v3, p0, Leie;->c:Lcom/google/android/gms/ads/internal/client/zzr;

    iget-object v4, p0, Leie;->d:Ljava/lang/String;

    iget-object v5, p0, Leie;->e:Lcom/google/android/gms/internal/ads/zzboy;

    const v6, 0xefc3650

    move-object v1, p1

    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/ads/internal/client/zzco;->zzd(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/ads/internal/client/zzr;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzboy;I)Lcom/google/android/gms/ads/internal/client/zzbx;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic c()Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Leie;->f:Lcom/google/android/gms/ads/internal/client/zzaz;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/client/zzaz;->b(Lcom/google/android/gms/ads/internal/client/zzaz;)Lcom/google/android/gms/ads/internal/client/zzk;

    move-result-object v1

    iget-object v2, p0, Leie;->b:Landroid/content/Context;

    iget-object v3, p0, Leie;->c:Lcom/google/android/gms/ads/internal/client/zzr;

    iget-object v4, p0, Leie;->d:Ljava/lang/String;

    iget-object v5, p0, Leie;->e:Lcom/google/android/gms/internal/ads/zzboy;

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/ads/internal/client/zzk;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/zzr;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzboy;I)Lcom/google/android/gms/ads/internal/client/zzbx;

    move-result-object p0

    return-object p0
.end method
