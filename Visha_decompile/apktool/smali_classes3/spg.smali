.class public final Lspg;
.super Lcom/google/android/gms/ads/AdListener;
.source "SourceFile"


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/google/android/gms/internal/ads/zzdva;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdva;Ljava/lang/String;)V
    .locals 0

    iput-object p2, p0, Lspg;->b:Ljava/lang/String;

    iput-object p1, p0, Lspg;->c:Lcom/google/android/gms/internal/ads/zzdva;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V
    .locals 1

    iget-object v0, p0, Lspg;->c:Lcom/google/android/gms/internal/ads/zzdva;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdva;->zzc(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lspg;->b:Ljava/lang/String;

    invoke-static {v0, p1, p0}, Lcom/google/android/gms/internal/ads/zzdva;->zzd(Lcom/google/android/gms/internal/ads/zzdva;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
