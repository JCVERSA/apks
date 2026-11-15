.class final Lcom/mgtv/data/aphone/core/i/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mgtv/data/aphone/core/i/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/mgtv/data/aphone/core/i/b;

.field private b:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference<",
            "Lcom/mgtv/data/aphone/core/i/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/mgtv/data/aphone/core/i/b;Lcom/mgtv/data/aphone/core/i/b;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/data/aphone/core/i/b$a;->a:Lcom/mgtv/data/aphone/core/i/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/mgtv/data/aphone/core/i/b$a;->b:Ljava/lang/ref/Reference;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    iget-object v0, p0, Lcom/mgtv/data/aphone/core/i/b$a;->b:Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mgtv/data/aphone/core/i/b;

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/mgtv/data/aphone/core/i/b$a;->a:Lcom/mgtv/data/aphone/core/i/b;

    invoke-virtual {v2}, Lcom/mgtv/data/aphone/core/i/b;->c()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    move v6, v4

    move v7, v5

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    if-ge v6, v8, :cond_1

    if-lez v6, :cond_0

    add-int/lit8 v8, v6, -0x1

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/mgtv/data/aphone/core/bean/b;

    iget-object v8, v8, Lcom/mgtv/data/aphone/core/bean/b;->a:Ljava/lang/String;

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/mgtv/data/aphone/core/bean/b;

    iget-object v9, v9, Lcom/mgtv/data/aphone/core/bean/b;->a:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    add-int/2addr v7, v5

    goto :goto_1

    :cond_0
    move v7, v5

    goto :goto_1

    :catch_0
    move-exception p0

    goto/16 :goto_2

    :goto_1
    new-instance v8, Ljava/io/File;

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/mgtv/data/aphone/core/bean/b;

    iget-object v9, v9, Lcom/mgtv/data/aphone/core/bean/b;->k:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v9, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ".log"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    invoke-static {}, Lcom/mgtv/data/aphone/core/i/b;->a()Lcom/mgtv/data/aphone/core/i/b;

    move-result-object v8

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/mgtv/data/aphone/core/bean/b;

    iget-object v10, v10, Lcom/mgtv/data/aphone/core/bean/b;->a:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Lcom/mgtv/data/aphone/core/i/b;->a(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    new-instance v9, Lcom/mgtv/data/aphone/core/bean/b;

    invoke-direct {v9}, Lcom/mgtv/data/aphone/core/bean/b;-><init>()V

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/mgtv/data/aphone/core/bean/b;

    iget v10, v10, Lcom/mgtv/data/aphone/core/bean/b;->e:I

    iput v10, v9, Lcom/mgtv/data/aphone/core/bean/b;->e:I

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/mgtv/data/aphone/core/bean/b;

    iget-object v10, v10, Lcom/mgtv/data/aphone/core/bean/b;->a:Ljava/lang/String;

    iput-object v10, v9, Lcom/mgtv/data/aphone/core/bean/b;->a:Ljava/lang/String;

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/mgtv/data/aphone/core/bean/b;

    iget-object v10, v10, Lcom/mgtv/data/aphone/core/bean/b;->c:Ljava/lang/String;

    iput-object v10, v9, Lcom/mgtv/data/aphone/core/bean/b;->c:Ljava/lang/String;

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/mgtv/data/aphone/core/bean/b;

    iget v10, v10, Lcom/mgtv/data/aphone/core/bean/b;->d:I

    iput v10, v9, Lcom/mgtv/data/aphone/core/bean/b;->d:I

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/mgtv/data/aphone/core/bean/b;

    iget-object v10, v10, Lcom/mgtv/data/aphone/core/bean/b;->b:Ljava/lang/String;

    iput-object v10, v9, Lcom/mgtv/data/aphone/core/bean/b;->b:Ljava/lang/String;

    iput v7, v9, Lcom/mgtv/data/aphone/core/bean/b;->h:I

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/mgtv/data/aphone/core/bean/b;

    iget v10, v10, Lcom/mgtv/data/aphone/core/bean/b;->i:I

    iput v10, v9, Lcom/mgtv/data/aphone/core/bean/b;->i:I

    iput v4, v9, Lcom/mgtv/data/aphone/core/bean/b;->g:I

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/mgtv/data/aphone/core/bean/b;

    iget-object v10, v10, Lcom/mgtv/data/aphone/core/bean/b;->k:Ljava/lang/String;

    iput-object v10, v9, Lcom/mgtv/data/aphone/core/bean/b;->k:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v9, Lcom/mgtv/data/aphone/core/bean/b;->j:Ljava/lang/String;

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_1
    invoke-virtual {v0, v1}, Lcom/mgtv/data/aphone/core/i/b;->a(Ljava/util/List;)V

    iget-object v1, p0, Lcom/mgtv/data/aphone/core/i/b$a;->a:Lcom/mgtv/data/aphone/core/i/b;

    invoke-static {v1}, Lcom/mgtv/data/aphone/core/i/b;->a(Lcom/mgtv/data/aphone/core/i/b;)Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/mgtv/data/aphone/core/i/b$a;->a:Lcom/mgtv/data/aphone/core/i/b;

    invoke-static {p0}, Lcom/mgtv/data/aphone/core/i/b;->a(Lcom/mgtv/data/aphone/core/i/b;)Landroid/content/Context;

    move-result-object p0

    const-string v1, "mgtv_data_trace_reporter"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, v5}, Lcom/mgtv/data/aphone/core/db/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_2
    const-string p0, "big_data_sdk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#################### TrackZipComp \u6210\u529f\u538b\u7f29zip\u603b\u4e2a\u6570:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/mgtv/data/aphone/core/j/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/mgtv/data/aphone/core/i/b;->d()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    :goto_3
    return-void
.end method
