.class final Lcom/google/android/gms/internal/auth/zzx;
.super Lcom/google/android/gms/common/api/internal/IStatusCallback$Stub;
.source "SourceFile"


# instance fields
.field final synthetic zza:Lzda;


# direct methods
.method public constructor <init>(Lx6e;Lzda;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/auth/zzx;->zza:Lzda;

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/IStatusCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResult(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/google/android/gms/internal/auth/zzx;->zza:Lzda;

    invoke-static {p1, v0, p0}, Lx6e;->v(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;Lzda;)V

    return-void
.end method
