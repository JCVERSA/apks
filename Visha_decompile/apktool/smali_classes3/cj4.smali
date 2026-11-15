.class public Lcj4;
.super Lcom/google/android/gms/common/api/b;
.source "SourceFile"


# static fields
.field public static final k:Lf3e;

.field public static l:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lf3e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lf3e;-><init>(Lz2e;)V

    sput-object v0, Lcj4;->k:Lf3e;

    const/4 v0, 0x1

    sput v0, Lcj4;->l:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V
    .locals 2

    sget-object v0, Ln20;->c:Lcom/google/android/gms/common/api/a;

    new-instance v1, Ltd;

    invoke-direct {v1}, Ltd;-><init>()V

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/google/android/gms/common/api/b;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$d;Lqx9;)V

    return-void
.end method


# virtual methods
.method public v()Lxda;
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/b;->d()Lcom/google/android/gms/common/api/c;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/b;->n()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcj4;->x()I

    move-result p0

    const/4 v2, 0x3

    if-ne p0, v2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {v0, v1, p0}, Lb4e;->b(Lcom/google/android/gms/common/api/c;Landroid/content/Context;Z)Lk08;

    move-result-object p0

    invoke-static {p0}, Ll08;->b(Lk08;)Lxda;

    move-result-object p0

    return-object p0
.end method

.method public w()Lxda;
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/b;->d()Lcom/google/android/gms/common/api/c;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/b;->n()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcj4;->x()I

    move-result p0

    const/4 v2, 0x3

    if-ne p0, v2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {v0, v1, p0}, Lb4e;->c(Lcom/google/android/gms/common/api/c;Landroid/content/Context;Z)Lk08;

    move-result-object p0

    invoke-static {p0}, Ll08;->b(Lk08;)Lxda;

    move-result-object p0

    return-object p0
.end method

.method public final declared-synchronized x()I
    .locals 4

    monitor-enter p0

    :try_start_0
    sget v0, Lcj4;->l:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/b;->n()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lzi4;->o()Lzi4;

    move-result-object v1

    const v2, 0xbdfcb8

    invoke-virtual {v1, v0, v2}, Lzi4;->i(Landroid/content/Context;I)I

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x4

    sput v0, Lcj4;->l:I

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lzi4;->c(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "com.google.android.gms.auth.api.fallback"

    invoke-static {v0, v1}, Lcom/google/android/gms/dynamite/DynamiteModule;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    sput v0, Lcj4;->l:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    sput v0, Lcj4;->l:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_0
    monitor-exit p0

    return v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
