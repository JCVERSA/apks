.class final Lcom/hoffnung/tpms_sdk/TPMSDelegator$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hoffnung/tpms_sdk/TPMSDelegator;->k(ILjava/lang/String;Ljava/lang/String;Lcom/hoffnung/tpms_sdk/TPMSDelegator$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/hoffnung/tpms_sdk/TPMSDelegator$a;

.field final synthetic e:Lcom/hoffnung/tpms_sdk/TPMSDelegator;


# direct methods
.method public constructor <init>(Lcom/hoffnung/tpms_sdk/TPMSDelegator;ILjava/lang/String;Ljava/lang/String;Lcom/hoffnung/tpms_sdk/TPMSDelegator$a;)V
    .locals 0

    iput-object p1, p0, Lcom/hoffnung/tpms_sdk/TPMSDelegator$10;->e:Lcom/hoffnung/tpms_sdk/TPMSDelegator;

    iput p2, p0, Lcom/hoffnung/tpms_sdk/TPMSDelegator$10;->a:I

    iput-object p3, p0, Lcom/hoffnung/tpms_sdk/TPMSDelegator$10;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/hoffnung/tpms_sdk/TPMSDelegator$10;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/hoffnung/tpms_sdk/TPMSDelegator$10;->d:Lcom/hoffnung/tpms_sdk/TPMSDelegator$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    const-string v0, "TPMSDelegator"

    const/16 v1, -0x65

    :try_start_0
    iget-object v2, p0, Lcom/hoffnung/tpms_sdk/TPMSDelegator$10;->e:Lcom/hoffnung/tpms_sdk/TPMSDelegator;

    invoke-static {v2}, Lcom/hoffnung/tpms_sdk/TPMSDelegator;->g(Lcom/hoffnung/tpms_sdk/TPMSDelegator;)Lcom/hoffnung/a/b;

    move-result-object v2

    iget v3, p0, Lcom/hoffnung/tpms_sdk/TPMSDelegator$10;->a:I

    iget-object v4, p0, Lcom/hoffnung/tpms_sdk/TPMSDelegator$10;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/hoffnung/tpms_sdk/TPMSDelegator$10;->c:Ljava/lang/String;

    invoke-interface {v2, v3, v4, v5}, Lcom/hoffnung/a/b;->a(ILjava/lang/String;Ljava/lang/String;)I

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

    const-string v4, "Exception happend when synchronizeSetting, "

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

    const-string v4, "RemoteException happend when synchronizeSetting, "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :goto_3
    const/4 v0, 0x1

    iget-object p0, p0, Lcom/hoffnung/tpms_sdk/TPMSDelegator$10;->d:Lcom/hoffnung/tpms_sdk/TPMSDelegator$a;

    if-ne v1, v0, :cond_0

    invoke-interface {p0}, Lcom/hoffnung/tpms_sdk/TPMSDelegator$a;->onSuccess()V

    return-void

    :cond_0
    invoke-interface {p0, v1}, Lcom/hoffnung/tpms_sdk/TPMSDelegator$a;->a(I)V

    return-void
.end method
