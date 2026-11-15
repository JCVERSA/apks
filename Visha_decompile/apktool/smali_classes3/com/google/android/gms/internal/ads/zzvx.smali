.class public final synthetic Lcom/google/android/gms/internal/ads/zzvx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lkoj;

.field public final synthetic zzb:Lkae;


# direct methods
.method public synthetic constructor <init>(Lkoj;Lkae;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzvx;->zza:Lkoj;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzvx;->zzb:Lkae;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvx;->zza:Lkoj;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzvx;->zzb:Lkae;

    invoke-static {v0, p0}, Lkoj;->q(Lkoj;Lkae;)V

    return-void
.end method
