.class public Lcom/transsion/audiotagger/audio/real/RealTag;
.super Lcom/transsion/audiotagger/audio/generic/GenericTag;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/audiotagger/audio/generic/GenericTag;-><init>()V

    return-void
.end method


# virtual methods
.method public createCompilationField(Z)Lcom/transsion/audiotagger/tag/TagField;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/KeyNotFoundException;,
            Lcom/transsion/audiotagger/tag/FieldDataInvalidException;
        }
    .end annotation

    sget-object v0, Lcom/transsion/audiotagger/tag/FieldKey;->IS_COMPILATION:Lcom/transsion/audiotagger/tag/FieldKey;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/transsion/audiotagger/audio/generic/GenericTag;->createField(Lcom/transsion/audiotagger/tag/FieldKey;[Ljava/lang/String;)Lcom/transsion/audiotagger/tag/TagField;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "REAL "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Lcom/transsion/audiotagger/audio/generic/AbstractTag;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
