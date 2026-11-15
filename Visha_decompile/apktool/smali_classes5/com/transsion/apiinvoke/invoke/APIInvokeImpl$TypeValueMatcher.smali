.class Lcom/transsion/apiinvoke/invoke/APIInvokeImpl$TypeValueMatcher;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/apiinvoke/invoke/APIInvokeImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TypeValueMatcher"
.end annotation


# instance fields
.field private final apiWithCallback:Z

.field private final pairs:[Lcom/transsion/apiinvoke/invoke/TypeValuePair;

.field private final typeClass:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>([Ljava/lang/Class;[Lcom/transsion/apiinvoke/invoke/TypeValuePair;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;[",
            "Lcom/transsion/apiinvoke/invoke/TypeValuePair;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl$TypeValueMatcher;->typeClass:[Ljava/lang/Class;

    .line 4
    iput-object p2, p0, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl$TypeValueMatcher;->pairs:[Lcom/transsion/apiinvoke/invoke/TypeValuePair;

    .line 5
    invoke-static {p1}, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl;->access$100([Ljava/lang/Class;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl$TypeValueMatcher;->apiWithCallback:Z

    return-void
.end method

.method public synthetic constructor <init>([Ljava/lang/Class;[Lcom/transsion/apiinvoke/invoke/TypeValuePair;Lcom/transsion/apiinvoke/invoke/APIInvokeImpl$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl$TypeValueMatcher;-><init>([Ljava/lang/Class;[Lcom/transsion/apiinvoke/invoke/TypeValuePair;)V

    return-void
.end method

.method private mappingResult(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    return-object p2

    :cond_1
    const-class p0, Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    instance-of p0, p2, Ljava/lang/String;

    if-eqz p0, :cond_c

    const-class p0, Ljava/lang/Long;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    sget-object p0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_3

    :cond_3
    const-class p0, Ljava/lang/Integer;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    sget-object p0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_2

    :cond_4
    const-class p0, Ljava/lang/Short;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    sget-object p0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_1

    :cond_5
    const-class p0, Ljava/lang/Double;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    sget-object p0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    goto :goto_0

    :cond_6
    const-class p0, Ljava/lang/Byte;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    sget-object p0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c

    :cond_7
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    :cond_8
    :goto_0
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :cond_9
    :goto_1
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Short;->valueOf(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object p0

    return-object p0

    :cond_a
    :goto_2
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_b
    :goto_3
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_c
    return-object p2
.end method


# virtual methods
.method public getParameterAt(I)Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl$TypeValueMatcher;->pairs:[Lcom/transsion/apiinvoke/invoke/TypeValuePair;

    array-length v1, v0

    const/4 v2, 0x0

    if-lt p1, v1, :cond_0

    return-object v2

    :cond_0
    aget-object v0, v0, p1

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/transsion/apiinvoke/invoke/TypeValuePair;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    goto/16 :goto_3

    :cond_1
    iget-object v0, p0, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl$TypeValueMatcher;->typeClass:[Ljava/lang/Class;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl$TypeValueMatcher;->pairs:[Lcom/transsion/apiinvoke/invoke/TypeValuePair;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/transsion/apiinvoke/invoke/TypeValuePair;->getValue()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl$TypeValueMatcher;->pairs:[Lcom/transsion/apiinvoke/invoke/TypeValuePair;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Lcom/transsion/apiinvoke/invoke/TypeValuePair;->getValueType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl$TypeValueMatcher;->pairs:[Lcom/transsion/apiinvoke/invoke/TypeValuePair;

    aget-object p1, v2, p1

    invoke-virtual {p1}, Lcom/transsion/apiinvoke/invoke/TypeValuePair;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    if-nez p1, :cond_2

    return-object v2

    :cond_2
    const/4 v3, 0x0

    :goto_0
    if-ge v3, p1, :cond_3

    invoke-static {v1, v3}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v0, v4}, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl$TypeValueMatcher;->mappingResult(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v2, v3, v4}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-object v2

    :cond_4
    invoke-direct {p0, v0, v1}, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl$TypeValueMatcher;->mappingResult(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_5
    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_6
    iget-object v2, p0, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl$TypeValueMatcher;->typeClass:[Ljava/lang/Class;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ne p1, v2, :cond_8

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl$TypeValueMatcher;->pairs:[Lcom/transsion/apiinvoke/invoke/TypeValuePair;

    array-length v1, v1

    sub-int/2addr v1, p1

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    move v1, p1

    :goto_1
    iget-object v2, p0, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl$TypeValueMatcher;->pairs:[Lcom/transsion/apiinvoke/invoke/TypeValuePair;

    array-length v3, v2

    if-ge v1, v3, :cond_7

    sub-int v3, v1, p1

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/transsion/apiinvoke/invoke/TypeValuePair;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v3, v2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_7
    return-object v0

    :cond_8
    :try_start_0
    iget-object v2, p0, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl$TypeValueMatcher;->pairs:[Lcom/transsion/apiinvoke/invoke/TypeValuePair;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Lcom/transsion/apiinvoke/invoke/TypeValuePair;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-static {v2, p1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl$TypeValueMatcher;->mappingResult(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_9
    invoke-direct {p0, v0, v2}, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl$TypeValueMatcher;->mappingResult(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :goto_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v1

    :cond_a
    :goto_3
    return-object v2
.end method

.method public isApiWithCallback()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl$TypeValueMatcher;->apiWithCallback:Z

    return p0
.end method

.method public parameterCount()I
    .locals 0

    iget-object p0, p0, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl$TypeValueMatcher;->typeClass:[Ljava/lang/Class;

    array-length p0, p0

    return p0
.end method
