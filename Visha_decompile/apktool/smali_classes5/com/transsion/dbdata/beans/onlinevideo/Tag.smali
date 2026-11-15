.class public Lcom/transsion/dbdata/beans/onlinevideo/Tag;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private aggregationTag:Ljava/lang/Object;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "aggregation_tag"
    .end annotation
.end field

.field private aggregationTagIds:Ljava/lang/Object;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "aggregation_tag_ids"
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "name"
    .end annotation
.end field

.field private payType:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pay_type"
    .end annotation
.end field

.field private sourceType:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "source_type"
    .end annotation
.end field

.field private tagId:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tag_id"
    .end annotation
.end field

.field private tagRelation:Ljava/lang/Object;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tag_relation"
    .end annotation
.end field

.field private tagType:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tag_type"
    .end annotation
.end field

.field private topicId:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "topic_id"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAggregationTag()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/Tag;->aggregationTag:Ljava/lang/Object;

    return-object p0
.end method

.method public getAggregationTagIds()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/Tag;->aggregationTagIds:Ljava/lang/Object;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/Tag;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getPayType()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/Tag;->payType:Ljava/lang/Integer;

    return-object p0
.end method

.method public getSourceType()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/Tag;->sourceType:Ljava/lang/Integer;

    return-object p0
.end method

.method public getTagId()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/Tag;->tagId:Ljava/lang/Integer;

    return-object p0
.end method

.method public getTagRelation()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/Tag;->tagRelation:Ljava/lang/Object;

    return-object p0
.end method

.method public getTagType()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/Tag;->tagType:Ljava/lang/Integer;

    return-object p0
.end method

.method public getTopicId()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/Tag;->topicId:J

    return-wide v0
.end method

.method public setAggregationTag(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/Tag;->aggregationTag:Ljava/lang/Object;

    return-void
.end method

.method public setAggregationTagIds(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/Tag;->aggregationTagIds:Ljava/lang/Object;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/Tag;->name:Ljava/lang/String;

    return-void
.end method

.method public setPayType(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/Tag;->payType:Ljava/lang/Integer;

    return-void
.end method

.method public setSourceType(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/Tag;->sourceType:Ljava/lang/Integer;

    return-void
.end method

.method public setTagId(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/Tag;->tagId:Ljava/lang/Integer;

    return-void
.end method

.method public setTagRelation(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/Tag;->tagRelation:Ljava/lang/Object;

    return-void
.end method

.method public setTagType(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/Tag;->tagType:Ljava/lang/Integer;

    return-void
.end method

.method public setTopicId(J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/Tag;->topicId:J

    return-void
.end method
