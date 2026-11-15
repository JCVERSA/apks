.class Lcom/mgtv/data/aphone/a/a$2;
.super Lcom/mgtv/task/http/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/data/aphone/a/a;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mgtv/task/http/c<",
        "Lcom/mgtv/data/aphone/core/bean/TraceTaskBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mgtv/data/aphone/a/a;


# direct methods
.method public constructor <init>(Lcom/mgtv/data/aphone/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/data/aphone/a/a$2;->a:Lcom/mgtv/data/aphone/a/a;

    invoke-direct {p0}, Lcom/mgtv/task/http/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/mgtv/data/aphone/core/bean/TraceTaskBean;)V
    .locals 0

    .line 1
    return-void
.end method

.method public synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p1, Lcom/mgtv/data/aphone/core/bean/TraceTaskBean;

    invoke-virtual {p0, p1}, Lcom/mgtv/data/aphone/a/a$2;->b(Lcom/mgtv/data/aphone/core/bean/TraceTaskBean;)V

    return-void
.end method

.method public b(Lcom/mgtv/data/aphone/core/bean/TraceTaskBean;)V
    .locals 2

    .line 2
    const-string p0, "big_data_sdk"

    if-eqz p1, :cond_0

    iget v0, p1, Lcom/mgtv/data/aphone/core/bean/TraceTaskBean;->localLog:I

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "####################  initTrace()  bean.localLog :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/mgtv/data/aphone/core/bean/TraceTaskBean;->localLog:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mgtv/data/aphone/core/j/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 4
    sput-boolean v0, Lcom/mgtv/data/aphone/core/i/b;->a:Z

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_2

    .line 5
    iget v0, p1, Lcom/mgtv/data/aphone/core/bean/TraceTaskBean;->localLog:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    sput-boolean v1, Lcom/mgtv/data/aphone/core/i/b;->a:Z

    goto :goto_1

    .line 7
    :cond_2
    :goto_0
    iget v0, p1, Lcom/mgtv/data/aphone/core/bean/TraceTaskBean;->localLog:I

    .line 8
    :goto_1
    sget-boolean v0, Lcom/mgtv/data/aphone/core/i/b;->a:Z

    if-eqz v0, :cond_4

    if-eqz p1, :cond_3

    .line 9
    iget-object v0, p1, Lcom/mgtv/data/aphone/core/bean/TraceTaskBean;->upTask:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "####################  initTrace() :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/mgtv/data/aphone/core/bean/TraceTaskBean;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mgtv/data/aphone/core/j/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget p0, p1, Lcom/mgtv/data/aphone/core/bean/TraceTaskBean;->localLog:I

    if-eqz p0, :cond_3

    .line 12
    invoke-static {}, Lcom/mgtv/data/aphone/core/i/b;->a()Lcom/mgtv/data/aphone/core/i/b;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/mgtv/data/aphone/core/i/b;->a(Lcom/mgtv/data/aphone/core/bean/TraceTaskBean;)V

    .line 13
    :cond_3
    invoke-static {}, Lcom/mgtv/data/aphone/core/i/b;->a()Lcom/mgtv/data/aphone/core/i/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mgtv/data/aphone/core/i/b;->b()V

    :cond_4
    return-void
.end method

.method public synthetic b(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/mgtv/data/aphone/core/bean/TraceTaskBean;

    invoke-virtual {p0, p1}, Lcom/mgtv/data/aphone/a/a$2;->a(Lcom/mgtv/data/aphone/core/bean/TraceTaskBean;)V

    return-void
.end method
