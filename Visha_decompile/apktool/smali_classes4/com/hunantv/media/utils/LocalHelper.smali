.class public Lcom/hunantv/media/utils/LocalHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hunantv/media/utils/LocalHelper$MediaType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LocalHelper"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkHLS(Ljava/io/File;)Z
    .locals 4

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x19

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-gez v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0xc8

    new-array v0, v0, [B

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move p0, v1

    :goto_0
    rsub-int v2, p0, 0xc8

    if-lez v2, :cond_1

    :try_start_1
    invoke-virtual {v3, v0, p0, v2}, Ljava/io/FileInputStream;->read([BII)I

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ltz v2, :cond_1

    add-int/2addr p0, v2

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object v2, v3

    goto :goto_3

    :catch_0
    move-exception p0

    move-object v2, v3

    goto :goto_1

    :cond_1
    const/16 v2, 0x19

    if-ge p0, v2, :cond_2

    invoke-static {v3}, Lcom/hunantv/media/report/c/f;->a(Ljava/io/Closeable;)V

    return v1

    :cond_2
    :try_start_2
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0, v1, p0}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lcom/hunantv/media/player/utils/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_4

    const-string p0, "#EXTM3U"

    invoke-virtual {v2, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "#EXT-X-STREAM-INF:"

    invoke-virtual {v2, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_3

    const-string p0, "#EXT-X-TARGETDURATION:"

    invoke-virtual {v2, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_3

    const-string p0, "#EXT-X-MEDIA-SEQUENCE:"

    invoke-virtual {v2, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p0, :cond_4

    :cond_3
    invoke-static {v3}, Lcom/hunantv/media/report/c/f;->a(Ljava/io/Closeable;)V

    const/4 p0, 0x1

    return p0

    :cond_4
    invoke-static {v3}, Lcom/hunantv/media/report/c/f;->a(Ljava/io/Closeable;)V

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_3

    :catch_1
    move-exception p0

    :goto_1
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {v2}, Lcom/hunantv/media/report/c/f;->a(Ljava/io/Closeable;)V

    :goto_2
    return v1

    :goto_3
    invoke-static {v2}, Lcom/hunantv/media/report/c/f;->a(Ljava/io/Closeable;)V

    throw p0
.end method

.method private static checkMP4(Ljava/io/File;)Z
    .locals 4

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x8

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static filterLocalProtocol(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    :try_start_0
    const-string v0, "file:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x5

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    if-eq v1, v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    return-object p0
.end method

.method public static validLocalPath(Ljava/lang/String;Lcom/hunantv/media/utils/LocalHelper$MediaType;)Z
    .locals 2

    invoke-static {p0, p1}, Lcom/hunantv/media/utils/LocalHelper;->validLocalPathImpl(Ljava/lang/String;Lcom/hunantv/media/utils/LocalHelper$MediaType;)Z

    move-result p0

    sget-object p1, Lcom/hunantv/media/utils/LocalHelper;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "validLocalPath: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method private static validLocalPathImpl(Ljava/lang/String;Lcom/hunantv/media/utils/LocalHelper$MediaType;)Z
    .locals 3

    invoke-static {p0}, Lcom/hunantv/media/player/utils/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/hunantv/media/utils/LocalHelper;->filterLocalProtocol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/hunantv/media/utils/LocalHelper$1;->$SwitchMap$com$hunantv$media$utils$LocalHelper$MediaType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x1

    if-eq p0, p1, :cond_3

    const/4 v2, 0x2

    if-eq p0, v2, :cond_2

    return p1

    :cond_2
    invoke-static {v0}, Lcom/hunantv/media/utils/LocalHelper;->checkHLS(Ljava/io/File;)Z

    move-result p0

    return p0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_3
    invoke-static {v0}, Lcom/hunantv/media/utils/LocalHelper;->checkMP4(Ljava/io/File;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :cond_4
    :goto_0
    return v1

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v1
.end method
