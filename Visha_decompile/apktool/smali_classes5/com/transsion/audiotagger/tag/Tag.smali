.class public interface abstract Lcom/transsion/audiotagger/tag/Tag;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public varargs abstract addField(Lcom/transsion/audiotagger/tag/FieldKey;[Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/KeyNotFoundException;,
            Lcom/transsion/audiotagger/tag/FieldDataInvalidException;
        }
    .end annotation
.end method

.method public abstract addField(Lcom/transsion/audiotagger/tag/TagField;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/FieldDataInvalidException;
        }
    .end annotation
.end method

.method public abstract addField(Lcom/transsion/audiotagger/tag/images/Artwork;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/FieldDataInvalidException;
        }
    .end annotation
.end method

.method public abstract createCompilationField(Z)Lcom/transsion/audiotagger/tag/TagField;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/KeyNotFoundException;,
            Lcom/transsion/audiotagger/tag/FieldDataInvalidException;
        }
    .end annotation
.end method

.method public varargs abstract createField(Lcom/transsion/audiotagger/tag/FieldKey;[Ljava/lang/String;)Lcom/transsion/audiotagger/tag/TagField;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/KeyNotFoundException;,
            Lcom/transsion/audiotagger/tag/FieldDataInvalidException;
        }
    .end annotation
.end method

.method public abstract createField(Lcom/transsion/audiotagger/tag/images/Artwork;)Lcom/transsion/audiotagger/tag/TagField;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/FieldDataInvalidException;
        }
    .end annotation
.end method

.method public abstract deleteArtworkField()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/KeyNotFoundException;
        }
    .end annotation
.end method

.method public abstract deleteField(Lcom/transsion/audiotagger/tag/FieldKey;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/KeyNotFoundException;
        }
    .end annotation
.end method

.method public abstract deleteField(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/KeyNotFoundException;
        }
    .end annotation
.end method

.method public abstract getAll(Lcom/transsion/audiotagger/tag/FieldKey;)Ljava/util/List;
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
.end method

.method public abstract getArtworkList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/audiotagger/tag/images/Artwork;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFieldCount()I
.end method

.method public abstract getFieldCountIncludingSubValues()I
.end method

.method public abstract getFields()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/transsion/audiotagger/tag/TagField;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFields(Lcom/transsion/audiotagger/tag/FieldKey;)Ljava/util/List;
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
.end method

.method public abstract getFields(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/transsion/audiotagger/tag/TagField;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFirst(Lcom/transsion/audiotagger/tag/FieldKey;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/KeyNotFoundException;
        }
    .end annotation
.end method

.method public abstract getFirst(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getFirstArtwork()Lcom/transsion/audiotagger/tag/images/Artwork;
.end method

.method public abstract getFirstField(Lcom/transsion/audiotagger/tag/FieldKey;)Lcom/transsion/audiotagger/tag/TagField;
.end method

.method public abstract getFirstField(Ljava/lang/String;)Lcom/transsion/audiotagger/tag/TagField;
.end method

.method public abstract getValue(Lcom/transsion/audiotagger/tag/FieldKey;I)Ljava/lang/String;
.end method

.method public abstract hasCommonFields()Z
.end method

.method public abstract hasField(Lcom/transsion/audiotagger/tag/FieldKey;)Z
.end method

.method public abstract hasField(Ljava/lang/String;)Z
.end method

.method public abstract isEmpty()Z
.end method

.method public abstract setEncoding(Ljava/nio/charset/Charset;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/FieldDataInvalidException;
        }
    .end annotation
.end method

.method public varargs abstract setField(Lcom/transsion/audiotagger/tag/FieldKey;[Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/KeyNotFoundException;,
            Lcom/transsion/audiotagger/tag/FieldDataInvalidException;
        }
    .end annotation
.end method

.method public abstract setField(Lcom/transsion/audiotagger/tag/TagField;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/FieldDataInvalidException;
        }
    .end annotation
.end method

.method public abstract setField(Lcom/transsion/audiotagger/tag/images/Artwork;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/FieldDataInvalidException;
        }
    .end annotation
.end method

.method public abstract toString()Ljava/lang/String;
.end method
