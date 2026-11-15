.class public final Lcom/transsion/cloud/upload/model/UploadProgressInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/cloud/upload/model/UploadProgressInfo$Action;,
        Lcom/transsion/cloud/upload/model/UploadProgressInfo$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u000c\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010!\n\u0002\u0008\u0008\u0018\u0000 -2\u00020\u0001:\u0002,-B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0013\u0010\'\u001a\u00020 2\u0008\u0010(\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\u0008\u0010)\u001a\u00020\u0013H\u0016J\u0010\u0010*\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\rH\u0002J\u0008\u0010+\u001a\u00020\u0005H\u0016R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0006\u001a\u00020\u0005X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u0014\u0010\u000b\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000c\u001a\u00020\r8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000e\u001a\u00020\r8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000f\u001a\u00020\u00108\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0011\u001a\u00020\r8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0012\u001a\u00020\u00138\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0014\u001a\u00020\u00138\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0015\u001a\u00020\r8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0016\u001a\u00020\r8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0017\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0018\u001a\u00020\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001cR\u0012\u0010\u001d\u001a\u00020\u00138\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u001e\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u001f\u001a\u00020 8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010!\u001a\u00020\u00138\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\"\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010#\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010$\u001a\u00020\r8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010%\u001a\u0008\u0012\u0004\u0012\u00020\r0&X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006."
    }
    d2 = {
        "Lcom/transsion/cloud/upload/model/UploadProgressInfo;",
        "",
        "<init>",
        "()V",
        "tag",
        "",
        "filePath",
        "getFilePath",
        "()Ljava/lang/String;",
        "setFilePath",
        "(Ljava/lang/String;)V",
        "fileName",
        "totalSize",
        "",
        "currentSize",
        "fraction",
        "",
        "speed",
        "status",
        "",
        "lastStatus",
        "date",
        "duration",
        "taskId",
        "fileType",
        "getFileType",
        "()I",
        "setFileType",
        "(I)V",
        "mediaId",
        "fileId",
        "hadMarkError",
        "",
        "transcodingProgress",
        "tempSize",
        "lastRefreshTime",
        "lastSize",
        "speedBuffer",
        "",
        "equals",
        "other",
        "hashCode",
        "bufferSpeed",
        "toString",
        "Action",
        "Companion",
        "sniffer_load_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/transsion/cloud/upload/model/UploadProgressInfo$Companion;


# instance fields
.field public currentSize:J

.field public date:J

.field public duration:J

.field public fileId:Ljava/lang/String;

.field public fileName:Ljava/lang/String;

.field public filePath:Ljava/lang/String;

.field private fileType:I

.field public fraction:F

.field public hadMarkError:Z

.field private transient lastRefreshTime:J

.field public lastSize:J

.field public lastStatus:I

.field public mediaId:I

.field public speed:J

.field private final transient speedBuffer:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public status:I

.field public tag:Ljava/lang/String;

.field public taskId:Ljava/lang/String;

.field private transient tempSize:J

.field public totalSize:J

.field public transcodingProgress:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/cloud/upload/model/UploadProgressInfo$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/cloud/upload/model/UploadProgressInfo$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->Companion:Lcom/transsion/cloud/upload/model/UploadProgressInfo$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->speedBuffer:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$bufferSpeed(Lcom/transsion/cloud/upload/model/UploadProgressInfo;J)J
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->bufferSpeed(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final synthetic access$getLastRefreshTime$p(Lcom/transsion/cloud/upload/model/UploadProgressInfo;)J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->lastRefreshTime:J

    return-wide v0
.end method

.method public static final synthetic access$getTempSize$p(Lcom/transsion/cloud/upload/model/UploadProgressInfo;)J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->tempSize:J

    return-wide v0
.end method

.method public static final synthetic access$setLastRefreshTime$p(Lcom/transsion/cloud/upload/model/UploadProgressInfo;J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->lastRefreshTime:J

    return-void
.end method

.method public static final synthetic access$setTempSize$p(Lcom/transsion/cloud/upload/model/UploadProgressInfo;J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->tempSize:J

    return-void
.end method

.method private final bufferSpeed(J)J
    .locals 4

    iget-object v0, p0, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->speedBuffer:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->speedBuffer:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 p2, 0xa

    if-le p1, p2, :cond_0

    iget-object p1, p0, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->speedBuffer:Ljava/util/List;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    iget-object p1, p0, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->speedBuffer:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-wide/16 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    add-long/2addr v0, v2

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->speedBuffer:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    int-to-long p0, p0

    div-long/2addr v0, p0

    return-wide v0
.end method

.method public static final changeProgress(Lcom/transsion/cloud/upload/model/UploadProgressInfo;JJLcom/transsion/cloud/upload/model/UploadProgressInfo$Action;)Lcom/transsion/cloud/upload/model/UploadProgressInfo;
    .locals 7

    sget-object v0, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->Companion:Lcom/transsion/cloud/upload/model/UploadProgressInfo$Companion;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/transsion/cloud/upload/model/UploadProgressInfo$Companion;->changeProgress(Lcom/transsion/cloud/upload/model/UploadProgressInfo;JJLcom/transsion/cloud/upload/model/UploadProgressInfo$Action;)Lcom/transsion/cloud/upload/model/UploadProgressInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/transsion/cloud/upload/model/UploadProgressInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    iget-object v1, p0, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->tag:Ljava/lang/String;

    check-cast p1, Lcom/transsion/cloud/upload/model/UploadProgressInfo;

    iget-object v3, p1, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->tag:Ljava/lang/String;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->getFilePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->getFilePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public final getFilePath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->filePath:Ljava/lang/String;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "filePath"

    invoke-static {p0}, Ly45;->B(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getFileType()I
    .locals 0

    iget p0, p0, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->fileType:I

    return p0
.end method

.method public hashCode()I
    .locals 1

    iget-object p0, p0, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->tag:Ljava/lang/String;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :cond_0
    return v0
.end method

.method public final setFilePath(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->filePath:Ljava/lang/String;

    return-void
.end method

.method public final setFileType(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->fileType:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 20

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->tag:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->getFilePath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->fileName:Ljava/lang/String;

    iget-wide v4, v0, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->totalSize:J

    iget-wide v6, v0, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->currentSize:J

    iget v8, v0, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->fraction:F

    iget-wide v9, v0, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->speed:J

    iget v11, v0, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->status:I

    iget-wide v12, v0, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->date:J

    iget-wide v14, v0, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->duration:J

    move-wide/from16 v16, v14

    iget-object v14, v0, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->taskId:Ljava/lang/String;

    iget v15, v0, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->fileType:I

    move/from16 v18, v15

    iget v15, v0, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->mediaId:I

    iget-boolean v0, v0, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->hadMarkError:Z

    move/from16 p0, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v19, v15

    const-string v15, "UploadProgressInfo{tag="

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", filePath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", fileName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", totalSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", currentSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", fraction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", speed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", date="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", taskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", fileType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mediaId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", hadMarkError="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
