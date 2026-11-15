.class public final Lopg;
.super Lcom/google/android/gms/ads/AdListener;
.source "SourceFile"


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/google/android/gms/ads/AdView;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Lcom/google/android/gms/internal/ads/zzdva;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdva;Ljava/lang/String;Lcom/google/android/gms/ads/AdView;Ljava/lang/String;)V
    .locals 0

    iput-object p2, p0, Lopg;->b:Ljava/lang/String;

    iput-object p3, p0, Lopg;->c:Lcom/google/android/gms/ads/AdView;

    iput-object p4, p0, Lopg;->d:Ljava/lang/String;

    iput-object p1, p0, Lopg;->e:Lcom/google/android/gms/internal/ads/zzdva;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V
    .locals 1

    iget-object v0, p0, Lopg;->e:Lcom/google/android/gms/internal/ads/zzdva;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdva;->zzc(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lopg;->d:Ljava/lang/String;

    invoke-static {v0, p1, p0}, Lcom/google/android/gms/internal/ads/zzdva;->zzd(Lcom/google/android/gms/internal/ads/zzdva;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onAdLoaded()V
    .locals 3

    iget-object v0, p0, Lopg;->e:Lcom/google/android/gms/internal/ads/zzdva;

    iget-object v1, p0, Lopg;->b:Ljava/lang/String;

    iget-object v2, p0, Lopg;->c:Lcom/google/android/gms/ads/AdView;

    iget-object p0, p0, Lopg;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p0}, Lcom/google/android/gms/internal/ads/zzdva;->zzg(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
