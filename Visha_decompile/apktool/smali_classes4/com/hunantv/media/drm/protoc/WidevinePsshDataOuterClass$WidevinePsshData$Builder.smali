.class public final Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;",
        "Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData$Builder;",
        ">;",
        "Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshDataOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->access$000()Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllKeyId(Ljava/lang/Iterable;)Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/protobuf/ByteString;",
            ">;)",
            "Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData$Builder;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;

    invoke-static {v0, p1}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->access$500(Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addKeyId(Lcom/google/protobuf/ByteString;)Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;

    invoke-static {v0, p1}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->access$400(Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public clearAlgorithm()Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;

    invoke-static {v0}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->access$200(Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;)V

    return-object p0
.end method

.method public clearContentId()Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;

    invoke-static {v0}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->access$1100(Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;)V

    return-object p0
.end method

.method public clearCryptoPeriodIndex()Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;

    invoke-static {v0}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->access$1600(Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;)V

    return-object p0
.end method

.method public clearGroupedLicense()Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;

    invoke-static {v0}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->access$1800(Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;)V

    return-object p0
.end method

.method public clearKeyId()Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;

    invoke-static {v0}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->access$600(Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;)V

    return-object p0
.end method

.method public clearPolicy()Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;

    invoke-static {v0}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->access$1300(Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;)V

    return-object p0
.end method

.method public clearProtectionScheme()Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;

    invoke-static {v0}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->access$2000(Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;)V

    return-object p0
.end method

.method public clearProvider()Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;

    invoke-static {v0}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->access$800(Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;)V

    return-object p0
.end method

.method public getAlgorithm()Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData$Algorithm;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;

    invoke-virtual {p0}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->getAlgorithm()Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData$Algorithm;

    move-result-object p0

    return-object p0
.end method

.method public getContentId()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;

    invoke-virtual {p0}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->getContentId()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getCryptoPeriodIndex()I
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;

    invoke-virtual {p0}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->getCryptoPeriodIndex()I

    move-result p0

    return p0
.end method

.method public getGroupedLicense()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;

    invoke-virtual {p0}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->getGroupedLicense()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getKeyId(I)Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;

    invoke-virtual {p0, p1}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->getKeyId(I)Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getKeyIdCount()I
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;

    invoke-virtual {p0}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->getKeyIdCount()I

    move-result p0

    return p0
.end method

.method public getKeyIdList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/ByteString;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;

    invoke-virtual {p0}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->getKeyIdList()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getPolicy()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;

    invoke-virtual {p0}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->getPolicy()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPolicyBytes()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;

    invoke-virtual {p0}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->getPolicyBytes()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getProtectionScheme()I
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;

    invoke-virtual {p0}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->getProtectionScheme()I

    move-result p0

    return p0
.end method

.method public getProvider()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;

    invoke-virtual {p0}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->getProvider()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getProviderBytes()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;

    invoke-virtual {p0}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->getProviderBytes()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public hasAlgorithm()Z
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;

    invoke-virtual {p0}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->hasAlgorithm()Z

    move-result p0

    return p0
.end method

.method public hasContentId()Z
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;

    invoke-virtual {p0}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->hasContentId()Z

    move-result p0

    return p0
.end method

.method public hasCryptoPeriodIndex()Z
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;

    invoke-virtual {p0}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->hasCryptoPeriodIndex()Z

    move-result p0

    return p0
.end method

.method public hasGroupedLicense()Z
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;

    invoke-virtual {p0}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->hasGroupedLicense()Z

    move-result p0

    return p0
.end method

.method public hasPolicy()Z
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;

    invoke-virtual {p0}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->hasPolicy()Z

    move-result p0

    return p0
.end method

.method public hasProtectionScheme()Z
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;

    invoke-virtual {p0}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->hasProtectionScheme()Z

    move-result p0

    return p0
.end method

.method public hasProvider()Z
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;

    invoke-virtual {p0}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->hasProvider()Z

    move-result p0

    return p0
.end method

.method public setAlgorithm(Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData$Algorithm;)Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;

    invoke-static {v0, p1}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->access$100(Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData$Algorithm;)V

    return-object p0
.end method

.method public setContentId(Lcom/google/protobuf/ByteString;)Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;

    invoke-static {v0, p1}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->access$1000(Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setCryptoPeriodIndex(I)Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;

    invoke-static {v0, p1}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->access$1500(Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;I)V

    return-object p0
.end method

.method public setGroupedLicense(Lcom/google/protobuf/ByteString;)Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;

    invoke-static {v0, p1}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->access$1700(Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setKeyId(ILcom/google/protobuf/ByteString;)Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;

    invoke-static {v0, p1, p2}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->access$300(Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;ILcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setPolicy(Ljava/lang/String;)Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;

    invoke-static {v0, p1}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->access$1200(Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;Ljava/lang/String;)V

    return-object p0
.end method

.method public setPolicyBytes(Lcom/google/protobuf/ByteString;)Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;

    invoke-static {v0, p1}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->access$1400(Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setProtectionScheme(I)Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;

    invoke-static {v0, p1}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->access$1900(Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;I)V

    return-object p0
.end method

.method public setProvider(Ljava/lang/String;)Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;

    invoke-static {v0, p1}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->access$700(Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;Ljava/lang/String;)V

    return-object p0
.end method

.method public setProviderBytes(Lcom/google/protobuf/ByteString;)Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;

    invoke-static {v0, p1}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->access$900(Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
