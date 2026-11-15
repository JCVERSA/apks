.class public Lcom/google/android/gms/common/api/b$a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/api/b$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Lqx9;

.field public b:Landroid/os/Looper;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/gms/common/api/b$a;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/common/api/b$a$a;->a:Lqx9;

    if-nez v0, :cond_0

    new-instance v0, Ltd;

    invoke-direct {v0}, Ltd;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/b$a$a;->a:Lqx9;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/b$a$a;->b:Landroid/os/Looper;

    if-nez v0, :cond_1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/b$a$a;->b:Landroid/os/Looper;

    :cond_1
    new-instance v0, Lcom/google/android/gms/common/api/b$a;

    iget-object v1, p0, Lcom/google/android/gms/common/api/b$a$a;->a:Lqx9;

    iget-object p0, p0, Lcom/google/android/gms/common/api/b$a$a;->b:Landroid/os/Looper;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0, v2}, Lcom/google/android/gms/common/api/b$a;-><init>(Lqx9;Landroid/accounts/Account;Landroid/os/Looper;Lf1e;)V

    return-object v0
.end method

.method public b(Lqx9;)Lcom/google/android/gms/common/api/b$a$a;
    .locals 1

    const-string v0, "StatusExceptionMapper must not be null."

    invoke-static {p1, v0}, Lwd8;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/common/api/b$a$a;->a:Lqx9;

    return-object p0
.end method
