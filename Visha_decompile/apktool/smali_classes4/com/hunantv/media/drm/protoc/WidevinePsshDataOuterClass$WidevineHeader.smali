.class public final Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeaderOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WidevineHeader"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;",
        "Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader$Builder;",
        ">;",
        "Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeaderOrBuilder;"
    }
.end annotation


# static fields
.field public static final CONTENT_ID_FIELD_NUMBER:I = 0x4

.field private static final DEFAULT_INSTANCE:Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;

.field public static final KEY_IDS_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROVIDER_FIELD_NUMBER:I = 0x3


# instance fields
.field private bitField0_:I

.field private contentId_:Lcom/google/protobuf/ByteString;

.field private keyIds_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private provider_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;

    invoke-direct {v0}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;-><init>()V

    sput-object v0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;->DEFAULT_INSTANCE:Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;

    const-class v1, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;->keyIds_:Lcom/google/protobuf/Internal$ProtobufList;

    const-string v0, ""

    iput-object v0, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;->provider_:Ljava/lang/String;

    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;->contentId_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method public static synthetic access$2200()Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;
    .locals 1

    sget-object v0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;->DEFAULT_INSTANCE:Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;

    return-object v0
.end method

.method public static synthetic access$2300(Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;->setKeyIds(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic access$2400(Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;->addKeyIds(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$2500(Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;Ljava/lang/Iterable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;->addAllKeyIds(Ljava/lang/Iterable;)V

    return-void
.end method

.method public static synthetic access$2600(Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;)V
    .locals 0

    invoke-direct {p0}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;->clearKeyIds()V

    return-void
.end method

.method public static synthetic access$2700(Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;->addKeyIdsBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$2800(Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;->setProvider(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$2900(Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;)V
    .locals 0

    invoke-direct {p0}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;->clearProvider()V

    return-void
.end method

.method public static synthetic access$3000(Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;->setProviderBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$3100(Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;->setContentId(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$3200(Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;)V
    .locals 0

    invoke-direct {p0}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;->clearContentId()V

    return-void
.end method

.method private addAllKeyIds(Ljava/lang/Iterable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;->ensureKeyIdsIsMutable()V

    iget-object p0, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;->keyIds_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, p0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addKeyIds(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;->ensureKeyIdsIsMutable()V

    iget-object p0, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;->keyIds_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addKeyIdsBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-direct {p0}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;->ensureKeyIdsIsMutable()V

    iget-object p0, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;->keyIds_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearContentId()V
    .locals 1

    iget v0, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;->bitField0_:I

    invoke-static {}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;->getDefaultInstance()Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;->getContentId()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;->contentId_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearKeyIds()V
    .locals 1

    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;->keyIds_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearProvider()V
    .locals 1

    iget v0, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;->bitField0_:I

    invoke-static {}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;->getDefaultInstance()Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;->getProvider()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;->provider_:Ljava/lang/String;

    return-void
.end method

.method private ensureKeyIdsIsMutable()V
    .locals 2

    iget-object v0, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;->keyIds_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;->keyIds_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;
    .locals 1

    sget-object v0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;->DEFAULT_INSTANCE:Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;

    return-object v0
.end method

.method public static newBuilder()Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;->DEFAULT_INSTANCE:Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;

    invoke-virtual {v0}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;)Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader$Builder;
    .locals 1

    .line 2
    sget-object v0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;->DEFAULT_INSTANCE:Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;

    invoke-virtual {v0, p0}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;->DEFAULT_INSTANCE:Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;

    invoke-static {v0, p0}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;->DEFAULT_INSTANCE:Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;

    invoke-static {v0, p0, p1}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;->DEFAULT_INSTANCE:Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;->DEFAULT_INSTANCE:Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;->DEFAULT_INSTANCE:Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;->DEFAULT_INSTANCE:Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;->DEFAULT_INSTANCE:Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;->DEFAULT_INSTANCE:Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;->DEFAULT_INSTANCE:Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;->DEFAULT_INSTANCE:Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;->DEFAULT_INSTANCE:Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 10
    sget-object v0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;->DEFAULT_INSTANCE:Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;->DEFAULT_INSTANCE:Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;

    invoke-virtual {v0}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setContentId(Lcom/google/protobuf/ByteString;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;->bitField0_:I

    iput-object p1, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;->contentId_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setKeyIds(ILjava/lang/String;)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;->ensureKeyIdsIsMutable()V

    iget-object p0, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;->keyIds_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setProvider(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;->bitField0_:I

    iput-object p1, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;->provider_:Ljava/lang/String;

    return-void
.end method

.method private setProviderBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;->provider_:Ljava/lang/String;

    iget p1, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;->bitField0_:I

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    sget-object p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x0

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_0
    return-object p1

    :pswitch_1
    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_1

    const-class p1, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;

    monitor-enter p1

    :try_start_0
    sget-object p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_0

    new-instance p0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p2, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;->DEFAULT_INSTANCE:Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;

    invoke-direct {p0, p2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;->PARSER:Lcom/google/protobuf/Parser;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p1

    goto :goto_2

    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    return-object p0

    :pswitch_3
    sget-object p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;->DEFAULT_INSTANCE:Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;

    return-object p0

    :pswitch_4
    const-string p0, "bitField0_"

    const-string p1, "keyIds_"

    const-string p2, "provider_"

    const-string p3, "contentId_"

    filled-new-array {p0, p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "\u0001\u0003\u0000\u0001\u0002\u0004\u0003\u0000\u0001\u0000\u0002\u001a\u0003\u1008\u0000\u0004\u100a\u0001"

    sget-object p2, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;->DEFAULT_INSTANCE:Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;

    invoke-static {p2, p1, p0}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_5
    new-instance p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader$Builder;

    invoke-direct {p0, p1}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader$Builder;-><init>(Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$1;)V

    return-object p0

    :pswitch_6
    new-instance p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;

    invoke-direct {p0}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;-><init>()V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getContentId()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;->contentId_:Lcom/google/protobuf/ByteString;

    return-object p0
.end method

.method public getKeyIds(I)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;->keyIds_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getKeyIdsBytes(I)Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;->keyIds_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getKeyIdsCount()I
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;->keyIds_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

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

    iget-object p0, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;->keyIds_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object p0
.end method

.method public getProvider()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;->provider_:Ljava/lang/String;

    return-object p0
.end method

.method public getProviderBytes()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;->provider_:Ljava/lang/String;

    invoke-static {p0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public hasContentId()Z
    .locals 0

    iget p0, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;->bitField0_:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasProvider()Z
    .locals 1

    iget p0, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevineHeader;->bitField0_:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
