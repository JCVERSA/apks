.class public Lcom/cicada/player/utils/ass/AssHeader;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cicada/player/utils/ass/AssHeader$SubtitleType;
    }
.end annotation


# instance fields
.field public mEventFormat:Ljava/lang/String;

.field public mPlayResX:I

.field public mPlayResY:I

.field public mScaledBorderAndShadow:I

.field public mStyleFormat:Ljava/lang/String;

.field public mStyles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/cicada/player/utils/ass/AssStyle;",
            ">;"
        }
    .end annotation
.end field

.field public mTimer:D

.field public mType:Lcom/cicada/player/utils/ass/AssHeader$SubtitleType;

.field public mWrapStyle:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/cicada/player/utils/ass/AssHeader;->mStyles:Ljava/util/Map;

    .line 6
    .line 7
    sget-object v0, Lcom/cicada/player/utils/ass/AssHeader$SubtitleType;->SubtitleTypeUnknown:Lcom/cicada/player/utils/ass/AssHeader$SubtitleType;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/cicada/player/utils/ass/AssHeader;->mType:Lcom/cicada/player/utils/ass/AssHeader$SubtitleType;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/cicada/player/utils/ass/AssHeader;->mPlayResX:I

    .line 13
    .line 14
    iput v0, p0, Lcom/cicada/player/utils/ass/AssHeader;->mPlayResY:I

    .line 15
    .line 16
    const-wide/16 v1, 0x0

    .line 17
    .line 18
    iput-wide v1, p0, Lcom/cicada/player/utils/ass/AssHeader;->mTimer:D

    .line 19
    .line 20
    iput v0, p0, Lcom/cicada/player/utils/ass/AssHeader;->mWrapStyle:I

    .line 21
    .line 22
    iput v0, p0, Lcom/cicada/player/utils/ass/AssHeader;->mScaledBorderAndShadow:I

    .line 23
    .line 24
    return-void
.end method

.method private getStyles()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cicada/player/utils/ass/AssHeader;->mStyles:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method private getType()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cicada/player/utils/ass/AssHeader;->mType:Lcom/cicada/player/utils/ass/AssHeader$SubtitleType;

    .line 2
    .line 3
    sget-object v1, Lcom/cicada/player/utils/ass/AssHeader$SubtitleType;->SubtitleTypeUnknown:Lcom/cicada/player/utils/ass/AssHeader$SubtitleType;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    return v2

    .line 9
    :cond_0
    sget-object v1, Lcom/cicada/player/utils/ass/AssHeader$SubtitleType;->SubtitleTypeAss:Lcom/cicada/player/utils/ass/AssHeader$SubtitleType;

    .line 10
    .line 11
    if-ne v0, v1, :cond_1

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    return v0

    .line 15
    :cond_1
    sget-object v1, Lcom/cicada/player/utils/ass/AssHeader$SubtitleType;->SubtitleTypeSsa:Lcom/cicada/player/utils/ass/AssHeader$SubtitleType;

    .line 16
    .line 17
    if-ne v0, v1, :cond_2

    .line 18
    .line 19
    const/4 v0, 0x2

    .line 20
    return v0

    .line 21
    :cond_2
    return v2
.end method

.method private setStyles(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/util/Map;

    .line 2
    .line 3
    iput-object p1, p0, Lcom/cicada/player/utils/ass/AssHeader;->mStyles:Ljava/util/Map;

    .line 4
    .line 5
    return-void
.end method

.method private setType(I)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    sget-object p1, Lcom/cicada/player/utils/ass/AssHeader$SubtitleType;->SubtitleTypeUnknown:Lcom/cicada/player/utils/ass/AssHeader$SubtitleType;

    .line 4
    .line 5
    iput-object p1, p0, Lcom/cicada/player/utils/ass/AssHeader;->mType:Lcom/cicada/player/utils/ass/AssHeader$SubtitleType;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x1

    .line 9
    if-ne p1, v0, :cond_1

    .line 10
    .line 11
    sget-object p1, Lcom/cicada/player/utils/ass/AssHeader$SubtitleType;->SubtitleTypeAss:Lcom/cicada/player/utils/ass/AssHeader$SubtitleType;

    .line 12
    .line 13
    iput-object p1, p0, Lcom/cicada/player/utils/ass/AssHeader;->mType:Lcom/cicada/player/utils/ass/AssHeader$SubtitleType;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    const/4 v0, 0x2

    .line 17
    if-ne p1, v0, :cond_2

    .line 18
    .line 19
    sget-object p1, Lcom/cicada/player/utils/ass/AssHeader$SubtitleType;->SubtitleTypeSsa:Lcom/cicada/player/utils/ass/AssHeader$SubtitleType;

    .line 20
    .line 21
    iput-object p1, p0, Lcom/cicada/player/utils/ass/AssHeader;->mType:Lcom/cicada/player/utils/ass/AssHeader$SubtitleType;

    .line 22
    .line 23
    :cond_2
    :goto_0
    return-void
.end method
