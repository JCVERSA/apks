.class Lcom/mgtv/data/aphone/core/g/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/data/aphone/core/g/a;->a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V
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
.field final synthetic a:Lcom/mgtv/data/aphone/core/bean/EventBean;

.field final synthetic b:Lcom/mgtv/data/aphone/core/g/a;


# direct methods
.method public constructor <init>(Lcom/mgtv/data/aphone/core/g/a;Lcom/mgtv/data/aphone/core/bean/EventBean;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/data/aphone/core/g/a$2;->b:Lcom/mgtv/data/aphone/core/g/a;

    iput-object p2, p0, Lcom/mgtv/data/aphone/core/g/a$2;->a:Lcom/mgtv/data/aphone/core/bean/EventBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Boolean;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lcom/mgtv/data/aphone/b/a;

    invoke-direct {v0}, Lcom/mgtv/data/aphone/b/a;-><init>()V

    iget-object p0, p0, Lcom/mgtv/data/aphone/core/g/a$2;->a:Lcom/mgtv/data/aphone/core/bean/EventBean;

    iget-object v1, p0, Lcom/mgtv/data/aphone/core/bean/EventBean;->url:Ljava/lang/String;

    iget-object v2, p0, Lcom/mgtv/data/aphone/core/bean/EventBean;->eventId:Ljava/lang/String;

    iget-object v3, p0, Lcom/mgtv/data/aphone/core/bean/EventBean;->bid:Ljava/lang/String;

    iget-object p0, p0, Lcom/mgtv/data/aphone/core/bean/EventBean;->params:Ljava/lang/String;

    invoke-static {p0}, Lcom/mgtv/data/aphone/core/j/j;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/mgtv/data/aphone/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Lcom/mgtv/data/aphone/b/b/a;

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

    invoke-virtual {p0}, Lcom/mgtv/data/aphone/core/g/a$2;->a()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
