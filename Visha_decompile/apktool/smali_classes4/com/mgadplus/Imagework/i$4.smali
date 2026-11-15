.class Lcom/mgadplus/Imagework/i$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lsed;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Lcjd;


# direct methods
.method public constructor <init>(Lcjd;Ljava/lang/String;Lsed;Landroid/content/Context;)V
    .locals 0

    iput-object p2, p0, Lcom/mgadplus/Imagework/i$4;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/mgadplus/Imagework/i$4;->b:Lsed;

    iput-object p4, p0, Lcom/mgadplus/Imagework/i$4;->c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, ".gif"

    iget-object v1, p0, Lcom/mgadplus/Imagework/i$4;->a:Ljava/lang/String;

    if-nez v1, :cond_0

    iget-object p0, p0, Lcom/mgadplus/Imagework/i$4;->b:Lsed;

    if-eqz p0, :cond_3

    invoke-interface {p0}, Lsed;->a()V

    goto :goto_3

    :cond_0
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, ",webp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v0, v2, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/mgadplus/Imagework/i$4;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1, v1}, Lcom/bumptech/glide/RequestBuilder;->downloadOnly(II)Lcom/bumptech/glide/request/FutureTarget;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/mgadplus/Imagework/i$4;->b:Lsed;

    if-eqz p0, :cond_3

    if-eqz v0, :cond_2

    invoke-interface {p0, v0}, Lsed;->a(Ljava/io/File;)V

    goto :goto_3

    :cond_2
    :goto_1
    invoke-interface {p0}, Lsed;->a()V

    goto :goto_3

    :goto_2
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p0, p0, Lcom/mgadplus/Imagework/i$4;->b:Lsed;

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    :goto_3
    return-void

    :goto_4
    iget-object p0, p0, Lcom/mgadplus/Imagework/i$4;->b:Lsed;

    if-eqz p0, :cond_4

    invoke-interface {p0}, Lsed;->a()V

    :cond_4
    throw v0
.end method
