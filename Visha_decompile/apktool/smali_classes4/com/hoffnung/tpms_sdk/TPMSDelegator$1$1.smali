.class final Lcom/hoffnung/tpms_sdk/TPMSDelegator$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hoffnung/tpms_sdk/TPMSDelegator$1;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hoffnung/tpms_sdk/TPMSDelegator$1;


# direct methods
.method public constructor <init>(Lcom/hoffnung/tpms_sdk/TPMSDelegator$1;)V
    .locals 0

    iput-object p1, p0, Lcom/hoffnung/tpms_sdk/TPMSDelegator$1$1;->a:Lcom/hoffnung/tpms_sdk/TPMSDelegator$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :goto_0
    iget-object v0, p0, Lcom/hoffnung/tpms_sdk/TPMSDelegator$1$1;->a:Lcom/hoffnung/tpms_sdk/TPMSDelegator$1;

    iget-object v0, v0, Lcom/hoffnung/tpms_sdk/TPMSDelegator$1;->b:Lcom/hoffnung/tpms_sdk/TPMSDelegator;

    invoke-static {v0}, Lcom/hoffnung/tpms_sdk/TPMSDelegator;->b(Lcom/hoffnung/tpms_sdk/TPMSDelegator;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/hoffnung/tpms_sdk/TPMSDelegator$1$1;->a:Lcom/hoffnung/tpms_sdk/TPMSDelegator$1;

    iget-object v0, v0, Lcom/hoffnung/tpms_sdk/TPMSDelegator$1;->b:Lcom/hoffnung/tpms_sdk/TPMSDelegator;

    invoke-static {v0}, Lcom/hoffnung/tpms_sdk/TPMSDelegator;->b(Lcom/hoffnung/tpms_sdk/TPMSDelegator;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iget-object v1, p0, Lcom/hoffnung/tpms_sdk/TPMSDelegator$1$1;->a:Lcom/hoffnung/tpms_sdk/TPMSDelegator$1;

    iget-object v1, v1, Lcom/hoffnung/tpms_sdk/TPMSDelegator$1;->b:Lcom/hoffnung/tpms_sdk/TPMSDelegator;

    invoke-static {v1}, Lcom/hoffnung/tpms_sdk/TPMSDelegator;->b(Lcom/hoffnung/tpms_sdk/TPMSDelegator;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/hoffnung/tpms_sdk/TPMSDelegator$1$1;->a:Lcom/hoffnung/tpms_sdk/TPMSDelegator$1;

    iget-object v0, v0, Lcom/hoffnung/tpms_sdk/TPMSDelegator$1;->b:Lcom/hoffnung/tpms_sdk/TPMSDelegator;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/hoffnung/tpms_sdk/TPMSDelegator;->a(Lcom/hoffnung/tpms_sdk/TPMSDelegator;Lcom/hoffnung/a/b;)Lcom/hoffnung/a/b;

    iget-object v0, p0, Lcom/hoffnung/tpms_sdk/TPMSDelegator$1$1;->a:Lcom/hoffnung/tpms_sdk/TPMSDelegator$1;

    iget-object v0, v0, Lcom/hoffnung/tpms_sdk/TPMSDelegator$1;->b:Lcom/hoffnung/tpms_sdk/TPMSDelegator;

    invoke-static {v0}, Lcom/hoffnung/tpms_sdk/TPMSDelegator;->e(Lcom/hoffnung/tpms_sdk/TPMSDelegator;)Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/hoffnung/tpms_sdk/TPMSDelegator$1$1;->a:Lcom/hoffnung/tpms_sdk/TPMSDelegator$1;

    iget-object p0, p0, Lcom/hoffnung/tpms_sdk/TPMSDelegator$1;->b:Lcom/hoffnung/tpms_sdk/TPMSDelegator;

    invoke-static {p0}, Lcom/hoffnung/tpms_sdk/TPMSDelegator;->d(Lcom/hoffnung/tpms_sdk/TPMSDelegator;)Landroid/content/ServiceConnection;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method
