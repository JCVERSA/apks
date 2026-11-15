.class public final synthetic Lcom/google/android/gms/internal/ads/zzdjp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lejf;


# direct methods
.method public synthetic constructor <init>(Lejf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdjp;->zza:Lejf;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdjp;->zza:Lejf;

    const-string v1, "onSdkImpression"

    invoke-interface {p0, v1, v0}, Lp5f;->zzd(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
