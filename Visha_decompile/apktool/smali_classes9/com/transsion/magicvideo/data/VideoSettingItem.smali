.class public Lcom/transsion/magicvideo/data/VideoSettingItem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/magicvideo/data/IVideoSetting;


# instance fields
.field private displayText:Ljava/lang/String;

.field private isTimer:Z

.field private mIconResId:I
    .annotation build Landroidx/annotation/StringRes;
    .end annotation
.end field

.field private value:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/transsion/magicvideo/data/VideoSettingItem;->displayText:Ljava/lang/String;

    .line 8
    iput p2, p0, Lcom/transsion/magicvideo/data/VideoSettingItem;->value:I

    .line 9
    iput-boolean p3, p0, Lcom/transsion/magicvideo/data/VideoSettingItem;->isTimer:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZI)V
    .locals 0
    .param p4    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/transsion/magicvideo/data/VideoSettingItem;->displayText:Ljava/lang/String;

    .line 3
    iput p2, p0, Lcom/transsion/magicvideo/data/VideoSettingItem;->value:I

    .line 4
    iput-boolean p3, p0, Lcom/transsion/magicvideo/data/VideoSettingItem;->isTimer:Z

    .line 5
    iput p4, p0, Lcom/transsion/magicvideo/data/VideoSettingItem;->mIconResId:I

    return-void
.end method


# virtual methods
.method public displayText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/data/VideoSettingItem;->displayText:Ljava/lang/String;

    return-object p0
.end method

.method public getIconResId()I
    .locals 0

    iget p0, p0, Lcom/transsion/magicvideo/data/VideoSettingItem;->mIconResId:I

    return p0
.end method

.method public getValue()I
    .locals 0

    iget p0, p0, Lcom/transsion/magicvideo/data/VideoSettingItem;->value:I

    return p0
.end method

.method public isTimer()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/magicvideo/data/VideoSettingItem;->isTimer:Z

    return p0
.end method

.method public setDisplayText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/data/VideoSettingItem;->displayText:Ljava/lang/String;

    return-void
.end method

.method public setIconResId(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/magicvideo/data/VideoSettingItem;->mIconResId:I

    return-void
.end method

.method public setTimer(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/magicvideo/data/VideoSettingItem;->isTimer:Z

    return-void
.end method

.method public setValue(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/magicvideo/data/VideoSettingItem;->value:I

    return-void
.end method
