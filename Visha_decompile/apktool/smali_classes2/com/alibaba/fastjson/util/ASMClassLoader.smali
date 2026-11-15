.class public Lcom/alibaba/fastjson/util/ASMClassLoader;
.super Ljava/lang/ClassLoader;
.source "SourceFile"


# static fields
.field private static DOMAIN:Ljava/security/ProtectionDomain;

.field private static classMapping:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 57

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/util/ASMClassLoader;->classMapping:Ljava/util/Map;

    new-instance v0, Lcom/alibaba/fastjson/util/ASMClassLoader$1;

    invoke-direct {v0}, Lcom/alibaba/fastjson/util/ASMClassLoader$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/ProtectionDomain;

    sput-object v0, Lcom/alibaba/fastjson/util/ASMClassLoader;->DOMAIN:Ljava/security/ProtectionDomain;

    const-class v55, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    const-class v56, Lcom/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer;

    const-class v1, Lcom/alibaba/fastjson/JSON;

    const-class v2, Lcom/alibaba/fastjson/JSONObject;

    const-class v3, Lcom/alibaba/fastjson/JSONArray;

    const-class v4, Lcom/alibaba/fastjson/JSONPath;

    const-class v5, Lcom/alibaba/fastjson/JSONAware;

    const-class v6, Lcom/alibaba/fastjson/JSONException;

    const-class v7, Lcom/alibaba/fastjson/JSONPathException;

    const-class v8, Lcom/alibaba/fastjson/JSONReader;

    const-class v9, Lcom/alibaba/fastjson/JSONStreamAware;

    const-class v10, Lcom/alibaba/fastjson/JSONWriter;

    const-class v11, Lcom/alibaba/fastjson/TypeReference;

    const-class v12, Lcom/alibaba/fastjson/util/FieldInfo;

    const-class v13, Lcom/alibaba/fastjson/util/TypeUtils;

    const-class v14, Lcom/alibaba/fastjson/util/IOUtils;

    const-class v15, Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v16, Lcom/alibaba/fastjson/util/ParameterizedTypeImpl;

    const-class v17, Lcom/alibaba/fastjson/util/JavaBeanInfo;

    const-class v18, Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    const-class v19, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    const-class v20, Lcom/alibaba/fastjson/serializer/SerializeFilterable;

    const-class v21, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    const-class v22, Lcom/alibaba/fastjson/serializer/JSONSerializer;

    const-class v23, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    const-class v24, Lcom/alibaba/fastjson/serializer/SerializeFilter;

    const-class v25, Lcom/alibaba/fastjson/serializer/Labels;

    const-class v26, Lcom/alibaba/fastjson/serializer/LabelFilter;

    const-class v27, Lcom/alibaba/fastjson/serializer/ContextValueFilter;

    const-class v28, Lcom/alibaba/fastjson/serializer/AfterFilter;

    const-class v29, Lcom/alibaba/fastjson/serializer/BeforeFilter;

    const-class v30, Lcom/alibaba/fastjson/serializer/NameFilter;

    const-class v31, Lcom/alibaba/fastjson/serializer/PropertyFilter;

    const-class v32, Lcom/alibaba/fastjson/serializer/PropertyPreFilter;

    const-class v33, Lcom/alibaba/fastjson/serializer/ValueFilter;

    const-class v34, Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const-class v35, Lcom/alibaba/fastjson/serializer/ContextObjectSerializer;

    const-class v36, Lcom/alibaba/fastjson/serializer/SerialContext;

    const-class v37, Lcom/alibaba/fastjson/serializer/SerializeConfig;

    const-class v38, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    const-class v39, Lcom/alibaba/fastjson/parser/ParserConfig;

    const-class v40, Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    const-class v41, Lcom/alibaba/fastjson/parser/JSONLexer;

    const-class v42, Lcom/alibaba/fastjson/parser/JSONLexerBase;

    const-class v43, Lcom/alibaba/fastjson/parser/ParseContext;

    const-class v44, Lcom/alibaba/fastjson/parser/JSONToken;

    const-class v45, Lcom/alibaba/fastjson/parser/SymbolTable;

    const-class v46, Lcom/alibaba/fastjson/parser/Feature;

    const-class v47, Lcom/alibaba/fastjson/parser/JSONScanner;

    const-class v48, Lcom/alibaba/fastjson/parser/JSONReaderScanner;

    const-class v49, Lcom/alibaba/fastjson/parser/deserializer/AutowiredObjectDeserializer;

    const-class v50, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    const-class v51, Lcom/alibaba/fastjson/parser/deserializer/ExtraProcessor;

    const-class v52, Lcom/alibaba/fastjson/parser/deserializer/ExtraProcessable;

    const-class v53, Lcom/alibaba/fastjson/parser/deserializer/ExtraTypeProvider;

    const-class v54, Lcom/alibaba/fastjson/serializer/BeanContext;

    filled-new-array/range {v1 .. v56}, [Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x38

    if-ge v1, v2, :cond_0

    aget-object v2, v0, v1

    sget-object v3, Lcom/alibaba/fastjson/util/ASMClassLoader;->classMapping:Ljava/util/Map;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/alibaba/fastjson/util/ASMClassLoader;->getParentClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/ClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Ljava/lang/ClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    return-void
.end method

.method public static getParentClassLoader()Ljava/lang/ClassLoader;
    .locals 3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Lcom/alibaba/fastjson/JSON;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public defineClassPublic(Ljava/lang/String;[BII)Ljava/lang/Class;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[BII)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassFormatError;
        }
    .end annotation

    sget-object v5, Lcom/alibaba/fastjson/util/ASMClassLoader;->DOMAIN:Ljava/security/ProtectionDomain;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Ljava/lang/ClassLoader;->defineClass(Ljava/lang/String;[BIILjava/security/ProtectionDomain;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public isExternalClass(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    :goto_0
    if-eqz p0, :cond_2

    if-ne p0, p1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object p0

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public loadClass(Ljava/lang/String;Z)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    sget-object v0, Lcom/alibaba/fastjson/util/ASMClassLoader;->classMapping:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-super {p0, p1, p2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;Z)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method
