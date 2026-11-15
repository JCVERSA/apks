.class public Lcom/alibaba/fastjson/serializer/AnnotationSerializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;


# static fields
.field public static instance:Lcom/alibaba/fastjson/serializer/AnnotationSerializer; = null

.field private static volatile sun_AnnotationType:Ljava/lang/Class; = null

.field private static volatile sun_AnnotationType_error:Z = false

.field private static volatile sun_AnnotationType_getInstance:Ljava/lang/reflect/Method;

.field private static volatile sun_AnnotationType_members:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/alibaba/fastjson/serializer/AnnotationSerializer;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/AnnotationSerializer;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/AnnotationSerializer;->instance:Lcom/alibaba/fastjson/serializer/AnnotationSerializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object p0

    array-length p3, p0

    const/4 p4, 0x1

    if-ne p3, p4, :cond_6

    const/4 p3, 0x0

    aget-object p5, p0, p3

    invoke-virtual {p5}, Ljava/lang/Class;->isAnnotation()Z

    move-result p5

    if-eqz p5, :cond_6

    aget-object p0, p0, p3

    sget-object p3, Lcom/alibaba/fastjson/serializer/AnnotationSerializer;->sun_AnnotationType:Ljava/lang/Class;

    const-string p5, "not support Type Annotation."

    if-nez p3, :cond_0

    sget-boolean p3, Lcom/alibaba/fastjson/serializer/AnnotationSerializer;->sun_AnnotationType_error:Z

    if-nez p3, :cond_0

    :try_start_0
    const-string/jumbo p3, "sun.reflect.annotation.AnnotationType"

    invoke-static {p3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p3

    sput-object p3, Lcom/alibaba/fastjson/serializer/AnnotationSerializer;->sun_AnnotationType:Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sput-boolean p4, Lcom/alibaba/fastjson/serializer/AnnotationSerializer;->sun_AnnotationType_error:Z

    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p1, p5, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    :goto_0
    sget-object p3, Lcom/alibaba/fastjson/serializer/AnnotationSerializer;->sun_AnnotationType:Ljava/lang/Class;

    if-eqz p3, :cond_5

    sget-object p3, Lcom/alibaba/fastjson/serializer/AnnotationSerializer;->sun_AnnotationType_getInstance:Ljava/lang/reflect/Method;

    if-nez p3, :cond_1

    sget-boolean p3, Lcom/alibaba/fastjson/serializer/AnnotationSerializer;->sun_AnnotationType_error:Z

    if-nez p3, :cond_1

    :try_start_1
    sget-object p3, Lcom/alibaba/fastjson/serializer/AnnotationSerializer;->sun_AnnotationType:Ljava/lang/Class;

    const-string v0, "getInstance"

    const-class v1, Ljava/lang/Class;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p3

    sput-object p3, Lcom/alibaba/fastjson/serializer/AnnotationSerializer;->sun_AnnotationType_getInstance:Ljava/lang/reflect/Method;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    sput-boolean p4, Lcom/alibaba/fastjson/serializer/AnnotationSerializer;->sun_AnnotationType_error:Z

    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p1, p5, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    :goto_1
    sget-object p3, Lcom/alibaba/fastjson/serializer/AnnotationSerializer;->sun_AnnotationType_members:Ljava/lang/reflect/Method;

    const/4 v0, 0x0

    if-nez p3, :cond_2

    sget-boolean p3, Lcom/alibaba/fastjson/serializer/AnnotationSerializer;->sun_AnnotationType_error:Z

    if-nez p3, :cond_2

    :try_start_2
    sget-object p3, Lcom/alibaba/fastjson/serializer/AnnotationSerializer;->sun_AnnotationType:Ljava/lang/Class;

    const-string v1, "members"

    invoke-virtual {p3, v1, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p3

    sput-object p3, Lcom/alibaba/fastjson/serializer/AnnotationSerializer;->sun_AnnotationType_members:Ljava/lang/reflect/Method;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p0

    sput-boolean p4, Lcom/alibaba/fastjson/serializer/AnnotationSerializer;->sun_AnnotationType_error:Z

    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p1, p5, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_2
    :goto_2
    sget-object p3, Lcom/alibaba/fastjson/serializer/AnnotationSerializer;->sun_AnnotationType_getInstance:Ljava/lang/reflect/Method;

    if-eqz p3, :cond_4

    sget-boolean p3, Lcom/alibaba/fastjson/serializer/AnnotationSerializer;->sun_AnnotationType_error:Z

    if-nez p3, :cond_4

    :try_start_3
    sget-object p3, Lcom/alibaba/fastjson/serializer/AnnotationSerializer;->sun_AnnotationType_getInstance:Ljava/lang/reflect/Method;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p3, v0, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    :try_start_4
    sget-object p3, Lcom/alibaba/fastjson/serializer/AnnotationSerializer;->sun_AnnotationType_members:Ljava/lang/reflect/Method;

    invoke-virtual {p3, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    new-instance p3, Lcom/alibaba/fastjson/JSONObject;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p4

    invoke-direct {p3, p4}, Lcom/alibaba/fastjson/JSONObject;-><init>(I)V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move-object p4, v0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/util/Map$Entry;

    :try_start_5
    invoke-interface {p5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Method;

    invoke-virtual {v1, p2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4
    :try_end_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    invoke-interface {p5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    invoke-static {p4}, Lcom/alibaba/fastjson/JSON;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p3, p5, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_3
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    return-void

    :catchall_3
    move-exception p0

    sput-boolean p4, Lcom/alibaba/fastjson/serializer/AnnotationSerializer;->sun_AnnotationType_error:Z

    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p1, p5, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catchall_4
    move-exception p0

    sput-boolean p4, Lcom/alibaba/fastjson/serializer/AnnotationSerializer;->sun_AnnotationType_error:Z

    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p1, p5, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_4
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p0, p5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p0, p5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    return-void
.end method
