.class public Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;
.super Lcom/transsion/dbdata/beans/media/MediaFileInfo;
.source "SourceFile"

# interfaces
.implements Lgw4;


# instance fields
.field public delayTime:F

.field public id:I

.field public isInnerSubtitle:Z

.field public isSelected:Z

.field public showArrow:Z

.field public sub_format:I

.field public sub_inner_id:I

.field public sub_local_lang_to:Ljava/lang/String;

.field public time:J

.field public track:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/transsion/dbdata/beans/media/MediaFileInfo;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;->sub_inner_id:I

    .line 3
    const-string v0, "none"

    iput-object v0, p0, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;->sub_local_lang_to:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    .line 8
    invoke-direct {p0}, Lcom/transsion/dbdata/beans/media/MediaFileInfo;-><init>()V

    const/4 v0, -0x1

    .line 9
    iput v0, p0, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;->sub_inner_id:I

    .line 10
    const-string v0, "none"

    iput-object v0, p0, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;->sub_local_lang_to:Ljava/lang/String;

    .line 11
    iput p1, p0, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;->id:I

    .line 12
    iput-object p2, p0, Lcom/transsion/dbdata/beans/media/MediaFileInfo;->path:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Lcom/transsion/dbdata/beans/media/MediaFileInfo;-><init>()V

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;->sub_inner_id:I

    .line 6
    const-string v0, "none"

    iput-object v0, p0, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;->sub_local_lang_to:Ljava/lang/String;

    .line 7
    iput-object p1, p0, Lcom/transsion/dbdata/beans/media/MediaFileInfo;->path:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    .line 13
    invoke-direct {p0}, Lcom/transsion/dbdata/beans/media/MediaFileInfo;-><init>()V

    const/4 v0, -0x1

    .line 14
    iput v0, p0, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;->sub_inner_id:I

    .line 15
    const-string v0, "none"

    iput-object v0, p0, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;->sub_local_lang_to:Ljava/lang/String;

    .line 16
    iput-object p1, p0, Lcom/transsion/dbdata/beans/media/MediaFileInfo;->path:Ljava/lang/String;

    .line 17
    iput-boolean p2, p0, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;->isSelected:Z

    return-void
.end method


# virtual methods
.method public displayText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/MediaFileInfo;->name:Ljava/lang/String;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, p0, :cond_1

    return v0

    :cond_1
    check-cast p1, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;

    iget-object v2, p0, Lcom/transsion/dbdata/beans/media/MediaFileInfo;->path:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/MediaFileInfo;->path:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    iget-object p0, p1, Lcom/transsion/dbdata/beans/media/MediaFileInfo;->path:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    move v1, v0

    :cond_2
    return v1

    :cond_3
    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/MediaFileInfo;->path:Ljava/lang/String;

    iget-object p1, p1, Lcom/transsion/dbdata/beans/media/MediaFileInfo;->path:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getTime()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;->time:J

    return-wide v0
.end method

.method public isCheck()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;->isSelected:Z

    return p0
.end method

.method public isTextType()Z
    .locals 1

    iget p0, p0, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;->sub_format:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setCheck(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;->isSelected:Z

    return-void
.end method

.method public setTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;->time:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SubtitleTrackInfo{ id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sub_inner_id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;->sub_inner_id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isInnerSubtitle:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;->isInnerSubtitle:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", subType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;->sub_format:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isSelected:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;->isSelected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", track:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;->track:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sub_local_lang_to:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;->sub_local_lang_to:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/dbdata/beans/media/MediaFileInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", delayTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;->delayTime:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/transsion/dbdata/beans/media/MediaFileInfo;->size:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", path:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/MediaFileInfo;->path:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " }"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
