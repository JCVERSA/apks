.class final Lcom/google/android/gms/internal/auth/zzaf;
.super Lcom/google/android/gms/internal/auth/zzah;
.source "SourceFile"


# instance fields
.field final synthetic zza:Lnce;


# direct methods
.method public constructor <init>(Lnce;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/auth/zzah;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzc(Z)V
    .locals 0

    new-instance p0, Lyge;

    if-eqz p1, :cond_0

    sget-object p1, Lcom/google/android/gms/common/api/Status;->RESULT_SUCCESS:Lcom/google/android/gms/common/api/Status;

    goto :goto_0

    :cond_0
    invoke-static {}, Lcie;->a()Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    :goto_0
    invoke-direct {p0, p1}, Lyge;-><init>(Lcom/google/android/gms/common/api/Status;)V

    const/4 p0, 0x0

    throw p0
.end method
