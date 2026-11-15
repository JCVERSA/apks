.class public final Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeaderOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;",
        "Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader$Builder;",
        ">;",
        "Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeaderOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;->access$2200()Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllKeyIds(Ljava/lang/Iterable;)Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader$Builder;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;

    invoke-static {v0, p1}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;->access$2500(Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addKeyIds(Ljava/lang/String;)Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;

    invoke-static {v0, p1}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;->access$2400(Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;Ljava/lang/String;)V

    return-object p0
.end method

.method public addKeyIdsBytes(Lcom/google/protobuf/ByteString;)Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;

    invoke-static {v0, p1}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;->access$2700(Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public clearContentId()Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;

    invoke-static {v0}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;->access$3200(Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;)V

    return-object p0
.end method

.method public clearKeyIds()Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;

    invoke-static {v0}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;->access$2600(Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;)V

    return-object p0
.end method

.method public clearProvider()Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;

    invoke-static {v0}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;->access$2900(Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;)V

    return-object p0
.end method

.method public getContentId()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;

    invoke-virtual {p0}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;->getContentId()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getKeyIds(I)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;

    invoke-virtual {p0, p1}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;->getKeyIds(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getKeyIdsBytes(I)Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;

    invoke-virtual {p0, p1}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;->getKeyIdsBytes(I)Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getKeyIdsCount()I
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;

    invoke-virtual {p0}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;->getKeyIdsCount()I

    move-result p0

    return p0
.end method

.method public getKeyIdsList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;

    invoke-virtual {p0}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;->getKeyIdsList()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getProvider()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;

    invoke-virtual {p0}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;->getProvider()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getProviderBytes()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;

    invoke-virtual {p0}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;->getProviderBytes()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public hasContentId()Z
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;

    invoke-virtual {p0}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;->hasContentId()Z

    move-result p0

    return p0
.end method

.method public hasProvider()Z
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;

    invoke-virtual {p0}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;->hasProvider()Z

    move-result p0

    return p0
.end method

.method public setContentId(Lcom/google/protobuf/ByteString;)Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;

    invoke-static {v0, p1}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;->access$3100(Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setKeyIds(ILjava/lang/String;)Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;

    invoke-static {v0, p1, p2}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;->access$2300(Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;ILjava/lang/String;)V

    return-object p0
.end method

.method public setProvider(Ljava/lang/String;)Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;

    invoke-static {v0, p1}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;->access$2800(Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;Ljava/lang/String;)V

    return-object p0
.end method

.method public setProviderBytes(Lcom/google/protobuf/ByteString;)Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;

    invoke-static {v0, p1}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;->access$3000(Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
