.class public Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IjkMediaMeta$IjkStreamMeta;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IjkMediaMeta;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IjkStreamMeta"
.end annotation


# instance fields
.field public mBitrate:J

.field public mChannelLayout:J

.field public mCodecLongName:Ljava/lang/String;

.field public mCodecName:Ljava/lang/String;

.field public mCodecProfile:Ljava/lang/String;

.field public mFpsDen:I

.field public mFpsNum:I

.field public mHeight:I

.field public final mIndex:I

.field public mLanguage:Ljava/lang/String;

.field public mMeta:Landroid/os/Bundle;

.field public mSampleRate:I

.field public mSarDen:I

.field public mSarNum:I

.field public mTbrDen:I

.field public mTbrNum:I

.field public mType:Ljava/lang/String;

.field public mWidth:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IjkMediaMeta$IjkStreamMeta;->mIndex:I

    return-void
.end method


# virtual methods
.method public getBitrateInline()Ljava/lang/String;
    .locals 4

    iget-wide v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IjkMediaMeta$IjkStreamMeta;->mBitrate:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-gtz p0, :cond_0

    const-string p0, "N/A"

    return-object p0

    :cond_0
    const-wide/16 v2, 0x3e8

    cmp-long p0, v0, v2

    if-gez p0, :cond_1

    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%d bit/s"

    invoke-static {p0, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%d kb/s"

    invoke-static {p0, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getChannelLayoutInline()Ljava/lang/String;
    .locals 4

    iget-wide v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IjkMediaMeta$IjkStreamMeta;->mChannelLayout:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-gtz p0, :cond_0

    const-string p0, "N/A"

    return-object p0

    :cond_0
    const-wide/16 v2, 0x4

    cmp-long p0, v0, v2

    if-nez p0, :cond_1

    const-string p0, "mono"

    return-object p0

    :cond_1
    const-wide/16 v2, 0x3

    cmp-long p0, v0, v2

    if-nez p0, :cond_2

    const-string p0, "stereo"

    return-object p0

    :cond_2
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%x"

    invoke-static {p0, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCodecLongNameInline()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IjkMediaMeta$IjkStreamMeta;->mCodecLongName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IjkMediaMeta$IjkStreamMeta;->mCodecLongName:Ljava/lang/String;

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IjkMediaMeta$IjkStreamMeta;->mCodecName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IjkMediaMeta$IjkStreamMeta;->mCodecName:Ljava/lang/String;

    return-object p0

    :cond_1
    const-string p0, "N/A"

    return-object p0
.end method

.method public getCodecShortNameInline()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IjkMediaMeta$IjkStreamMeta;->mCodecName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IjkMediaMeta$IjkStreamMeta;->mCodecName:Ljava/lang/String;

    return-object p0

    :cond_0
    const-string p0, "N/A"

    return-object p0
.end method

.method public getFpsInline()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IjkMediaMeta$IjkStreamMeta;->mFpsNum:I

    if-lez v0, :cond_1

    iget p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IjkMediaMeta$IjkStreamMeta;->mFpsDen:I

    if-gtz p0, :cond_0

    goto :goto_0

    :cond_0
    int-to-float v0, v0

    int-to-float p0, p0

    div-float/2addr v0, p0

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const-string p0, "N/A"

    return-object p0
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IjkMediaMeta$IjkStreamMeta;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IjkMediaMeta$IjkStreamMeta;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 3
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    return p2

    .line 4
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return p2
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IjkMediaMeta$IjkStreamMeta;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IjkMediaMeta$IjkStreamMeta;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 3
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-wide p2

    .line 4
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    return-wide p2
.end method

.method public getResolutionInline()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IjkMediaMeta$IjkStreamMeta;->mWidth:I

    if-lez v0, :cond_3

    iget v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IjkMediaMeta$IjkStreamMeta;->mHeight:I

    if-gtz v1, :cond_0

    goto :goto_1

    :cond_0
    iget v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IjkMediaMeta$IjkStreamMeta;->mSarNum:I

    if-lez v1, :cond_2

    iget v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IjkMediaMeta$IjkStreamMeta;->mSarDen:I

    if-gtz v1, :cond_1

    goto :goto_0

    :cond_1
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IjkMediaMeta$IjkStreamMeta;->mHeight:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IjkMediaMeta$IjkStreamMeta;->mSarNum:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IjkMediaMeta$IjkStreamMeta;->mSarDen:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, v2, v3, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "%d x %d [SAR %d:%d]"

    invoke-static {v1, v0, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IjkMediaMeta$IjkStreamMeta;->mHeight:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "%d x %d"

    invoke-static {v1, v0, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_1
    const-string p0, "N/A"

    return-object p0
.end method

.method public getSampleRateInline()Ljava/lang/String;
    .locals 2

    iget p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IjkMediaMeta$IjkStreamMeta;->mSampleRate:I

    if-gtz p0, :cond_0

    const-string p0, "N/A"

    return-object p0

    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "%d Hz"

    invoke-static {v0, v1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IjkMediaMeta$IjkStreamMeta;->mMeta:Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
