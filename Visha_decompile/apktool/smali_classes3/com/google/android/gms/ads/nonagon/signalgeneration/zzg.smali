.class public final Lcom/google/android/gms/ads/nonagon/signalgeneration/zzg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfyi;


# instance fields
.field public final a:Lqyi;

.field public final b:Lqyi;


# direct methods
.method public constructor <init>(Lqyi;Lqyi;Lqyi;Lqyi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzg;->a:Lqyi;

    iput-object p4, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzg;->b:Lqyi;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzg;->a:Lqyi;

    check-cast v0, Lskf;

    invoke-virtual {v0}, Lskf;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lunf;->a()Lixe;

    move-result-object v1

    invoke-static {}, Lf9h;->b()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    iget-object p0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzg;->b:Lqyi;

    check-cast p0, Lklf;

    invoke-virtual {p0}, Lklf;->a()Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object p0

    new-instance v3, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzf;

    invoke-direct {v3, v0, v1, v2, p0}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzf;-><init>(Landroid/content/Context;Lixe;Ljava/util/List;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)V

    return-object v3
.end method
