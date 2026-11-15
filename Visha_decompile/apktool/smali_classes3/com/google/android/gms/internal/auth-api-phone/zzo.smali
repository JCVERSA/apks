.class final Lcom/google/android/gms/internal/auth-api-phone/zzo;
.super Lcom/google/android/gms/common/api/internal/IStatusCallback$Stub;
.source "SourceFile"


# instance fields
.field final synthetic zza:Lzda;


# direct methods
.method public constructor <init>(Llij;Lzda;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/auth-api-phone/zzo;->zza:Lzda;

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/IStatusCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResult(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/internal/auth-api-phone/zzo;->zza:Lzda;

    invoke-static {p1}, Lud;->a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/ApiException;

    move-result-object p1

    invoke-virtual {p0, p1}, Lzda;->d(Ljava/lang/Exception;)Z

    return-void

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/auth-api-phone/zzo;->zza:Lzda;

    invoke-static {p1, p0}, Ljea;->a(Lcom/google/android/gms/common/api/Status;Lzda;)V

    return-void
.end method
