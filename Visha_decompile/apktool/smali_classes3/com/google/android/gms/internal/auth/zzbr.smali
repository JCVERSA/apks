.class final Lcom/google/android/gms/internal/auth/zzbr;
.super Lcom/google/android/gms/internal/auth/zzbd;
.source "SourceFile"


# instance fields
.field final synthetic zza:Lu9f;


# direct methods
.method public constructor <init>(Lu9f;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/auth/zzbd;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzc(Ljava/lang/String;)V
    .locals 1

    const/4 p0, 0x0

    if-eqz p1, :cond_0

    new-instance v0, Lpbf;

    invoke-direct {v0, p1}, Lpbf;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 v0, 0xbbe

    invoke-direct {p1, v0}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    new-instance v0, Lpbf;

    invoke-direct {v0, p1}, Lpbf;-><init>(Lcom/google/android/gms/common/api/Status;)V

    throw p0
.end method
