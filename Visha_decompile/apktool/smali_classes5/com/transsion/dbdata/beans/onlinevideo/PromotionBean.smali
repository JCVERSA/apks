.class public Lcom/transsion/dbdata/beans/onlinevideo/PromotionBean;
.super Lcom/transsion/dbdata/beans/onlinevideo/TypeBean;
.source "SourceFile"


# static fields
.field public static final CP_MG:I = 0x1

.field public static final CP_SMASH:I = 0x2

.field public static final FROM_HOME:I = 0x2

.field public static final FROM_PLAYER:I = 0x1

.field public static final TYPE_DIALOG:I = 0x2

.field public static final TYPE_PLAYER:I = 0x1


# instance fields
.field private actionTitle:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "action_title"
    .end annotation
.end field

.field private buttonName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "button_name"
    .end annotation
.end field

.field private count:I

.field private cpId:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cp_id"
    .end annotation
.end field

.field private date:Ljava/lang/String;

.field private description:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "description"
    .end annotation
.end field

.field private displayPage:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "display_page"
    .end annotation
.end field

.field private frequency:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "frequency"
    .end annotation
.end field

.field private haveDone:Z

.field private icon:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "icon"
    .end annotation
.end field

.field private id:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field private lastShowTime:J

.field private onlineStatus:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "online_status"
    .end annotation
.end field

.field private price:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "price"
    .end annotation
.end field

.field private promotionPrice:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "promotion_price"
    .end annotation
.end field

.field private regionId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "regionId"
    .end annotation
.end field

.field private timeLimit:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "time_limit"
    .end annotation
.end field

.field private type:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "type"
    .end annotation
.end field

.field private version:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "version"
    .end annotation
.end field

.field private versionSymbol:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "version_symbol"
    .end annotation
.end field

.field private vipCardId:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "vip_card_id"
    .end annotation
.end field

.field private vipId:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "vip_id"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/dbdata/beans/onlinevideo/TypeBean;-><init>()V

    return-void
.end method


# virtual methods
.method public getActionTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/PromotionBean;->actionTitle:Ljava/lang/String;

    return-object p0
.end method

.method public getButtonName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/PromotionBean;->buttonName:Ljava/lang/String;

    return-object p0
.end method

.method public getCount()I
    .locals 0

    iget p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/PromotionBean;->count:I

    return p0
.end method

.method public getCpId()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/PromotionBean;->cpId:Ljava/lang/Integer;

    return-object p0
.end method

.method public getDate()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/PromotionBean;->date:Ljava/lang/String;

    return-object p0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/PromotionBean;->description:Ljava/lang/String;

    return-object p0
.end method

.method public getDisplayPage()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/PromotionBean;->displayPage:Ljava/lang/Integer;

    return-object p0
.end method

.method public getFrequency()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/PromotionBean;->frequency:Ljava/lang/Integer;

    return-object p0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/PromotionBean;->icon:Ljava/lang/String;

    return-object p0
.end method

.method public getId()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/PromotionBean;->id:Ljava/lang/Long;

    return-object p0
.end method

.method public getLastShowTime()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/PromotionBean;->lastShowTime:J

    return-wide v0
.end method

.method public getOnlineStatus()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/PromotionBean;->onlineStatus:Ljava/lang/Integer;

    return-object p0
.end method

.method public getPrice()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/PromotionBean;->price:Ljava/lang/String;

    return-object p0
.end method

.method public getPromotionPrice()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/PromotionBean;->promotionPrice:Ljava/lang/String;

    return-object p0
.end method

.method public getRegionId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/PromotionBean;->regionId:Ljava/lang/String;

    return-object p0
.end method

.method public getTimeLimit()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/PromotionBean;->timeLimit:Ljava/lang/Integer;

    return-object p0
.end method

.method public getType()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/PromotionBean;->type:Ljava/lang/Integer;

    return-object p0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/PromotionBean;->version:Ljava/lang/String;

    return-object p0
.end method

.method public getVersionSymbol()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/PromotionBean;->versionSymbol:Ljava/lang/Integer;

    return-object p0
.end method

.method public getVipCardId()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/PromotionBean;->vipCardId:Ljava/lang/Long;

    return-object p0
.end method

.method public getVipId()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/PromotionBean;->vipId:Ljava/lang/Integer;

    return-object p0
.end method

.method public isHaveDone()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/PromotionBean;->haveDone:Z

    return p0
.end method

.method public setCount(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/PromotionBean;->count:I

    return-void
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/PromotionBean;->date:Ljava/lang/String;

    return-void
.end method

.method public setHaveDone(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/PromotionBean;->haveDone:Z

    return-void
.end method

.method public setLastShowTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/PromotionBean;->lastShowTime:J

    return-void
.end method
