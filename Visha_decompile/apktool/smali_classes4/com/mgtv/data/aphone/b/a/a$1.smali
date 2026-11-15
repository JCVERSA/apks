.class Lcom/mgtv/data/aphone/b/a/a$1;
.super Lcom/mgtv/data/aphone/core/a/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/data/aphone/b/a/a;->a(Ljava/lang/String;Ljava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mgtv/data/aphone/core/a/a<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mgtv/data/aphone/b/a/a;


# direct methods
.method public constructor <init>(Lcom/mgtv/data/aphone/b/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/data/aphone/b/a/a$1;->a:Lcom/mgtv/data/aphone/b/a/a;

    invoke-direct {p0}, Lcom/mgtv/data/aphone/core/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1

    .line 1
    new-instance p1, Lcom/mgtv/data/aphone/b/b/a;

    invoke-direct {p1}, Lcom/mgtv/data/aphone/b/b/a;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/mgtv/task/http/c;->e()Lcom/mgtv/task/http/HttpTraceObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgtv/task/http/HttpTraceObject;->getHttpStatus()I

    move-result v0

    iput v0, p1, Lcom/mgtv/data/aphone/b/b/a;->a:I

    .line 3
    invoke-virtual {p0}, Lcom/mgtv/task/http/c;->e()Lcom/mgtv/task/http/HttpTraceObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgtv/task/http/HttpTraceObject;->getBodyText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/mgtv/data/aphone/b/b/a;->d:Ljava/lang/String;

    const/4 v0, 0x0

    .line 4
    iput v0, p1, Lcom/mgtv/data/aphone/b/b/a;->b:I

    .line 5
    invoke-virtual {p0}, Lcom/mgtv/task/http/c;->e()Lcom/mgtv/task/http/HttpTraceObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgtv/task/http/HttpTraceObject;->getFinalUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/mgtv/data/aphone/b/b/a;->e:Ljava/lang/String;

    .line 6
    invoke-virtual {p0}, Lcom/mgtv/task/http/c;->e()Lcom/mgtv/task/http/HttpTraceObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgtv/task/http/HttpTraceObject;->getMethod()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/mgtv/data/aphone/b/b/a;->f:Ljava/lang/String;

    .line 7
    iget-object p0, p0, Lcom/mgtv/data/aphone/b/a/a$1;->a:Lcom/mgtv/data/aphone/b/a/a;

    invoke-static {p0}, Lcom/mgtv/data/aphone/b/a/a;->a(Lcom/mgtv/data/aphone/b/a/a;)Lcom/mgtv/data/aphone/b/c/a;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/mgtv/data/aphone/b/c/a;->a(Lcom/mgtv/data/aphone/b/b/a;)V

    return-void
.end method

.method public a(Ljava/lang/Object;IILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8
    new-instance p1, Lcom/mgtv/data/aphone/b/b/a;

    invoke-direct {p1}, Lcom/mgtv/data/aphone/b/b/a;-><init>()V

    .line 9
    invoke-virtual {p0}, Lcom/mgtv/task/http/c;->e()Lcom/mgtv/task/http/HttpTraceObject;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mgtv/task/http/HttpTraceObject;->getHttpStatus()I

    move-result p2

    iput p2, p1, Lcom/mgtv/data/aphone/b/b/a;->a:I

    .line 10
    invoke-virtual {p0}, Lcom/mgtv/task/http/c;->e()Lcom/mgtv/task/http/HttpTraceObject;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mgtv/task/http/HttpTraceObject;->getBodyText()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/mgtv/data/aphone/b/b/a;->d:Ljava/lang/String;

    .line 11
    invoke-virtual {p0}, Lcom/mgtv/task/http/c;->e()Lcom/mgtv/task/http/HttpTraceObject;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mgtv/task/http/HttpTraceObject;->getFinalUrl()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/mgtv/data/aphone/b/b/a;->e:Ljava/lang/String;

    const/4 p2, -0x1

    .line 12
    iput p2, p1, Lcom/mgtv/data/aphone/b/b/a;->b:I

    .line 13
    invoke-virtual {p0}, Lcom/mgtv/task/http/c;->e()Lcom/mgtv/task/http/HttpTraceObject;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mgtv/task/http/HttpTraceObject;->getMethod()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/mgtv/data/aphone/b/b/a;->f:Ljava/lang/String;

    .line 14
    iget-object p0, p0, Lcom/mgtv/data/aphone/b/a/a$1;->a:Lcom/mgtv/data/aphone/b/a/a;

    invoke-static {p0}, Lcom/mgtv/data/aphone/b/a/a;->a(Lcom/mgtv/data/aphone/b/a/a;)Lcom/mgtv/data/aphone/b/c/a;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/mgtv/data/aphone/b/c/a;->a(Lcom/mgtv/data/aphone/b/b/a;)V

    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
