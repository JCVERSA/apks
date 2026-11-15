.class final Lcom/hoffnung/tpms_sdk/TPMSDelegator$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hoffnung/tpms_sdk/TPMSDelegator;->c(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lcom/hoffnung/tpms_sdk/TPMSDelegator;


# direct methods
.method public constructor <init>(Lcom/hoffnung/tpms_sdk/TPMSDelegator;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/hoffnung/tpms_sdk/TPMSDelegator$12;->b:Lcom/hoffnung/tpms_sdk/TPMSDelegator;

    iput-object p2, p0, Lcom/hoffnung/tpms_sdk/TPMSDelegator$12;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/hoffnung/tpms_sdk/TPMSDelegator$12;->b:Lcom/hoffnung/tpms_sdk/TPMSDelegator;

    invoke-static {v0}, Lcom/hoffnung/tpms_sdk/TPMSDelegator;->b(Lcom/hoffnung/tpms_sdk/TPMSDelegator;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/hoffnung/tpms_sdk/TPMSDelegator$12;->a:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/hoffnung/tpms_sdk/TPMSDelegator$12;->b:Lcom/hoffnung/tpms_sdk/TPMSDelegator;

    invoke-static {v0}, Lcom/hoffnung/tpms_sdk/TPMSDelegator;->g(Lcom/hoffnung/tpms_sdk/TPMSDelegator;)Lcom/hoffnung/a/b;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/hoffnung/tpms_sdk/TPMSDelegator$12;->b:Lcom/hoffnung/tpms_sdk/TPMSDelegator;

    invoke-static {v0}, Lcom/hoffnung/tpms_sdk/TPMSDelegator;->e(Lcom/hoffnung/tpms_sdk/TPMSDelegator;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/hoffnung/tpms_sdk/TPMSDelegator$12;->b:Lcom/hoffnung/tpms_sdk/TPMSDelegator;

    invoke-static {v1}, Lcom/hoffnung/tpms_sdk/TPMSDelegator;->h(Lcom/hoffnung/tpms_sdk/TPMSDelegator;)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/hoffnung/tpms_sdk/TPMSDelegator$12;->b:Lcom/hoffnung/tpms_sdk/TPMSDelegator;

    invoke-static {v2}, Lcom/hoffnung/tpms_sdk/TPMSDelegator;->d(Lcom/hoffnung/tpms_sdk/TPMSDelegator;)Landroid/content/ServiceConnection;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/hoffnung/tpms_sdk/TPMSDelegator$12;->b:Lcom/hoffnung/tpms_sdk/TPMSDelegator;

    invoke-static {v0}, Lcom/hoffnung/tpms_sdk/TPMSDelegator;->b(Lcom/hoffnung/tpms_sdk/TPMSDelegator;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/hoffnung/tpms_sdk/TPMSDelegator$12;->b:Lcom/hoffnung/tpms_sdk/TPMSDelegator;

    invoke-static {v0}, Lcom/hoffnung/tpms_sdk/TPMSDelegator;->b(Lcom/hoffnung/tpms_sdk/TPMSDelegator;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iget-object v1, p0, Lcom/hoffnung/tpms_sdk/TPMSDelegator$12;->b:Lcom/hoffnung/tpms_sdk/TPMSDelegator;

    invoke-static {v1}, Lcom/hoffnung/tpms_sdk/TPMSDelegator;->b(Lcom/hoffnung/tpms_sdk/TPMSDelegator;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method
