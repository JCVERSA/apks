.class public final enum Lcom/transsion/audiotagger/audio/asf/data/ContainerType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/audiotagger/audio/asf/data/ContainerType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/audiotagger/audio/asf/data/ContainerType;

.field public static final enum CONTENT_BRANDING:Lcom/transsion/audiotagger/audio/asf/data/ContainerType;

.field public static final enum CONTENT_DESCRIPTION:Lcom/transsion/audiotagger/audio/asf/data/ContainerType;

.field public static final enum EXTENDED_CONTENT:Lcom/transsion/audiotagger/audio/asf/data/ContainerType;

.field public static final enum METADATA_LIBRARY_OBJECT:Lcom/transsion/audiotagger/audio/asf/data/ContainerType;

.field public static final enum METADATA_OBJECT:Lcom/transsion/audiotagger/audio/asf/data/ContainerType;


# instance fields
.field private final containerGUID:Lcom/transsion/audiotagger/audio/asf/data/GUID;

.field private final guidEnabled:Z

.field private final languageEnabled:Z

.field private final maximumDataLength:Ljava/math/BigInteger;

.field private final multiValued:Z

.field private final perfMaxDataLen:J

.field private final streamEnabled:Z


# direct methods
.method private static synthetic $values()[Lcom/transsion/audiotagger/audio/asf/data/ContainerType;
    .locals 5

    sget-object v0, Lcom/transsion/audiotagger/audio/asf/data/ContainerType;->CONTENT_BRANDING:Lcom/transsion/audiotagger/audio/asf/data/ContainerType;

    sget-object v1, Lcom/transsion/audiotagger/audio/asf/data/ContainerType;->CONTENT_DESCRIPTION:Lcom/transsion/audiotagger/audio/asf/data/ContainerType;

    sget-object v2, Lcom/transsion/audiotagger/audio/asf/data/ContainerType;->EXTENDED_CONTENT:Lcom/transsion/audiotagger/audio/asf/data/ContainerType;

    sget-object v3, Lcom/transsion/audiotagger/audio/asf/data/ContainerType;->METADATA_LIBRARY_OBJECT:Lcom/transsion/audiotagger/audio/asf/data/ContainerType;

    sget-object v4, Lcom/transsion/audiotagger/audio/asf/data/ContainerType;->METADATA_OBJECT:Lcom/transsion/audiotagger/audio/asf/data/ContainerType;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/transsion/audiotagger/audio/asf/data/ContainerType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 19

    new-instance v9, Lcom/transsion/audiotagger/audio/asf/data/ContainerType;

    sget-object v3, Lcom/transsion/audiotagger/audio/asf/data/GUID;->GUID_CONTENT_BRANDING:Lcom/transsion/audiotagger/audio/asf/data/GUID;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v1, "CONTENT_BRANDING"

    const/4 v2, 0x0

    const/16 v4, 0x20

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/transsion/audiotagger/audio/asf/data/ContainerType;-><init>(Ljava/lang/String;ILcom/transsion/audiotagger/audio/asf/data/GUID;IZZZZ)V

    sput-object v9, Lcom/transsion/audiotagger/audio/asf/data/ContainerType;->CONTENT_BRANDING:Lcom/transsion/audiotagger/audio/asf/data/ContainerType;

    new-instance v0, Lcom/transsion/audiotagger/audio/asf/data/ContainerType;

    sget-object v13, Lcom/transsion/audiotagger/audio/asf/data/GUID;->GUID_CONTENTDESCRIPTION:Lcom/transsion/audiotagger/audio/asf/data/GUID;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-string v11, "CONTENT_DESCRIPTION"

    const/4 v12, 0x1

    const/16 v14, 0x10

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Lcom/transsion/audiotagger/audio/asf/data/ContainerType;-><init>(Ljava/lang/String;ILcom/transsion/audiotagger/audio/asf/data/GUID;IZZZZ)V

    sput-object v0, Lcom/transsion/audiotagger/audio/asf/data/ContainerType;->CONTENT_DESCRIPTION:Lcom/transsion/audiotagger/audio/asf/data/ContainerType;

    new-instance v0, Lcom/transsion/audiotagger/audio/asf/data/ContainerType;

    sget-object v4, Lcom/transsion/audiotagger/audio/asf/data/GUID;->GUID_EXTENDED_CONTENT_DESCRIPTION:Lcom/transsion/audiotagger/audio/asf/data/GUID;

    const/4 v9, 0x0

    const-string v2, "EXTENDED_CONTENT"

    const/4 v3, 0x2

    const/16 v5, 0x10

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/transsion/audiotagger/audio/asf/data/ContainerType;-><init>(Ljava/lang/String;ILcom/transsion/audiotagger/audio/asf/data/GUID;IZZZZ)V

    sput-object v0, Lcom/transsion/audiotagger/audio/asf/data/ContainerType;->EXTENDED_CONTENT:Lcom/transsion/audiotagger/audio/asf/data/ContainerType;

    new-instance v0, Lcom/transsion/audiotagger/audio/asf/data/ContainerType;

    sget-object v13, Lcom/transsion/audiotagger/audio/asf/data/GUID;->GUID_METADATA_LIBRARY:Lcom/transsion/audiotagger/audio/asf/data/GUID;

    const/16 v17, 0x1

    const/16 v18, 0x1

    const-string v11, "METADATA_LIBRARY_OBJECT"

    const/4 v12, 0x3

    const/16 v14, 0x20

    const/4 v15, 0x1

    const/16 v16, 0x1

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Lcom/transsion/audiotagger/audio/asf/data/ContainerType;-><init>(Ljava/lang/String;ILcom/transsion/audiotagger/audio/asf/data/GUID;IZZZZ)V

    sput-object v0, Lcom/transsion/audiotagger/audio/asf/data/ContainerType;->METADATA_LIBRARY_OBJECT:Lcom/transsion/audiotagger/audio/asf/data/ContainerType;

    new-instance v0, Lcom/transsion/audiotagger/audio/asf/data/ContainerType;

    sget-object v4, Lcom/transsion/audiotagger/audio/asf/data/GUID;->GUID_METADATA:Lcom/transsion/audiotagger/audio/asf/data/GUID;

    const/4 v9, 0x1

    const-string v2, "METADATA_OBJECT"

    const/4 v3, 0x4

    const/4 v7, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/transsion/audiotagger/audio/asf/data/ContainerType;-><init>(Ljava/lang/String;ILcom/transsion/audiotagger/audio/asf/data/GUID;IZZZZ)V

    sput-object v0, Lcom/transsion/audiotagger/audio/asf/data/ContainerType;->METADATA_OBJECT:Lcom/transsion/audiotagger/audio/asf/data/ContainerType;

    invoke-static {}, Lcom/transsion/audiotagger/audio/asf/data/ContainerType;->$values()[Lcom/transsion/audiotagger/audio/asf/data/ContainerType;

    move-result-object v0

    sput-object v0, Lcom/transsion/audiotagger/audio/asf/data/ContainerType;->$VALUES:[Lcom/transsion/audiotagger/audio/asf/data/ContainerType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/transsion/audiotagger/audio/asf/data/GUID;IZZZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/audiotagger/audio/asf/data/GUID;",
            "IZZZZ)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/transsion/audiotagger/audio/asf/data/ContainerType;->containerGUID:Lcom/transsion/audiotagger/audio/asf/data/GUID;

    const-wide/16 p1, 0x2

    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object p1

    sget-object p2, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/audiotagger/audio/asf/data/ContainerType;->maximumDataLength:Ljava/math/BigInteger;

    const-wide p2, 0x7fffffffffffffffL

    invoke-static {p2, p3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p2

    if-gtz p2, :cond_0

    invoke-virtual {p1}, Ljava/math/BigInteger;->longValue()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/transsion/audiotagger/audio/asf/data/ContainerType;->perfMaxDataLen:J

    goto :goto_0

    :cond_0
    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lcom/transsion/audiotagger/audio/asf/data/ContainerType;->perfMaxDataLen:J

    :goto_0
    iput-boolean p5, p0, Lcom/transsion/audiotagger/audio/asf/data/ContainerType;->guidEnabled:Z

    iput-boolean p6, p0, Lcom/transsion/audiotagger/audio/asf/data/ContainerType;->streamEnabled:Z

    iput-boolean p7, p0, Lcom/transsion/audiotagger/audio/asf/data/ContainerType;->languageEnabled:Z

    iput-boolean p8, p0, Lcom/transsion/audiotagger/audio/asf/data/ContainerType;->multiValued:Z

    return-void
.end method

.method public static areInCorrectOrder(Lcom/transsion/audiotagger/audio/asf/data/ContainerType;Lcom/transsion/audiotagger/audio/asf/data/ContainerType;)Z
    .locals 1

    invoke-static {}, Lcom/transsion/audiotagger/audio/asf/data/ContainerType;->getOrdered()[Lcom/transsion/audiotagger/audio/asf/data/ContainerType;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-gt p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static getOrdered()[Lcom/transsion/audiotagger/audio/asf/data/ContainerType;
    .locals 5

    sget-object v0, Lcom/transsion/audiotagger/audio/asf/data/ContainerType;->CONTENT_DESCRIPTION:Lcom/transsion/audiotagger/audio/asf/data/ContainerType;

    sget-object v1, Lcom/transsion/audiotagger/audio/asf/data/ContainerType;->CONTENT_BRANDING:Lcom/transsion/audiotagger/audio/asf/data/ContainerType;

    sget-object v2, Lcom/transsion/audiotagger/audio/asf/data/ContainerType;->EXTENDED_CONTENT:Lcom/transsion/audiotagger/audio/asf/data/ContainerType;

    sget-object v3, Lcom/transsion/audiotagger/audio/asf/data/ContainerType;->METADATA_OBJECT:Lcom/transsion/audiotagger/audio/asf/data/ContainerType;

    sget-object v4, Lcom/transsion/audiotagger/audio/asf/data/ContainerType;->METADATA_LIBRARY_OBJECT:Lcom/transsion/audiotagger/audio/asf/data/ContainerType;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/transsion/audiotagger/audio/asf/data/ContainerType;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/audiotagger/audio/asf/data/ContainerType;
    .locals 1

    const-class v0, Lcom/transsion/audiotagger/audio/asf/data/ContainerType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/audiotagger/audio/asf/data/ContainerType;

    return-object p0
.end method

.method public static values()[Lcom/transsion/audiotagger/audio/asf/data/ContainerType;
    .locals 1

    sget-object v0, Lcom/transsion/audiotagger/audio/asf/data/ContainerType;->$VALUES:[Lcom/transsion/audiotagger/audio/asf/data/ContainerType;

    invoke-virtual {v0}, [Lcom/transsion/audiotagger/audio/asf/data/ContainerType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/audiotagger/audio/asf/data/ContainerType;

    return-object v0
.end method


# virtual methods
.method public assertConstraints(Ljava/lang/String;[BIII)V
    .locals 0

    invoke-virtual/range {p0 .. p5}, Lcom/transsion/audiotagger/audio/asf/data/ContainerType;->checkConstraints(Ljava/lang/String;[BIII)Ljava/lang/RuntimeException;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    throw p0
.end method

.method public checkConstraints(Ljava/lang/String;[BIII)Ljava/lang/RuntimeException;
    .locals 4

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/transsion/audiotagger/audio/asf/util/Utils;->isStringLengthValidNullSafe(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Lcom/transsion/audiotagger/logging/ErrorMessage;->WMA_LENGTH_OF_STRING_IS_TOO_LARGE:Lcom/transsion/audiotagger/logging/ErrorMessage;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Arguments must not be null."

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    :goto_1
    if-nez v0, :cond_3

    array-length p1, p2

    int-to-long v1, p1

    invoke-virtual {p0, v1, v2}, Lcom/transsion/audiotagger/audio/asf/data/ContainerType;->isWithinValueRange(J)Z

    move-result p1

    if-nez p1, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object p1, Lcom/transsion/audiotagger/logging/ErrorMessage;->WMA_LENGTH_OF_DATA_IS_TOO_LARGE:Lcom/transsion/audiotagger/logging/ErrorMessage;

    array-length p2, p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/asf/data/ContainerType;->getMaximumDataLength()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/asf/data/ContainerType;->getContainerGUID()Lcom/transsion/audiotagger/audio/asf/data/GUID;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/audiotagger/audio/asf/data/GUID;->getDescription()Ljava/lang/String;

    move-result-object v2

    filled-new-array {p2, v1, v2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    :cond_3
    const-string p1, "0"

    const/16 p2, 0x7f

    if-nez v0, :cond_6

    if-ltz p4, :cond_4

    if-gt p4, p2, :cond_4

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/asf/data/ContainerType;->isStreamNumberEnabled()Z

    move-result v1

    if-nez v1, :cond_6

    if-eqz p4, :cond_6

    :cond_4
    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/asf/data/ContainerType;->isStreamNumberEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "0 to 127"

    goto :goto_2

    :cond_5
    move-object v0, p1

    :goto_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    sget-object v2, Lcom/transsion/audiotagger/logging/ErrorMessage;->WMA_INVALID_STREAM_REFERNCE:Lcom/transsion/audiotagger/logging/ErrorMessage;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/asf/data/ContainerType;->getContainerGUID()Lcom/transsion/audiotagger/audio/asf/data/GUID;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/audiotagger/audio/asf/data/GUID;->getDescription()Ljava/lang/String;

    move-result-object v3

    filled-new-array {p4, v0, v3}, [Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {v2, p4}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-direct {v1, p4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :cond_6
    if-nez v0, :cond_7

    const/4 p4, 0x6

    if-ne p3, p4, :cond_7

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/asf/data/ContainerType;->isGuidEnabled()Z

    move-result p4

    if-nez p4, :cond_7

    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object p4, Lcom/transsion/audiotagger/logging/ErrorMessage;->WMA_INVALID_GUID_USE:Lcom/transsion/audiotagger/logging/ErrorMessage;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/asf/data/ContainerType;->getContainerGUID()Lcom/transsion/audiotagger/audio/asf/data/GUID;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/audiotagger/audio/asf/data/GUID;->getDescription()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p4, v1}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-direct {v0, p4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    :cond_7
    if-nez v0, :cond_b

    if-eqz p5, :cond_8

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/asf/data/ContainerType;->isLanguageEnabled()Z

    move-result p4

    if-eqz p4, :cond_9

    :cond_8
    if-ltz p5, :cond_9

    if-lt p5, p2, :cond_b

    :cond_9
    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/asf/data/ContainerType;->isStreamNumberEnabled()Z

    move-result p2

    if-eqz p2, :cond_a

    const-string p1, "0 to 126"

    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object p2, Lcom/transsion/audiotagger/logging/ErrorMessage;->WMA_INVALID_LANGUAGE_USE:Lcom/transsion/audiotagger/logging/ErrorMessage;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/asf/data/ContainerType;->getContainerGUID()Lcom/transsion/audiotagger/audio/asf/data/GUID;

    move-result-object p5

    invoke-virtual {p5}, Lcom/transsion/audiotagger/audio/asf/data/GUID;->getDescription()Ljava/lang/String;

    move-result-object p5

    filled-new-array {p4, p5, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    :cond_b
    if-nez v0, :cond_c

    sget-object p1, Lcom/transsion/audiotagger/audio/asf/data/ContainerType;->CONTENT_DESCRIPTION:Lcom/transsion/audiotagger/audio/asf/data/ContainerType;

    if-ne p0, p1, :cond_c

    if-eqz p3, :cond_c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object p0, Lcom/transsion/audiotagger/logging/ErrorMessage;->WMA_ONLY_STRING_IN_CD:Lcom/transsion/audiotagger/logging/ErrorMessage;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    :cond_c
    return-object v0
.end method

.method public getContainerGUID()Lcom/transsion/audiotagger/audio/asf/data/GUID;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/asf/data/ContainerType;->containerGUID:Lcom/transsion/audiotagger/audio/asf/data/GUID;

    return-object p0
.end method

.method public getMaximumDataLength()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/asf/data/ContainerType;->maximumDataLength:Ljava/math/BigInteger;

    return-object p0
.end method

.method public isGuidEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/audiotagger/audio/asf/data/ContainerType;->guidEnabled:Z

    return p0
.end method

.method public isLanguageEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/audiotagger/audio/asf/data/ContainerType;->languageEnabled:Z

    return p0
.end method

.method public isMultiValued()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/audiotagger/audio/asf/data/ContainerType;->multiValued:Z

    return p0
.end method

.method public isStreamNumberEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/audiotagger/audio/asf/data/ContainerType;->streamEnabled:Z

    return p0
.end method

.method public isWithinValueRange(J)Z
    .locals 4

    iget-wide v0, p0, Lcom/transsion/audiotagger/audio/asf/data/ContainerType;->perfMaxDataLen:J

    const-wide/16 v2, -0x1

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    cmp-long p0, v0, p1

    if-ltz p0, :cond_1

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long p0, p1, v0

    if-ltz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
