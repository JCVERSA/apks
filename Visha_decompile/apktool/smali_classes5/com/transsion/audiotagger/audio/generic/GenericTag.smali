.class public abstract Lcom/transsion/audiotagger/audio/generic/GenericTag;
.super Lcom/transsion/audiotagger/audio/generic/AbstractTag;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/audiotagger/audio/generic/GenericTag$GenericTagTextField;
    }
.end annotation


# static fields
.field private static final EMPTY_BYTE_ARRAY:[B

.field protected static supportedKeys:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/transsion/audiotagger/tag/FieldKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/transsion/audiotagger/audio/generic/GenericTag;->EMPTY_BYTE_ARRAY:[B

    sget-object v0, Lcom/transsion/audiotagger/tag/FieldKey;->ALBUM:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->ARTIST:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/FieldKey;->TITLE:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v3, Lcom/transsion/audiotagger/tag/FieldKey;->TRACK:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v4, Lcom/transsion/audiotagger/tag/FieldKey;->GENRE:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v5, Lcom/transsion/audiotagger/tag/FieldKey;->COMMENT:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v6, Lcom/transsion/audiotagger/tag/FieldKey;->YEAR:Lcom/transsion/audiotagger/tag/FieldKey;

    filled-new-array/range {v1 .. v6}, [Lcom/transsion/audiotagger/tag/FieldKey;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/transsion/audiotagger/audio/generic/GenericTag;->supportedKeys:Ljava/util/EnumSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/audiotagger/audio/generic/AbstractTag;-><init>()V

    return-void
.end method

.method public static bridge synthetic a()[B
    .locals 1

    sget-object v0, Lcom/transsion/audiotagger/audio/generic/GenericTag;->EMPTY_BYTE_ARRAY:[B

    return-object v0
.end method

.method public static getSupportedKeys()Ljava/util/EnumSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lcom/transsion/audiotagger/tag/FieldKey;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/transsion/audiotagger/audio/generic/GenericTag;->supportedKeys:Ljava/util/EnumSet;

    return-object v0
.end method


# virtual methods
.method public varargs createField(Lcom/transsion/audiotagger/tag/FieldKey;[Ljava/lang/String;)Lcom/transsion/audiotagger/tag/TagField;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/KeyNotFoundException;,
            Lcom/transsion/audiotagger/tag/FieldDataInvalidException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/transsion/audiotagger/audio/generic/GenericTag;->supportedKeys:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 2
    aget-object v1, p2, v0

    if-eqz v1, :cond_0

    .line 3
    new-instance v1, Lcom/transsion/audiotagger/audio/generic/GenericTag$GenericTagTextField;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    aget-object p2, p2, v0

    invoke-direct {v1, p0, p1, p2}, Lcom/transsion/audiotagger/audio/generic/GenericTag$GenericTagTextField;-><init>(Lcom/transsion/audiotagger/audio/generic/GenericTag;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    sget-object p1, Lcom/transsion/audiotagger/logging/ErrorMessage;->GENERAL_INVALID_NULL_ARGUMENT:Lcom/transsion/audiotagger/logging/ErrorMessage;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    sget-object p2, Lcom/transsion/audiotagger/logging/ErrorMessage;->OPERATION_NOT_SUPPORTED_FOR_FIELD:Lcom/transsion/audiotagger/logging/ErrorMessage;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public createField(Lcom/transsion/audiotagger/tag/images/Artwork;)Lcom/transsion/audiotagger/tag/TagField;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/FieldDataInvalidException;
        }
    .end annotation

    .line 6
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    sget-object p1, Lcom/transsion/audiotagger/logging/ErrorMessage;->GENERIC_NOT_SUPPORTED:Lcom/transsion/audiotagger/logging/ErrorMessage;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public deleteField(Lcom/transsion/audiotagger/tag/FieldKey;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/KeyNotFoundException;
        }
    .end annotation

    sget-object v0, Lcom/transsion/audiotagger/audio/generic/GenericTag;->supportedKeys:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/audio/generic/AbstractTag;->deleteField(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    sget-object v0, Lcom/transsion/audiotagger/logging/ErrorMessage;->OPERATION_NOT_SUPPORTED_FOR_FIELD:Lcom/transsion/audiotagger/logging/ErrorMessage;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getAll(Lcom/transsion/audiotagger/tag/FieldKey;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/audiotagger/tag/FieldKey;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/KeyNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/transsion/audiotagger/audio/generic/AbstractTag;->getAll(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getArtworkList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/audiotagger/tag/images/Artwork;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getFields(Lcom/transsion/audiotagger/tag/FieldKey;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/audiotagger/tag/FieldKey;",
            ")",
            "Ljava/util/List<",
            "Lcom/transsion/audiotagger/tag/TagField;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/KeyNotFoundException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/generic/AbstractTag;->fields:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-nez p0, :cond_0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    return-object p0
.end method

.method public getFirst(Lcom/transsion/audiotagger/tag/FieldKey;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/KeyNotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/transsion/audiotagger/audio/generic/GenericTag;->getValue(Lcom/transsion/audiotagger/tag/FieldKey;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFirstField(Lcom/transsion/audiotagger/tag/FieldKey;)Lcom/transsion/audiotagger/tag/TagField;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/KeyNotFoundException;
        }
    .end annotation

    sget-object v0, Lcom/transsion/audiotagger/audio/generic/GenericTag;->supportedKeys:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/audio/generic/AbstractTag;->getFirstField(Ljava/lang/String;)Lcom/transsion/audiotagger/tag/TagField;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    sget-object v0, Lcom/transsion/audiotagger/logging/ErrorMessage;->OPERATION_NOT_SUPPORTED_FOR_FIELD:Lcom/transsion/audiotagger/logging/ErrorMessage;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getValue(Lcom/transsion/audiotagger/tag/FieldKey;I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/KeyNotFoundException;
        }
    .end annotation

    sget-object v0, Lcom/transsion/audiotagger/audio/generic/GenericTag;->supportedKeys:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/transsion/audiotagger/audio/generic/AbstractTag;->getItem(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    sget-object p2, Lcom/transsion/audiotagger/logging/ErrorMessage;->OPERATION_NOT_SUPPORTED_FOR_FIELD:Lcom/transsion/audiotagger/logging/ErrorMessage;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isAllowedEncoding(Ljava/nio/charset/Charset;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
