.class public Lcom/transsion/push/bean/PushNotification$Builder;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/push/bean/PushNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
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
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$000(Lcom/transsion/push/bean/PushNotification$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/transsion/push/bean/PushNotification$Builder;->styleId:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$100(Lcom/transsion/push/bean/PushNotification$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/push/bean/PushNotification$Builder;->channelId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1000(Lcom/transsion/push/bean/PushNotification$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/transsion/push/bean/PushNotification$Builder;->contentBigId:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$1100(Lcom/transsion/push/bean/PushNotification$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/transsion/push/bean/PushNotification$Builder;->showDefaultLargeIcon:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$1200(Lcom/transsion/push/bean/PushNotification$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/push/bean/PushNotification$Builder;->iconColor:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/push/bean/PushNotification$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/transsion/push/bean/PushNotification$Builder;->type:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$300(Lcom/transsion/push/bean/PushNotification$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/transsion/push/bean/PushNotification$Builder;->smallIcon:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$400(Lcom/transsion/push/bean/PushNotification$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/transsion/push/bean/PushNotification$Builder;->layoutId:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$500(Lcom/transsion/push/bean/PushNotification$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/transsion/push/bean/PushNotification$Builder;->iconId:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$600(Lcom/transsion/push/bean/PushNotification$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/transsion/push/bean/PushNotification$Builder;->titleId:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$700(Lcom/transsion/push/bean/PushNotification$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/transsion/push/bean/PushNotification$Builder;->contentId:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$800(Lcom/transsion/push/bean/PushNotification$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/transsion/push/bean/PushNotification$Builder;->btnId:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$900(Lcom/transsion/push/bean/PushNotification$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/transsion/push/bean/PushNotification$Builder;->imgBigId:I

    .line 2
    .line 3
    return p0
.end method


# virtual methods
.method public build()Lcom/transsion/push/bean/PushNotification;
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/push/bean/PushNotification;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/transsion/push/bean/PushNotification;-><init>(Lcom/transsion/push/bean/PushNotification$Builder;Lcom/transsion/push/bean/PushNotification$1;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public setBtnId(I)Lcom/transsion/push/bean/PushNotification$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/push/bean/PushNotification$Builder;->btnId:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setChannelId(Ljava/lang/String;)Lcom/transsion/push/bean/PushNotification$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/push/bean/PushNotification$Builder;->channelId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setContentBigId(I)Lcom/transsion/push/bean/PushNotification$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/push/bean/PushNotification$Builder;->contentBigId:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setContentId(I)Lcom/transsion/push/bean/PushNotification$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/push/bean/PushNotification$Builder;->contentId:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setIconColor(Ljava/lang/String;)Lcom/transsion/push/bean/PushNotification$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/push/bean/PushNotification$Builder;->iconColor:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setIconId(I)Lcom/transsion/push/bean/PushNotification$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/push/bean/PushNotification$Builder;->iconId:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setImgBigId(I)Lcom/transsion/push/bean/PushNotification$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/push/bean/PushNotification$Builder;->imgBigId:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setLayoutId(I)Lcom/transsion/push/bean/PushNotification$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/push/bean/PushNotification$Builder;->layoutId:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setShowDefaultLargeIcon(Z)Lcom/transsion/push/bean/PushNotification$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/push/bean/PushNotification$Builder;->showDefaultLargeIcon:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public setSmallIcon(I)Lcom/transsion/push/bean/PushNotification$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/push/bean/PushNotification$Builder;->smallIcon:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setStyleId(I)Lcom/transsion/push/bean/PushNotification$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/push/bean/PushNotification$Builder;->styleId:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setTitleId(I)Lcom/transsion/push/bean/PushNotification$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/push/bean/PushNotification$Builder;->titleId:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setType(I)Lcom/transsion/push/bean/PushNotification$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/push/bean/PushNotification$Builder;->type:I

    .line 2
    .line 3
    return-object p0
.end method
