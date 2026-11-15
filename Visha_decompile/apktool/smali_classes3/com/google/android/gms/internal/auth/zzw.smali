.class final Lcom/google/android/gms/internal/auth/zzw;
.super Lcom/google/android/gms/internal/auth/zzn;
.source "SourceFile"


# instance fields
.field final synthetic zza:Lzda;


# direct methods
.method public constructor <init>(Lx6e;Lzda;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/auth/zzw;->zza:Lzda;

    invoke-direct {p0}, Lcom/google/android/gms/internal/auth/zzn;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/common/api/Status;Landroid/os/Bundle;)V
    .locals 0
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/google/android/gms/internal/auth/zzw;->zza:Lzda;

    invoke-static {p1, p2, p0}, Lx6e;->v(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;Lzda;)V

    return-void
.end method
