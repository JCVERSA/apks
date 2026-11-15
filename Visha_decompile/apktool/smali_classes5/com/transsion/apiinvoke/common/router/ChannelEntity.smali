.class public Lcom/transsion/apiinvoke/common/router/ChannelEntity;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public autoConnect:Z

.field public channelName:Ljava/lang/String;

.field public channelService:[Ljava/lang/String;

.field public className:Ljava/lang/String;

.field public packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/apiinvoke/common/router/ChannelEntity;->autoConnect:Z

    return-void
.end method

.method public static createChannel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/transsion/apiinvoke/common/router/ChannelEntity;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, p1, p2, p3, v0}, Lcom/transsion/apiinvoke/common/router/ChannelEntity;->createChannel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)Lcom/transsion/apiinvoke/common/router/ChannelEntity;

    move-result-object p0

    return-object p0
.end method

.method public static createChannel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)Lcom/transsion/apiinvoke/common/router/ChannelEntity;
    .locals 1

    .line 2
    new-instance v0, Lcom/transsion/apiinvoke/common/router/ChannelEntity;

    invoke-direct {v0}, Lcom/transsion/apiinvoke/common/router/ChannelEntity;-><init>()V

    .line 3
    iput-object p0, v0, Lcom/transsion/apiinvoke/common/router/ChannelEntity;->channelName:Ljava/lang/String;

    .line 4
    iput-object p1, v0, Lcom/transsion/apiinvoke/common/router/ChannelEntity;->packageName:Ljava/lang/String;

    .line 5
    iput-object p2, v0, Lcom/transsion/apiinvoke/common/router/ChannelEntity;->className:Ljava/lang/String;

    .line 6
    iput-object p3, v0, Lcom/transsion/apiinvoke/common/router/ChannelEntity;->channelService:[Ljava/lang/String;

    .line 7
    iput-boolean p4, v0, Lcom/transsion/apiinvoke/common/router/ChannelEntity;->autoConnect:Z

    return-object v0
.end method

.method public static createLocalChannel(Ljava/lang/String;)Lcom/transsion/apiinvoke/common/router/ChannelEntity;
    .locals 1

    .line 7
    new-instance v0, Lcom/transsion/apiinvoke/common/router/ChannelEntity;

    invoke-direct {v0}, Lcom/transsion/apiinvoke/common/router/ChannelEntity;-><init>()V

    .line 8
    iput-object p0, v0, Lcom/transsion/apiinvoke/common/router/ChannelEntity;->channelName:Ljava/lang/String;

    .line 9
    const-string p0, ""

    iput-object p0, v0, Lcom/transsion/apiinvoke/common/router/ChannelEntity;->packageName:Ljava/lang/String;

    .line 10
    iput-object p0, v0, Lcom/transsion/apiinvoke/common/router/ChannelEntity;->className:Ljava/lang/String;

    const/4 p0, 0x0

    .line 11
    new-array p0, p0, [Ljava/lang/String;

    iput-object p0, v0, Lcom/transsion/apiinvoke/common/router/ChannelEntity;->channelService:[Ljava/lang/String;

    const/4 p0, 0x1

    .line 12
    iput-boolean p0, v0, Lcom/transsion/apiinvoke/common/router/ChannelEntity;->autoConnect:Z

    return-object v0
.end method

.method public static createLocalChannel(Ljava/lang/String;[Ljava/lang/String;)Lcom/transsion/apiinvoke/common/router/ChannelEntity;
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/apiinvoke/common/router/ChannelEntity;

    invoke-direct {v0}, Lcom/transsion/apiinvoke/common/router/ChannelEntity;-><init>()V

    .line 2
    iput-object p0, v0, Lcom/transsion/apiinvoke/common/router/ChannelEntity;->channelName:Ljava/lang/String;

    .line 3
    const-string p0, ""

    iput-object p0, v0, Lcom/transsion/apiinvoke/common/router/ChannelEntity;->packageName:Ljava/lang/String;

    .line 4
    iput-object p0, v0, Lcom/transsion/apiinvoke/common/router/ChannelEntity;->className:Ljava/lang/String;

    .line 5
    iput-object p1, v0, Lcom/transsion/apiinvoke/common/router/ChannelEntity;->channelService:[Ljava/lang/String;

    const/4 p0, 0x1

    .line 6
    iput-boolean p0, v0, Lcom/transsion/apiinvoke/common/router/ChannelEntity;->autoConnect:Z

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
    check-cast p1, Lcom/transsion/apiinvoke/common/router/ChannelEntity;

    iget-boolean v2, p0, Lcom/transsion/apiinvoke/common/router/ChannelEntity;->autoConnect:Z

    iget-boolean v3, p1, Lcom/transsion/apiinvoke/common/router/ChannelEntity;->autoConnect:Z

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/transsion/apiinvoke/common/router/ChannelEntity;->channelName:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/apiinvoke/common/router/ChannelEntity;->channelName:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/transsion/apiinvoke/common/router/ChannelEntity;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/apiinvoke/common/router/ChannelEntity;->packageName:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Lcom/transsion/apiinvoke/common/router/ChannelEntity;->className:Ljava/lang/String;

    iget-object p1, p1, Lcom/transsion/apiinvoke/common/router/ChannelEntity;->className:Ljava/lang/String;

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

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/transsion/apiinvoke/common/router/ChannelEntity;->channelName:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/apiinvoke/common/router/ChannelEntity;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/apiinvoke/common/router/ChannelEntity;->className:Ljava/lang/String;

    iget-boolean p0, p0, Lcom/transsion/apiinvoke/common/router/ChannelEntity;->autoConnect:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    filled-new-array {v0, v1, v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public isClientConnectChannel()Z
    .locals 2

    const-string v0, ""

    iget-object v1, p0, Lcom/transsion/apiinvoke/common/router/ChannelEntity;->channelName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/apiinvoke/common/router/ChannelEntity;->channelService:[Ljava/lang/String;

    if-eqz v0, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/transsion/apiinvoke/common/router/ChannelEntity;->channelService:[Ljava/lang/String;

    array-length p0, p0

    if-nez p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isInChannel(Ljava/lang/String;)Z
    .locals 5

    iget-object v0, p0, Lcom/transsion/apiinvoke/common/router/ChannelEntity;->channelService:[Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    array-length v2, v0

    if-nez v2, :cond_0

    goto :goto_2

    :cond_0
    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/transsion/apiinvoke/common/router/ChannelEntity;->channelService:[Ljava/lang/String;

    array-length v2, p0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, p0, v3

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    monitor-exit v0

    return v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    :goto_2
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChannelEntity{channelName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/apiinvoke/common/router/ChannelEntity;->channelName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", packageName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/apiinvoke/common/router/ChannelEntity;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", className=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/apiinvoke/common/router/ChannelEntity;->className:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", channelService="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/apiinvoke/common/router/ChannelEntity;->channelService:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", autoConnect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/apiinvoke/common/router/ChannelEntity;->autoConnect:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
