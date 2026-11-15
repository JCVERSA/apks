.class public final synthetic Lcom/google/android/gms/internal/ads/zzvg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lqfg;

.field public final synthetic zzb:Lsnj;


# direct methods
.method public synthetic constructor <init>(Lqfg;Lsnj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzvg;->zza:Lqfg;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzvg;->zzb:Lsnj;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvg;->zza:Lqfg;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzvg;->zzb:Lsnj;

    invoke-interface {v0, p0}, Lqfg;->zza(Ljava/lang/Object;)V

    return-void
.end method
