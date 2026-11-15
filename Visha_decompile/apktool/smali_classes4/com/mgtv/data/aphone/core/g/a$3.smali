.class Lcom/mgtv/data/aphone/core/g/a$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/data/aphone/core/g/a;->b(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:I

.field final synthetic c:Lcom/mgtv/data/aphone/core/g/a;


# direct methods
.method public constructor <init>(Lcom/mgtv/data/aphone/core/g/a;Ljava/util/List;I)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/data/aphone/core/g/a$3;->c:Lcom/mgtv/data/aphone/core/g/a;

    iput-object p2, p0, Lcom/mgtv/data/aphone/core/g/a$3;->a:Ljava/util/List;

    iput p3, p0, Lcom/mgtv/data/aphone/core/g/a$3;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Boolean;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lcom/mgtv/data/aphone/b/a;

    invoke-direct {v0}, Lcom/mgtv/data/aphone/b/a;-><init>()V

    iget-object v1, p0, Lcom/mgtv/data/aphone/core/g/a$3;->a:Ljava/util/List;

    iget v2, p0, Lcom/mgtv/data/aphone/core/g/a$3;->b:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mgtv/data/aphone/core/bean/OffLineHbBean;

    iget-object v1, v1, Lcom/mgtv/data/aphone/core/bean/EventBean;->url:Ljava/lang/String;

    iget-object v2, p0, Lcom/mgtv/data/aphone/core/g/a$3;->a:Ljava/util/List;

    iget v3, p0, Lcom/mgtv/data/aphone/core/g/a$3;->b:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mgtv/data/aphone/core/bean/OffLineHbBean;

    iget-object v2, v2, Lcom/mgtv/data/aphone/core/bean/EventBean;->eventId:Ljava/lang/String;

    iget-object v3, p0, Lcom/mgtv/data/aphone/core/g/a$3;->a:Ljava/util/List;

    iget v4, p0, Lcom/mgtv/data/aphone/core/g/a$3;->b:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mgtv/data/aphone/core/bean/OffLineHbBean;

    iget-object v3, v3, Lcom/mgtv/data/aphone/core/bean/OffLineHbBean;->bid:Ljava/lang/String;

    iget-object v4, p0, Lcom/mgtv/data/aphone/core/g/a$3;->a:Ljava/util/List;

    iget p0, p0, Lcom/mgtv/data/aphone/core/g/a$3;->b:I

    invoke-interface {v4, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mgtv/data/aphone/core/bean/OffLineHbBean;

    iget-object p0, p0, Lcom/mgtv/data/aphone/core/bean/EventBean;->params:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/mgtv/data/aphone/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/data/aphone/b/b/a;

    move-result-object p0

    iget p0, p0, Lcom/mgtv/data/aphone/b/b/a;->a:I

    const/16 v0, 0xc8

    if-ne p0, v0, :cond_0

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_0
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/mgtv/data/aphone/core/g/a$3;->a()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
