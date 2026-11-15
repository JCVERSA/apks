.class public Lcom/transsion/push/bean/PushNotification;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/push/bean/PushNotification$Builder;
    }
.end annotation


# instance fields
.field private btnId:I

.field private channelId:Ljava/lang/String;

.field private contentBigId:I

.field private contentId:I

.field private iconColor:Ljava/lang/String;

.field private iconId:I

.field private imgBigId:I

.field private layoutId:I

.field private showDefaultLargeIcon:Z

.field private smallIcon:I

.field private styleId:I

.field private titleId:I

.field private type:I


# direct methods
.method private constructor <init>(Lcom/transsion/push/bean/PushNotification$Builder;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-direct {p0, p1}, Lcom/transsion/push/bean/PushNotification;->checkParam(Lcom/transsion/push/bean/PushNotification$Builder;)V

    .line 4
    invoke-static {p1}, Lcom/transsion/push/bean/PushNotification$Builder;->access$000(Lcom/transsion/push/bean/PushNotification$Builder;)I

    move-result v0

    iput v0, p0, Lcom/transsion/push/bean/PushNotification;->styleId:I

    .line 5
    invoke-static {p1}, Lcom/transsion/push/bean/PushNotification$Builder;->access$100(Lcom/transsion/push/bean/PushNotification$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/push/bean/PushNotification;->channelId:Ljava/lang/String;

    .line 6
    invoke-static {p1}, Lcom/transsion/push/bean/PushNotification$Builder;->access$200(Lcom/transsion/push/bean/PushNotification$Builder;)I

    move-result v0

    iput v0, p0, Lcom/transsion/push/bean/PushNotification;->type:I

    .line 7
    invoke-static {p1}, Lcom/transsion/push/bean/PushNotification$Builder;->access$300(Lcom/transsion/push/bean/PushNotification$Builder;)I

    move-result v0

    iput v0, p0, Lcom/transsion/push/bean/PushNotification;->smallIcon:I

    .line 8
    invoke-static {p1}, Lcom/transsion/push/bean/PushNotification$Builder;->access$400(Lcom/transsion/push/bean/PushNotification$Builder;)I

    move-result v0

    iput v0, p0, Lcom/transsion/push/bean/PushNotification;->layoutId:I

    .line 9
    invoke-static {p1}, Lcom/transsion/push/bean/PushNotification$Builder;->access$500(Lcom/transsion/push/bean/PushNotification$Builder;)I

    move-result v0

    iput v0, p0, Lcom/transsion/push/bean/PushNotification;->iconId:I

    .line 10
    invoke-static {p1}, Lcom/transsion/push/bean/PushNotification$Builder;->access$600(Lcom/transsion/push/bean/PushNotification$Builder;)I

    move-result v0

    iput v0, p0, Lcom/transsion/push/bean/PushNotification;->titleId:I

    .line 11
    invoke-static {p1}, Lcom/transsion/push/bean/PushNotification$Builder;->access$700(Lcom/transsion/push/bean/PushNotification$Builder;)I

    move-result v0

    iput v0, p0, Lcom/transsion/push/bean/PushNotification;->contentId:I

    .line 12
    invoke-static {p1}, Lcom/transsion/push/bean/PushNotification$Builder;->access$800(Lcom/transsion/push/bean/PushNotification$Builder;)I

    move-result v0

    iput v0, p0, Lcom/transsion/push/bean/PushNotification;->btnId:I

    .line 13
    invoke-static {p1}, Lcom/transsion/push/bean/PushNotification$Builder;->access$900(Lcom/transsion/push/bean/PushNotification$Builder;)I

    move-result v0

    iput v0, p0, Lcom/transsion/push/bean/PushNotification;->imgBigId:I

    .line 14
    invoke-static {p1}, Lcom/transsion/push/bean/PushNotification$Builder;->access$1000(Lcom/transsion/push/bean/PushNotification$Builder;)I

    move-result v0

    iput v0, p0, Lcom/transsion/push/bean/PushNotification;->contentBigId:I

    .line 15
    invoke-static {p1}, Lcom/transsion/push/bean/PushNotification$Builder;->access$1100(Lcom/transsion/push/bean/PushNotification$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/push/bean/PushNotification;->showDefaultLargeIcon:Z

    .line 16
    invoke-static {p1}, Lcom/transsion/push/bean/PushNotification$Builder;->access$1200(Lcom/transsion/push/bean/PushNotification$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/push/bean/PushNotification;->iconColor:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/push/bean/PushNotification$Builder;Lcom/transsion/push/bean/PushNotification$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/push/bean/PushNotification;-><init>(Lcom/transsion/push/bean/PushNotification$Builder;)V

    return-void
.end method

.method private checkParam(Lcom/transsion/push/bean/PushNotification$Builder;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/transsion/push/bean/PushNotification$Builder;->access$300(Lcom/transsion/push/bean/PushNotification$Builder;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-lez p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    .line 9
    .line 10
    const-string v0, "smallIcon must set values"

    .line 11
    .line 12
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    throw p1
.end method


# virtual methods
.method public getBtnId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/push/bean/PushNotification;->btnId:I

    .line 2
    .line 3
    return v0
.end method

.method public getChannelId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/push/bean/PushNotification;->channelId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getContentBigId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/push/bean/PushNotification;->contentBigId:I

    .line 2
    .line 3
    return v0
.end method

.method public getContentId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/push/bean/PushNotification;->contentId:I

    .line 2
    .line 3
    return v0
.end method

.method public getIconColor()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/push/bean/PushNotification;->iconColor:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIconId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/push/bean/PushNotification;->iconId:I

    .line 2
    .line 3
    return v0
.end method

.method public getImgBigId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/push/bean/PushNotification;->imgBigId:I

    .line 2
    .line 3
    return v0
.end method

.method public getLayoutId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/push/bean/PushNotification;->layoutId:I

    .line 2
    .line 3
    return v0
.end method

.method public getShowDefaultLargeIcon()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/push/bean/PushNotification;->showDefaultLargeIcon:Z

    .line 2
    .line 3
    return v0
.end method

.method public getSmallIcon()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/push/bean/PushNotification;->smallIcon:I

    .line 2
    .line 3
    return v0
.end method

.method public getStyleId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/push/bean/PushNotification;->styleId:I

    .line 2
    .line 3
    return v0
.end method

.method public getTitleId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/push/bean/PushNotification;->titleId:I

    .line 2
    .line 3
    return v0
.end method

.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/push/bean/PushNotification;->type:I

    .line 2
    .line 3
    return v0
.end method
