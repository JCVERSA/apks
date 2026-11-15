.class final Lcom/google/android/gms/internal/auth-api-phone/zzq;
.super Lcom/google/android/gms/internal/auth-api-phone/zzf;
.source "SourceFile"


# instance fields
.field final synthetic zza:Lzda;


# direct methods
.method public constructor <init>(Llij;Lzda;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/auth-api-phone/zzq;->zza:Lzda;

    invoke-direct {p0}, Lcom/google/android/gms/internal/auth-api-phone/zzf;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/common/api/Status;Z)V
    .locals 0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iget-object p0, p0, Lcom/google/android/gms/internal/auth-api-phone/zzq;->zza:Lzda;

    invoke-static {p1, p2, p0}, Ljea;->b(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;Lzda;)V

    return-void
.end method
