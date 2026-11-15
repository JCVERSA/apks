.class public final synthetic Lcom/google/android/gms/internal/ads/zzesw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lgeh;

.field public final synthetic zzb:J

.field public final synthetic zzc:Leeh;

.field public final synthetic zzd:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Lgeh;JLeeh;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzesw;->zza:Lgeh;

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzesw;->zzb:J

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzesw;->zzc:Leeh;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzesw;->zzd:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzesw;->zza:Lgeh;

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzesw;->zzb:J

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzesw;->zzc:Leeh;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzesw;->zzd:Landroid/os/Bundle;

    invoke-static {v0, v1, v2, v3, p0}, Lgeh;->b(Lgeh;JLeeh;Landroid/os/Bundle;)V

    return-void
.end method
