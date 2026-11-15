.class Lorg/proninyaroslav/libretorrent/core/model/session/SessionErrors;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/proninyaroslav/libretorrent/core/model/session/SessionErrors$Error;
    }
.end annotation


# static fields
.field private static final errors:[Lorg/proninyaroslav/libretorrent/core/model/session/SessionErrors$Error;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/proninyaroslav/libretorrent/core/model/session/SessionErrors$Error;

    const/16 v1, 0xb

    const-string v2, "Try again"

    invoke-direct {v0, v1, v2}, Lorg/proninyaroslav/libretorrent/core/model/session/SessionErrors$Error;-><init>(ILjava/lang/String;)V

    new-instance v1, Lorg/proninyaroslav/libretorrent/core/model/session/SessionErrors$Error;

    const/16 v2, 0x16

    const-string v3, "Invalid argument"

    invoke-direct {v1, v2, v3}, Lorg/proninyaroslav/libretorrent/core/model/session/SessionErrors$Error;-><init>(ILjava/lang/String;)V

    filled-new-array {v0, v1}, [Lorg/proninyaroslav/libretorrent/core/model/session/SessionErrors$Error;

    move-result-object v0

    sput-object v0, Lorg/proninyaroslav/libretorrent/core/model/session/SessionErrors;->errors:[Lorg/proninyaroslav/libretorrent/core/model/session/SessionErrors$Error;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getErrorMsg(Lorg/libtorrent4j/ErrorCode;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/libtorrent4j/ErrorCode;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", code "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/libtorrent4j/ErrorCode;->getValue()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static isNonCritical(Lorg/libtorrent4j/ErrorCode;)Z
    .locals 8
    .param p0    # Lorg/libtorrent4j/ErrorCode;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lorg/libtorrent4j/ErrorCode;->isError()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lorg/proninyaroslav/libretorrent/core/model/session/SessionErrors;->errors:[Lorg/proninyaroslav/libretorrent/core/model/session/SessionErrors$Error;

    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v0, v4

    invoke-virtual {p0}, Lorg/libtorrent4j/ErrorCode;->getValue()I

    move-result v6

    iget v7, v5, Lorg/proninyaroslav/libretorrent/core/model/session/SessionErrors$Error;->errCode:I

    if-ne v6, v7, :cond_1

    iget-object v5, v5, Lorg/proninyaroslav/libretorrent/core/model/session/SessionErrors$Error;->errMsg:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/libtorrent4j/ErrorCode;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    return v1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return v3
.end method
