.class public final synthetic Lcom/google/android/gms/internal/ads/zzcdp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lchf;

.field public final synthetic zzb:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lchf;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcdp;->zza:Lchf;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcdp;->zzb:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    sget v0, Lrif;->x:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdp;->zza:Lchf;

    const-string v1, "onGcacheInfoEvent"

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcdp;->zzb:Ljava/util/Map;

    invoke-interface {v0, v1, p0}, Lp5f;->zzd(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
