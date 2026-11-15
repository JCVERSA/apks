.class final Lcom/google/android/gms/internal/play_billing/zzcu$zzb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field final zza:Lcom/google/android/gms/internal/play_billing/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/play_billing/g;"
        }
    .end annotation
.end field

.field final zzb:Lofg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lofg;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/play_billing/g;Lofg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzcu$zzb;->zza:Lcom/google/android/gms/internal/play_billing/g;

    iput-object p2, p0, Lcom/google/android/gms/internal/play_billing/zzcu$zzb;->zzb:Lofg;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzcu$zzb;->zza:Lcom/google/android/gms/internal/play_billing/g;

    iget-object v0, v0, Lcom/google/android/gms/internal/play_billing/m;->b:Ljava/lang/Object;

    if-eq v0, p0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzcu$zzb;->zzb:Lofg;

    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/zzcu$zzb;->zza:Lcom/google/android/gms/internal/play_billing/g;

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/g;->k(Lofg;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, p0, v0}, Lcom/google/android/gms/internal/play_billing/m;->j(Lcom/google/android/gms/internal/play_billing/m;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/google/android/gms/internal/play_billing/zzcu$zzb;->zza:Lcom/google/android/gms/internal/play_billing/g;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/play_billing/g;->n(Lcom/google/android/gms/internal/play_billing/g;Z)V

    :cond_1
    :goto_0
    return-void
.end method
