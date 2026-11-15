.class public final synthetic Lcom/google/android/gms/internal/ads/zzffh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcrh;

.field public final synthetic zzb:Lrqh;


# direct methods
.method public synthetic constructor <init>(Lcrh;Lrqh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzffh;->zza:Lcrh;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzffh;->zzb:Lrqh;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzffh;->zza:Lcrh;

    iget-object v0, v0, Lcrh;->f:Lerh;

    invoke-static {v0}, Lerh;->c(Lerh;)Lfrh;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzffh;->zzb:Lrqh;

    invoke-interface {v0, p0}, Lfrh;->o(Lrqh;)V

    return-void
.end method
