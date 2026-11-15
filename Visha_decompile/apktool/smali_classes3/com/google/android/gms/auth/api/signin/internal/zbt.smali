.class public final Lcom/google/android/gms/auth/api/signin/internal/zbt;
.super Lcom/google/android/gms/auth/api/signin/internal/zbo;
.source "SourceFile"


# instance fields
.field private final zba:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/auth/api/signin/internal/zbo;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/auth/api/signin/internal/zbt;->zba:Landroid/content/Context;

    return-void
.end method

.method private final zbd()V
    .locals 3

    iget-object p0, p0, Lcom/google/android/gms/auth/api/signin/internal/zbt;->zba:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {p0, v0}, Lqfb;->a(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling UID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " is not Google Play services."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final zbb()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/auth/api/signin/internal/zbt;->zbd()V

    iget-object p0, p0, Lcom/google/android/gms/auth/api/signin/internal/zbt;->zba:Landroid/content/Context;

    invoke-static {p0}, Le4e;->a(Landroid/content/Context;)Le4e;

    move-result-object p0

    invoke-virtual {p0}, Le4e;->b()V

    return-void
.end method

.method public final zbc()V
    .locals 3

    invoke-direct {p0}, Lcom/google/android/gms/auth/api/signin/internal/zbt;->zbd()V

    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/zbt;->zba:Landroid/content/Context;

    invoke-static {v0}, Ltx9;->b(Landroid/content/Context;)Ltx9;

    move-result-object v0

    invoke-virtual {v0}, Ltx9;->c()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->DEFAULT_SIGN_IN:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ltx9;->d()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object v2

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/auth/api/signin/internal/zbt;->zba:Landroid/content/Context;

    invoke-static {p0, v2}, Lcom/google/android/gms/auth/api/signin/a;->a(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Lcj4;

    move-result-object p0

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcj4;->v()Lxda;

    return-void

    :cond_1
    invoke-virtual {p0}, Lcj4;->w()Lxda;

    return-void
.end method
