.class public final Lz5e;
.super Liwe;
.source "SourceFile"


# instance fields
.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lcom/google/android/gms/internal/ads/zzboy;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/client/zzaz;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzboy;)V
    .locals 0

    iput-object p2, p0, Lz5e;->b:Landroid/content/Context;

    iput-object p3, p0, Lz5e;->c:Ljava/lang/String;

    iput-object p4, p0, Lz5e;->d:Lcom/google/android/gms/internal/ads/zzboy;

    invoke-direct {p0}, Liwe;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lz5e;->b:Landroid/content/Context;

    const-string v0, "rewarded"

    invoke-static {p0, v0}, Lcom/google/android/gms/ads/internal/client/zzaz;->j(Landroid/content/Context;Ljava/lang/String;)V

    new-instance p0, Lcom/google/android/gms/ads/internal/client/zzfm;

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/client/zzfm;-><init>()V

    return-object p0
.end method

.method public final bridge synthetic b(Lcom/google/android/gms/ads/internal/client/zzco;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lz5e;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    iget-object v1, p0, Lz5e;->c:Ljava/lang/String;

    iget-object p0, p0, Lz5e;->d:Lcom/google/android/gms/internal/ads/zzboy;

    const v2, 0xefc3650

    invoke-interface {p1, v0, v1, p0, v2}, Lcom/google/android/gms/ads/internal/client/zzco;->zzp(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzboy;I)Lcom/google/android/gms/internal/ads/zzbwd;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic c()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lz5e;->b:Landroid/content/Context;

    iget-object v1, p0, Lz5e;->c:Ljava/lang/String;

    iget-object p0, p0, Lz5e;->d:Lcom/google/android/gms/internal/ads/zzboy;

    invoke-static {v0, v1, p0}, Lncf;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzboy;)Lcom/google/android/gms/internal/ads/zzbwd;

    move-result-object p0

    return-object p0
.end method
