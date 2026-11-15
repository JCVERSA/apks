.class public final Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WidevinePsshData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData$Builder;,
        Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData$Algorithm;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;",
        "Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData$Builder;",
        ">;",
        "Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshDataOrBuilder;"
    }
.end annotation


# static fields
.field public static final ALGORITHM_FIELD_NUMBER:I = 0x1

.field public static final CONTENT_ID_FIELD_NUMBER:I = 0x4

.field public static final CRYPTO_PERIOD_INDEX_FIELD_NUMBER:I = 0x7

.field private static final DEFAULT_INSTANCE:Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;

.field public static final GROUPED_LICENSE_FIELD_NUMBER:I = 0x8

.field public static final KEY_ID_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;",
            ">;"
        }
    .end annotation
.end field

.field public static final POLICY_FIELD_NUMBER:I = 0x6

.field public static final PROTECTION_SCHEME_FIELD_NUMBER:I = 0x9

.field public static final PROVIDER_FIELD_NUMBER:I = 0x3


# instance fields
.field private algorithm_:I

.field private bitField0_:I

.field private contentId_:Lcom/google/protobuf/ByteString;

.field private cryptoPeriodIndex_:I

.field private groupedLicense_:Lcom/google/protobuf/ByteString;

.field private keyId_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/protobuf/ByteString;",
            ">;"
        }
    .end annotation
.end field

.field private policy_:Ljava/lang/String;

.field private protectionScheme_:I

.field private provider_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;

    invoke-direct {v0}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;-><init>()V

    sput-object v0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->DEFAULT_INSTANCE:Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;

    const-class v1, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    invoke-static {}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->keyId_:Lcom/google/protobuf/Internal$ProtobufList;

    const-string v0, ""

    iput-object v0, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->provider_:Ljava/lang/String;

    sget-object v1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v1, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->contentId_:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->policy_:Ljava/lang/String;

    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->groupedLicense_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method public static synthetic access$000()Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;
    .locals 1

    sget-object v0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->DEFAULT_INSTANCE:Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;

    return-object v0
.end method

.method public static synthetic access$100(Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData$Algorithm;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->setAlgorithm(Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData$Algorithm;)V

    return-void
.end method

.method public static synthetic access$1000(Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->setContentId(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$1100(Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;)V
    .locals 0

    invoke-direct {p0}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->clearContentId()V

    return-void
.end method

.method public static synthetic access$1200(Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->setPolicy(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$1300(Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;)V
    .locals 0

    invoke-direct {p0}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->clearPolicy()V

    return-void
.end method

.method public static synthetic access$1400(Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->setPolicyBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$1500(Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->setCryptoPeriodIndex(I)V

    return-void
.end method

.method public static synthetic access$1600(Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;)V
    .locals 0

    invoke-direct {p0}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->clearCryptoPeriodIndex()V

    return-void
.end method

.method public static synthetic access$1700(Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->setGroupedLicense(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$1800(Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;)V
    .locals 0

    invoke-direct {p0}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->clearGroupedLicense()V

    return-void
.end method

.method public static synthetic access$1900(Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->setProtectionScheme(I)V

    return-void
.end method

.method public static synthetic access$200(Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;)V
    .locals 0

    invoke-direct {p0}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->clearAlgorithm()V

    return-void
.end method

.method public static synthetic access$2000(Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;)V
    .locals 0

    invoke-direct {p0}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->clearProtectionScheme()V

    return-void
.end method

.method public static synthetic access$300(Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;ILcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->setKeyId(ILcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$400(Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->addKeyId(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$500(Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;Ljava/lang/Iterable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->addAllKeyId(Ljava/lang/Iterable;)V

    return-void
.end method

.method public static synthetic access$600(Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;)V
    .locals 0

    invoke-direct {p0}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->clearKeyId()V

    return-void
.end method

.method public static synthetic access$700(Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->setProvider(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$800(Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;)V
    .locals 0

    invoke-direct {p0}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->clearProvider()V

    return-void
.end method

.method public static synthetic access$900(Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->setProviderBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private addAllKeyId(Ljava/lang/Iterable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/protobuf/ByteString;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->ensureKeyIdIsMutable()V

    iget-object p0, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->keyId_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, p0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addKeyId(Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->ensureKeyIdIsMutable()V

    iget-object p0, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->keyId_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearAlgorithm()V
    .locals 1

    iget v0, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->algorithm_:I

    return-void
.end method

.method private clearContentId()V
    .locals 1

    iget v0, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->bitField0_:I

    invoke-static {}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->getDefaultInstance()Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->getContentId()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->contentId_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearCryptoPeriodIndex()V
    .locals 1

    iget v0, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->cryptoPeriodIndex_:I

    return-void
.end method

.method private clearGroupedLicense()V
    .locals 1

    iget v0, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->bitField0_:I

    invoke-static {}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->getDefaultInstance()Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->getGroupedLicense()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->groupedLicense_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearKeyId()V
    .locals 1

    invoke-static {}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->keyId_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearPolicy()V
    .locals 1

    iget v0, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->bitField0_:I

    invoke-static {}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->getDefaultInstance()Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->getPolicy()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->policy_:Ljava/lang/String;

    return-void
.end method

.method private clearProtectionScheme()V
    .locals 1

    iget v0, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->protectionScheme_:I

    return-void
.end method

.method private clearProvider()V
    .locals 1

    iget v0, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->bitField0_:I

    invoke-static {}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->getDefaultInstance()Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->getProvider()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->provider_:Ljava/lang/String;

    return-void
.end method

.method private ensureKeyIdIsMutable()V
    .locals 2

    iget-object v0, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->keyId_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->keyId_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;
    .locals 1

    sget-object v0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->DEFAULT_INSTANCE:Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;

    return-object v0
.end method

.method public static newBuilder()Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->DEFAULT_INSTANCE:Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;

    invoke-virtual {v0}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;)Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData$Builder;
    .locals 1

    .line 2
    sget-object v0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->DEFAULT_INSTANCE:Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;

    invoke-virtual {v0, p0}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->DEFAULT_INSTANCE:Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;

    invoke-static {v0, p0}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->DEFAULT_INSTANCE:Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;

    invoke-static {v0, p0, p1}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->DEFAULT_INSTANCE:Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->DEFAULT_INSTANCE:Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->DEFAULT_INSTANCE:Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->DEFAULT_INSTANCE:Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->DEFAULT_INSTANCE:Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->DEFAULT_INSTANCE:Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->DEFAULT_INSTANCE:Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->DEFAULT_INSTANCE:Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->DEFAULT_INSTANCE:Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 10
    sget-object v0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->DEFAULT_INSTANCE:Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->DEFAULT_INSTANCE:Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;

    invoke-virtual {v0}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setAlgorithm(Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData$Algorithm;)V
    .locals 0

    invoke-virtual {p1}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData$Algorithm;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->algorithm_:I

    iget p1, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->bitField0_:I

    return-void
.end method

.method private setContentId(Lcom/google/protobuf/ByteString;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->bitField0_:I

    iput-object p1, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->contentId_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setCryptoPeriodIndex(I)V
    .locals 1

    iget v0, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->bitField0_:I

    iput p1, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->cryptoPeriodIndex_:I

    return-void
.end method

.method private setGroupedLicense(Lcom/google/protobuf/ByteString;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->bitField0_:I

    iput-object p1, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->groupedLicense_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setKeyId(ILcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->ensureKeyIdIsMutable()V

    iget-object p0, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->keyId_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setPolicy(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->bitField0_:I

    iput-object p1, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->policy_:Ljava/lang/String;

    return-void
.end method

.method private setPolicyBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->policy_:Ljava/lang/String;

    iget p1, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->bitField0_:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->bitField0_:I

    return-void
.end method

.method private setProtectionScheme(I)V
    .locals 1

    iget v0, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->bitField0_:I

    iput p1, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->protectionScheme_:I

    return-void
.end method

.method private setProvider(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->bitField0_:I

    iput-object p1, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->provider_:Ljava/lang/String;

    return-void
.end method

.method private setProviderBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->provider_:Ljava/lang/String;

    iget p1, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->bitField0_:I

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

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
    sget-object p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_1

    const-class p1, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;

    monitor-enter p1

    :try_start_0
    sget-object p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_0

    new-instance p0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p2, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->DEFAULT_INSTANCE:Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;

    invoke-direct {p0, p2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->PARSER:Lcom/google/protobuf/Parser;

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
    sget-object p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->DEFAULT_INSTANCE:Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;

    return-object p0

    :pswitch_4
    const-string v0, "bitField0_"

    const-string v1, "algorithm_"

    invoke-static {}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData$Algorithm;->internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;

    move-result-object v2

    const-string v3, "keyId_"

    const-string v4, "provider_"

    const-string v5, "contentId_"

    const-string v6, "policy_"

    const-string v7, "cryptoPeriodIndex_"

    const-string v8, "groupedLicense_"

    const-string v9, "protectionScheme_"

    filled-new-array/range {v0 .. v9}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "\u0001\u0008\u0000\u0001\u0001\t\u0008\u0000\u0001\u0000\u0001\u100c\u0000\u0002\u001c\u0003\u1008\u0001\u0004\u100a\u0002\u0006\u1008\u0003\u0007\u100b\u0004\u0008\u100a\u0005\t\u100b\u0006"

    sget-object p2, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->DEFAULT_INSTANCE:Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;

    invoke-static {p2, p1, p0}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_5
    new-instance p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData$Builder;

    invoke-direct {p0, p1}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData$Builder;-><init>(Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$1;)V

    return-object p0

    :pswitch_6
    new-instance p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;

    invoke-direct {p0}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;-><init>()V

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

.method public getAlgorithm()Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData$Algorithm;
    .locals 0

    iget p0, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->algorithm_:I

    invoke-static {p0}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData$Algorithm;->forNumber(I)Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData$Algorithm;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData$Algorithm;->UNENCRYPTED:Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData$Algorithm;

    :cond_0
    return-object p0
.end method

.method public getContentId()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->contentId_:Lcom/google/protobuf/ByteString;

    return-object p0
.end method

.method public getCryptoPeriodIndex()I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->cryptoPeriodIndex_:I

    return p0
.end method

.method public getGroupedLicense()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->groupedLicense_:Lcom/google/protobuf/ByteString;

    return-object p0
.end method

.method public getKeyId(I)Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->keyId_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/ByteString;

    return-object p0
.end method

.method public getKeyIdCount()I
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->keyId_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

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

    iget-object p0, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->keyId_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object p0
.end method

.method public getPolicy()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->policy_:Ljava/lang/String;

    return-object p0
.end method

.method public getPolicyBytes()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->policy_:Ljava/lang/String;

    invoke-static {p0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getProtectionScheme()I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->protectionScheme_:I

    return p0
.end method

.method public getProvider()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->provider_:Ljava/lang/String;

    return-object p0
.end method

.method public getProviderBytes()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->provider_:Ljava/lang/String;

    invoke-static {p0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public hasAlgorithm()Z
    .locals 1

    iget p0, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->bitField0_:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasContentId()Z
    .locals 0

    iget p0, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->bitField0_:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasCryptoPeriodIndex()Z
    .locals 0

    iget p0, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->bitField0_:I

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasGroupedLicense()Z
    .locals 0

    iget p0, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->bitField0_:I

    and-int/lit8 p0, p0, 0x20

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasPolicy()Z
    .locals 0

    iget p0, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->bitField0_:I

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasProtectionScheme()Z
    .locals 0

    iget p0, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->bitField0_:I

    and-int/lit8 p0, p0, 0x40

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasProvider()Z
    .locals 0

    iget p0, p0, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->bitField0_:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
