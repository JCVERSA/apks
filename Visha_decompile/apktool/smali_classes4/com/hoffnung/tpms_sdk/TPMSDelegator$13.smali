.class final Lcom/hoffnung/tpms_sdk/TPMSDelegator$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/hoffnung/tpms_sdk/TPMSDelegator$a;

.field final synthetic e:Lcom/hoffnung/tpms_sdk/TPMSDelegator;


# direct methods
.method public constructor <init>(Lcom/hoffnung/tpms_sdk/TPMSDelegator;ILjava/lang/String;Ljava/lang/String;Lcom/hoffnung/tpms_sdk/TPMSDelegator$a;)V
    .locals 0

    iput-object p1, p0, Lcom/hoffnung/tpms_sdk/TPMSDelegator$13;->e:Lcom/hoffnung/tpms_sdk/TPMSDelegator;

    iput p2, p0, Lcom/hoffnung/tpms_sdk/TPMSDelegator$13;->a:I

    iput-object p3, p0, Lcom/hoffnung/tpms_sdk/TPMSDelegator$13;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/hoffnung/tpms_sdk/TPMSDelegator$13;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/hoffnung/tpms_sdk/TPMSDelegator$13;->d:Lcom/hoffnung/tpms_sdk/TPMSDelegator$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/hoffnung/tpms_sdk/TPMSDelegator$13;->e:Lcom/hoffnung/tpms_sdk/TPMSDelegator;

    invoke-static {v0}, Lcom/hoffnung/tpms_sdk/TPMSDelegator;->g(Lcom/hoffnung/tpms_sdk/TPMSDelegator;)Lcom/hoffnung/a/b;

    move-result-object v0

    iget v1, p0, Lcom/hoffnung/tpms_sdk/TPMSDelegator$13;->a:I

    iget-object v2, p0, Lcom/hoffnung/tpms_sdk/TPMSDelegator$13;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/hoffnung/tpms_sdk/TPMSDelegator$13;->c:Ljava/lang/String;

    new-instance v4, Lcom/hoffnung/tpms_sdk/TPMSDelegator$13$1;

    invoke-direct {v4, p0}, Lcom/hoffnung/tpms_sdk/TPMSDelegator$13$1;-><init>(Lcom/hoffnung/tpms_sdk/TPMSDelegator$13;)V

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/hoffnung/a/b;->a(ILjava/lang/String;Ljava/lang/String;Lcom/hoffnung/a/a;)V
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
