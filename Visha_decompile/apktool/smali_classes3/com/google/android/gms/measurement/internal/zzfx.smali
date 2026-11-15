.class final Lcom/google/android/gms/measurement/internal/zzfx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lzui;

.field final synthetic zzb:Lcom/google/android/gms/measurement/internal/e;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/e;Lzui;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfx;->zzb:Lcom/google/android/gms/measurement/internal/e;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzfx;->zza:Lzui;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfx;->zzb:Lcom/google/android/gms/measurement/internal/e;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfx;->zza:Lzui;

    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/e;->f(Lcom/google/android/gms/measurement/internal/e;Lzui;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfx;->zzb:Lcom/google/android/gms/measurement/internal/e;

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzfx;->zza:Lzui;

    iget-object p0, p0, Lzui;->g:Lcom/google/android/gms/internal/measurement/zzcl;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/measurement/internal/e;->m(Lcom/google/android/gms/internal/measurement/zzcl;)V

    return-void
.end method
