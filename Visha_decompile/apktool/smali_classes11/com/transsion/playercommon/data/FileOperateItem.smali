.class public Lcom/transsion/playercommon/data/FileOperateItem;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private enable:Z

.field private flag:I

.field private hasSubPage:Z

.field private imageResId:I

.field private isNeedPoint:Z

.field private mIconText:I

.field private subTitle:Ljava/lang/String;

.field private textResId:I


# direct methods
.method public constructor <init>(III)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/transsion/playercommon/data/FileOperateItem;->enable:Z

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/transsion/playercommon/data/FileOperateItem;->hasSubPage:Z

    .line 4
    iput-boolean v0, p0, Lcom/transsion/playercommon/data/FileOperateItem;->isNeedPoint:Z

    .line 5
    iput p1, p0, Lcom/transsion/playercommon/data/FileOperateItem;->imageResId:I

    .line 6
    iput p2, p0, Lcom/transsion/playercommon/data/FileOperateItem;->textResId:I

    .line 7
    iput p3, p0, Lcom/transsion/playercommon/data/FileOperateItem;->flag:I

    return-void
.end method

.method public constructor <init>(IIIZ)V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/transsion/playercommon/data/FileOperateItem;->hasSubPage:Z

    .line 17
    iput-boolean v0, p0, Lcom/transsion/playercommon/data/FileOperateItem;->isNeedPoint:Z

    .line 18
    iput p1, p0, Lcom/transsion/playercommon/data/FileOperateItem;->imageResId:I

    .line 19
    iput p2, p0, Lcom/transsion/playercommon/data/FileOperateItem;->textResId:I

    .line 20
    iput p3, p0, Lcom/transsion/playercommon/data/FileOperateItem;->flag:I

    .line 21
    iput-boolean p4, p0, Lcom/transsion/playercommon/data/FileOperateItem;->enable:Z

    return-void
.end method

.method public constructor <init>(IIIZZ)V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lcom/transsion/playercommon/data/FileOperateItem;->isNeedPoint:Z

    .line 24
    iput p1, p0, Lcom/transsion/playercommon/data/FileOperateItem;->imageResId:I

    .line 25
    iput p2, p0, Lcom/transsion/playercommon/data/FileOperateItem;->textResId:I

    .line 26
    iput p3, p0, Lcom/transsion/playercommon/data/FileOperateItem;->flag:I

    .line 27
    iput-boolean p4, p0, Lcom/transsion/playercommon/data/FileOperateItem;->enable:Z

    .line 28
    iput-boolean p5, p0, Lcom/transsion/playercommon/data/FileOperateItem;->hasSubPage:Z

    return-void
.end method

.method public constructor <init>(IIIZZLjava/lang/String;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lcom/transsion/playercommon/data/FileOperateItem;->isNeedPoint:Z

    .line 31
    iput p1, p0, Lcom/transsion/playercommon/data/FileOperateItem;->imageResId:I

    .line 32
    iput p2, p0, Lcom/transsion/playercommon/data/FileOperateItem;->textResId:I

    .line 33
    iput p3, p0, Lcom/transsion/playercommon/data/FileOperateItem;->flag:I

    .line 34
    iput-boolean p4, p0, Lcom/transsion/playercommon/data/FileOperateItem;->enable:Z

    .line 35
    iput-boolean p5, p0, Lcom/transsion/playercommon/data/FileOperateItem;->hasSubPage:Z

    .line 36
    iput-object p6, p0, Lcom/transsion/playercommon/data/FileOperateItem;->subTitle:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IIZI)V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/transsion/playercommon/data/FileOperateItem;->enable:Z

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/transsion/playercommon/data/FileOperateItem;->hasSubPage:Z

    .line 11
    iput p1, p0, Lcom/transsion/playercommon/data/FileOperateItem;->imageResId:I

    .line 12
    iput p2, p0, Lcom/transsion/playercommon/data/FileOperateItem;->textResId:I

    .line 13
    iput p4, p0, Lcom/transsion/playercommon/data/FileOperateItem;->flag:I

    .line 14
    iput-boolean p3, p0, Lcom/transsion/playercommon/data/FileOperateItem;->isNeedPoint:Z

    return-void
.end method


# virtual methods
.method public getFlag()I
    .locals 0

    iget p0, p0, Lcom/transsion/playercommon/data/FileOperateItem;->flag:I

    return p0
.end method

.method public getIconText()I
    .locals 0

    iget p0, p0, Lcom/transsion/playercommon/data/FileOperateItem;->mIconText:I

    return p0
.end method

.method public getImageResId()I
    .locals 0

    iget p0, p0, Lcom/transsion/playercommon/data/FileOperateItem;->imageResId:I

    return p0
.end method

.method public getSubTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/data/FileOperateItem;->subTitle:Ljava/lang/String;

    return-object p0
.end method

.method public getTextResId()I
    .locals 0

    iget p0, p0, Lcom/transsion/playercommon/data/FileOperateItem;->textResId:I

    return p0
.end method

.method public hasSubPage()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/playercommon/data/FileOperateItem;->hasSubPage:Z

    return p0
.end method

.method public isEnable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/playercommon/data/FileOperateItem;->enable:Z

    return p0
.end method

.method public isHasSubPage()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/playercommon/data/FileOperateItem;->hasSubPage:Z

    return p0
.end method

.method public isNeedPoint()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/playercommon/data/FileOperateItem;->isNeedPoint:Z

    return p0
.end method

.method public setEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/playercommon/data/FileOperateItem;->enable:Z

    return-void
.end method

.method public setFlag(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/playercommon/data/FileOperateItem;->flag:I

    return-void
.end method

.method public setHasSubPage(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/playercommon/data/FileOperateItem;->hasSubPage:Z

    return-void
.end method

.method public setIconText(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/playercommon/data/FileOperateItem;->mIconText:I

    return-void
.end method

.method public setImageResId(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/playercommon/data/FileOperateItem;->imageResId:I

    return-void
.end method

.method public setSubTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/data/FileOperateItem;->subTitle:Ljava/lang/String;

    return-void
.end method

.method public setTextResId(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/playercommon/data/FileOperateItem;->textResId:I

    return-void
.end method
