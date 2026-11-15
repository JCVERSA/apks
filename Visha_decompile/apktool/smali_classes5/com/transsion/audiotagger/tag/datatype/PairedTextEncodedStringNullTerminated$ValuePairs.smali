.class public Lcom/transsion/audiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/audiotagger/tag/datatype/PairedTextEncodedStringNullTerminated;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ValuePairs"
.end annotation


# instance fields
.field private mapping:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/audiotagger/tag/datatype/Pair;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;->mapping:Ljava/util/List;

    return-void
.end method

.method public static bridge synthetic a(Lcom/transsion/audiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;->mapping:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public add(Lcom/transsion/audiotagger/tag/datatype/Pair;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/audiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;->mapping:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public add(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 2
    iget-object p0, p0, Lcom/transsion/audiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;->mapping:Ljava/util/List;

    new-instance v0, Lcom/transsion/audiotagger/tag/datatype/Pair;

    invoke-direct {v0, p1, p2}, Lcom/transsion/audiotagger/tag/datatype/Pair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Lcom/transsion/audiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    check-cast p1, Lcom/transsion/audiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;->getNumberOfValues()I

    move-result p0

    int-to-long v0, p0

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;->getNumberOfValues()I

    move-result p0

    int-to-long p0, p0

    invoke-static {v0, v1, p0, p1}, Lcom/transsion/audiotagger/utils/EqualsUtil;->areEqual(JJ)Z

    move-result p0

    return p0
.end method

.method public getMapping()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/audiotagger/tag/datatype/Pair;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;->mapping:Ljava/util/List;

    return-object p0
.end method

.method public getNumberOfPairs()I
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;->mapping:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getNumberOfValues()I
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;->mapping:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;->mapping:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/audiotagger/tag/datatype/Pair;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/transsion/audiotagger/tag/datatype/Pair;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/transsion/audiotagger/tag/datatype/Pair;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result p0

    if-lez p0, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->setLength(I)V

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
