.class public final Landroidx/datastore/preferences/protobuf/DescriptorProtos$UninterpretedOption$Builder;
.super Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;
.source "SourceFile"

# interfaces
.implements Landroidx/datastore/preferences/protobuf/DescriptorProtos$UninterpretedOptionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/datastore/preferences/protobuf/DescriptorProtos$UninterpretedOption;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder<",
        "Landroidx/datastore/preferences/protobuf/DescriptorProtos$UninterpretedOption;",
        "Landroidx/datastore/preferences/protobuf/DescriptorProtos$UninterpretedOption$Builder;",
        ">;",
        "Landroidx/datastore/preferences/protobuf/DescriptorProtos$UninterpretedOptionOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-static {}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$UninterpretedOption;->access$49900()Landroidx/datastore/preferences/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;-><init>(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/datastore/preferences/protobuf/DescriptorProtos$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$UninterpretedOption$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllName(Ljava/lang/Iterable;)Landroidx/datastore/preferences/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Landroidx/datastore/preferences/protobuf/DescriptorProtos$UninterpretedOption$NamePart;",
            ">;)",
            "Landroidx/datastore/preferences/protobuf/DescriptorProtos$UninterpretedOption$Builder;"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$UninterpretedOption;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$UninterpretedOption;->access$50300(Landroidx/datastore/preferences/protobuf/DescriptorProtos$UninterpretedOption;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addName(ILandroidx/datastore/preferences/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;)Landroidx/datastore/preferences/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 1

    .line 7
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$UninterpretedOption;

    .line 9
    invoke-virtual {p2}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->build()Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Landroidx/datastore/preferences/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    .line 10
    invoke-static {v0, p1, p2}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$UninterpretedOption;->access$50200(Landroidx/datastore/preferences/protobuf/DescriptorProtos$UninterpretedOption;ILandroidx/datastore/preferences/protobuf/DescriptorProtos$UninterpretedOption$NamePart;)V

    return-object p0
.end method

.method public addName(ILandroidx/datastore/preferences/protobuf/DescriptorProtos$UninterpretedOption$NamePart;)Landroidx/datastore/preferences/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$UninterpretedOption;

    invoke-static {v0, p1, p2}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$UninterpretedOption;->access$50200(Landroidx/datastore/preferences/protobuf/DescriptorProtos$UninterpretedOption;ILandroidx/datastore/preferences/protobuf/DescriptorProtos$UninterpretedOption$NamePart;)V

    return-object p0
.end method

.method public addName(Landroidx/datastore/preferences/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;)Landroidx/datastore/preferences/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$UninterpretedOption;

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->build()Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroidx/datastore/preferences/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$UninterpretedOption;->access$50100(Landroidx/datastore/preferences/protobuf/DescriptorProtos$UninterpretedOption;Landroidx/datastore/preferences/protobuf/DescriptorProtos$UninterpretedOption$NamePart;)V

    return-object p0
.end method

.method public addName(Landroidx/datastore/preferences/protobuf/DescriptorProtos$UninterpretedOption$NamePart;)Landroidx/datastore/preferences/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$UninterpretedOption;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$UninterpretedOption;->access$50100(Landroidx/datastore/preferences/protobuf/DescriptorProtos$UninterpretedOption;Landroidx/datastore/preferences/protobuf/DescriptorProtos$UninterpretedOption$NamePart;)V

    return-object p0
.end method

.method public clearAggregateValue()Landroidx/datastore/preferences/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 1

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$UninterpretedOption;

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$UninterpretedOption;->access$51800(Landroidx/datastore/preferences/protobuf/DescriptorProtos$UninterpretedOption;)V

    return-object p0
.end method

.method public clearDoubleValue()Landroidx/datastore/preferences/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 1

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$UninterpretedOption;

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$UninterpretedOption;->access$51400(Landroidx/datastore/preferences/protobuf/DescriptorProtos$UninterpretedOption;)V

    return-object p0
.end method

.method public clearIdentifierValue()Landroidx/datastore/preferences/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 1

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$UninterpretedOption;

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$UninterpretedOption;->access$50700(Landroidx/datastore/preferences/protobuf/DescriptorProtos$UninterpretedOption;)V

    return-object p0
.end method

.method public clearName()Landroidx/datastore/preferences/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 1

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$UninterpretedOption;

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$UninterpretedOption;->access$50400(Landroidx/datastore/preferences/protobuf/DescriptorProtos$UninterpretedOption;)V

    return-object p0
.end method

.method public clearNegativeIntValue()Landroidx/datastore/preferences/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 1

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$UninterpretedOption;

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$UninterpretedOption;->access$51200(Landroidx/datastore/preferences/protobuf/DescriptorProtos$UninterpretedOption;)V

    return-object p0
.end method

.method public clearPositiveIntValue()Landroidx/datastore/preferences/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 1

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$UninterpretedOption;

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$UninterpretedOption;->access$51000(Landroidx/datastore/preferences/protobuf/DescriptorProtos$UninterpretedOption;)V

    return-object p0
.end method

.method public clearStringValue()Landroidx/datastore/preferences/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 1

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$UninterpretedOption;

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$UninterpretedOption;->access$51600(Landroidx/datastore/preferences/protobuf/DescriptorProtos$UninterpretedOption;)V

    return-object p0
.end method

.method public getAggregateValue()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$UninterpretedOption;

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$UninterpretedOption;->getAggregateValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getAggregateValueBytes()Landroidx/datastore/preferences/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$UninterpretedOption;

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$UninterpretedOption;->getAggregateValueBytes()Landroidx/datastore/preferences/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getDoubleValue()D
    .locals 2

    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$UninterpretedOption;

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$UninterpretedOption;->getDoubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public getIdentifierValue()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$UninterpretedOption;

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$UninterpretedOption;->getIdentifierValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getIdentifierValueBytes()Landroidx/datastore/preferences/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$UninterpretedOption;

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$UninterpretedOption;->getIdentifierValueBytes()Landroidx/datastore/preferences/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getName(I)Landroidx/datastore/preferences/protobuf/DescriptorProtos$UninterpretedOption$NamePart;
    .locals 0

    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$UninterpretedOption;

    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$UninterpretedOption;->getName(I)Landroidx/datastore/preferences/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    move-result-object p0

    return-object p0
.end method

.method public getNameCount()I
    .locals 0

    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$UninterpretedOption;

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$UninterpretedOption;->getNameCount()I

    move-result p0

    return p0
.end method

.method public getNameList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/datastore/preferences/protobuf/DescriptorProtos$UninterpretedOption$NamePart;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$UninterpretedOption;

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$UninterpretedOption;->getNameList()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getNegativeIntValue()J
    .locals 2

    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$UninterpretedOption;

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$UninterpretedOption;->getNegativeIntValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPositiveIntValue()J
    .locals 2

    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$UninterpretedOption;

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$UninterpretedOption;->getPositiveIntValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getStringValue()Landroidx/datastore/preferences/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$UninterpretedOption;

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$UninterpretedOption;->getStringValue()Landroidx/datastore/preferences/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public hasAggregateValue()Z
    .locals 0

    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$UninterpretedOption;

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$UninterpretedOption;->hasAggregateValue()Z

    move-result p0

    return p0
.end method

.method public hasDoubleValue()Z
    .locals 0

    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$UninterpretedOption;

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$UninterpretedOption;->hasDoubleValue()Z

    move-result p0

    return p0
.end method

.method public hasIdentifierValue()Z
    .locals 0

    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$UninterpretedOption;

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$UninterpretedOption;->hasIdentifierValue()Z

    move-result p0

    return p0
.end method

.method public hasNegativeIntValue()Z
    .locals 0

    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$UninterpretedOption;

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$UninterpretedOption;->hasNegativeIntValue()Z

    move-result p0

    return p0
.end method

.method public hasPositiveIntValue()Z
    .locals 0

    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$UninterpretedOption;

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$UninterpretedOption;->hasPositiveIntValue()Z

    move-result p0

    return p0
.end method

.method public hasStringValue()Z
    .locals 0

    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$UninterpretedOption;

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$UninterpretedOption;->hasStringValue()Z

    move-result p0

    return p0
.end method

.method public removeName(I)Landroidx/datastore/preferences/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 1

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$UninterpretedOption;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$UninterpretedOption;->access$50500(Landroidx/datastore/preferences/protobuf/DescriptorProtos$UninterpretedOption;I)V

    return-object p0
.end method

.method public setAggregateValue(Ljava/lang/String;)Landroidx/datastore/preferences/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 1

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$UninterpretedOption;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$UninterpretedOption;->access$51700(Landroidx/datastore/preferences/protobuf/DescriptorProtos$UninterpretedOption;Ljava/lang/String;)V

    return-object p0
.end method

.method public setAggregateValueBytes(Landroidx/datastore/preferences/protobuf/ByteString;)Landroidx/datastore/preferences/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 1

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$UninterpretedOption;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$UninterpretedOption;->access$51900(Landroidx/datastore/preferences/protobuf/DescriptorProtos$UninterpretedOption;Landroidx/datastore/preferences/protobuf/ByteString;)V

    return-object p0
.end method

.method public setDoubleValue(D)Landroidx/datastore/preferences/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 1

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$UninterpretedOption;

    invoke-static {v0, p1, p2}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$UninterpretedOption;->access$51300(Landroidx/datastore/preferences/protobuf/DescriptorProtos$UninterpretedOption;D)V

    return-object p0
.end method

.method public setIdentifierValue(Ljava/lang/String;)Landroidx/datastore/preferences/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 1

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$UninterpretedOption;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$UninterpretedOption;->access$50600(Landroidx/datastore/preferences/protobuf/DescriptorProtos$UninterpretedOption;Ljava/lang/String;)V

    return-object p0
.end method

.method public setIdentifierValueBytes(Landroidx/datastore/preferences/protobuf/ByteString;)Landroidx/datastore/preferences/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 1

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$UninterpretedOption;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$UninterpretedOption;->access$50800(Landroidx/datastore/preferences/protobuf/DescriptorProtos$UninterpretedOption;Landroidx/datastore/preferences/protobuf/ByteString;)V

    return-object p0
.end method

.method public setName(ILandroidx/datastore/preferences/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;)Landroidx/datastore/preferences/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$UninterpretedOption;

    .line 5
    invoke-virtual {p2}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->build()Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Landroidx/datastore/preferences/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    .line 6
    invoke-static {v0, p1, p2}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$UninterpretedOption;->access$50000(Landroidx/datastore/preferences/protobuf/DescriptorProtos$UninterpretedOption;ILandroidx/datastore/preferences/protobuf/DescriptorProtos$UninterpretedOption$NamePart;)V

    return-object p0
.end method

.method public setName(ILandroidx/datastore/preferences/protobuf/DescriptorProtos$UninterpretedOption$NamePart;)Landroidx/datastore/preferences/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$UninterpretedOption;

    invoke-static {v0, p1, p2}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$UninterpretedOption;->access$50000(Landroidx/datastore/preferences/protobuf/DescriptorProtos$UninterpretedOption;ILandroidx/datastore/preferences/protobuf/DescriptorProtos$UninterpretedOption$NamePart;)V

    return-object p0
.end method

.method public setNegativeIntValue(J)Landroidx/datastore/preferences/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 1

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$UninterpretedOption;

    invoke-static {v0, p1, p2}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$UninterpretedOption;->access$51100(Landroidx/datastore/preferences/protobuf/DescriptorProtos$UninterpretedOption;J)V

    return-object p0
.end method

.method public setPositiveIntValue(J)Landroidx/datastore/preferences/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 1

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$UninterpretedOption;

    invoke-static {v0, p1, p2}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$UninterpretedOption;->access$50900(Landroidx/datastore/preferences/protobuf/DescriptorProtos$UninterpretedOption;J)V

    return-object p0
.end method

.method public setStringValue(Landroidx/datastore/preferences/protobuf/ByteString;)Landroidx/datastore/preferences/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 1

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$UninterpretedOption;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$UninterpretedOption;->access$51500(Landroidx/datastore/preferences/protobuf/DescriptorProtos$UninterpretedOption;Landroidx/datastore/preferences/protobuf/ByteString;)V

    return-object p0
.end method
