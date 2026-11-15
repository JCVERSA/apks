.class public Lcom/transsion/dbdata/beans/SubtitleHistory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/room/Entity;
    tableName = "SubtitleHistory"
.end annotation


# instance fields
.field public isCheck:Z
    .annotation build Landroidx/room/Ignore;
    .end annotation
.end field

.field public state:I
    .annotation build Landroidx/room/ColumnInfo;
        name = "state"
    .end annotation
.end field

.field public subId:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/room/ColumnInfo;
        name = "sub_id"
    .end annotation

    .annotation build Landroidx/room/PrimaryKey;
        autoGenerate = false
    .end annotation
.end field

.field public subLanguage:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "sub_language"
    .end annotation
.end field

.field public subLanguageId:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "sub_language_id"
    .end annotation
.end field

.field public subName:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "sub_name"
    .end annotation
.end field

.field public subPath:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "sub_path"
    .end annotation
.end field

.field public subSize:J
    .annotation build Landroidx/room/ColumnInfo;
        name = "sub_size"
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
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "subId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/dbdata/beans/SubtitleHistory;->subId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",subName"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/dbdata/beans/SubtitleHistory;->subName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",subLanguage"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/dbdata/beans/SubtitleHistory;->subLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",sub_size"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/transsion/dbdata/beans/SubtitleHistory;->subSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
