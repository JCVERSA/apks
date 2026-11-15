.class public final synthetic Lcom/google/android/gms/internal/ads/zzpn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lchj;

.field public final synthetic zzb:J


# direct methods
.method public synthetic constructor <init>(Lchj;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzpn;->zza:Lchj;

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzpn;->zzb:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpn;->zza:Lchj;

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzpn;->zzb:J

    invoke-static {v0, v1, v2}, Lchj;->c(Lchj;J)V

    return-void
.end method
