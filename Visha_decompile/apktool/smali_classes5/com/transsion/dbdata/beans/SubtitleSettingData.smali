.class public Lcom/transsion/dbdata/beans/SubtitleSettingData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/room/Entity;
    tableName = "SubtitleSetting"
.end annotation


# instance fields
.field public location:I
    .annotation build Landroidx/room/ColumnInfo;
        name = "location"
    .end annotation
.end field

.field public textAlignment:I
    .annotation build Landroidx/room/ColumnInfo;
        name = "text_alignment"
    .end annotation
.end field

.field public textBackgroundColor:I
    .annotation build Landroidx/room/ColumnInfo;
        name = "text_background_color"
    .end annotation
.end field

.field public textBackgroundOpacity:I
    .annotation build Landroidx/room/ColumnInfo;
        name = "text_background_opacity"
    .end annotation
.end field

.field public textColor:I
    .annotation build Landroidx/room/ColumnInfo;
        name = "text_color"
    .end annotation
.end field

.field public textDrag:I
    .annotation build Landroidx/room/ColumnInfo;
        name = "text_drag"
    .end annotation
.end field

.field public textSize:I
    .annotation build Landroidx/room/ColumnInfo;
        name = "text_size"
    .end annotation
.end field

.field public textStyle:I
    .annotation build Landroidx/room/ColumnInfo;
        name = "text_style"
    .end annotation
.end field

.field public time:I
    .annotation build Landroidx/room/ColumnInfo;
        name = "time"
    .end annotation
.end field

.field public translateY:I
    .annotation build Landroidx/room/ColumnInfo;
        name = "translateY"
    .end annotation
.end field

.field public videoId:I
    .annotation build Landroidx/room/ColumnInfo;
        name = "video_id"
    .end annotation

    .annotation build Landroidx/room/PrimaryKey;
        autoGenerate = false
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .annotation build Landroidx/room/Ignore;
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/transsion/dbdata/beans/SubtitleSettingData;->videoId:I

    const/4 p1, 0x2

    .line 4
    iput p1, p0, Lcom/transsion/dbdata/beans/SubtitleSettingData;->location:I

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/transsion/dbdata/beans/SubtitleSettingData;->translateY:I

    .line 6
    sget v0, Lcom/transsion/utils/BaseConstant;->q:I

    iput v0, p0, Lcom/transsion/dbdata/beans/SubtitleSettingData;->textAlignment:I

    .line 7
    sget v0, Lcom/transsion/utils/BaseConstant;->p:I

    iput v0, p0, Lcom/transsion/dbdata/beans/SubtitleSettingData;->textSize:I

    const/4 v0, 0x1

    .line 8
    iput v0, p0, Lcom/transsion/dbdata/beans/SubtitleSettingData;->textStyle:I

    .line 9
    iput p1, p0, Lcom/transsion/dbdata/beans/SubtitleSettingData;->textColor:I

    .line 10
    iput v0, p0, Lcom/transsion/dbdata/beans/SubtitleSettingData;->textBackgroundColor:I

    const/16 v0, 0x46

    .line 11
    iput v0, p0, Lcom/transsion/dbdata/beans/SubtitleSettingData;->textBackgroundOpacity:I

    .line 12
    iput p1, p0, Lcom/transsion/dbdata/beans/SubtitleSettingData;->textDrag:I

    return-void
.end method


# virtual methods
.method public canDrag()Z
    .locals 0

    iget p0, p0, Lcom/transsion/dbdata/beans/SubtitleSettingData;->textDrag:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public cloneData(Lcom/transsion/dbdata/beans/SubtitleSettingData;)V
    .locals 1

    iget v0, p1, Lcom/transsion/dbdata/beans/SubtitleSettingData;->videoId:I

    iput v0, p0, Lcom/transsion/dbdata/beans/SubtitleSettingData;->videoId:I

    iget v0, p1, Lcom/transsion/dbdata/beans/SubtitleSettingData;->location:I

    iput v0, p0, Lcom/transsion/dbdata/beans/SubtitleSettingData;->location:I

    iget v0, p1, Lcom/transsion/dbdata/beans/SubtitleSettingData;->translateY:I

    iput v0, p0, Lcom/transsion/dbdata/beans/SubtitleSettingData;->translateY:I

    iget v0, p1, Lcom/transsion/dbdata/beans/SubtitleSettingData;->textStyle:I

    iput v0, p0, Lcom/transsion/dbdata/beans/SubtitleSettingData;->textStyle:I

    iget v0, p1, Lcom/transsion/dbdata/beans/SubtitleSettingData;->textSize:I

    iput v0, p0, Lcom/transsion/dbdata/beans/SubtitleSettingData;->textSize:I

    iget v0, p1, Lcom/transsion/dbdata/beans/SubtitleSettingData;->textBackgroundColor:I

    iput v0, p0, Lcom/transsion/dbdata/beans/SubtitleSettingData;->textBackgroundColor:I

    iget v0, p1, Lcom/transsion/dbdata/beans/SubtitleSettingData;->textBackgroundOpacity:I

    iput v0, p0, Lcom/transsion/dbdata/beans/SubtitleSettingData;->textBackgroundOpacity:I

    iget v0, p1, Lcom/transsion/dbdata/beans/SubtitleSettingData;->textColor:I

    iput v0, p0, Lcom/transsion/dbdata/beans/SubtitleSettingData;->textColor:I

    iget v0, p1, Lcom/transsion/dbdata/beans/SubtitleSettingData;->textAlignment:I

    iput v0, p0, Lcom/transsion/dbdata/beans/SubtitleSettingData;->textAlignment:I

    iget v0, p1, Lcom/transsion/dbdata/beans/SubtitleSettingData;->textDrag:I

    iput v0, p0, Lcom/transsion/dbdata/beans/SubtitleSettingData;->textDrag:I

    iget p1, p1, Lcom/transsion/dbdata/beans/SubtitleSettingData;->time:I

    iput p1, p0, Lcom/transsion/dbdata/beans/SubtitleSettingData;->time:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "videoId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/dbdata/beans/SubtitleSettingData;->videoId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "textAlignment"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/dbdata/beans/SubtitleSettingData;->textAlignment:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/dbdata/beans/SubtitleSettingData;->location:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "translateY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/dbdata/beans/SubtitleSettingData;->translateY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "textSize"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/dbdata/beans/SubtitleSettingData;->textSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "textStyle"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/dbdata/beans/SubtitleSettingData;->textStyle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "textColor"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/dbdata/beans/SubtitleSettingData;->textColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "textDrag"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/dbdata/beans/SubtitleSettingData;->textDrag:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
