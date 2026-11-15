.class final Lcom/hoffnung/tpms_sdk/TPMSDelegator$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/hoffnung/tpms_sdk/TPMSDelegator$b;

.field final synthetic c:Lcom/hoffnung/tpms_sdk/TPMSDelegator;


# direct methods
.method public constructor <init>(Lcom/hoffnung/tpms_sdk/TPMSDelegator;ILcom/hoffnung/tpms_sdk/TPMSDelegator$b;)V
    .locals 0

    iput-object p1, p0, Lcom/hoffnung/tpms_sdk/TPMSDelegator$15;->c:Lcom/hoffnung/tpms_sdk/TPMSDelegator;

    iput p2, p0, Lcom/hoffnung/tpms_sdk/TPMSDelegator$15;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/hoffnung/tpms_sdk/TPMSDelegator$15;->c:Lcom/hoffnung/tpms_sdk/TPMSDelegator;

    invoke-static {v0}, Lcom/hoffnung/tpms_sdk/TPMSDelegator;->g(Lcom/hoffnung/tpms_sdk/TPMSDelegator;)Lcom/hoffnung/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/hoffnung/tpms_sdk/TPMSDelegator$15;->c:Lcom/hoffnung/tpms_sdk/TPMSDelegator;

    invoke-static {v1}, Lcom/hoffnung/tpms_sdk/TPMSDelegator;->e(Lcom/hoffnung/tpms_sdk/TPMSDelegator;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/hoffnung/tpms_sdk/TPMSDelegator$15;->a:I

    new-instance v3, Lcom/hoffnung/tpms_sdk/TPMSDelegator$15$1;

    invoke-direct {v3, p0}, Lcom/hoffnung/tpms_sdk/TPMSDelegator$15$1;-><init>(Lcom/hoffnung/tpms_sdk/TPMSDelegator$15;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/hoffnung/a/b;->a(Ljava/lang/String;ILcom/hoffnung/a/a;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
