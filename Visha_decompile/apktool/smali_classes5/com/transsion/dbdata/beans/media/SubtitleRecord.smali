.class public Lcom/transsion/dbdata/beans/media/SubtitleRecord;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Landroidx/room/Entity;
    tableName = "SubtitleRecord"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x62c1e0fcbac5cf27L


# instance fields
.field public _id:I
    .annotation build Landroidx/room/ColumnInfo;
        defaultValue = "0"
        name = "_id"
        typeAffinity = 0x3
    .end annotation
.end field

.field public id:I
    .annotation build Landroidx/room/ColumnInfo;
        name = "id"
        typeAffinity = 0x3
    .end annotation

    .annotation build Landroidx/room/PrimaryKey;
        autoGenerate = true
    .end annotation
.end field

.field public sub_format:I
    .annotation build Landroidx/room/ColumnInfo;
        defaultValue = "1"
        name = "sub_format"
        typeAffinity = 0x3
    .end annotation
.end field

.field public sub_id:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "sub_id"
        typeAffinity = 0x2
    .end annotation
.end field

.field public sub_inner_id:I
    .annotation build Landroidx/room/ColumnInfo;
        defaultValue = "-1"
        name = "sub_inner_id"
        typeAffinity = 0x3
    .end annotation
.end field

.field public sub_inner_name:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "sub_inner_name"
        typeAffinity = 0x2
    .end annotation
.end field

.field public sub_local_lang_to:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        defaultValue = "none"
        name = "sub_local_lang_to"
        typeAffinity = 0x2
    .end annotation
.end field

.field public sub_track:I
    .annotation build Landroidx/room/ColumnInfo;
        defaultValue = "0"
        name = "sub_track"
        typeAffinity = 0x3
    .end annotation
.end field

.field public sub_track_delay_time:F
    .annotation build Landroidx/room/ColumnInfo;
        name = "sub_track_delay_time"
        typeAffinity = 0x4
    .end annotation
.end field

.field public sub_track_time:J
    .annotation build Landroidx/room/ColumnInfo;
        name = "sub_track_time"
        typeAffinity = 0x3
    .end annotation
.end field

.field public sub_type:I
    .annotation build Landroidx/room/ColumnInfo;
        defaultValue = "0"
        name = "sub_type"
        typeAffinity = 0x3
    .end annotation
.end field

.field public subtitle_path:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "subtitle_path"
        typeAffinity = 0x2
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SubtitleRecord{ id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sub_inner_id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_inner_id:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isInnerSubtitle:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_type:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", subType:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_type:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", sub_inner_name:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_inner_name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_inner_id:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_inner_id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sub_local_lang_to:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_local_lang_to:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", path:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->subtitle_path:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " }"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
