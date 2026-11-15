.class public final Lcom/transsion/dbdata/database/PlayListFolderItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0012\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\r\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\t\u0010\nJ\t\u0010\'\u001a\u00020\u0003H\u00c6\u0003J\t\u0010(\u001a\u00020\u0005H\u00c6\u0003J\t\u0010)\u001a\u00020\u0007H\u00c6\u0003J\t\u0010*\u001a\u00020\u0007H\u00c6\u0003J1\u0010+\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0007H\u00c6\u0001J\u0013\u0010,\u001a\u00020#2\u0008\u0010-\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010.\u001a\u00020\u0007H\u00d6\u0001J\t\u0010/\u001a\u00020\u0005H\u00d6\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u001e\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u001e\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u0016\u0010\u0008\u001a\u00020\u00078\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0012R\u001e\u0010\u0016\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0012\"\u0004\u0008\u0018\u0010\u0014R \u0010\u0019\u001a\u0004\u0018\u00010\u001a8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001eR\u001e\u0010\u001f\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008 \u0010\u0012\"\u0004\u0008!\u0010\u0014R\u001e\u0010\"\u001a\u00020#8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\"\u0010$\"\u0004\u0008%\u0010&\u00a8\u00060"
    }
    d2 = {
        "Lcom/transsion/dbdata/database/PlayListFolderItem;",
        "",
        "id",
        "",
        "name",
        "",
        "count",
        "",
        "category",
        "<init>",
        "(JLjava/lang/String;II)V",
        "getId",
        "()J",
        "getName",
        "()Ljava/lang/String;",
        "setName",
        "(Ljava/lang/String;)V",
        "getCount",
        "()I",
        "setCount",
        "(I)V",
        "getCategory",
        "listFlag",
        "getListFlag",
        "setListFlag",
        "uri",
        "Landroid/net/Uri;",
        "getUri",
        "()Landroid/net/Uri;",
        "setUri",
        "(Landroid/net/Uri;)V",
        "uriType",
        "getUriType",
        "setUriType",
        "isCustomCover",
        "",
        "()Z",
        "setCustomCover",
        "(Z)V",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "equals",
        "other",
        "hashCode",
        "toString",
        "dbdata_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final category:I
    .annotation build Landroidx/room/ColumnInfo;
        name = "category"
    .end annotation
.end field

.field private count:I
    .annotation build Landroidx/room/ColumnInfo;
        name = "count"
    .end annotation
.end field

.field private final id:J
    .annotation build Landroidx/room/ColumnInfo;
        name = "id"
    .end annotation
.end field

.field private isCustomCover:Z
    .annotation build Landroidx/room/Ignore;
    .end annotation
.end field

.field private listFlag:I
    .annotation build Landroidx/room/Ignore;
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "name"
    .end annotation
.end field

.field private uri:Landroid/net/Uri;
    .annotation build Landroidx/room/Ignore;
    .end annotation
.end field

.field private uriType:I
    .annotation build Landroidx/room/Ignore;
    .end annotation
.end field


# direct methods
.method public constructor <init>(JLjava/lang/String;II)V
    .locals 1

    const-string v0, "name"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/transsion/dbdata/database/PlayListFolderItem;->id:J

    iput-object p3, p0, Lcom/transsion/dbdata/database/PlayListFolderItem;->name:Ljava/lang/String;

    iput p4, p0, Lcom/transsion/dbdata/database/PlayListFolderItem;->count:I

    iput p5, p0, Lcom/transsion/dbdata/database/PlayListFolderItem;->category:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/dbdata/database/PlayListFolderItem;JLjava/lang/String;IIILjava/lang/Object;)Lcom/transsion/dbdata/database/PlayListFolderItem;
    .locals 6

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-wide p1, p0, Lcom/transsion/dbdata/database/PlayListFolderItem;->id:J

    :cond_0
    move-wide v1, p1

    and-int/lit8 p1, p6, 0x2

    if-eqz p1, :cond_1

    iget-object p3, p0, Lcom/transsion/dbdata/database/PlayListFolderItem;->name:Ljava/lang/String;

    :cond_1
    move-object v3, p3

    and-int/lit8 p1, p6, 0x4

    if-eqz p1, :cond_2

    iget p4, p0, Lcom/transsion/dbdata/database/PlayListFolderItem;->count:I

    :cond_2
    move v4, p4

    and-int/lit8 p1, p6, 0x8

    if-eqz p1, :cond_3

    iget p5, p0, Lcom/transsion/dbdata/database/PlayListFolderItem;->category:I

    :cond_3
    move v5, p5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/dbdata/database/PlayListFolderItem;->copy(JLjava/lang/String;II)Lcom/transsion/dbdata/database/PlayListFolderItem;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/dbdata/database/PlayListFolderItem;->id:J

    return-wide v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/database/PlayListFolderItem;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final component3()I
    .locals 0

    iget p0, p0, Lcom/transsion/dbdata/database/PlayListFolderItem;->count:I

    return p0
.end method

.method public final component4()I
    .locals 0

    iget p0, p0, Lcom/transsion/dbdata/database/PlayListFolderItem;->category:I

    return p0
.end method

.method public final copy(JLjava/lang/String;II)Lcom/transsion/dbdata/database/PlayListFolderItem;
    .locals 6

    const-string p0, "name"

    invoke-static {p3, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/transsion/dbdata/database/PlayListFolderItem;

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/transsion/dbdata/database/PlayListFolderItem;-><init>(JLjava/lang/String;II)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/transsion/dbdata/database/PlayListFolderItem;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/transsion/dbdata/database/PlayListFolderItem;

    iget-wide v3, p0, Lcom/transsion/dbdata/database/PlayListFolderItem;->id:J

    iget-wide v5, p1, Lcom/transsion/dbdata/database/PlayListFolderItem;->id:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/transsion/dbdata/database/PlayListFolderItem;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/dbdata/database/PlayListFolderItem;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/transsion/dbdata/database/PlayListFolderItem;->count:I

    iget v3, p1, Lcom/transsion/dbdata/database/PlayListFolderItem;->count:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget p0, p0, Lcom/transsion/dbdata/database/PlayListFolderItem;->category:I

    iget p1, p1, Lcom/transsion/dbdata/database/PlayListFolderItem;->category:I

    if-eq p0, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getCategory()I
    .locals 0

    iget p0, p0, Lcom/transsion/dbdata/database/PlayListFolderItem;->category:I

    return p0
.end method

.method public final getCount()I
    .locals 0

    iget p0, p0, Lcom/transsion/dbdata/database/PlayListFolderItem;->count:I

    return p0
.end method

.method public final getId()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/dbdata/database/PlayListFolderItem;->id:J

    return-wide v0
.end method

.method public final getListFlag()I
    .locals 0

    iget p0, p0, Lcom/transsion/dbdata/database/PlayListFolderItem;->listFlag:I

    return p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/database/PlayListFolderItem;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final getUri()Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/database/PlayListFolderItem;->uri:Landroid/net/Uri;

    return-object p0
.end method

.method public final getUriType()I
    .locals 0

    iget p0, p0, Lcom/transsion/dbdata/database/PlayListFolderItem;->uriType:I

    return p0
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Lcom/transsion/dbdata/database/PlayListFolderItem;->id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/dbdata/database/PlayListFolderItem;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/transsion/dbdata/database/PlayListFolderItem;->count:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/transsion/dbdata/database/PlayListFolderItem;->category:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final isCustomCover()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/dbdata/database/PlayListFolderItem;->isCustomCover:Z

    return p0
.end method

.method public final setCount(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/dbdata/database/PlayListFolderItem;->count:I

    return-void
.end method

.method public final setCustomCover(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/dbdata/database/PlayListFolderItem;->isCustomCover:Z

    return-void
.end method

.method public final setListFlag(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/dbdata/database/PlayListFolderItem;->listFlag:I

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/dbdata/database/PlayListFolderItem;->name:Ljava/lang/String;

    return-void
.end method

.method public final setUri(Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/database/PlayListFolderItem;->uri:Landroid/net/Uri;

    return-void
.end method

.method public final setUriType(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/dbdata/database/PlayListFolderItem;->uriType:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget-wide v0, p0, Lcom/transsion/dbdata/database/PlayListFolderItem;->id:J

    iget-object v2, p0, Lcom/transsion/dbdata/database/PlayListFolderItem;->name:Ljava/lang/String;

    iget v3, p0, Lcom/transsion/dbdata/database/PlayListFolderItem;->count:I

    iget p0, p0, Lcom/transsion/dbdata/database/PlayListFolderItem;->category:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PlayListFolderItem(id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", name="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", count="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", category="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
