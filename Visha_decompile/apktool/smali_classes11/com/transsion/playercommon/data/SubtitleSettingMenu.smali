.class public Lcom/transsion/playercommon/data/SubtitleSettingMenu;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public flag:I

.field public imageViewResId:I

.field public textViewResId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/transsion/playercommon/data/SubtitleSettingMenu;->imageViewResId:I

    .line 4
    iput p2, p0, Lcom/transsion/playercommon/data/SubtitleSettingMenu;->textViewResId:I

    .line 5
    iput p3, p0, Lcom/transsion/playercommon/data/SubtitleSettingMenu;->flag:I

    return-void
.end method
