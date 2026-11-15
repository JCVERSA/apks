.class final Lcom/google/android/gms/measurement/internal/zzao;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Luoi;

.field final synthetic zzb:Lcom/google/android/gms/measurement/internal/a;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/a;Luoi;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzao;->zzb:Lcom/google/android/gms/measurement/internal/a;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzao;->zza:Luoi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzao;->zza:Luoi;

    invoke-interface {v0}, Luoi;->d()Lb7e;

    invoke-static {}, Lb7e;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzao;->zza:Luoi;

    invoke-interface {v0}, Luoi;->a()Lcom/google/android/gms/measurement/internal/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/measurement/internal/d;->w(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzao;->zzb:Lcom/google/android/gms/measurement/internal/a;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/a;->e()Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzao;->zzb:Lcom/google/android/gms/measurement/internal/a;

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/a;->a(Lcom/google/android/gms/measurement/internal/a;J)V

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzao;->zzb:Lcom/google/android/gms/measurement/internal/a;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/a;->c()V

    :cond_1
    return-void
.end method
