.class Lcom/just/agentweb/filechooser/FileChooser$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/just/agentweb/filechooser/FileChooser;->convertFileAndCallback([Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback<",
        "[",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/just/agentweb/filechooser/FileChooser;


# direct methods
.method public constructor <init>(Lcom/just/agentweb/filechooser/FileChooser;)V
    .locals 0

    iput-object p1, p0, Lcom/just/agentweb/filechooser/FileChooser$6;->this$0:Lcom/just/agentweb/filechooser/FileChooser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, [Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lcom/just/agentweb/filechooser/FileChooser$6;->onReceiveValue([Landroid/net/Uri;)V

    return-void
.end method

.method public onReceiveValue([Landroid/net/Uri;)V
    .locals 7

    .line 2
    iget-object v0, p0, Lcom/just/agentweb/filechooser/FileChooser$6;->this$0:Lcom/just/agentweb/filechooser/FileChooser;

    invoke-static {v0}, Lcom/just/agentweb/filechooser/FileChooser;->a(Lcom/just/agentweb/filechooser/FileChooser;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/just/agentweb/AgentWebUtils;->uriToPath(Landroid/app/Activity;[Landroid/net/Uri;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    .line 3
    array-length v1, p1

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 4
    :cond_0
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v4, p1, v2

    .line 5
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    int-to-long v3, v3

    .line 8
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v5

    add-long/2addr v3, v5

    long-to-int v3, v3

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9
    :cond_3
    sget v1, Lcom/just/agentweb/AgentWebConfig;->MAX_FILE_LENGTH:I

    if-le v3, v1, :cond_5

    .line 10
    iget-object p1, p0, Lcom/just/agentweb/filechooser/FileChooser$6;->this$0:Lcom/just/agentweb/filechooser/FileChooser;

    invoke-static {p1}, Lcom/just/agentweb/filechooser/FileChooser;->b(Lcom/just/agentweb/filechooser/FileChooser;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 11
    iget-object p1, p0, Lcom/just/agentweb/filechooser/FileChooser$6;->this$0:Lcom/just/agentweb/filechooser/FileChooser;

    invoke-static {p1}, Lcom/just/agentweb/filechooser/FileChooser;->b(Lcom/just/agentweb/filechooser/FileChooser;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/just/agentweb/AbsAgentWebUIController;

    iget-object v1, p0, Lcom/just/agentweb/filechooser/FileChooser$6;->this$0:Lcom/just/agentweb/filechooser/FileChooser;

    invoke-static {v1}, Lcom/just/agentweb/filechooser/FileChooser;->a(Lcom/just/agentweb/filechooser/FileChooser;)Landroid/app/Activity;

    move-result-object v1

    sget v2, Lcom/just/agentweb/R$string;->agentweb_max_file_length_limit:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget v4, Lcom/just/agentweb/AgentWebConfig;->MAX_FILE_LENGTH:I

    div-int/lit16 v4, v4, 0x400

    div-int/lit16 v4, v4, 0x400

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "convertFileAndCallback"

    invoke-virtual {p1, v1, v2}, Lcom/just/agentweb/AbsAgentWebUIController;->onShowMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    :cond_4
    iget-object p0, p0, Lcom/just/agentweb/filechooser/FileChooser$6;->this$0:Lcom/just/agentweb/filechooser/FileChooser;

    invoke-static {p0}, Lcom/just/agentweb/filechooser/FileChooser;->c(Lcom/just/agentweb/filechooser/FileChooser;)Lcom/just/agentweb/filechooser/FileChooser$JsChannelCallback;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/just/agentweb/filechooser/FileChooser$JsChannelCallback;->call(Ljava/lang/String;)V

    return-void

    .line 13
    :cond_5
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/just/agentweb/filechooser/FileChooser$CovertFileThread;

    iget-object p0, p0, Lcom/just/agentweb/filechooser/FileChooser$6;->this$0:Lcom/just/agentweb/filechooser/FileChooser;

    invoke-static {p0}, Lcom/just/agentweb/filechooser/FileChooser;->c(Lcom/just/agentweb/filechooser/FileChooser;)Lcom/just/agentweb/filechooser/FileChooser$JsChannelCallback;

    move-result-object p0

    invoke-direct {v2, p0, p1, v0}, Lcom/just/agentweb/filechooser/FileChooser$CovertFileThread;-><init>(Lcom/just/agentweb/filechooser/FileChooser$JsChannelCallback;[Ljava/lang/String;Lhq3;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 14
    :cond_6
    :goto_2
    iget-object p0, p0, Lcom/just/agentweb/filechooser/FileChooser$6;->this$0:Lcom/just/agentweb/filechooser/FileChooser;

    invoke-static {p0}, Lcom/just/agentweb/filechooser/FileChooser;->c(Lcom/just/agentweb/filechooser/FileChooser;)Lcom/just/agentweb/filechooser/FileChooser$JsChannelCallback;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/just/agentweb/filechooser/FileChooser$JsChannelCallback;->call(Ljava/lang/String;)V

    return-void
.end method
