.class public Lcom/cicada/player/utils/ass/AssStyle;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field public mAlignment:I

.field public mAngle:D

.field public mBackColour:I

.field public mBold:I

.field public mBorderStyle:I

.field public mEncoding:I

.field public mFontName:Ljava/lang/String;

.field public mFontSize:D

.field public mItalic:I

.field public mMarginL:I

.field public mMarginR:I

.field public mMarginV:I

.field public mName:Ljava/lang/String;

.field public mOutline:D

.field public mOutlineColour:I

.field public mPrimaryColour:I

.field public mScaleX:D

.field public mScaleY:D

.field public mSecondaryColour:I

.field public mShadow:D

.field public mSpacing:D

.field public mStrikeOut:I

.field public mUnderline:I


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/cicada/player/utils/ass/AssStyle;->mFontSize:D

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    iput v2, p0, Lcom/cicada/player/utils/ass/AssStyle;->mPrimaryColour:I

    .line 10
    .line 11
    iput v2, p0, Lcom/cicada/player/utils/ass/AssStyle;->mSecondaryColour:I

    .line 12
    .line 13
    iput v2, p0, Lcom/cicada/player/utils/ass/AssStyle;->mOutlineColour:I

    .line 14
    .line 15
    iput v2, p0, Lcom/cicada/player/utils/ass/AssStyle;->mBackColour:I

    .line 16
    .line 17
    iput v2, p0, Lcom/cicada/player/utils/ass/AssStyle;->mBold:I

    .line 18
    .line 19
    iput v2, p0, Lcom/cicada/player/utils/ass/AssStyle;->mItalic:I

    .line 20
    .line 21
    iput v2, p0, Lcom/cicada/player/utils/ass/AssStyle;->mUnderline:I

    .line 22
    .line 23
    iput v2, p0, Lcom/cicada/player/utils/ass/AssStyle;->mStrikeOut:I

    .line 24
    .line 25
    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    .line 26
    .line 27
    iput-wide v3, p0, Lcom/cicada/player/utils/ass/AssStyle;->mScaleX:D

    .line 28
    .line 29
    iput-wide v3, p0, Lcom/cicada/player/utils/ass/AssStyle;->mScaleY:D

    .line 30
    .line 31
    iput-wide v0, p0, Lcom/cicada/player/utils/ass/AssStyle;->mSpacing:D

    .line 32
    .line 33
    iput-wide v0, p0, Lcom/cicada/player/utils/ass/AssStyle;->mAngle:D

    .line 34
    .line 35
    iput v2, p0, Lcom/cicada/player/utils/ass/AssStyle;->mBorderStyle:I

    .line 36
    .line 37
    iput-wide v0, p0, Lcom/cicada/player/utils/ass/AssStyle;->mOutline:D

    .line 38
    .line 39
    iput-wide v0, p0, Lcom/cicada/player/utils/ass/AssStyle;->mShadow:D

    .line 40
    .line 41
    iput v2, p0, Lcom/cicada/player/utils/ass/AssStyle;->mAlignment:I

    .line 42
    .line 43
    iput v2, p0, Lcom/cicada/player/utils/ass/AssStyle;->mMarginL:I

    .line 44
    .line 45
    iput v2, p0, Lcom/cicada/player/utils/ass/AssStyle;->mMarginR:I

    .line 46
    .line 47
    iput v2, p0, Lcom/cicada/player/utils/ass/AssStyle;->mMarginV:I

    .line 48
    .line 49
    const/4 v0, 0x1

    .line 50
    iput v0, p0, Lcom/cicada/player/utils/ass/AssStyle;->mEncoding:I

    .line 51
    .line 52
    return-void
.end method
