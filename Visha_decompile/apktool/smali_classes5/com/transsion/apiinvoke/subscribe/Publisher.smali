.class public Lcom/transsion/apiinvoke/subscribe/Publisher;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/apiinvoke/subscribe/Publisher$Host;
    }
.end annotation


# static fields
.field public static final COMMON_CHANNEL:Ljava/lang/String; = "CommonChannel"

.field public static DEFAULT:Lcom/transsion/apiinvoke/subscribe/Publisher$Host; = null

.field public static final DEFAULT_SERVICE:Ljava/lang/String; = "SubscribeService"

.field public static final MATCH_ALL:Ljava/lang/String; = "*"

.field public static final PROCESS_KILL:Ljava/lang/String; = "process-kill"

.field private static final serialVersionUID:J = 0x646921c19126889dL


# instance fields
.field public host:Lcom/transsion/apiinvoke/subscribe/Publisher$Host;

.field public matcher:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/transsion/apiinvoke/subscribe/Publisher$Host;

    const-string v1, "CommonChannel"

    const-string v2, "SubscribeService"

    invoke-direct {v0, v1, v2}, Lcom/transsion/apiinvoke/subscribe/Publisher$Host;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/apiinvoke/subscribe/Publisher;->DEFAULT:Lcom/transsion/apiinvoke/subscribe/Publisher$Host;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Lcom/transsion/apiinvoke/subscribe/Publisher$Host;Ljava/lang/String;)Lcom/transsion/apiinvoke/subscribe/Publisher;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/transsion/apiinvoke/subscribe/Publisher$Host;->channel:Ljava/lang/String;

    iget-object p0, p0, Lcom/transsion/apiinvoke/subscribe/Publisher$Host;->apiName:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/transsion/apiinvoke/subscribe/Publisher;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/apiinvoke/subscribe/Publisher;

    move-result-object p0

    return-object p0
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/apiinvoke/subscribe/Publisher;
    .locals 1

    .line 4
    const-string v0, "*"

    invoke-static {p0, p1, v0}, Lcom/transsion/apiinvoke/subscribe/Publisher;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/apiinvoke/subscribe/Publisher;

    move-result-object p0

    return-object p0
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/apiinvoke/subscribe/Publisher;
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/apiinvoke/subscribe/Publisher;

    invoke-direct {v0}, Lcom/transsion/apiinvoke/subscribe/Publisher;-><init>()V

    .line 2
    new-instance v1, Lcom/transsion/apiinvoke/subscribe/Publisher$Host;

    invoke-direct {v1, p0, p1}, Lcom/transsion/apiinvoke/subscribe/Publisher$Host;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/transsion/apiinvoke/subscribe/Publisher;->host:Lcom/transsion/apiinvoke/subscribe/Publisher$Host;

    .line 3
    iput-object p2, v0, Lcom/transsion/apiinvoke/subscribe/Publisher;->matcher:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lcom/transsion/apiinvoke/subscribe/Publisher;

    iget-object v2, p0, Lcom/transsion/apiinvoke/subscribe/Publisher;->host:Lcom/transsion/apiinvoke/subscribe/Publisher$Host;

    iget-object v3, p1, Lcom/transsion/apiinvoke/subscribe/Publisher;->host:Lcom/transsion/apiinvoke/subscribe/Publisher$Host;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Lcom/transsion/apiinvoke/subscribe/Publisher;->matcher:Ljava/lang/String;

    iget-object p1, p1, Lcom/transsion/apiinvoke/subscribe/Publisher;->matcher:Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getChannel()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/apiinvoke/subscribe/Publisher;->host:Lcom/transsion/apiinvoke/subscribe/Publisher$Host;

    iget-object p0, p0, Lcom/transsion/apiinvoke/subscribe/Publisher$Host;->channel:Ljava/lang/String;

    return-object p0
.end method

.method public getHost()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/apiinvoke/subscribe/Publisher;->host:Lcom/transsion/apiinvoke/subscribe/Publisher$Host;

    invoke-virtual {p0}, Lcom/transsion/apiinvoke/subscribe/Publisher$Host;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMatcher()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/apiinvoke/subscribe/Publisher;->matcher:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/transsion/apiinvoke/subscribe/Publisher;->host:Lcom/transsion/apiinvoke/subscribe/Publisher$Host;

    iget-object p0, p0, Lcom/transsion/apiinvoke/subscribe/Publisher;->matcher:Ljava/lang/String;

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public match(Lcom/transsion/apiinvoke/subscribe/Publisher;)Z
    .locals 2

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string v0, "*"

    iget-object v1, p1, Lcom/transsion/apiinvoke/subscribe/Publisher;->matcher:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p1, Lcom/transsion/apiinvoke/subscribe/Publisher;->host:Lcom/transsion/apiinvoke/subscribe/Publisher$Host;

    iget-object p0, p0, Lcom/transsion/apiinvoke/subscribe/Publisher;->host:Lcom/transsion/apiinvoke/subscribe/Publisher$Host;

    invoke-virtual {p1, p0}, Lcom/transsion/apiinvoke/subscribe/Publisher$Host;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    invoke-virtual {p1, p0}, Lcom/transsion/apiinvoke/subscribe/Publisher;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Publisher{channel=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/apiinvoke/subscribe/Publisher;->host:Lcom/transsion/apiinvoke/subscribe/Publisher$Host;

    iget-object v1, v1, Lcom/transsion/apiinvoke/subscribe/Publisher$Host;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", apiName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/apiinvoke/subscribe/Publisher;->host:Lcom/transsion/apiinvoke/subscribe/Publisher$Host;

    iget-object v2, v2, Lcom/transsion/apiinvoke/subscribe/Publisher$Host;->apiName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", label=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/apiinvoke/subscribe/Publisher;->matcher:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
