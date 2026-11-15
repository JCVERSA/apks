.class public final enum Lorg/apache/commons/text/lookup/DefaultStringLookup;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/commons/text/lookup/DefaultStringLookup;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/text/lookup/DefaultStringLookup;

.field public static final enum BASE64_DECODER:Lorg/apache/commons/text/lookup/DefaultStringLookup;

.field public static final enum BASE64_ENCODER:Lorg/apache/commons/text/lookup/DefaultStringLookup;

.field public static final enum CONST:Lorg/apache/commons/text/lookup/DefaultStringLookup;

.field public static final enum DATE:Lorg/apache/commons/text/lookup/DefaultStringLookup;

.field public static final enum DNS:Lorg/apache/commons/text/lookup/DefaultStringLookup;

.field public static final enum ENVIRONMENT:Lorg/apache/commons/text/lookup/DefaultStringLookup;

.field public static final enum FILE:Lorg/apache/commons/text/lookup/DefaultStringLookup;

.field public static final enum JAVA:Lorg/apache/commons/text/lookup/DefaultStringLookup;

.field public static final enum LOCAL_HOST:Lorg/apache/commons/text/lookup/DefaultStringLookup;

.field public static final enum PROPERTIES:Lorg/apache/commons/text/lookup/DefaultStringLookup;

.field public static final enum RESOURCE_BUNDLE:Lorg/apache/commons/text/lookup/DefaultStringLookup;

.field public static final enum SCRIPT:Lorg/apache/commons/text/lookup/DefaultStringLookup;

.field public static final enum SYSTEM_PROPERTIES:Lorg/apache/commons/text/lookup/DefaultStringLookup;

.field public static final enum URL:Lorg/apache/commons/text/lookup/DefaultStringLookup;

.field public static final enum URL_DECODER:Lorg/apache/commons/text/lookup/DefaultStringLookup;

.field public static final enum URL_ENCODER:Lorg/apache/commons/text/lookup/DefaultStringLookup;

.field public static final enum XML:Lorg/apache/commons/text/lookup/DefaultStringLookup;


# instance fields
.field private final key:Ljava/lang/String;

.field private final lookup:Lorg/apache/commons/text/lookup/StringLookup;


# direct methods
.method static constructor <clinit>()V
    .locals 23

    new-instance v1, Lorg/apache/commons/text/lookup/DefaultStringLookup;

    move-object v0, v1

    sget-object v17, Lorg/apache/commons/text/lookup/StringLookupFactory;->INSTANCE:Lorg/apache/commons/text/lookup/StringLookupFactory;

    invoke-virtual/range {v17 .. v17}, Lorg/apache/commons/text/lookup/StringLookupFactory;->base64DecoderStringLookup()Lorg/apache/commons/text/lookup/StringLookup;

    move-result-object v2

    const-string v3, "BASE64_DECODER"

    const/4 v4, 0x0

    const-string v5, "base64Decoder"

    invoke-direct {v1, v3, v4, v5, v2}, Lorg/apache/commons/text/lookup/DefaultStringLookup;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/apache/commons/text/lookup/StringLookup;)V

    sput-object v1, Lorg/apache/commons/text/lookup/DefaultStringLookup;->BASE64_DECODER:Lorg/apache/commons/text/lookup/DefaultStringLookup;

    new-instance v2, Lorg/apache/commons/text/lookup/DefaultStringLookup;

    move-object v1, v2

    const-string v3, "base64Encoder"

    invoke-virtual/range {v17 .. v17}, Lorg/apache/commons/text/lookup/StringLookupFactory;->base64EncoderStringLookup()Lorg/apache/commons/text/lookup/StringLookup;

    move-result-object v4

    const-string v5, "BASE64_ENCODER"

    const/4 v6, 0x1

    invoke-direct {v2, v5, v6, v3, v4}, Lorg/apache/commons/text/lookup/DefaultStringLookup;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/apache/commons/text/lookup/StringLookup;)V

    sput-object v2, Lorg/apache/commons/text/lookup/DefaultStringLookup;->BASE64_ENCODER:Lorg/apache/commons/text/lookup/DefaultStringLookup;

    new-instance v3, Lorg/apache/commons/text/lookup/DefaultStringLookup;

    move-object v2, v3

    const-string v4, "const"

    invoke-virtual/range {v17 .. v17}, Lorg/apache/commons/text/lookup/StringLookupFactory;->constantStringLookup()Lorg/apache/commons/text/lookup/StringLookup;

    move-result-object v5

    const-string v6, "CONST"

    const/4 v7, 0x2

    invoke-direct {v3, v6, v7, v4, v5}, Lorg/apache/commons/text/lookup/DefaultStringLookup;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/apache/commons/text/lookup/StringLookup;)V

    sput-object v3, Lorg/apache/commons/text/lookup/DefaultStringLookup;->CONST:Lorg/apache/commons/text/lookup/DefaultStringLookup;

    new-instance v4, Lorg/apache/commons/text/lookup/DefaultStringLookup;

    move-object v3, v4

    const-string v5, "date"

    invoke-virtual/range {v17 .. v17}, Lorg/apache/commons/text/lookup/StringLookupFactory;->dateStringLookup()Lorg/apache/commons/text/lookup/StringLookup;

    move-result-object v6

    const-string v7, "DATE"

    const/4 v8, 0x3

    invoke-direct {v4, v7, v8, v5, v6}, Lorg/apache/commons/text/lookup/DefaultStringLookup;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/apache/commons/text/lookup/StringLookup;)V

    sput-object v4, Lorg/apache/commons/text/lookup/DefaultStringLookup;->DATE:Lorg/apache/commons/text/lookup/DefaultStringLookup;

    new-instance v5, Lorg/apache/commons/text/lookup/DefaultStringLookup;

    move-object v4, v5

    const-string v6, "dns"

    invoke-virtual/range {v17 .. v17}, Lorg/apache/commons/text/lookup/StringLookupFactory;->dnsStringLookup()Lorg/apache/commons/text/lookup/StringLookup;

    move-result-object v7

    const-string v8, "DNS"

    const/4 v9, 0x4

    invoke-direct {v5, v8, v9, v6, v7}, Lorg/apache/commons/text/lookup/DefaultStringLookup;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/apache/commons/text/lookup/StringLookup;)V

    sput-object v5, Lorg/apache/commons/text/lookup/DefaultStringLookup;->DNS:Lorg/apache/commons/text/lookup/DefaultStringLookup;

    new-instance v6, Lorg/apache/commons/text/lookup/DefaultStringLookup;

    move-object v5, v6

    const-string v7, "env"

    invoke-virtual/range {v17 .. v17}, Lorg/apache/commons/text/lookup/StringLookupFactory;->environmentVariableStringLookup()Lorg/apache/commons/text/lookup/StringLookup;

    move-result-object v8

    const-string v9, "ENVIRONMENT"

    const/4 v10, 0x5

    invoke-direct {v6, v9, v10, v7, v8}, Lorg/apache/commons/text/lookup/DefaultStringLookup;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/apache/commons/text/lookup/StringLookup;)V

    sput-object v6, Lorg/apache/commons/text/lookup/DefaultStringLookup;->ENVIRONMENT:Lorg/apache/commons/text/lookup/DefaultStringLookup;

    new-instance v7, Lorg/apache/commons/text/lookup/DefaultStringLookup;

    move-object v6, v7

    const-string v8, "file"

    invoke-virtual/range {v17 .. v17}, Lorg/apache/commons/text/lookup/StringLookupFactory;->fileStringLookup()Lorg/apache/commons/text/lookup/StringLookup;

    move-result-object v9

    const-string v10, "FILE"

    const/4 v11, 0x6

    invoke-direct {v7, v10, v11, v8, v9}, Lorg/apache/commons/text/lookup/DefaultStringLookup;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/apache/commons/text/lookup/StringLookup;)V

    sput-object v7, Lorg/apache/commons/text/lookup/DefaultStringLookup;->FILE:Lorg/apache/commons/text/lookup/DefaultStringLookup;

    new-instance v8, Lorg/apache/commons/text/lookup/DefaultStringLookup;

    move-object v7, v8

    const-string v9, "java"

    invoke-virtual/range {v17 .. v17}, Lorg/apache/commons/text/lookup/StringLookupFactory;->javaPlatformStringLookup()Lorg/apache/commons/text/lookup/StringLookup;

    move-result-object v10

    const-string v11, "JAVA"

    const/4 v12, 0x7

    invoke-direct {v8, v11, v12, v9, v10}, Lorg/apache/commons/text/lookup/DefaultStringLookup;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/apache/commons/text/lookup/StringLookup;)V

    sput-object v8, Lorg/apache/commons/text/lookup/DefaultStringLookup;->JAVA:Lorg/apache/commons/text/lookup/DefaultStringLookup;

    new-instance v9, Lorg/apache/commons/text/lookup/DefaultStringLookup;

    move-object v8, v9

    const-string v10, "localhost"

    invoke-virtual/range {v17 .. v17}, Lorg/apache/commons/text/lookup/StringLookupFactory;->localHostStringLookup()Lorg/apache/commons/text/lookup/StringLookup;

    move-result-object v11

    const-string v12, "LOCAL_HOST"

    const/16 v13, 0x8

    invoke-direct {v9, v12, v13, v10, v11}, Lorg/apache/commons/text/lookup/DefaultStringLookup;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/apache/commons/text/lookup/StringLookup;)V

    sput-object v9, Lorg/apache/commons/text/lookup/DefaultStringLookup;->LOCAL_HOST:Lorg/apache/commons/text/lookup/DefaultStringLookup;

    new-instance v10, Lorg/apache/commons/text/lookup/DefaultStringLookup;

    move-object v9, v10

    const-string v11, "properties"

    invoke-virtual/range {v17 .. v17}, Lorg/apache/commons/text/lookup/StringLookupFactory;->propertiesStringLookup()Lorg/apache/commons/text/lookup/StringLookup;

    move-result-object v12

    const-string v13, "PROPERTIES"

    const/16 v14, 0x9

    invoke-direct {v10, v13, v14, v11, v12}, Lorg/apache/commons/text/lookup/DefaultStringLookup;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/apache/commons/text/lookup/StringLookup;)V

    sput-object v10, Lorg/apache/commons/text/lookup/DefaultStringLookup;->PROPERTIES:Lorg/apache/commons/text/lookup/DefaultStringLookup;

    new-instance v11, Lorg/apache/commons/text/lookup/DefaultStringLookup;

    move-object v10, v11

    const-string v12, "resourceBundle"

    invoke-virtual/range {v17 .. v17}, Lorg/apache/commons/text/lookup/StringLookupFactory;->resourceBundleStringLookup()Lorg/apache/commons/text/lookup/StringLookup;

    move-result-object v13

    const-string v14, "RESOURCE_BUNDLE"

    const/16 v15, 0xa

    invoke-direct {v11, v14, v15, v12, v13}, Lorg/apache/commons/text/lookup/DefaultStringLookup;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/apache/commons/text/lookup/StringLookup;)V

    sput-object v11, Lorg/apache/commons/text/lookup/DefaultStringLookup;->RESOURCE_BUNDLE:Lorg/apache/commons/text/lookup/DefaultStringLookup;

    new-instance v12, Lorg/apache/commons/text/lookup/DefaultStringLookup;

    move-object v11, v12

    const-string v13, "script"

    invoke-virtual/range {v17 .. v17}, Lorg/apache/commons/text/lookup/StringLookupFactory;->scriptStringLookup()Lorg/apache/commons/text/lookup/StringLookup;

    move-result-object v14

    const-string v15, "SCRIPT"

    move-object/from16 v18, v0

    const/16 v0, 0xb

    invoke-direct {v12, v15, v0, v13, v14}, Lorg/apache/commons/text/lookup/DefaultStringLookup;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/apache/commons/text/lookup/StringLookup;)V

    sput-object v12, Lorg/apache/commons/text/lookup/DefaultStringLookup;->SCRIPT:Lorg/apache/commons/text/lookup/DefaultStringLookup;

    new-instance v0, Lorg/apache/commons/text/lookup/DefaultStringLookup;

    move-object v12, v0

    const-string v13, "sys"

    invoke-virtual/range {v17 .. v17}, Lorg/apache/commons/text/lookup/StringLookupFactory;->systemPropertyStringLookup()Lorg/apache/commons/text/lookup/StringLookup;

    move-result-object v14

    const-string v15, "SYSTEM_PROPERTIES"

    move-object/from16 v19, v1

    const/16 v1, 0xc

    invoke-direct {v0, v15, v1, v13, v14}, Lorg/apache/commons/text/lookup/DefaultStringLookup;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/apache/commons/text/lookup/StringLookup;)V

    sput-object v0, Lorg/apache/commons/text/lookup/DefaultStringLookup;->SYSTEM_PROPERTIES:Lorg/apache/commons/text/lookup/DefaultStringLookup;

    new-instance v0, Lorg/apache/commons/text/lookup/DefaultStringLookup;

    move-object v13, v0

    const-string v1, "url"

    invoke-virtual/range {v17 .. v17}, Lorg/apache/commons/text/lookup/StringLookupFactory;->urlStringLookup()Lorg/apache/commons/text/lookup/StringLookup;

    move-result-object v14

    const-string v15, "URL"

    move-object/from16 v20, v2

    const/16 v2, 0xd

    invoke-direct {v0, v15, v2, v1, v14}, Lorg/apache/commons/text/lookup/DefaultStringLookup;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/apache/commons/text/lookup/StringLookup;)V

    sput-object v0, Lorg/apache/commons/text/lookup/DefaultStringLookup;->URL:Lorg/apache/commons/text/lookup/DefaultStringLookup;

    new-instance v0, Lorg/apache/commons/text/lookup/DefaultStringLookup;

    move-object v14, v0

    const-string v1, "urlDecoder"

    invoke-virtual/range {v17 .. v17}, Lorg/apache/commons/text/lookup/StringLookupFactory;->urlDecoderStringLookup()Lorg/apache/commons/text/lookup/StringLookup;

    move-result-object v2

    const-string v15, "URL_DECODER"

    move-object/from16 v21, v3

    const/16 v3, 0xe

    invoke-direct {v0, v15, v3, v1, v2}, Lorg/apache/commons/text/lookup/DefaultStringLookup;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/apache/commons/text/lookup/StringLookup;)V

    sput-object v0, Lorg/apache/commons/text/lookup/DefaultStringLookup;->URL_DECODER:Lorg/apache/commons/text/lookup/DefaultStringLookup;

    new-instance v0, Lorg/apache/commons/text/lookup/DefaultStringLookup;

    move-object v15, v0

    const-string v1, "urlEncoder"

    invoke-virtual/range {v17 .. v17}, Lorg/apache/commons/text/lookup/StringLookupFactory;->urlEncoderStringLookup()Lorg/apache/commons/text/lookup/StringLookup;

    move-result-object v2

    const-string v3, "URL_ENCODER"

    move-object/from16 v22, v4

    const/16 v4, 0xf

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/apache/commons/text/lookup/DefaultStringLookup;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/apache/commons/text/lookup/StringLookup;)V

    sput-object v0, Lorg/apache/commons/text/lookup/DefaultStringLookup;->URL_ENCODER:Lorg/apache/commons/text/lookup/DefaultStringLookup;

    new-instance v0, Lorg/apache/commons/text/lookup/DefaultStringLookup;

    move-object/from16 v16, v0

    const-string v1, "xml"

    invoke-virtual/range {v17 .. v17}, Lorg/apache/commons/text/lookup/StringLookupFactory;->xmlStringLookup()Lorg/apache/commons/text/lookup/StringLookup;

    move-result-object v2

    const-string v3, "XML"

    const/16 v4, 0x10

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/apache/commons/text/lookup/DefaultStringLookup;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/apache/commons/text/lookup/StringLookup;)V

    sput-object v0, Lorg/apache/commons/text/lookup/DefaultStringLookup;->XML:Lorg/apache/commons/text/lookup/DefaultStringLookup;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    move-object/from16 v4, v22

    filled-new-array/range {v0 .. v16}, [Lorg/apache/commons/text/lookup/DefaultStringLookup;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/text/lookup/DefaultStringLookup;->$VALUES:[Lorg/apache/commons/text/lookup/DefaultStringLookup;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Lorg/apache/commons/text/lookup/StringLookup;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/commons/text/lookup/StringLookup;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lorg/apache/commons/text/lookup/DefaultStringLookup;->key:Ljava/lang/String;

    iput-object p4, p0, Lorg/apache/commons/text/lookup/DefaultStringLookup;->lookup:Lorg/apache/commons/text/lookup/StringLookup;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/text/lookup/DefaultStringLookup;
    .locals 1

    const-class v0, Lorg/apache/commons/text/lookup/DefaultStringLookup;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/text/lookup/DefaultStringLookup;

    return-object p0
.end method

.method public static values()[Lorg/apache/commons/text/lookup/DefaultStringLookup;
    .locals 1

    sget-object v0, Lorg/apache/commons/text/lookup/DefaultStringLookup;->$VALUES:[Lorg/apache/commons/text/lookup/DefaultStringLookup;

    invoke-virtual {v0}, [Lorg/apache/commons/text/lookup/DefaultStringLookup;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/text/lookup/DefaultStringLookup;

    return-object v0
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/text/lookup/DefaultStringLookup;->key:Ljava/lang/String;

    return-object p0
.end method

.method public getStringLookup()Lorg/apache/commons/text/lookup/StringLookup;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/text/lookup/DefaultStringLookup;->lookup:Lorg/apache/commons/text/lookup/StringLookup;

    return-object p0
.end method
