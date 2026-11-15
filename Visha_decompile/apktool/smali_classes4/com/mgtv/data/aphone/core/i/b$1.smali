.class Lcom/mgtv/data/aphone/core/i/b$1;
.super Lcom/hunantv/imgo/net/ImgoHttpCallBack;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/data/aphone/core/i/b;->a(Ljava/io/File;Lcom/mgtv/data/aphone/core/bean/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hunantv/imgo/net/ImgoHttpCallBack<",
        "Lcom/mgtv/data/aphone/core/bean/ResultBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Ljava/io/File;

.field final synthetic c:Lcom/mgtv/data/aphone/core/bean/b;

.field final synthetic d:Lcom/mgtv/data/aphone/core/i/b;


# direct methods
.method public constructor <init>(Lcom/mgtv/data/aphone/core/i/b;Ljava/io/File;Lcom/mgtv/data/aphone/core/bean/b;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/data/aphone/core/i/b$1;->d:Lcom/mgtv/data/aphone/core/i/b;

    iput-object p2, p0, Lcom/mgtv/data/aphone/core/i/b$1;->b:Ljava/io/File;

    iput-object p3, p0, Lcom/mgtv/data/aphone/core/i/b$1;->c:Lcom/mgtv/data/aphone/core/bean/b;

    invoke-direct {p0}, Lcom/hunantv/imgo/net/ImgoHttpCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/mgtv/data/aphone/core/bean/ResultBean;)V
    .locals 0

    .line 1
    return-void
.end method

.method public a(Lcom/mgtv/data/aphone/core/bean/ResultBean;IILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 6
    .param p1    # Lcom/mgtv/data/aphone/core/bean/ResultBean;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 4
    invoke-super/range {p0 .. p5}, Lcom/mgtv/task/http/c;->a(Ljava/lang/Object;IILjava/lang/String;Ljava/lang/Throwable;)V

    const/16 p1, 0xc8

    if-eq p2, p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/mgtv/data/aphone/core/i/b$1;->d:Lcom/mgtv/data/aphone/core/i/b;

    invoke-static {p1}, Lcom/mgtv/data/aphone/core/i/b;->a(Lcom/mgtv/data/aphone/core/i/b;)Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/mgtv/data/aphone/core/i/b$1;->c:Lcom/mgtv/data/aphone/core/bean/b;

    iget-object v2, p0, Lcom/mgtv/data/aphone/core/bean/b;->j:Ljava/lang/String;

    iget-object v3, p0, Lcom/mgtv/data/aphone/core/bean/b;->a:Ljava/lang/String;

    iget v4, p0, Lcom/mgtv/data/aphone/core/bean/b;->g:I

    const/4 v5, 0x1

    const-string v1, "mgtv_data_trace_zip_reporter"

    invoke-static/range {v0 .. v5}, Lcom/mgtv/data/aphone/core/db/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    :cond_0
    return-void
.end method

.method public synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p1, Lcom/mgtv/data/aphone/core/bean/ResultBean;

    invoke-virtual {p0, p1}, Lcom/mgtv/data/aphone/core/i/b$1;->b(Lcom/mgtv/data/aphone/core/bean/ResultBean;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;IILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    check-cast p1, Lcom/mgtv/data/aphone/core/bean/ResultBean;

    invoke-virtual/range {p0 .. p5}, Lcom/mgtv/data/aphone/core/i/b$1;->a(Lcom/mgtv/data/aphone/core/bean/ResultBean;IILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public b(Lcom/mgtv/data/aphone/core/bean/ResultBean;)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/mgtv/data/aphone/core/i/b$1;->d:Lcom/mgtv/data/aphone/core/i/b;

    iget-object v1, p0, Lcom/mgtv/data/aphone/core/i/b$1;->b:Ljava/io/File;

    iget-object p0, p0, Lcom/mgtv/data/aphone/core/i/b$1;->c:Lcom/mgtv/data/aphone/core/bean/b;

    iget-object v2, p0, Lcom/mgtv/data/aphone/core/bean/b;->a:Ljava/lang/String;

    invoke-static {v0, p1, v1, v2, p0}, Lcom/mgtv/data/aphone/core/i/b;->a(Lcom/mgtv/data/aphone/core/i/b;Lcom/mgtv/data/aphone/core/bean/ResultBean;Ljava/io/File;Ljava/lang/String;Lcom/mgtv/data/aphone/core/bean/b;)V

    .line 3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "####################  postData() :"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "big_data_sdk"

    invoke-static {p1, p0}, Lcom/mgtv/data/aphone/core/j/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic b(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/mgtv/data/aphone/core/bean/ResultBean;

    invoke-virtual {p0, p1}, Lcom/mgtv/data/aphone/core/i/b$1;->a(Lcom/mgtv/data/aphone/core/bean/ResultBean;)V

    return-void
.end method
