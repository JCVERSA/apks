.class public final synthetic Lcom/google/android/gms/internal/consent_sdk/zzp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lef1;

.field public final synthetic zzb:Lcom/google/android/gms/internal/consent_sdk/zzg;


# direct methods
.method public synthetic constructor <init>(Lef1;Lcom/google/android/gms/internal/consent_sdk/zzg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/consent_sdk/zzp;->zzb:Lcom/google/android/gms/internal/consent_sdk/zzg;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/consent_sdk/zzp;->zzb:Lcom/google/android/gms/internal/consent_sdk/zzg;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/consent_sdk/zzg;->zza()Ly34;

    const/4 p0, 0x0

    throw p0
.end method
