.class public Lcom/alibaba/fastjson/support/retrofit/Retrofit2ConverterFactory;
.super Lsi1$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/fastjson/support/retrofit/Retrofit2ConverterFactory$RequestBodyConverter;,
        Lcom/alibaba/fastjson/support/retrofit/Retrofit2ConverterFactory$ResponseBodyConverter;
    }
.end annotation


# static fields
.field private static final EMPTY_SERIALIZER_FEATURES:[Lcom/alibaba/fastjson/parser/Feature;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final MEDIA_TYPE:Lokhttp3/MediaType;


# instance fields
.field private fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

.field private featureValues:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private features:[Lcom/alibaba/fastjson/parser/Feature;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private parserConfig:Lcom/alibaba/fastjson/parser/ParserConfig;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private serializeConfig:Lcom/alibaba/fastjson/serializer/SerializeConfig;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private serializerFeatures:[Lcom/alibaba/fastjson/serializer/SerializerFeature;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "application/json; charset=UTF-8"

    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/support/retrofit/Retrofit2ConverterFactory;->MEDIA_TYPE:Lokhttp3/MediaType;

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/alibaba/fastjson/parser/Feature;

    sput-object v0, Lcom/alibaba/fastjson/support/retrofit/Retrofit2ConverterFactory;->EMPTY_SERIALIZER_FEATURES:[Lcom/alibaba/fastjson/parser/Feature;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lsi1$a;-><init>()V

    .line 2
    invoke-static {}, Lcom/alibaba/fastjson/parser/ParserConfig;->getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/fastjson/support/retrofit/Retrofit2ConverterFactory;->parserConfig:Lcom/alibaba/fastjson/parser/ParserConfig;

    .line 3
    sget v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    iput v0, p0, Lcom/alibaba/fastjson/support/retrofit/Retrofit2ConverterFactory;->featureValues:I

    .line 4
    new-instance v0, Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    invoke-direct {v0}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson/support/retrofit/Retrofit2ConverterFactory;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/fastjson/support/config/FastJsonConfig;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Lsi1$a;-><init>()V

    .line 6
    invoke-static {}, Lcom/alibaba/fastjson/parser/ParserConfig;->getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/fastjson/support/retrofit/Retrofit2ConverterFactory;->parserConfig:Lcom/alibaba/fastjson/parser/ParserConfig;

    .line 7
    sget v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    iput v0, p0, Lcom/alibaba/fastjson/support/retrofit/Retrofit2ConverterFactory;->featureValues:I

    .line 8
    iput-object p1, p0, Lcom/alibaba/fastjson/support/retrofit/Retrofit2ConverterFactory;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    return-void
.end method

.method public static synthetic access$000(Lcom/alibaba/fastjson/support/retrofit/Retrofit2ConverterFactory;)Lcom/alibaba/fastjson/support/config/FastJsonConfig;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/fastjson/support/retrofit/Retrofit2ConverterFactory;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    return-object p0
.end method

.method public static synthetic access$100()Lokhttp3/MediaType;
    .locals 1

    sget-object v0, Lcom/alibaba/fastjson/support/retrofit/Retrofit2ConverterFactory;->MEDIA_TYPE:Lokhttp3/MediaType;

    return-object v0
.end method

.method public static create()Lcom/alibaba/fastjson/support/retrofit/Retrofit2ConverterFactory;
    .locals 1

    .line 1
    new-instance v0, Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    invoke-direct {v0}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;-><init>()V

    invoke-static {v0}, Lcom/alibaba/fastjson/support/retrofit/Retrofit2ConverterFactory;->create(Lcom/alibaba/fastjson/support/config/FastJsonConfig;)Lcom/alibaba/fastjson/support/retrofit/Retrofit2ConverterFactory;

    move-result-object v0

    return-object v0
.end method

.method public static create(Lcom/alibaba/fastjson/support/config/FastJsonConfig;)Lcom/alibaba/fastjson/support/retrofit/Retrofit2ConverterFactory;
    .locals 1

    if-eqz p0, :cond_0

    .line 2
    new-instance v0, Lcom/alibaba/fastjson/support/retrofit/Retrofit2ConverterFactory;

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson/support/retrofit/Retrofit2ConverterFactory;-><init>(Lcom/alibaba/fastjson/support/config/FastJsonConfig;)V

    return-object v0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "fastJsonConfig == null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getFastJsonConfig()Lcom/alibaba/fastjson/support/config/FastJsonConfig;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/fastjson/support/retrofit/Retrofit2ConverterFactory;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    return-object p0
.end method

.method public getParserConfig()Lcom/alibaba/fastjson/parser/ParserConfig;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Lcom/alibaba/fastjson/support/retrofit/Retrofit2ConverterFactory;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->getParserConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object p0

    return-object p0
.end method

.method public getParserFeatureValues()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget p0, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    return p0
.end method

.method public getParserFeatures()[Lcom/alibaba/fastjson/parser/Feature;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Lcom/alibaba/fastjson/support/retrofit/Retrofit2ConverterFactory;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->getFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object p0

    return-object p0
.end method

.method public getSerializeConfig()Lcom/alibaba/fastjson/serializer/SerializeConfig;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Lcom/alibaba/fastjson/support/retrofit/Retrofit2ConverterFactory;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->getSerializeConfig()Lcom/alibaba/fastjson/serializer/SerializeConfig;

    move-result-object p0

    return-object p0
.end method

.method public getSerializerFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Lcom/alibaba/fastjson/support/retrofit/Retrofit2ConverterFactory;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->getSerializerFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object p0

    return-object p0
.end method

.method public requestBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;Lru8;)Lsi1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Lru8;",
            ")",
            "Lsi1;"
        }
    .end annotation

    new-instance p1, Lcom/alibaba/fastjson/support/retrofit/Retrofit2ConverterFactory$RequestBodyConverter;

    invoke-direct {p1, p0}, Lcom/alibaba/fastjson/support/retrofit/Retrofit2ConverterFactory$RequestBodyConverter;-><init>(Lcom/alibaba/fastjson/support/retrofit/Retrofit2ConverterFactory;)V

    return-object p1
.end method

.method public responseBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lru8;)Lsi1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Lru8;",
            ")",
            "Lsi1;"
        }
    .end annotation

    new-instance p2, Lcom/alibaba/fastjson/support/retrofit/Retrofit2ConverterFactory$ResponseBodyConverter;

    invoke-direct {p2, p0, p1}, Lcom/alibaba/fastjson/support/retrofit/Retrofit2ConverterFactory$ResponseBodyConverter;-><init>(Lcom/alibaba/fastjson/support/retrofit/Retrofit2ConverterFactory;Ljava/lang/reflect/Type;)V

    return-object p2
.end method

.method public setFastJsonConfig(Lcom/alibaba/fastjson/support/config/FastJsonConfig;)Lcom/alibaba/fastjson/support/retrofit/Retrofit2ConverterFactory;
    .locals 0

    iput-object p1, p0, Lcom/alibaba/fastjson/support/retrofit/Retrofit2ConverterFactory;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    return-object p0
.end method

.method public setParserConfig(Lcom/alibaba/fastjson/parser/ParserConfig;)Lcom/alibaba/fastjson/support/retrofit/Retrofit2ConverterFactory;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/alibaba/fastjson/support/retrofit/Retrofit2ConverterFactory;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->setParserConfig(Lcom/alibaba/fastjson/parser/ParserConfig;)V

    return-object p0
.end method

.method public setParserFeatureValues(I)Lcom/alibaba/fastjson/support/retrofit/Retrofit2ConverterFactory;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-object p0
.end method

.method public setParserFeatures([Lcom/alibaba/fastjson/parser/Feature;)Lcom/alibaba/fastjson/support/retrofit/Retrofit2ConverterFactory;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/alibaba/fastjson/support/retrofit/Retrofit2ConverterFactory;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->setFeatures([Lcom/alibaba/fastjson/parser/Feature;)V

    return-object p0
.end method

.method public setSerializeConfig(Lcom/alibaba/fastjson/serializer/SerializeConfig;)Lcom/alibaba/fastjson/support/retrofit/Retrofit2ConverterFactory;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/alibaba/fastjson/support/retrofit/Retrofit2ConverterFactory;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->setSerializeConfig(Lcom/alibaba/fastjson/serializer/SerializeConfig;)V

    return-object p0
.end method

.method public setSerializerFeatures([Lcom/alibaba/fastjson/serializer/SerializerFeature;)Lcom/alibaba/fastjson/support/retrofit/Retrofit2ConverterFactory;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/alibaba/fastjson/support/retrofit/Retrofit2ConverterFactory;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->setSerializerFeatures([Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    return-object p0
.end method
