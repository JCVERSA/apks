.class public abstract Lb4e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lnq5;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lnq5;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "GoogleSignInCommon"

    invoke-direct {v0, v2, v1}, Lnq5;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lb4e;->a:Lnq5;

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Landroid/content/Intent;
    .locals 3

    sget-object v0, Lb4e;->a:Lnq5;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "getSignInIntent()"

    invoke-virtual {v0, v2, v1}, Lnq5;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;-><init>(Ljava/lang/String;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V

    new-instance p1, Landroid/content/Intent;

    const-string v1, "com.google.android.gms.auth.GOOGLE_SIGN_IN"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-class v1, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;

    invoke-virtual {p1, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "config"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {p1, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    return-object p1
.end method

.method public static b(Lcom/google/android/gms/common/api/c;Landroid/content/Context;Z)Lk08;
    .locals 3

    sget-object v0, Lb4e;->a:Lnq5;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Revoking access"

    invoke-virtual {v0, v2, v1}, Lnq5;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1}, Ltx9;->b(Landroid/content/Context;)Ltx9;

    move-result-object v0

    invoke-virtual {v0}, Ltx9;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lb4e;->d(Landroid/content/Context;)V

    if-eqz p2, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/auth/api/signin/internal/zbb;->zba(Ljava/lang/String;)Lk08;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p1, Lcom/google/android/gms/auth/api/signin/internal/b;

    invoke-direct {p1, p0}, Lcom/google/android/gms/auth/api/signin/internal/b;-><init>(Lcom/google/android/gms/common/api/c;)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/c;->a(Lcom/google/android/gms/common/api/internal/b;)Lcom/google/android/gms/common/api/internal/b;

    move-result-object p0

    return-object p0
.end method

.method public static c(Lcom/google/android/gms/common/api/c;Landroid/content/Context;Z)Lk08;
    .locals 3

    sget-object v0, Lb4e;->a:Lnq5;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Signing out"

    invoke-virtual {v0, v2, v1}, Lnq5;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1}, Lb4e;->d(Landroid/content/Context;)V

    if-eqz p2, :cond_0

    sget-object p1, Lcom/google/android/gms/common/api/Status;->RESULT_SUCCESS:Lcom/google/android/gms/common/api/Status;

    invoke-static {p1, p0}, Lm08;->b(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/common/api/c;)Lk08;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p1, Lcom/google/android/gms/auth/api/signin/internal/a;

    invoke-direct {p1, p0}, Lcom/google/android/gms/auth/api/signin/internal/a;-><init>(Lcom/google/android/gms/common/api/c;)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/c;->a(Lcom/google/android/gms/common/api/internal/b;)Lcom/google/android/gms/common/api/internal/b;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/content/Context;)V
    .locals 1

    invoke-static {p0}, Le4e;->a(Landroid/content/Context;)Le4e;

    move-result-object p0

    invoke-virtual {p0}, Le4e;->b()V

    invoke-static {}, Lcom/google/android/gms/common/api/c;->b()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/c;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/c;->e()V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/common/api/internal/c;->a()V

    return-void
.end method
