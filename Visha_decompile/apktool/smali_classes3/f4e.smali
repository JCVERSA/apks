.class public final Lf4e;
.super Lcom/google/android/gms/common/internal/b;
.source "SourceFile"


# instance fields
.field public final I:Ln20$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lay0;Ln20$a;Lcom/google/android/gms/common/api/c$a;Lcom/google/android/gms/common/api/c$b;)V
    .locals 7

    const/16 v3, 0x44

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/b;-><init>(Landroid/content/Context;Landroid/os/Looper;ILay0;Lcom/google/android/gms/common/api/c$a;Lcom/google/android/gms/common/api/c$b;)V

    new-instance p1, Ln20$a$a;

    if-nez p4, :cond_0

    sget-object p4, Ln20$a;->e:Ln20$a;

    :cond_0
    invoke-direct {p1, p4}, Ln20$a$a;-><init>(Ln20$a;)V

    invoke-static {}, Lh3e;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ln20$a$a;->a(Ljava/lang/String;)Ln20$a$a;

    new-instance p2, Ln20$a;

    invoke-direct {p2, p1}, Ln20$a;-><init>(Ln20$a$a;)V

    iput-object p2, p0, Lf4e;->I:Ln20$a;

    return-void
.end method


# virtual methods
.method public final synthetic d(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const-string p0, "com.google.android.gms.auth.api.credentials.internal.ICredentialsService"

    invoke-interface {p1, p0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p0

    instance-of v0, p0, Lcom/google/android/gms/internal/auth-api/zbt;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/google/android/gms/internal/auth-api/zbt;

    goto :goto_0

    :cond_1
    new-instance p0, Lcom/google/android/gms/internal/auth-api/zbt;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/auth-api/zbt;-><init>(Landroid/os/IBinder;)V

    :goto_0
    return-object p0
.end method

.method public final g()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lf4e;->I:Ln20$a;

    invoke-virtual {p0}, Ln20$a;->a()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public final getMinApkVersion()I
    .locals 0

    const p0, 0xc35000

    return p0
.end method

.method public final j()Ljava/lang/String;
    .locals 0

    const-string p0, "com.google.android.gms.auth.api.credentials.internal.ICredentialsService"

    return-object p0
.end method

.method public final k()Ljava/lang/String;
    .locals 0

    const-string p0, "com.google.android.gms.auth.api.credentials.service.START"

    return-object p0
.end method
