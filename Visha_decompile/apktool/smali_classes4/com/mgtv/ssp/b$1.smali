.class Lcom/mgtv/ssp/b$1;
.super Lcom/hunantv/imgo/net/ImgoHttpCallBack;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/ssp/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/mgtv/ssp/MgtvJumpDataCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hunantv/imgo/net/ImgoHttpCallBack<",
        "Lcom/mgtv/ssp/bean/SspJumpBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/mgtv/ssp/MgtvJumpDataCallback;

.field final synthetic c:Lcom/mgtv/ssp/b;


# direct methods
.method public constructor <init>(Lcom/mgtv/ssp/b;Lcom/mgtv/ssp/MgtvJumpDataCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/b$1;->c:Lcom/mgtv/ssp/b;

    iput-object p2, p0, Lcom/mgtv/ssp/b$1;->b:Lcom/mgtv/ssp/MgtvJumpDataCallback;

    invoke-direct {p0}, Lcom/hunantv/imgo/net/ImgoHttpCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/mgtv/ssp/bean/SspJumpBean;)V
    .locals 0

    .line 1
    return-void
.end method

.method public a(Lcom/mgtv/ssp/bean/SspJumpBean;IILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1    # Lcom/mgtv/ssp/bean/SspJumpBean;
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

    .line 5
    iget-object p0, p0, Lcom/mgtv/ssp/b$1;->b:Lcom/mgtv/ssp/MgtvJumpDataCallback;

    if-eqz p0, :cond_0

    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ERR: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p0, p2, p1}, Lcom/mgtv/ssp/MgtvJumpDataCallback;->onResult(ZLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p1, Lcom/mgtv/ssp/bean/SspJumpBean;

    invoke-virtual {p0, p1}, Lcom/mgtv/ssp/b$1;->b(Lcom/mgtv/ssp/bean/SspJumpBean;)V

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
    check-cast p1, Lcom/mgtv/ssp/bean/SspJumpBean;

    invoke-virtual/range {p0 .. p5}, Lcom/mgtv/ssp/b$1;->a(Lcom/mgtv/ssp/bean/SspJumpBean;IILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public b(Lcom/mgtv/ssp/bean/SspJumpBean;)V
    .locals 1

    if-nez p1, :cond_0

    .line 2
    iget-object p0, p0, Lcom/mgtv/ssp/b$1;->b:Lcom/mgtv/ssp/MgtvJumpDataCallback;

    if-eqz p0, :cond_1

    const/4 p1, 0x0

    .line 3
    const-string v0, "is null"

    invoke-interface {p0, p1, v0}, Lcom/mgtv/ssp/MgtvJumpDataCallback;->onResult(ZLjava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/mgtv/ssp/b$1;->c:Lcom/mgtv/ssp/b;

    iget-object p0, p0, Lcom/mgtv/ssp/b$1;->b:Lcom/mgtv/ssp/MgtvJumpDataCallback;

    invoke-static {v0, p1, p0}, Lcom/mgtv/ssp/b;->a(Lcom/mgtv/ssp/b;Lcom/mgtv/ssp/bean/SspJumpBean;Lcom/mgtv/ssp/MgtvJumpDataCallback;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic b(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/mgtv/ssp/bean/SspJumpBean;

    invoke-virtual {p0, p1}, Lcom/mgtv/ssp/b$1;->a(Lcom/mgtv/ssp/bean/SspJumpBean;)V

    return-void
.end method
