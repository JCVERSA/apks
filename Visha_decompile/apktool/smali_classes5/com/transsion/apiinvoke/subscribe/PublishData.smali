.class public Lcom/transsion/apiinvoke/subscribe/PublishData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ljava/io/Serializable;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x676a6704d500369L


# instance fields
.field private data:Ljava/io/Serializable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private publisher:Lcom/transsion/apiinvoke/subscribe/Publisher;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Lcom/transsion/apiinvoke/subscribe/Publisher;Ljava/io/Serializable;)Lcom/transsion/apiinvoke/subscribe/PublishData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/io/Serializable;",
            ">(",
            "Lcom/transsion/apiinvoke/subscribe/Publisher;",
            "TT;)",
            "Lcom/transsion/apiinvoke/subscribe/PublishData<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/transsion/apiinvoke/subscribe/PublishData;

    invoke-direct {v0}, Lcom/transsion/apiinvoke/subscribe/PublishData;-><init>()V

    iput-object p0, v0, Lcom/transsion/apiinvoke/subscribe/PublishData;->publisher:Lcom/transsion/apiinvoke/subscribe/Publisher;

    iput-object p1, v0, Lcom/transsion/apiinvoke/subscribe/PublishData;->data:Ljava/io/Serializable;

    return-object v0
.end method


# virtual methods
.method public getData()Ljava/io/Serializable;
    .locals 0

    iget-object p0, p0, Lcom/transsion/apiinvoke/subscribe/PublishData;->data:Ljava/io/Serializable;

    return-object p0
.end method

.method public getPublisher()Lcom/transsion/apiinvoke/subscribe/Publisher;
    .locals 0

    iget-object p0, p0, Lcom/transsion/apiinvoke/subscribe/PublishData;->publisher:Lcom/transsion/apiinvoke/subscribe/Publisher;

    return-object p0
.end method

.method public setData(Ljava/io/Serializable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/apiinvoke/subscribe/PublishData;->data:Ljava/io/Serializable;

    return-void
.end method

.method public setPublisher(Lcom/transsion/apiinvoke/subscribe/Publisher;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/apiinvoke/subscribe/PublishData;->publisher:Lcom/transsion/apiinvoke/subscribe/Publisher;

    return-void
.end method
