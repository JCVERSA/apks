.class public Lcom/transsion/dbdata/database/ConvertingVideo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Landroidx/room/Entity;
    tableName = "converting_video"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x27df20fa6243041cL


# instance fields
.field public add_time:J
    .annotation build Landroidx/room/ColumnInfo;
        name = "add_time"
        typeAffinity = 0x3
    .end annotation
.end field

.field public converted_status:I
    .annotation build Landroidx/room/ColumnInfo;
        defaultValue = "0"
        name = "converted_status"
        typeAffinity = 0x3
    .end annotation
.end field

.field public data:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "data"
        typeAffinity = 0x2
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

.field public mediaId:Ljava/lang/Integer;
    .annotation build Landroidx/room/ColumnInfo;
        name = "mediaId"
        typeAffinity = 0x3
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/dbdata/database/ConvertingVideo;->mediaId:Ljava/lang/Integer;

    iput-object p2, p0, Lcom/transsion/dbdata/database/ConvertingVideo;->data:Ljava/lang/String;

    iput-wide p3, p0, Lcom/transsion/dbdata/database/ConvertingVideo;->add_time:J

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConvertingVideo{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/dbdata/database/ConvertingVideo;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mediaId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/dbdata/database/ConvertingVideo;->mediaId:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/dbdata/database/ConvertingVideo;->data:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", add_time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/transsion/dbdata/database/ConvertingVideo;->add_time:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
