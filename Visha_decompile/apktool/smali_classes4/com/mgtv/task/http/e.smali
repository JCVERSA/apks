.class public Lcom/mgtv/task/http/e;
.super Lcom/mgtv/task/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mgtv/task/f<",
        "Lcom/mgtv/task/http/HttpRequestObject;",
        "Lcom/mgtv/task/http/HttpResponseObject;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/mgtv/task/f;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/mgtv/task/http/HttpRequestObject;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/task/f;->b:Ljava/lang/Object;

    check-cast p0, Lcom/mgtv/task/http/HttpRequestObject;

    return-object p0
.end method

.method public b()Lcom/mgtv/task/http/g;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/task/f;->a:Lcom/mgtv/task/n;

    check-cast p0, Lcom/mgtv/task/http/g;

    return-object p0
.end method
