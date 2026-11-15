.class public Lcom/lzy/okgo/model/Progress;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzy/okgo/model/Progress$a;
    }
.end annotation


# static fields
.field public static final ACCEPTLANGUAGE:Ljava/lang/String; = "acceptlanguage"

.field public static final ACCEPTTYPE:Ljava/lang/String; = "accepttype"

.field public static final COOKIE:Ljava/lang/String; = "cookie"

.field public static final CURRENT_SIZE:Ljava/lang/String; = "currentSize"

.field public static final DATE:Ljava/lang/String; = "date"

.field public static final DOWNLOADSOURCE:Ljava/lang/String; = "downloadsource"

.field public static final ERROR:I = 0x4

.field public static final EXTRA1:Ljava/lang/String; = "extra1"

.field public static final EXTRA2:Ljava/lang/String; = "extra2"

.field public static final EXTRA3:Ljava/lang/String; = "extra3"

.field public static final FILE_NAME:Ljava/lang/String; = "fileName"

.field public static final FILE_PATH:Ljava/lang/String; = "filePath"

.field public static final FILE_TMP:Ljava/lang/String; = ".xdl"

.field public static final FINISH:I = 0x5

.field public static final FOLDER:Ljava/lang/String; = "folder"

.field public static final FRACTION:Ljava/lang/String; = "fraction"

.field public static final IMGURL:Ljava/lang/String; = "imgUrl"

.field public static final LOADING:I = 0x2

.field public static final MIMETYPE:Ljava/lang/String; = "mimeType"

.field public static final NONE:I = 0x0

.field public static final NO_NET:I = 0x7

.field public static final ORIGIN:Ljava/lang/String; = "origin"

.field public static final PAUSE:I = 0x3

.field public static final PAUSE_MOBILE:I = 0x6

.field public static final PRIORITY:Ljava/lang/String; = "priority"

.field public static final PROCESSING:I = 0x8

.field public static final PROCESS_FAIL:I = 0x9

.field public static final REFERER:Ljava/lang/String; = "referer"

.field public static final REQUEST:Ljava/lang/String; = "request"

.field public static final SNIFFID:Ljava/lang/String; = "sniffId"

.field public static final SOURCE:Ljava/lang/String; = "source"

.field public static final STATUS:Ljava/lang/String; = "status"

.field public static final TAG:Ljava/lang/String; = "tag"

.field public static final TOTAL_SIZE:Ljava/lang/String; = "totalSize"

.field public static final UAAGENT:Ljava/lang/String; = "uaAgent"

.field public static final URL:Ljava/lang/String; = "url"

.field public static final WAITING:I = 0x1

.field private static final serialVersionUID:J = 0x582cbacdd9906bc3L


# instance fields
.field public acceptLanguage:Ljava/lang/String;

.field public acceptType:Ljava/lang/String;

.field public cloudFileId:Ljava/lang/String;

.field public cookie:Ljava/lang/String;

.field public currentSize:J

.field public date:J

.field public downloadSource:I

.field public duration:J

.field public exception:Ljava/lang/Throwable;

.field public extra1:Ljava/io/Serializable;

.field public extra2:Ljava/io/Serializable;

.field public extra3:Ljava/io/Serializable;

.field public fileName:Ljava/lang/String;

.field public filePath:Ljava/lang/String;

.field public folder:Ljava/lang/String;

.field public fraction:F

.field public hasErrorNotify:Z

.field public imgUrl:Ljava/lang/String;

.field public isClient:Z

.field private transient lastRefreshTime:J

.field public transient lastSize:J

.field public lastStatus:I

.field public mimeType:Ljava/lang/String;

.field public origin:Ljava/lang/String;

.field public priority:I

.field public referer:Ljava/lang/String;

.field public request:Lcom/lzy/okgo/request/base/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lzy/okgo/request/base/Request<",
            "*+",
            "Lcom/lzy/okgo/request/base/Request;",
            ">;"
        }
    .end annotation
.end field

.field public sniffId:Ljava/lang/String;

.field public source:I

.field public transient speed:J

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

.field public uaAgent:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lzy/okgo/model/Progress;->hasErrorNotify:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/lzy/okgo/model/Progress;->lastRefreshTime:J

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/lzy/okgo/model/Progress;->totalSize:J

    iput v0, p0, Lcom/lzy/okgo/model/Progress;->priority:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lzy/okgo/model/Progress;->date:J

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/lzy/okgo/model/Progress;->speedBuffer:Ljava/util/List;

    return-void
.end method

.method private bufferSpeed(J)J
    .locals 4

    iget-object v0, p0, Lcom/lzy/okgo/model/Progress;->speedBuffer:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/lzy/okgo/model/Progress;->speedBuffer:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 p2, 0xa

    if-le p1, p2, :cond_0

    iget-object p1, p0, Lcom/lzy/okgo/model/Progress;->speedBuffer:Ljava/util/List;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    iget-object p1, p0, Lcom/lzy/okgo/model/Progress;->speedBuffer:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-wide/16 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-float p2, v2

    long-to-float v0, v0

    add-float/2addr v0, p2

    float-to-long v0, v0

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/lzy/okgo/model/Progress;->speedBuffer:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    int-to-long p0, p0

    div-long/2addr v0, p0

    return-wide v0
.end method

.method public static buildContentValues(Lcom/lzy/okgo/model/Progress;)Landroid/content/ContentValues;
    .locals 3

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iget-object v1, p0, Lcom/lzy/okgo/model/Progress;->tag:Ljava/lang/String;

    const-string v2, "tag"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "url"

    iget-object v2, p0, Lcom/lzy/okgo/model/Progress;->url:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "folder"

    iget-object v2, p0, Lcom/lzy/okgo/model/Progress;->folder:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "filePath"

    iget-object v2, p0, Lcom/lzy/okgo/model/Progress;->filePath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "fileName"

    iget-object v2, p0, Lcom/lzy/okgo/model/Progress;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/lzy/okgo/model/Progress;->fraction:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "fraction"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    iget-wide v1, p0, Lcom/lzy/okgo/model/Progress;->totalSize:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "totalSize"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-wide v1, p0, Lcom/lzy/okgo/model/Progress;->currentSize:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "currentSize"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget v1, p0, Lcom/lzy/okgo/model/Progress;->status:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "status"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget v1, p0, Lcom/lzy/okgo/model/Progress;->priority:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "priority"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-wide v1, p0, Lcom/lzy/okgo/model/Progress;->date:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "date"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "imgUrl"

    iget-object v2, p0, Lcom/lzy/okgo/model/Progress;->imgUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "mimeType"

    iget-object v2, p0, Lcom/lzy/okgo/model/Progress;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/lzy/okgo/model/Progress;->request:Lcom/lzy/okgo/request/base/Request;

    invoke-static {v1}, Lmv4;->g(Ljava/lang/Object;)[B

    move-result-object v1

    const-string v2, "request"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    iget-object v1, p0, Lcom/lzy/okgo/model/Progress;->extra1:Ljava/io/Serializable;

    invoke-static {v1}, Lmv4;->g(Ljava/lang/Object;)[B

    move-result-object v1

    const-string v2, "extra1"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    iget-object v1, p0, Lcom/lzy/okgo/model/Progress;->extra2:Ljava/io/Serializable;

    invoke-static {v1}, Lmv4;->g(Ljava/lang/Object;)[B

    move-result-object v1

    const-string v2, "extra2"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    iget-object v1, p0, Lcom/lzy/okgo/model/Progress;->extra3:Ljava/io/Serializable;

    invoke-static {v1}, Lmv4;->g(Ljava/lang/Object;)[B

    move-result-object v1

    const-string v2, "extra3"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v1, "sniffId"

    iget-object v2, p0, Lcom/lzy/okgo/model/Progress;->sniffId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/lzy/okgo/model/Progress;->source:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "source"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "uaAgent"

    iget-object v2, p0, Lcom/lzy/okgo/model/Progress;->uaAgent:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "cookie"

    iget-object v2, p0, Lcom/lzy/okgo/model/Progress;->cookie:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "acceptlanguage"

    iget-object v2, p0, Lcom/lzy/okgo/model/Progress;->acceptLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "accepttype"

    iget-object v2, p0, Lcom/lzy/okgo/model/Progress;->acceptType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "origin"

    iget-object v2, p0, Lcom/lzy/okgo/model/Progress;->origin:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "referer"

    iget-object p0, p0, Lcom/lzy/okgo/model/Progress;->referer:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static buildUpdateContentValues(Lcom/lzy/okgo/model/Progress;)Landroid/content/ContentValues;
    .locals 3

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iget v1, p0, Lcom/lzy/okgo/model/Progress;->fraction:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "fraction"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    iget-wide v1, p0, Lcom/lzy/okgo/model/Progress;->totalSize:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "totalSize"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-wide v1, p0, Lcom/lzy/okgo/model/Progress;->currentSize:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "currentSize"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget v1, p0, Lcom/lzy/okgo/model/Progress;->status:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "status"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget v1, p0, Lcom/lzy/okgo/model/Progress;->priority:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "priority"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-wide v1, p0, Lcom/lzy/okgo/model/Progress;->date:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string v1, "date"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    return-object v0
.end method

.method public static changeProgress(Lcom/lzy/okgo/model/Progress;JJLcom/lzy/okgo/model/Progress$a;)Lcom/lzy/okgo/model/Progress;
    .locals 6

    .line 2
    iput-wide p3, p0, Lcom/lzy/okgo/model/Progress;->totalSize:J

    .line 3
    iget-wide v0, p0, Lcom/lzy/okgo/model/Progress;->currentSize:J

    iput-wide v0, p0, Lcom/lzy/okgo/model/Progress;->lastSize:J

    add-long/2addr v0, p1

    .line 4
    iput-wide v0, p0, Lcom/lzy/okgo/model/Progress;->currentSize:J

    .line 5
    iget-wide v0, p0, Lcom/lzy/okgo/model/Progress;->tempSize:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/lzy/okgo/model/Progress;->tempSize:J

    .line 6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    .line 7
    iget-wide v0, p0, Lcom/lzy/okgo/model/Progress;->lastRefreshTime:J

    sub-long v2, p1, v0

    sget-wide v4, Lfe7;->i:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    iget-wide v2, p0, Lcom/lzy/okgo/model/Progress;->currentSize:J

    cmp-long v2, v2, p3

    if-nez v2, :cond_2

    :goto_0
    sub-long v0, p1, v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    const-wide/16 v0, 0x1

    .line 9
    :cond_1
    iget-wide v4, p0, Lcom/lzy/okgo/model/Progress;->currentSize:J

    long-to-float v4, v4

    const/high16 v5, 0x3f800000    # 1.0f

    mul-float/2addr v4, v5

    long-to-float p3, p3

    div-float/2addr v4, p3

    iput v4, p0, Lcom/lzy/okgo/model/Progress;->fraction:F

    .line 10
    iget-wide p3, p0, Lcom/lzy/okgo/model/Progress;->tempSize:J

    const-wide/16 v4, 0x3e8

    mul-long/2addr p3, v4

    div-long/2addr p3, v0

    invoke-direct {p0, p3, p4}, Lcom/lzy/okgo/model/Progress;->bufferSpeed(J)J

    move-result-wide p3

    iput-wide p3, p0, Lcom/lzy/okgo/model/Progress;->speed:J

    .line 11
    iput-wide p1, p0, Lcom/lzy/okgo/model/Progress;->lastRefreshTime:J

    .line 12
    iput-wide v2, p0, Lcom/lzy/okgo/model/Progress;->tempSize:J

    if-eqz p5, :cond_2

    .line 13
    invoke-interface {p5, p0}, Lcom/lzy/okgo/model/Progress$a;->a(Lcom/lzy/okgo/model/Progress;)V

    :cond_2
    return-object p0
.end method

.method public static changeProgress(Lcom/lzy/okgo/model/Progress;JLcom/lzy/okgo/model/Progress$a;)Lcom/lzy/okgo/model/Progress;
    .locals 6

    .line 1
    iget-wide v3, p0, Lcom/lzy/okgo/model/Progress;->totalSize:J

    move-object v0, p0

    move-wide v1, p1

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/lzy/okgo/model/Progress;->changeProgress(Lcom/lzy/okgo/model/Progress;JJLcom/lzy/okgo/model/Progress$a;)Lcom/lzy/okgo/model/Progress;

    move-result-object p0

    return-object p0
.end method

.method public static parseCursorToBean(Landroid/database/Cursor;)Lcom/lzy/okgo/model/Progress;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Range"
        }
    .end annotation

    new-instance v0, Lcom/lzy/okgo/model/Progress;

    invoke-direct {v0}, Lcom/lzy/okgo/model/Progress;-><init>()V

    const-string v1, "tag"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lzy/okgo/model/Progress;->tag:Ljava/lang/String;

    const-string v1, "url"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lzy/okgo/model/Progress;->url:Ljava/lang/String;

    const-string v1, "folder"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lzy/okgo/model/Progress;->folder:Ljava/lang/String;

    const-string v1, "filePath"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lzy/okgo/model/Progress;->filePath:Ljava/lang/String;

    const-string v1, "fileName"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lzy/okgo/model/Progress;->fileName:Ljava/lang/String;

    const-string v1, "fraction"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v1

    iput v1, v0, Lcom/lzy/okgo/model/Progress;->fraction:F

    const-string v1, "totalSize"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/lzy/okgo/model/Progress;->totalSize:J

    const-string v1, "currentSize"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/lzy/okgo/model/Progress;->currentSize:J

    const-string v1, "status"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/lzy/okgo/model/Progress;->status:I

    const-string v1, "priority"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/lzy/okgo/model/Progress;->priority:I

    const-string v1, "date"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/lzy/okgo/model/Progress;->date:J

    const-string v1, "imgUrl"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lzy/okgo/model/Progress;->imgUrl:Ljava/lang/String;

    const-string v1, "mimeType"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lzy/okgo/model/Progress;->mimeType:Ljava/lang/String;

    const-string v1, "request"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    invoke-static {v1}, Lmv4;->h([B)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lzy/okgo/request/base/Request;

    iput-object v1, v0, Lcom/lzy/okgo/model/Progress;->request:Lcom/lzy/okgo/request/base/Request;

    const-string v1, "extra1"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    invoke-static {v1}, Lmv4;->h([B)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/Serializable;

    iput-object v1, v0, Lcom/lzy/okgo/model/Progress;->extra1:Ljava/io/Serializable;

    const-string v1, "extra2"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    invoke-static {v1}, Lmv4;->h([B)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/Serializable;

    iput-object v1, v0, Lcom/lzy/okgo/model/Progress;->extra2:Ljava/io/Serializable;

    const-string v1, "extra3"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    invoke-static {v1}, Lmv4;->h([B)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/Serializable;

    iput-object v1, v0, Lcom/lzy/okgo/model/Progress;->extra3:Ljava/io/Serializable;

    const-string v1, "sniffId"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lzy/okgo/model/Progress;->sniffId:Ljava/lang/String;

    const-string v1, "source"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/lzy/okgo/model/Progress;->source:I

    const-string v1, "uaAgent"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lzy/okgo/model/Progress;->uaAgent:Ljava/lang/String;

    const-string v1, "cookie"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lzy/okgo/model/Progress;->cookie:Ljava/lang/String;

    const-string v1, "acceptlanguage"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lzy/okgo/model/Progress;->acceptLanguage:Ljava/lang/String;

    const-string v1, "accepttype"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lzy/okgo/model/Progress;->acceptType:Ljava/lang/String;

    const-string v1, "referer"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lzy/okgo/model/Progress;->referer:Ljava/lang/String;

    const-string v1, "origin"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/lzy/okgo/model/Progress;->origin:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/lzy/okgo/model/Progress;

    iget-object p0, p0, Lcom/lzy/okgo/model/Progress;->tag:Ljava/lang/String;

    iget-object p1, p1, Lcom/lzy/okgo/model/Progress;->tag:Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public from(Lcom/lzy/okgo/model/Progress;)V
    .locals 4

    iget-wide v0, p1, Lcom/lzy/okgo/model/Progress;->totalSize:J

    iput-wide v0, p0, Lcom/lzy/okgo/model/Progress;->totalSize:J

    iget-wide v0, p1, Lcom/lzy/okgo/model/Progress;->currentSize:J

    iput-wide v0, p0, Lcom/lzy/okgo/model/Progress;->currentSize:J

    iget v2, p1, Lcom/lzy/okgo/model/Progress;->fraction:F

    iput v2, p0, Lcom/lzy/okgo/model/Progress;->fraction:F

    iget-wide v2, p1, Lcom/lzy/okgo/model/Progress;->speed:J

    iput-wide v2, p0, Lcom/lzy/okgo/model/Progress;->speed:J

    iget-wide v2, p1, Lcom/lzy/okgo/model/Progress;->lastRefreshTime:J

    iput-wide v2, p0, Lcom/lzy/okgo/model/Progress;->lastRefreshTime:J

    iget-wide v2, p1, Lcom/lzy/okgo/model/Progress;->tempSize:J

    iput-wide v2, p0, Lcom/lzy/okgo/model/Progress;->tempSize:J

    iput-wide v0, p0, Lcom/lzy/okgo/model/Progress;->lastSize:J

    return-void
.end method

.method public getOriginSite()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lzy/okgo/model/Progress;->extra2:Ljava/io/Serializable;

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/lzy/okgo/model/Progress;->tag:Ljava/lang/String;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setOriginSite(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lzy/okgo/model/Progress;->extra2:Ljava/io/Serializable;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Progress{fraction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/lzy/okgo/model/Progress;->fraction:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", totalSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/lzy/okgo/model/Progress;->totalSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", currentSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/lzy/okgo/model/Progress;->currentSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", speed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/lzy/okgo/model/Progress;->speed:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/lzy/okgo/model/Progress;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", downloadSource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/lzy/okgo/model/Progress;->downloadSource:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", priority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/lzy/okgo/model/Progress;->priority:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", folder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/lzy/okgo/model/Progress;->folder:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", filePath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/lzy/okgo/model/Progress;->filePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", fileName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/lzy/okgo/model/Progress;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/lzy/okgo/model/Progress;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", taskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/lzy/okgo/model/Progress;->taskId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", cloudFileId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/lzy/okgo/model/Progress;->cloudFileId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/lzy/okgo/model/Progress;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", exception="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/lzy/okgo/model/Progress;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
