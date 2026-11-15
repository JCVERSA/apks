.class public Lcom/transsion/playercommon/data/SettingMenu;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mEnable:Z

.field public mFlag:I

.field public mIconStringId:I

.field public mIconTextColor:I

.field public mStateResId:I

.field public mTitleColor:I

.field public mTitleResId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/transsion/playercommon/data/SettingMenu;->mEnable:Z

    return-void
.end method

.method public constructor <init>(III)V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 24
    iput-boolean v0, p0, Lcom/transsion/playercommon/data/SettingMenu;->mEnable:Z

    .line 25
    iput p1, p0, Lcom/transsion/playercommon/data/SettingMenu;->mStateResId:I

    .line 26
    iput p2, p0, Lcom/transsion/playercommon/data/SettingMenu;->mTitleResId:I

    .line 27
    iput p3, p0, Lcom/transsion/playercommon/data/SettingMenu;->mFlag:I

    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/transsion/playercommon/data/SettingMenu;->mEnable:Z

    .line 5
    iput p1, p0, Lcom/transsion/playercommon/data/SettingMenu;->mIconTextColor:I

    .line 6
    iput p2, p0, Lcom/transsion/playercommon/data/SettingMenu;->mIconStringId:I

    .line 7
    iput p3, p0, Lcom/transsion/playercommon/data/SettingMenu;->mTitleResId:I

    .line 8
    iput p4, p0, Lcom/transsion/playercommon/data/SettingMenu;->mTitleColor:I

    .line 9
    iput p5, p0, Lcom/transsion/playercommon/data/SettingMenu;->mFlag:I

    return-void
.end method

.method public constructor <init>(IIIIIZ)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput p1, p0, Lcom/transsion/playercommon/data/SettingMenu;->mIconTextColor:I

    .line 18
    iput p2, p0, Lcom/transsion/playercommon/data/SettingMenu;->mIconStringId:I

    .line 19
    iput p3, p0, Lcom/transsion/playercommon/data/SettingMenu;->mTitleResId:I

    .line 20
    iput p4, p0, Lcom/transsion/playercommon/data/SettingMenu;->mTitleColor:I

    .line 21
    iput p5, p0, Lcom/transsion/playercommon/data/SettingMenu;->mFlag:I

    .line 22
    iput-boolean p6, p0, Lcom/transsion/playercommon/data/SettingMenu;->mEnable:Z

    return-void
.end method

.method public constructor <init>(IIIIZ)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, Lcom/transsion/playercommon/data/SettingMenu;->mStateResId:I

    .line 12
    iput p2, p0, Lcom/transsion/playercommon/data/SettingMenu;->mTitleResId:I

    .line 13
    iput p3, p0, Lcom/transsion/playercommon/data/SettingMenu;->mTitleColor:I

    .line 14
    iput p4, p0, Lcom/transsion/playercommon/data/SettingMenu;->mFlag:I

    .line 15
    iput-boolean p5, p0, Lcom/transsion/playercommon/data/SettingMenu;->mEnable:Z

    return-void
.end method


# virtual methods
.method public getIconStringId()I
    .locals 0

    iget p0, p0, Lcom/transsion/playercommon/data/SettingMenu;->mIconStringId:I

    return p0
.end method

.method public getIconTextColor()I
    .locals 0

    iget p0, p0, Lcom/transsion/playercommon/data/SettingMenu;->mIconTextColor:I

    return p0
.end method
