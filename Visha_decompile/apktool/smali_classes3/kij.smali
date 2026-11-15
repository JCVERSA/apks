.class public final Lkij;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lye;


# instance fields
.field public final a:Lye;

.field public final b:Lye;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-static {}, Laj4;->g()Laj4;

    move-result-object v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lagj;

    invoke-direct {v1, p1, v0}, Lagj;-><init>(Landroid/content/Context;Laj4;)V

    iput-object v1, p0, Lkij;->a:Lye;

    invoke-static {p1}, Lcom/google/android/gms/internal/appset/a;->d(Landroid/content/Context;)Lye;

    move-result-object p1

    iput-object p1, p0, Lkij;->b:Lye;

    return-void
.end method

.method public static synthetic b(Lkij;Lxda;)Lxda;
    .locals 2

    invoke-virtual {p1}, Lxda;->q()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Lxda;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lxda;->l()Ljava/lang/Exception;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/common/api/ApiException;

    if-eqz v1, :cond_5

    check-cast v0, Lcom/google/android/gms/common/api/ApiException;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/ApiException;->getStatusCode()I

    move-result v0

    const v1, 0xa7f9

    if-eq v0, v1, :cond_4

    const v1, 0xa7fa

    if-eq v0, v1, :cond_4

    const v1, 0xa7fb

    if-eq v0, v1, :cond_4

    const/16 v1, 0x11

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const p0, 0xa7f8

    if-ne v0, p0, :cond_2

    new-instance p0, Ljava/lang/Exception;

    const-string p1, "Failed to get app set ID due to an internal error. Please try again later."

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/google/android/gms/tasks/a;->d(Ljava/lang/Exception;)Lxda;

    move-result-object p1

    goto :goto_1

    :cond_2
    const/16 p0, 0xf

    if-eq v0, p0, :cond_3

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "The operation to get app set ID timed out. Please try again later."

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/google/android/gms/tasks/a;->d(Ljava/lang/Exception;)Lxda;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_0
    iget-object p0, p0, Lkij;->b:Lye;

    invoke-interface {p0}, Lye;->a()Lxda;

    move-result-object p1

    :cond_5
    :goto_1
    return-object p1
.end method


# virtual methods
.method public final a()Lxda;
    .locals 2

    iget-object v0, p0, Lkij;->a:Lye;

    invoke-interface {v0}, Lye;->a()Lxda;

    move-result-object v0

    new-instance v1, Llhj;

    invoke-direct {v1, p0}, Llhj;-><init>(Lkij;)V

    invoke-virtual {v0, v1}, Lxda;->j(Lxh1;)Lxda;

    move-result-object p0

    return-object p0
.end method
