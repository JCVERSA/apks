.class public final Lo/y39;
.super Ljava/lang/Object;

# interfaces
.implements Lo/uh4;


# instance fields
.field public final a:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lo/y39;->a:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->z()Landroid/content/Context;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Lo/or3;->c(Ljava/lang/Object;)V

    invoke-static {v0}, Lo/xi7;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getProcessName(...)"

    invoke-static {v1, v2}, Lo/or3;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v2, p0, Lo/y39;->a:Z

    invoke-static {v0, v1, v2}, Lcom/snaptube/premium/web/WebViewExtKt;->h(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lock:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "webview"

    invoke-static {v1, v0}, Lo/u81;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public tag()Ljava/lang/String;
    .locals 1

    const-string v0, "WebViewTask"

    return-object v0
.end method

.method public u()Lcom/mobiuspace/framework/launchconductor/Policy;
    .locals 1

    invoke-static {p0}, Lo/uh4$a;->a(Lo/uh4;)Lcom/mobiuspace/framework/launchconductor/Policy;

    move-result-object v0

    return-object v0
.end method
