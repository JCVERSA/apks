.class public Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/apiinvoke/invoke/ApiRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x1201267562534316L


# instance fields
.field private apiMethod:Ljava/lang/String;

.field private apiName:Ljava/lang/String;

.field private channel:Ljava/lang/String;

.field private keepLiving:Z

.field private livingTime:J

.field private packageName:Ljava/lang/String;

.field private parameters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/apiinvoke/invoke/TypeValuePair;",
            ">;"
        }
    .end annotation
.end field

.field private retryOnReConnect:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;->keepLiving:Z

    const-wide/32 v0, 0x1d4c0

    iput-wide v0, p0, Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;->livingTime:J

    return-void
.end method

.method public static synthetic access$000(Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;->apiName:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;->apiMethod:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;->channel:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$202(Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;->channel:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$300(Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;->parameters:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;->retryOnReConnect:Z

    return p0
.end method

.method public static synthetic access$502(Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;->retryOnReConnect:Z

    return p1
.end method

.method public static synthetic access$600(Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;->keepLiving:Z

    return p0
.end method

.method public static synthetic access$700(Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;)J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;->livingTime:J

    return-wide v0
.end method


# virtual methods
.method public varargs addParameter(Lcom/transsion/apiinvoke/invoke/TypeValuePair;[Lcom/transsion/apiinvoke/invoke/TypeValuePair;)Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/transsion/apiinvoke/invoke/TypeValuePair<",
            "TT;>;[",
            "Lcom/transsion/apiinvoke/invoke/TypeValuePair<",
            "TT;>;)",
            "Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;"
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;->parameters:Ljava/util/List;

    if-nez v0, :cond_0

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;->parameters:Ljava/util/List;

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;->parameters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_1

    .line 12
    array-length p1, p2

    if-lez p1, :cond_1

    .line 13
    array-length p1, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    aget-object v1, p2, v0

    .line 14
    iget-object v2, p0, Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;->parameters:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public addParameter(Ljava/lang/Object;)Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/transsion/apiinvoke/invoke/TypeValuePair;->createTypeMapping(Ljava/lang/Object;)Lcom/transsion/apiinvoke/invoke/TypeValuePair;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;->parameters:Ljava/util/List;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;->parameters:Ljava/util/List;

    :cond_0
    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 5
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result p1

    if-eqz p1, :cond_3

    .line 7
    iget-object p1, p0, Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;->parameters:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 8
    :cond_2
    iget-object p1, p0, Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;->parameters:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    return-object p0
.end method

.method public apiMethod(Ljava/lang/String;)Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;->apiMethod:Ljava/lang/String;

    return-object p0
.end method

.method public apiName(Ljava/lang/String;)Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;->apiName:Ljava/lang/String;

    return-object p0
.end method

.method public build()Lcom/transsion/apiinvoke/invoke/ApiRequest;
    .locals 2

    new-instance v0, Lcom/transsion/apiinvoke/invoke/ApiRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/apiinvoke/invoke/ApiRequest;-><init>(Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;Lcom/transsion/apiinvoke/invoke/ApiRequest$1;)V

    return-object v0
.end method

.method public channel(Ljava/lang/String;)Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;->channel:Ljava/lang/String;

    return-object p0
.end method

.method public keepLiving(Z)Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;->keepLiving:Z

    return-object p0
.end method

.method public livingTime(J)Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;
    .locals 0

    iput-wide p1, p0, Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;->livingTime:J

    return-object p0
.end method

.method public packageName(Ljava/lang/String;)Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public retryOnReConnect(Z)Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;->retryOnReConnect:Z

    return-object p0
.end method

.method public setParameters([Lcom/transsion/apiinvoke/invoke/TypeValuePair;)Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;
    .locals 4

    if-eqz p1, :cond_2

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;->parameters:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;->parameters:Ljava/util/List;

    :cond_1
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    iget-object v3, p0, Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;->parameters:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object p0
.end method
