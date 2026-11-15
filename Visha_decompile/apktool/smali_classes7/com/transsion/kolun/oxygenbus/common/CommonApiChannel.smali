.class public final Lcom/transsion/kolun/oxygenbus/common/CommonApiChannel;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final API_SERVICE_CLASS:Ljava/lang/String; = "com.transsion.apiinvoke.ipc.connect.CommonRouterApiService"


# instance fields
.field private apiServices:[Ljava/lang/String;

.field private channelName:Ljava/lang/String;

.field private componentName:Landroid/content/ComponentName;

.field private packageName:Ljava/lang/String;

.field private pid:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/transsion/kolun/oxygenbus/common/CommonApiChannel;-><init>(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lcom/transsion/kolun/oxygenbus/common/CommonApiChannel;->packageName:Ljava/lang/String;

    .line 4
    iput p3, p0, Lcom/transsion/kolun/oxygenbus/common/CommonApiChannel;->pid:I

    .line 5
    iput-object p4, p0, Lcom/transsion/kolun/oxygenbus/common/CommonApiChannel;->apiServices:[Ljava/lang/String;

    .line 6
    iput-object p1, p0, Lcom/transsion/kolun/oxygenbus/common/CommonApiChannel;->channelName:Ljava/lang/String;

    .line 7
    new-instance p1, Landroid/content/ComponentName;

    const-string p3, "com.transsion.apiinvoke.ipc.connect.CommonRouterApiService"

    invoke-direct {p1, p2, p3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/kolun/oxygenbus/common/CommonApiChannel;->componentName:Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public apiServices()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/kolun/oxygenbus/common/CommonApiChannel;->apiServices:[Ljava/lang/String;

    return-object p0
.end method

.method public channelName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/kolun/oxygenbus/common/CommonApiChannel;->channelName:Ljava/lang/String;

    return-object p0
.end method

.method public packageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/kolun/oxygenbus/common/CommonApiChannel;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public pid()I
    .locals 0

    iget p0, p0, Lcom/transsion/kolun/oxygenbus/common/CommonApiChannel;->pid:I

    return p0
.end method

.method public serviceComponent()Landroid/content/ComponentName;
    .locals 0

    iget-object p0, p0, Lcom/transsion/kolun/oxygenbus/common/CommonApiChannel;->componentName:Landroid/content/ComponentName;

    return-object p0
.end method

.method public toChannelEntity()Lcom/transsion/apiinvoke/common/router/ChannelEntity;
    .locals 3

    iget-object v0, p0, Lcom/transsion/kolun/oxygenbus/common/CommonApiChannel;->channelName:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/kolun/oxygenbus/common/CommonApiChannel;->packageName:Ljava/lang/String;

    const-string v2, "com.transsion.apiinvoke.ipc.connect.CommonRouterApiService"

    iget-object p0, p0, Lcom/transsion/kolun/oxygenbus/common/CommonApiChannel;->apiServices:[Ljava/lang/String;

    invoke-static {v0, v1, v2, p0}, Lcom/transsion/apiinvoke/common/router/ChannelEntity;->createChannel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/transsion/apiinvoke/common/router/ChannelEntity;

    move-result-object p0

    return-object p0
.end method
