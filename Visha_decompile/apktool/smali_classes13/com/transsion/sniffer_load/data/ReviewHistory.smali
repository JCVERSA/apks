.class public Lcom/transsion/sniffer_load/data/ReviewHistory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/room/Entity;
    tableName = "ReviewHistory"
.end annotation


# instance fields
.field public bitmap:[B
    .annotation build Landroidx/room/ColumnInfo;
    .end annotation
.end field

.field public date:J
    .annotation build Landroidx/room/ColumnInfo;
    .end annotation
.end field

.field public id:J
    .annotation build Landroidx/room/PrimaryKey;
        autoGenerate = true
    .end annotation
.end field

.field public imageUri:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
    .end annotation
.end field

.field public isDateItem:Z
    .annotation build Landroidx/room/Ignore;
    .end annotation
.end field

.field public name:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
    .end annotation
.end field

.field public url:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;JZ)V
    .locals 0
    .annotation build Landroidx/room/Ignore;
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/transsion/sniffer_load/data/ReviewHistory;->name:Ljava/lang/String;

    .line 17
    iput-boolean p4, p0, Lcom/transsion/sniffer_load/data/ReviewHistory;->isDateItem:Z

    .line 18
    iput-wide p2, p0, Lcom/transsion/sniffer_load/data/ReviewHistory;->date:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .annotation build Landroidx/room/Ignore;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/transsion/sniffer_load/data/ReviewHistory;->name:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/transsion/sniffer_load/data/ReviewHistory;->url:Ljava/lang/String;

    .line 4
    iput-wide p3, p0, Lcom/transsion/sniffer_load/data/ReviewHistory;->date:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/transsion/sniffer_load/data/ReviewHistory;->name:Ljava/lang/String;

    .line 7
    iput-object p2, p0, Lcom/transsion/sniffer_load/data/ReviewHistory;->imageUri:Ljava/lang/String;

    .line 8
    iput-object p3, p0, Lcom/transsion/sniffer_load/data/ReviewHistory;->url:Ljava/lang/String;

    .line 9
    iput-wide p4, p0, Lcom/transsion/sniffer_load/data/ReviewHistory;->date:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[BLjava/lang/String;J)V
    .locals 0
    .annotation build Landroidx/room/Ignore;
    .end annotation

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/transsion/sniffer_load/data/ReviewHistory;->name:Ljava/lang/String;

    .line 12
    iput-object p2, p0, Lcom/transsion/sniffer_load/data/ReviewHistory;->bitmap:[B

    .line 13
    iput-object p3, p0, Lcom/transsion/sniffer_load/data/ReviewHistory;->url:Ljava/lang/String;

    .line 14
    iput-wide p4, p0, Lcom/transsion/sniffer_load/data/ReviewHistory;->date:J

    return-void
.end method


# virtual methods
.method public getBitmap()[B
    .locals 0

    iget-object p0, p0, Lcom/transsion/sniffer_load/data/ReviewHistory;->bitmap:[B

    return-object p0
.end method

.method public getDate()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/sniffer_load/data/ReviewHistory;->date:J

    return-wide v0
.end method

.method public getId()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/sniffer_load/data/ReviewHistory;->id:J

    return-wide v0
.end method

.method public getImageUri()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/sniffer_load/data/ReviewHistory;->imageUri:Ljava/lang/String;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/sniffer_load/data/ReviewHistory;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/sniffer_load/data/ReviewHistory;->url:Ljava/lang/String;

    return-object p0
.end method

.method public isDateItem()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/sniffer_load/data/ReviewHistory;->isDateItem:Z

    return p0
.end method

.method public setBitmap([B)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/sniffer_load/data/ReviewHistory;->bitmap:[B

    return-void
.end method

.method public setDate(J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/sniffer_load/data/ReviewHistory;->date:J

    return-void
.end method

.method public setDateItem(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/sniffer_load/data/ReviewHistory;->isDateItem:Z

    return-void
.end method

.method public setId(J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/sniffer_load/data/ReviewHistory;->id:J

    return-void
.end method

.method public setImageUri(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/sniffer_load/data/ReviewHistory;->imageUri:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/sniffer_load/data/ReviewHistory;->name:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/sniffer_load/data/ReviewHistory;->url:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ReviewHistory{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/transsion/sniffer_load/data/ReviewHistory;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/sniffer_load/data/ReviewHistory;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", url=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/sniffer_load/data/ReviewHistory;->url:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", date="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/transsion/sniffer_load/data/ReviewHistory;->date:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
