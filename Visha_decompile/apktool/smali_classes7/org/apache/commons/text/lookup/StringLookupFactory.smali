.class public final Lorg/apache/commons/text/lookup/StringLookupFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/text/lookup/StringLookupFactory$DefaultStringLookupsHolder;
    }
.end annotation


# static fields
.field public static final DEFAULT_STRING_LOOKUPS_PROPERTY:Ljava/lang/String; = "org.apache.commons.text.lookup.StringLookupFactory.defaultStringLookups"

.field public static final INSTANCE:Lorg/apache/commons/text/lookup/StringLookupFactory;

.field static final INSTANCE_BASE64_DECODER:Lorg/apache/commons/text/lookup/FunctionStringLookup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/text/lookup/FunctionStringLookup<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final INSTANCE_BASE64_ENCODER:Lorg/apache/commons/text/lookup/FunctionStringLookup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/text/lookup/FunctionStringLookup<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final INSTANCE_ENVIRONMENT_VARIABLES:Lorg/apache/commons/text/lookup/FunctionStringLookup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/text/lookup/FunctionStringLookup<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final INSTANCE_NULL:Lorg/apache/commons/text/lookup/FunctionStringLookup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/text/lookup/FunctionStringLookup<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final INSTANCE_SYSTEM_PROPERTIES:Lorg/apache/commons/text/lookup/FunctionStringLookup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/text/lookup/FunctionStringLookup<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEY_BASE64_DECODER:Ljava/lang/String; = "base64Decoder"

.field public static final KEY_BASE64_ENCODER:Ljava/lang/String; = "base64Encoder"

.field public static final KEY_CONST:Ljava/lang/String; = "const"

.field public static final KEY_DATE:Ljava/lang/String; = "date"

.field public static final KEY_DNS:Ljava/lang/String; = "dns"

.field public static final KEY_ENV:Ljava/lang/String; = "env"

.field public static final KEY_FILE:Ljava/lang/String; = "file"

.field public static final KEY_JAVA:Ljava/lang/String; = "java"

.field public static final KEY_LOCALHOST:Ljava/lang/String; = "localhost"

.field public static final KEY_PROPERTIES:Ljava/lang/String; = "properties"

.field public static final KEY_RESOURCE_BUNDLE:Ljava/lang/String; = "resourceBundle"

.field public static final KEY_SCRIPT:Ljava/lang/String; = "script"

.field public static final KEY_SYS:Ljava/lang/String; = "sys"

.field public static final KEY_URL:Ljava/lang/String; = "url"

.field public static final KEY_URL_DECODER:Ljava/lang/String; = "urlDecoder"

.field public static final KEY_URL_ENCODER:Ljava/lang/String; = "urlEncoder"

.field public static final KEY_XML:Ljava/lang/String; = "xml"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/commons/text/lookup/StringLookupFactory;

    invoke-direct {v0}, Lorg/apache/commons/text/lookup/StringLookupFactory;-><init>()V

    sput-object v0, Lorg/apache/commons/text/lookup/StringLookupFactory;->INSTANCE:Lorg/apache/commons/text/lookup/StringLookupFactory;

    new-instance v0, Lrz9;

    invoke-direct {v0}, Lrz9;-><init>()V

    invoke-static {v0}, Lorg/apache/commons/text/lookup/FunctionStringLookup;->on(Ljava/util/function/Function;)Lorg/apache/commons/text/lookup/FunctionStringLookup;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/text/lookup/StringLookupFactory;->INSTANCE_BASE64_DECODER:Lorg/apache/commons/text/lookup/FunctionStringLookup;

    new-instance v0, Lsz9;

    invoke-direct {v0}, Lsz9;-><init>()V

    invoke-static {v0}, Lorg/apache/commons/text/lookup/FunctionStringLookup;->on(Ljava/util/function/Function;)Lorg/apache/commons/text/lookup/FunctionStringLookup;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/text/lookup/StringLookupFactory;->INSTANCE_BASE64_ENCODER:Lorg/apache/commons/text/lookup/FunctionStringLookup;

    new-instance v0, Ltz9;

    invoke-direct {v0}, Ltz9;-><init>()V

    invoke-static {v0}, Lorg/apache/commons/text/lookup/FunctionStringLookup;->on(Ljava/util/function/Function;)Lorg/apache/commons/text/lookup/FunctionStringLookup;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/text/lookup/StringLookupFactory;->INSTANCE_ENVIRONMENT_VARIABLES:Lorg/apache/commons/text/lookup/FunctionStringLookup;

    new-instance v0, Luz9;

    invoke-direct {v0}, Luz9;-><init>()V

    invoke-static {v0}, Lorg/apache/commons/text/lookup/FunctionStringLookup;->on(Ljava/util/function/Function;)Lorg/apache/commons/text/lookup/FunctionStringLookup;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/text/lookup/StringLookupFactory;->INSTANCE_NULL:Lorg/apache/commons/text/lookup/FunctionStringLookup;

    new-instance v0, Lvz9;

    invoke-direct {v0}, Lvz9;-><init>()V

    invoke-static {v0}, Lorg/apache/commons/text/lookup/FunctionStringLookup;->on(Ljava/util/function/Function;)Lorg/apache/commons/text/lookup/FunctionStringLookup;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/text/lookup/StringLookupFactory;->INSTANCE_SYSTEM_PROPERTIES:Lorg/apache/commons/text/lookup/FunctionStringLookup;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/apache/commons/text/lookup/StringLookupFactory;->lambda$static$2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/apache/commons/text/lookup/StringLookupFactory;->lambda$static$1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/apache/commons/text/lookup/StringLookupFactory;->lambda$static$0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static clear()V
    .locals 0

    invoke-static {}, Lorg/apache/commons/text/lookup/ConstantStringLookup;->clear()V

    return-void
.end method

.method private static synthetic lambda$static$0(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/String;

    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object p0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method private static synthetic lambda$static$1(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Ljava/util/Base64;->getEncoder()Ljava/util/Base64$Encoder;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$static$2(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public static toKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toMap(Ljava/util/Map;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public addDefaultStringLookups(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/commons/text/lookup/StringLookup;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    sget-object p0, Lorg/apache/commons/text/lookup/StringLookupFactory$DefaultStringLookupsHolder;->INSTANCE:Lorg/apache/commons/text/lookup/StringLookupFactory$DefaultStringLookupsHolder;

    invoke-virtual {p0}, Lorg/apache/commons/text/lookup/StringLookupFactory$DefaultStringLookupsHolder;->getDefaultStringLookups()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public base64DecoderStringLookup()Lorg/apache/commons/text/lookup/StringLookup;
    .locals 0

    sget-object p0, Lorg/apache/commons/text/lookup/StringLookupFactory;->INSTANCE_BASE64_DECODER:Lorg/apache/commons/text/lookup/FunctionStringLookup;

    return-object p0
.end method

.method public base64EncoderStringLookup()Lorg/apache/commons/text/lookup/StringLookup;
    .locals 0

    sget-object p0, Lorg/apache/commons/text/lookup/StringLookupFactory;->INSTANCE_BASE64_ENCODER:Lorg/apache/commons/text/lookup/FunctionStringLookup;

    return-object p0
.end method

.method public base64StringLookup()Lorg/apache/commons/text/lookup/StringLookup;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object p0, Lorg/apache/commons/text/lookup/StringLookupFactory;->INSTANCE_BASE64_DECODER:Lorg/apache/commons/text/lookup/FunctionStringLookup;

    return-object p0
.end method

.method public biFunctionStringLookup(Ljava/util/function/BiFunction;)Lorg/apache/commons/text/lookup/BiStringLookup;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/BiFunction<",
            "Ljava/lang/String;",
            "TU;TR;>;)",
            "Lorg/apache/commons/text/lookup/BiStringLookup<",
            "TU;>;"
        }
    .end annotation

    invoke-static {p1}, Lorg/apache/commons/text/lookup/BiFunctionStringLookup;->on(Ljava/util/function/BiFunction;)Lorg/apache/commons/text/lookup/BiFunctionStringLookup;

    move-result-object p0

    return-object p0
.end method

.method public constantStringLookup()Lorg/apache/commons/text/lookup/StringLookup;
    .locals 0

    sget-object p0, Lorg/apache/commons/text/lookup/ConstantStringLookup;->INSTANCE:Lorg/apache/commons/text/lookup/ConstantStringLookup;

    return-object p0
.end method

.method public dateStringLookup()Lorg/apache/commons/text/lookup/StringLookup;
    .locals 0

    sget-object p0, Lorg/apache/commons/text/lookup/DateStringLookup;->INSTANCE:Lorg/apache/commons/text/lookup/DateStringLookup;

    return-object p0
.end method

.method public dnsStringLookup()Lorg/apache/commons/text/lookup/StringLookup;
    .locals 0

    sget-object p0, Lorg/apache/commons/text/lookup/DnsStringLookup;->INSTANCE:Lorg/apache/commons/text/lookup/DnsStringLookup;

    return-object p0
.end method

.method public environmentVariableStringLookup()Lorg/apache/commons/text/lookup/StringLookup;
    .locals 0

    sget-object p0, Lorg/apache/commons/text/lookup/StringLookupFactory;->INSTANCE_ENVIRONMENT_VARIABLES:Lorg/apache/commons/text/lookup/FunctionStringLookup;

    return-object p0
.end method

.method public fileStringLookup()Lorg/apache/commons/text/lookup/StringLookup;
    .locals 0

    sget-object p0, Lorg/apache/commons/text/lookup/FileStringLookup;->INSTANCE:Lorg/apache/commons/text/lookup/AbstractStringLookup;

    return-object p0
.end method

.method public functionStringLookup(Ljava/util/function/Function;)Lorg/apache/commons/text/lookup/StringLookup;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "TR;>;)",
            "Lorg/apache/commons/text/lookup/StringLookup;"
        }
    .end annotation

    invoke-static {p1}, Lorg/apache/commons/text/lookup/FunctionStringLookup;->on(Ljava/util/function/Function;)Lorg/apache/commons/text/lookup/FunctionStringLookup;

    move-result-object p0

    return-object p0
.end method

.method public interpolatorStringLookup()Lorg/apache/commons/text/lookup/StringLookup;
    .locals 0

    .line 1
    sget-object p0, Lorg/apache/commons/text/lookup/InterpolatorStringLookup;->INSTANCE:Lorg/apache/commons/text/lookup/AbstractStringLookup;

    return-object p0
.end method

.method public interpolatorStringLookup(Ljava/util/Map;)Lorg/apache/commons/text/lookup/StringLookup;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TV;>;)",
            "Lorg/apache/commons/text/lookup/StringLookup;"
        }
    .end annotation

    .line 3
    new-instance p0, Lorg/apache/commons/text/lookup/InterpolatorStringLookup;

    invoke-direct {p0, p1}, Lorg/apache/commons/text/lookup/InterpolatorStringLookup;-><init>(Ljava/util/Map;)V

    return-object p0
.end method

.method public interpolatorStringLookup(Ljava/util/Map;Lorg/apache/commons/text/lookup/StringLookup;Z)Lorg/apache/commons/text/lookup/StringLookup;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/commons/text/lookup/StringLookup;",
            ">;",
            "Lorg/apache/commons/text/lookup/StringLookup;",
            "Z)",
            "Lorg/apache/commons/text/lookup/StringLookup;"
        }
    .end annotation

    .line 2
    new-instance p0, Lorg/apache/commons/text/lookup/InterpolatorStringLookup;

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/text/lookup/InterpolatorStringLookup;-><init>(Ljava/util/Map;Lorg/apache/commons/text/lookup/StringLookup;Z)V

    return-object p0
.end method

.method public interpolatorStringLookup(Lorg/apache/commons/text/lookup/StringLookup;)Lorg/apache/commons/text/lookup/StringLookup;
    .locals 0

    .line 4
    new-instance p0, Lorg/apache/commons/text/lookup/InterpolatorStringLookup;

    invoke-direct {p0, p1}, Lorg/apache/commons/text/lookup/InterpolatorStringLookup;-><init>(Lorg/apache/commons/text/lookup/StringLookup;)V

    return-object p0
.end method

.method public javaPlatformStringLookup()Lorg/apache/commons/text/lookup/StringLookup;
    .locals 0

    sget-object p0, Lorg/apache/commons/text/lookup/JavaPlatformStringLookup;->INSTANCE:Lorg/apache/commons/text/lookup/JavaPlatformStringLookup;

    return-object p0
.end method

.method public localHostStringLookup()Lorg/apache/commons/text/lookup/StringLookup;
    .locals 0

    sget-object p0, Lorg/apache/commons/text/lookup/LocalHostStringLookup;->INSTANCE:Lorg/apache/commons/text/lookup/LocalHostStringLookup;

    return-object p0
.end method

.method public mapStringLookup(Ljava/util/Map;)Lorg/apache/commons/text/lookup/StringLookup;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TV;>;)",
            "Lorg/apache/commons/text/lookup/StringLookup;"
        }
    .end annotation

    invoke-static {p1}, Lorg/apache/commons/text/lookup/FunctionStringLookup;->on(Ljava/util/Map;)Lorg/apache/commons/text/lookup/FunctionStringLookup;

    move-result-object p0

    return-object p0
.end method

.method public nullStringLookup()Lorg/apache/commons/text/lookup/StringLookup;
    .locals 0

    sget-object p0, Lorg/apache/commons/text/lookup/StringLookupFactory;->INSTANCE_NULL:Lorg/apache/commons/text/lookup/FunctionStringLookup;

    return-object p0
.end method

.method public propertiesStringLookup()Lorg/apache/commons/text/lookup/StringLookup;
    .locals 0

    sget-object p0, Lorg/apache/commons/text/lookup/PropertiesStringLookup;->INSTANCE:Lorg/apache/commons/text/lookup/PropertiesStringLookup;

    return-object p0
.end method

.method public resourceBundleStringLookup()Lorg/apache/commons/text/lookup/StringLookup;
    .locals 0

    .line 1
    sget-object p0, Lorg/apache/commons/text/lookup/ResourceBundleStringLookup;->INSTANCE:Lorg/apache/commons/text/lookup/ResourceBundleStringLookup;

    return-object p0
.end method

.method public resourceBundleStringLookup(Ljava/lang/String;)Lorg/apache/commons/text/lookup/StringLookup;
    .locals 0

    .line 2
    new-instance p0, Lorg/apache/commons/text/lookup/ResourceBundleStringLookup;

    invoke-direct {p0, p1}, Lorg/apache/commons/text/lookup/ResourceBundleStringLookup;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public scriptStringLookup()Lorg/apache/commons/text/lookup/StringLookup;
    .locals 0

    sget-object p0, Lorg/apache/commons/text/lookup/ScriptStringLookup;->INSTANCE:Lorg/apache/commons/text/lookup/ScriptStringLookup;

    return-object p0
.end method

.method public systemPropertyStringLookup()Lorg/apache/commons/text/lookup/StringLookup;
    .locals 0

    sget-object p0, Lorg/apache/commons/text/lookup/StringLookupFactory;->INSTANCE_SYSTEM_PROPERTIES:Lorg/apache/commons/text/lookup/FunctionStringLookup;

    return-object p0
.end method

.method public urlDecoderStringLookup()Lorg/apache/commons/text/lookup/StringLookup;
    .locals 0

    sget-object p0, Lorg/apache/commons/text/lookup/UrlDecoderStringLookup;->INSTANCE:Lorg/apache/commons/text/lookup/UrlDecoderStringLookup;

    return-object p0
.end method

.method public urlEncoderStringLookup()Lorg/apache/commons/text/lookup/StringLookup;
    .locals 0

    sget-object p0, Lorg/apache/commons/text/lookup/UrlEncoderStringLookup;->INSTANCE:Lorg/apache/commons/text/lookup/UrlEncoderStringLookup;

    return-object p0
.end method

.method public urlStringLookup()Lorg/apache/commons/text/lookup/StringLookup;
    .locals 0

    sget-object p0, Lorg/apache/commons/text/lookup/UrlStringLookup;->INSTANCE:Lorg/apache/commons/text/lookup/UrlStringLookup;

    return-object p0
.end method

.method public xmlStringLookup()Lorg/apache/commons/text/lookup/StringLookup;
    .locals 0

    sget-object p0, Lorg/apache/commons/text/lookup/XmlStringLookup;->INSTANCE:Lorg/apache/commons/text/lookup/XmlStringLookup;

    return-object p0
.end method
