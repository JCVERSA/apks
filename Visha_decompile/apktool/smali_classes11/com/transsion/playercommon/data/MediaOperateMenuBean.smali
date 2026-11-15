.class public Lcom/transsion/playercommon/data/MediaOperateMenuBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public description:Ljava/lang/String;

.field public flagId:I

.field public iconResId:I

.field public isEnable:Z

.field public isNeedPoint:Z

.field private mIconName:Ljava/lang/String;

.field private mNeedThemeColor:Z

.field public name:Ljava/lang/String;

.field public showDescription:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/transsion/playercommon/data/MediaOperateMenuBean;->isEnable:Z

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/transsion/playercommon/data/MediaOperateMenuBean;->isNeedPoint:Z

    .line 4
    iput p1, p0, Lcom/transsion/playercommon/data/MediaOperateMenuBean;->iconResId:I

    .line 5
    iput-object p2, p0, Lcom/transsion/playercommon/data/MediaOperateMenuBean;->name:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/transsion/playercommon/data/MediaOperateMenuBean;->isEnable:Z

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/transsion/playercommon/data/MediaOperateMenuBean;->isNeedPoint:Z

    .line 9
    iput-object p1, p0, Lcom/transsion/playercommon/data/MediaOperateMenuBean;->mIconName:Ljava/lang/String;

    .line 10
    iput-object p2, p0, Lcom/transsion/playercommon/data/MediaOperateMenuBean;->name:Ljava/lang/String;

    .line 11
    iput p3, p0, Lcom/transsion/playercommon/data/MediaOperateMenuBean;->flagId:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lcom/transsion/playercommon/data/MediaOperateMenuBean;->isEnable:Z

    .line 14
    iput-object p1, p0, Lcom/transsion/playercommon/data/MediaOperateMenuBean;->mIconName:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/transsion/playercommon/data/MediaOperateMenuBean;->name:Ljava/lang/String;

    .line 16
    iput p4, p0, Lcom/transsion/playercommon/data/MediaOperateMenuBean;->flagId:I

    .line 17
    iput-boolean p3, p0, Lcom/transsion/playercommon/data/MediaOperateMenuBean;->isNeedPoint:Z

    return-void
.end method


# virtual methods
.method public getIconName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/data/MediaOperateMenuBean;->mIconName:Ljava/lang/String;

    return-object p0
.end method

.method public isNeedThemeColor()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/playercommon/data/MediaOperateMenuBean;->mNeedThemeColor:Z

    return p0
.end method

.method public setNeedThemeColor(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/playercommon/data/MediaOperateMenuBean;->mNeedThemeColor:Z

    return-void
.end method
