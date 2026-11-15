.class public Lcom/transsion/audiotagger/audio/asf/data/LanguageList;
.super Lcom/transsion/audiotagger/audio/asf/data/Chunk;
.source "SourceFile"


# instance fields
.field private final languages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    sget-object v0, Lcom/transsion/audiotagger/audio/asf/data/GUID;->GUID_LANGUAGE_LIST:Lcom/transsion/audiotagger/audio/asf/data/GUID;

    const-wide/16 v1, 0x0

    sget-object v3, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/transsion/audiotagger/audio/asf/data/Chunk;-><init>(Lcom/transsion/audiotagger/audio/asf/data/GUID;JLjava/math/BigInteger;)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/audiotagger/audio/asf/data/LanguageList;->languages:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(JLjava/math/BigInteger;)V
    .locals 1

    .line 3
    sget-object v0, Lcom/transsion/audiotagger/audio/asf/data/GUID;->GUID_LANGUAGE_LIST:Lcom/transsion/audiotagger/audio/asf/data/GUID;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/transsion/audiotagger/audio/asf/data/Chunk;-><init>(Lcom/transsion/audiotagger/audio/asf/data/GUID;JLjava/math/BigInteger;)V

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/transsion/audiotagger/audio/asf/data/LanguageList;->languages:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addLanguage(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x7f

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/transsion/audiotagger/audio/asf/data/LanguageList;->languages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/asf/data/LanguageList;->languages:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    sget-object v0, Lcom/transsion/audiotagger/logging/ErrorMessage;->WMA_LENGTH_OF_LANGUAGE_IS_TOO_LARGE:Lcom/transsion/audiotagger/logging/ErrorMessage;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getLanguage(I)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/asf/data/LanguageList;->languages:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getLanguageCount()I
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/asf/data/LanguageList;->languages:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getLanguages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/asf/data/LanguageList;->languages:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public prettyPrint(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0, p1}, Lcom/transsion/audiotagger/audio/asf/data/Chunk;->prettyPrint(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/asf/data/LanguageList;->getLanguageCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  |-> "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Lcom/transsion/audiotagger/audio/asf/data/LanguageList;->getLanguage(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/transsion/audiotagger/audio/asf/util/Utils;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public removeLanguage(I)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/asf/data/LanguageList;->languages:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method
