.class final Lcom/hoffnung/tpms_sdk/TPMSDelegator$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/hoffnung/tpms_sdk/TPMSDelegator$a;

.field final synthetic c:Lcom/hoffnung/tpms_sdk/TPMSDelegator;


# direct methods
.method public constructor <init>(Lcom/hoffnung/tpms_sdk/TPMSDelegator;Ljava/lang/String;Lcom/hoffnung/tpms_sdk/TPMSDelegator$a;)V
    .locals 0

    iput-object p1, p0, Lcom/hoffnung/tpms_sdk/TPMSDelegator$7;->c:Lcom/hoffnung/tpms_sdk/TPMSDelegator;

    iput-object p2, p0, Lcom/hoffnung/tpms_sdk/TPMSDelegator$7;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/hoffnung/tpms_sdk/TPMSDelegator$7;->b:Lcom/hoffnung/tpms_sdk/TPMSDelegator$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    const-string v0, "TPMSDelegator"

    const/16 v1, -0x65

    :try_start_0
    iget-object v2, p0, Lcom/hoffnung/tpms_sdk/TPMSDelegator$7;->c:Lcom/hoffnung/tpms_sdk/TPMSDelegator;

    invoke-static {v2}, Lcom/hoffnung/tpms_sdk/TPMSDelegator;->g(Lcom/hoffnung/tpms_sdk/TPMSDelegator;)Lcom/hoffnung/a/b;

    move-result-object v2

    iget-object v3, p0, Lcom/hoffnung/tpms_sdk/TPMSDelegator$7;->c:Lcom/hoffnung/tpms_sdk/TPMSDelegator;

    invoke-static {v3}, Lcom/hoffnung/tpms_sdk/TPMSDelegator;->e(Lcom/hoffnung/tpms_sdk/TPMSDelegator;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/hoffnung/tpms_sdk/TPMSDelegator$7;->a:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/hoffnung/a/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_2

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception happend when unsubscribeEvent,"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "RemoteException happend when unsubscribeEvent,"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :goto_3
    const/4 v0, 0x1

    iget-object p0, p0, Lcom/hoffnung/tpms_sdk/TPMSDelegator$7;->b:Lcom/hoffnung/tpms_sdk/TPMSDelegator$a;

    if-ne v1, v0, :cond_0

    invoke-interface {p0}, Lcom/hoffnung/tpms_sdk/TPMSDelegator$a;->onSuccess()V

    return-void

    :cond_0
    invoke-interface {p0, v1}, Lcom/hoffnung/tpms_sdk/TPMSDelegator$a;->a(I)V

    return-void
.end method
