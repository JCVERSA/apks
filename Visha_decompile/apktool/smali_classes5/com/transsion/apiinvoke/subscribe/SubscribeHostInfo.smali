.class public Lcom/transsion/apiinvoke/subscribe/SubscribeHostInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/apiinvoke/subscribe/SubscribeHostInfo$SubscribeTypeCount;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x847fc0b9a0645b9L


# instance fields
.field private host:Lcom/transsion/apiinvoke/subscribe/Publisher$Host;

.field private subscribeTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/apiinvoke/subscribe/SubscribeHostInfo$SubscribeTypeCount;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/transsion/apiinvoke/subscribe/Publisher$Host;)V
    .locals 2

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-direct {p0, p1, v0}, Lcom/transsion/apiinvoke/subscribe/SubscribeHostInfo;-><init>(Lcom/transsion/apiinvoke/subscribe/Publisher$Host;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Lcom/transsion/apiinvoke/subscribe/Publisher$Host;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/apiinvoke/subscribe/Publisher$Host;",
            "Ljava/util/List<",
            "Lcom/transsion/apiinvoke/subscribe/SubscribeHostInfo$SubscribeTypeCount;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/transsion/apiinvoke/subscribe/SubscribeHostInfo;->host:Lcom/transsion/apiinvoke/subscribe/Publisher$Host;

    .line 5
    iput-object p2, p0, Lcom/transsion/apiinvoke/subscribe/SubscribeHostInfo;->subscribeTypes:Ljava/util/List;

    return-void
.end method

.method private static foundTypeCount(Ljava/util/List;Ljava/lang/String;)Lcom/transsion/apiinvoke/subscribe/SubscribeHostInfo$SubscribeTypeCount;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/apiinvoke/subscribe/SubscribeHostInfo$SubscribeTypeCount;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/transsion/apiinvoke/subscribe/SubscribeHostInfo$SubscribeTypeCount;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/apiinvoke/subscribe/SubscribeHostInfo$SubscribeTypeCount;

    iget-object v2, v1, Lcom/transsion/apiinvoke/subscribe/SubscribeHostInfo$SubscribeTypeCount;->type:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_2
    :goto_0
    return-object v0
.end method


# virtual methods
.method public findSubscribeType(Ljava/lang/String;)Lcom/transsion/apiinvoke/subscribe/SubscribeHostInfo$SubscribeTypeCount;
    .locals 0

    iget-object p0, p0, Lcom/transsion/apiinvoke/subscribe/SubscribeHostInfo;->subscribeTypes:Ljava/util/List;

    invoke-static {p0, p1}, Lcom/transsion/apiinvoke/subscribe/SubscribeHostInfo;->foundTypeCount(Ljava/util/List;Ljava/lang/String;)Lcom/transsion/apiinvoke/subscribe/SubscribeHostInfo$SubscribeTypeCount;

    move-result-object p0

    return-object p0
.end method

.method public getChannel()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/apiinvoke/subscribe/SubscribeHostInfo;->host:Lcom/transsion/apiinvoke/subscribe/Publisher$Host;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/transsion/apiinvoke/subscribe/Publisher$Host;->channel:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public getHost()Lcom/transsion/apiinvoke/subscribe/Publisher$Host;
    .locals 0

    iget-object p0, p0, Lcom/transsion/apiinvoke/subscribe/SubscribeHostInfo;->host:Lcom/transsion/apiinvoke/subscribe/Publisher$Host;

    return-object p0
.end method

.method public getSubscribeTypes()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/apiinvoke/subscribe/SubscribeHostInfo$SubscribeTypeCount;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/apiinvoke/subscribe/SubscribeHostInfo;->subscribeTypes:Ljava/util/List;

    return-object p0
.end method

.method public setHost(Lcom/transsion/apiinvoke/subscribe/Publisher$Host;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/apiinvoke/subscribe/SubscribeHostInfo;->host:Lcom/transsion/apiinvoke/subscribe/Publisher$Host;

    return-void
.end method

.method public setSubscribeTypes(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/apiinvoke/subscribe/SubscribeHostInfo$SubscribeTypeCount;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/apiinvoke/subscribe/SubscribeHostInfo;->subscribeTypes:Ljava/util/List;

    return-void
.end method

.method public subscribeType(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/apiinvoke/subscribe/SubscribeHostInfo;->subscribeTypes:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/transsion/apiinvoke/subscribe/SubscribeHostInfo;->foundTypeCount(Ljava/util/List;Ljava/lang/String;)Lcom/transsion/apiinvoke/subscribe/SubscribeHostInfo$SubscribeTypeCount;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0, p1, v1}, Lcom/transsion/apiinvoke/subscribe/SubscribeHostInfo;->subscribeType(Ljava/lang/String;I)V

    return-void

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/transsion/apiinvoke/subscribe/SubscribeHostInfo;->subscribeTypes:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 4
    iget v2, v0, Lcom/transsion/apiinvoke/subscribe/SubscribeHostInfo$SubscribeTypeCount;->subscribeCount:I

    add-int/2addr v2, v1

    iput v2, v0, Lcom/transsion/apiinvoke/subscribe/SubscribeHostInfo$SubscribeTypeCount;->subscribeCount:I

    .line 5
    iget-object p0, p0, Lcom/transsion/apiinvoke/subscribe/SubscribeHostInfo;->subscribeTypes:Ljava/util/List;

    invoke-interface {p0, p1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public subscribeType(Ljava/lang/String;I)V
    .locals 3

    .line 6
    iget-object v0, p0, Lcom/transsion/apiinvoke/subscribe/SubscribeHostInfo;->subscribeTypes:Ljava/util/List;

    if-nez v0, :cond_0

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/apiinvoke/subscribe/SubscribeHostInfo;->subscribeTypes:Ljava/util/List;

    .line 8
    new-instance p0, Lcom/transsion/apiinvoke/subscribe/SubscribeHostInfo$SubscribeTypeCount;

    invoke-direct {p0, p1, p2}, Lcom/transsion/apiinvoke/subscribe/SubscribeHostInfo$SubscribeTypeCount;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 9
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/apiinvoke/subscribe/SubscribeHostInfo$SubscribeTypeCount;

    .line 10
    iget-object v2, v1, Lcom/transsion/apiinvoke/subscribe/SubscribeHostInfo$SubscribeTypeCount;->type:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_3

    .line 11
    iget-object p0, p0, Lcom/transsion/apiinvoke/subscribe/SubscribeHostInfo;->subscribeTypes:Ljava/util/List;

    new-instance v0, Lcom/transsion/apiinvoke/subscribe/SubscribeHostInfo$SubscribeTypeCount;

    invoke-direct {v0, p1, p2}, Lcom/transsion/apiinvoke/subscribe/SubscribeHostInfo$SubscribeTypeCount;-><init>(Ljava/lang/String;I)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 12
    :cond_3
    iput p2, v1, Lcom/transsion/apiinvoke/subscribe/SubscribeHostInfo$SubscribeTypeCount;->subscribeCount:I

    return-void
.end method

.method public unSubscribeType(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/apiinvoke/subscribe/SubscribeHostInfo;->subscribeTypes:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/transsion/apiinvoke/subscribe/SubscribeHostInfo;->foundTypeCount(Ljava/util/List;Ljava/lang/String;)Lcom/transsion/apiinvoke/subscribe/SubscribeHostInfo$SubscribeTypeCount;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/apiinvoke/subscribe/SubscribeHostInfo;->subscribeTypes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iget v1, p1, Lcom/transsion/apiinvoke/subscribe/SubscribeHostInfo$SubscribeTypeCount;->subscribeCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p1, Lcom/transsion/apiinvoke/subscribe/SubscribeHostInfo$SubscribeTypeCount;->subscribeCount:I

    if-nez v1, :cond_1

    iget-object p0, p0, Lcom/transsion/apiinvoke/subscribe/SubscribeHostInfo;->subscribeTypes:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void

    :cond_1
    iget-object p0, p0, Lcom/transsion/apiinvoke/subscribe/SubscribeHostInfo;->subscribeTypes:Ljava/util/List;

    invoke-interface {p0, v0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public updateSubscribeTypeCount(Ljava/lang/String;I)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/apiinvoke/subscribe/SubscribeHostInfo;->subscribeTypes:Ljava/util/List;

    invoke-static {p0, p1}, Lcom/transsion/apiinvoke/subscribe/SubscribeHostInfo;->foundTypeCount(Ljava/util/List;Ljava/lang/String;)Lcom/transsion/apiinvoke/subscribe/SubscribeHostInfo$SubscribeTypeCount;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    iput p2, p0, Lcom/transsion/apiinvoke/subscribe/SubscribeHostInfo$SubscribeTypeCount;->subscribeCount:I

    return-void
.end method
