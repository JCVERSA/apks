.class public Lcom/transsion/apiinvoke/invoke/TransformData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x315545b38c724295L


# instance fields
.field private final dataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/apiinvoke/invoke/TypeValuePair;",
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

    iput-object v0, p0, Lcom/transsion/apiinvoke/invoke/TransformData;->dataList:Ljava/util/List;

    return-void
.end method

.method public static create(Ljava/lang/Object;)Lcom/transsion/apiinvoke/invoke/TransformData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/transsion/apiinvoke/invoke/TransformData;"
        }
    .end annotation

    new-instance v0, Lcom/transsion/apiinvoke/invoke/TransformData;

    invoke-direct {v0}, Lcom/transsion/apiinvoke/invoke/TransformData;-><init>()V

    invoke-virtual {v0, p0}, Lcom/transsion/apiinvoke/invoke/TransformData;->addData(Ljava/lang/Object;)Lcom/transsion/apiinvoke/invoke/TransformData;

    return-object v0
.end method


# virtual methods
.method public addData(ILjava/lang/Object;)Lcom/transsion/apiinvoke/invoke/TransformData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(ITT;)",
            "Lcom/transsion/apiinvoke/invoke/TransformData;"
        }
    .end annotation

    .line 2
    invoke-static {p2}, Lcom/transsion/apiinvoke/invoke/TypeValuePair;->createTypeMapping(Ljava/lang/Object;)Lcom/transsion/apiinvoke/invoke/TypeValuePair;

    move-result-object v0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result p2

    if-eqz p2, :cond_2

    .line 6
    iget-object p2, p0, Lcom/transsion/apiinvoke/invoke/TransformData;->dataList:Ljava/util/List;

    invoke-interface {p2, p1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 7
    :cond_1
    iget-object p2, p0, Lcom/transsion/apiinvoke/invoke/TransformData;->dataList:Ljava/util/List;

    invoke-interface {p2, p1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_2
    :goto_1
    return-object p0
.end method

.method public addData(Ljava/lang/Object;)Lcom/transsion/apiinvoke/invoke/TransformData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/transsion/apiinvoke/invoke/TransformData;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/transsion/apiinvoke/invoke/TransformData;->dataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/transsion/apiinvoke/invoke/TransformData;->addData(ILjava/lang/Object;)Lcom/transsion/apiinvoke/invoke/TransformData;

    move-result-object p0

    return-object p0
.end method

.method public getData()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/transsion/apiinvoke/invoke/TransformData;->getData(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getData(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)TT;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/transsion/apiinvoke/invoke/TransformData;->dataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-gt v0, p1, :cond_0

    return-object v1

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/transsion/apiinvoke/invoke/TransformData;->dataList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/apiinvoke/invoke/TypeValuePair;

    if-nez p0, :cond_1

    return-object v1

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/apiinvoke/invoke/TypeValuePair;->getValue()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_2

    return-object v1

    :cond_2
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TransformData:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/transsion/apiinvoke/invoke/TransformData;->dataList:Ljava/util/List;

    const-string v2, "\n"

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/apiinvoke/invoke/TransformData;->dataList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/apiinvoke/invoke/TypeValuePair;

    invoke-virtual {v1}, Lcom/transsion/apiinvoke/invoke/TypeValuePair;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":end"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
