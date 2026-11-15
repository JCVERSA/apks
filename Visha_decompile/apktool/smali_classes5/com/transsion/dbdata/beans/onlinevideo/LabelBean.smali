.class public Lcom/transsion/dbdata/beans/onlinevideo/LabelBean;
.super Lcom/transsion/dbdata/beans/onlinevideo/TypeBean;
.source "SourceFile"


# static fields
.field public static final TAG_TYPE_SPACIAL:I = 0x6


# instance fields
.field private category_id:J

.field private description:Ljava/lang/String;

.field private icon:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private sort:I

.field private source_name:Ljava/lang/String;

.field private source_type:I

.field private tag_id:J

.field private tag_type:I

.field private topic_id:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/dbdata/beans/onlinevideo/TypeBean;-><init>()V

    return-void
.end method


# virtual methods
.method public getCategory_id()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/LabelBean;->category_id:J

    return-wide v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/LabelBean;->description:Ljava/lang/String;

    return-object p0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/LabelBean;->icon:Ljava/lang/String;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/LabelBean;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getSort()I
    .locals 0

    iget p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/LabelBean;->sort:I

    return p0
.end method

.method public getSource_name()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/LabelBean;->source_name:Ljava/lang/String;

    return-object p0
.end method

.method public getSource_type()I
    .locals 0

    iget p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/LabelBean;->source_type:I

    return p0
.end method

.method public getTag_id()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/LabelBean;->tag_id:J

    return-wide v0
.end method

.method public getTag_type()I
    .locals 0

    iget p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/LabelBean;->tag_type:I

    return p0
.end method

.method public getTopic_id()I
    .locals 0

    iget p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/LabelBean;->topic_id:I

    return p0
.end method

.method public isSpacialType()Z
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/onlinevideo/LabelBean;->getTag_type()I

    move-result p0

    const/4 v0, 0x6

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setCategory_id(J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/LabelBean;->category_id:J

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/LabelBean;->description:Ljava/lang/String;

    return-void
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/LabelBean;->icon:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/LabelBean;->name:Ljava/lang/String;

    return-void
.end method

.method public setSort(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/LabelBean;->sort:I

    return-void
.end method

.method public setSource_name(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/LabelBean;->source_name:Ljava/lang/String;

    return-void
.end method

.method public setSource_type(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/LabelBean;->source_type:I

    return-void
.end method

.method public setTag_id(J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/LabelBean;->tag_id:J

    return-void
.end method

.method public setTag_type(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/LabelBean;->tag_type:I

    return-void
.end method

.method public setTopic_id(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/LabelBean;->topic_id:I

    return-void
.end method
