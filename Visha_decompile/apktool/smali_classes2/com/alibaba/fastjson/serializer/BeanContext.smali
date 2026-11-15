.class public final Lcom/alibaba/fastjson/serializer/BeanContext;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final beanClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

.field private final format:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/fastjson/serializer/BeanContext;->beanClass:Ljava/lang/Class;

    iput-object p2, p0, Lcom/alibaba/fastjson/serializer/BeanContext;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    invoke-virtual {p2}, Lcom/alibaba/fastjson/util/FieldInfo;->getFormat()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/fastjson/serializer/BeanContext;->format:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAnnation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    iget-object p0, p0, Lcom/alibaba/fastjson/serializer/BeanContext;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/util/FieldInfo;->getAnnation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    return-object p0
.end method

.method public getBeanClass()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/alibaba/fastjson/serializer/BeanContext;->beanClass:Ljava/lang/Class;

    return-object p0
.end method

.method public getFeatures()I
    .locals 0

    iget-object p0, p0, Lcom/alibaba/fastjson/serializer/BeanContext;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget p0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->serialzeFeatures:I

    return p0
.end method

.method public getField()Ljava/lang/reflect/Field;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/fastjson/serializer/BeanContext;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object p0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    return-object p0
.end method

.method public getFieldClass()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/alibaba/fastjson/serializer/BeanContext;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object p0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    return-object p0
.end method

.method public getFieldType()Ljava/lang/reflect/Type;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/fastjson/serializer/BeanContext;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object p0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    return-object p0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/fastjson/serializer/BeanContext;->format:Ljava/lang/String;

    return-object p0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/fastjson/serializer/BeanContext;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object p0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->label:Ljava/lang/String;

    return-object p0
.end method

.method public getMethod()Ljava/lang/reflect/Method;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/fastjson/serializer/BeanContext;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object p0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/fastjson/serializer/BeanContext;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object p0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    return-object p0
.end method

.method public isJsonDirect()Z
    .locals 0

    iget-object p0, p0, Lcom/alibaba/fastjson/serializer/BeanContext;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-boolean p0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->jsonDirect:Z

    return p0
.end method
