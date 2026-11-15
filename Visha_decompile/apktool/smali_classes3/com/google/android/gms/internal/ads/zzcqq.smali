.class public final synthetic Lcom/google/android/gms/internal/ads/zzcqq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lv7i;


# direct methods
.method public synthetic constructor <init>(Lv7i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcqq;->zza:Lv7i;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdvg;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzdvg;-><init>(I)V

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcqq;->zza:Lv7i;

    invoke-interface {p0, v0}, Lv7i;->zza(Ljava/lang/Throwable;)V

    return-void
.end method
