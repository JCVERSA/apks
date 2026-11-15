.class public final synthetic Lcom/google/android/gms/internal/ads/zzedd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lhyg;

.field public final synthetic zzb:Lejf;


# direct methods
.method public synthetic constructor <init>(Lhyg;Lejf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzedd;->zza:Lhyg;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzedd;->zzb:Lejf;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzedd;->zza:Lhyg;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzedd;->zzb:Lejf;

    invoke-static {v0, p0}, Lhyg;->d(Lhyg;Lejf;)V

    return-void
.end method
