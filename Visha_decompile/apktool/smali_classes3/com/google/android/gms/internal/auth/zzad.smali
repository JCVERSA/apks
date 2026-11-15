.class final Lcom/google/android/gms/internal/auth/zzad;
.super Lcom/google/android/gms/internal/auth/zzah;
.source "SourceFile"


# instance fields
.field final synthetic zza:Ldae;


# direct methods
.method public constructor <init>(Ldae;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/auth/zzah;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzb(Landroid/accounts/Account;)V
    .locals 1
    .param p1    # Landroid/accounts/Account;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    new-instance p0, Lsee;

    if-eqz p1, :cond_0

    sget-object v0, Lcom/google/android/gms/common/api/Status;->RESULT_SUCCESS:Lcom/google/android/gms/common/api/Status;

    goto :goto_0

    :cond_0
    invoke-static {}, Lcie;->a()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0, p1}, Lsee;-><init>(Lcom/google/android/gms/common/api/Status;Landroid/accounts/Account;)V

    const/4 p0, 0x0

    throw p0
.end method
