.class public final synthetic Lcom/google/android/gms/internal/ads/zzde;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Ltag;

.field public final synthetic zzb:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ltag;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzde;->zza:Ltag;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzde;->zzb:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzde;->zza:Ltag;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzde;->zzb:Ljava/lang/Object;

    invoke-static {v0, p0}, Ltag;->a(Ltag;Ljava/lang/Object;)V

    return-void
.end method
