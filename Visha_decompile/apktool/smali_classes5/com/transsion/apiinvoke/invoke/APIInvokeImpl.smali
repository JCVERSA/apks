.class public Lcom/transsion/apiinvoke/invoke/APIInvokeImpl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/apiinvoke/invoke/APIInvokeImpl$TypeValueMatcher;
    }
.end annotation


# instance fields
.field private final apiObject:Ljava/lang/Object;

.field private final invokeChain:Lcom/transsion/apiinvoke/invoke/InvokeChain;

.field private final method:Ljava/lang/reflect/Method;

.field private final parameters:[Lcom/transsion/apiinvoke/invoke/TypeValuePair;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/reflect/Method;[Lcom/transsion/apiinvoke/invoke/TypeValuePair;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Method;[Lcom/transsion/apiinvoke/invoke/TypeValuePair;Lcom/transsion/apiinvoke/invoke/InvokeChain;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/reflect/Method;[Lcom/transsion/apiinvoke/invoke/TypeValuePair;Lcom/transsion/apiinvoke/invoke/InvokeChain;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl;->apiObject:Ljava/lang/Object;

    .line 4
    iput-object p2, p0, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl;->method:Ljava/lang/reflect/Method;

    .line 5
    iput-object p3, p0, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl;->parameters:[Lcom/transsion/apiinvoke/invoke/TypeValuePair;

    .line 6
    iput-object p4, p0, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl;->invokeChain:Lcom/transsion/apiinvoke/invoke/InvokeChain;

    return-void
.end method

.method public static synthetic access$100([Ljava/lang/Class;)Z
    .locals 0

    invoke-static {p0}, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl;->apiWithCallback([Ljava/lang/Class;)Z

    move-result p0

    return p0
.end method

.method private static apiWithCallback([Ljava/lang/Class;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    array-length v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    array-length v0, p0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    aget-object p0, p0, v0

    const-class v0, Lcom/transsion/apiinvoke/invoke/api/ApiCallback;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    return v2
.end method

.method private static apiWithChannelChain([Ljava/lang/Class;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    array-length v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    aget-object p0, p0, v1

    const-class v0, Lcom/transsion/apiinvoke/invoke/InvokeChain;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static final apiWithDynamicParameters([Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    array-length v0, p0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aget-object p0, p0, v0

    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result p0

    return p0
.end method

.method private methodInvoke(Ljava/lang/Object;Ljava/lang/reflect/Method;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    .line 2
    array-length v0, v3

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p2, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    invoke-static {v3}, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl;->apiWithChannelChain([Ljava/lang/Class;)Z

    move-result v0

    .line 5
    invoke-static {v3}, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl;->apiWithCallback([Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v0, :cond_1

    .line 6
    iget-object v4, p0, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl;->invokeChain:Lcom/transsion/apiinvoke/invoke/InvokeChain;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl;->methodInvokeWithChainAndCallback(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Class;Lcom/transsion/apiinvoke/invoke/InvokeChain;Lcom/transsion/apiinvoke/invoke/api/ApiCallback;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 7
    :cond_1
    invoke-direct {p0, p1, p2, v3, v1}, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl;->methodInvokeWithCallBack(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Class;Lcom/transsion/apiinvoke/invoke/api/ApiCallback;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2
    if-eqz v0, :cond_3

    .line 8
    iget-object v0, p0, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl;->invokeChain:Lcom/transsion/apiinvoke/invoke/InvokeChain;

    invoke-direct {p0, p1, p2, v3, v0}, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl;->methodInvokeWithChain(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Class;Lcom/transsion/apiinvoke/invoke/InvokeChain;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 9
    :cond_3
    invoke-direct {p0, p1, p2, v3}, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl;->methodInvokeWithOutCallBack(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final methodInvoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Class;Lcom/transsion/apiinvoke/invoke/api/ApiCallback;Lcom/transsion/apiinvoke/invoke/InvokeChain;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Method;",
            "[",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/transsion/apiinvoke/invoke/api/ApiCallback;",
            "Lcom/transsion/apiinvoke/invoke/InvokeChain;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 10
    array-length v0, p3

    if-nez v0, :cond_0

    const/4 p0, 0x0

    .line 11
    invoke-virtual {p2, p1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 12
    :cond_0
    invoke-static {p3}, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl;->apiWithCallback([Ljava/lang/Class;)Z

    move-result v0

    .line 13
    invoke-static {p3}, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl;->apiWithChannelChain([Ljava/lang/Class;)Z

    move-result v1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move-object v5, p4

    .line 14
    invoke-direct/range {v0 .. v5}, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl;->methodInvokeWithChainAndCallback(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Class;Lcom/transsion/apiinvoke/invoke/InvokeChain;Lcom/transsion/apiinvoke/invoke/api/ApiCallback;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    if-eqz v0, :cond_2

    .line 15
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl;->methodInvokeWithCallBack(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Class;Lcom/transsion/apiinvoke/invoke/api/ApiCallback;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2
    if-eqz v1, :cond_3

    .line 16
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl;->methodInvokeWithChain(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Class;Lcom/transsion/apiinvoke/invoke/InvokeChain;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 17
    :cond_3
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl;->methodInvokeWithOutCallBack(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final methodInvokeWithCallBack(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Class;Lcom/transsion/apiinvoke/invoke/api/ApiCallback;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Method;",
            "[",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/transsion/apiinvoke/invoke/api/ApiCallback;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    new-instance v0, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl$TypeValueMatcher;

    iget-object p0, p0, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl;->parameters:[Lcom/transsion/apiinvoke/invoke/TypeValuePair;

    const/4 v1, 0x0

    invoke-direct {v0, p3, p0, v1}, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl$TypeValueMatcher;-><init>([Ljava/lang/Class;[Lcom/transsion/apiinvoke/invoke/TypeValuePair;Lcom/transsion/apiinvoke/invoke/APIInvokeImpl$1;)V

    array-length p0, p3

    const/4 p3, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalAccessException;

    const-string p1, "parameter size more then 6 "

    invoke-direct {p0, p1}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    invoke-virtual {v0, v4}, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl$TypeValueMatcher;->getParameterAt(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v3}, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl$TypeValueMatcher;->getParameterAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2}, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl$TypeValueMatcher;->getParameterAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1}, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl$TypeValueMatcher;->getParameterAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, p3}, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl$TypeValueMatcher;->getParameterAt(I)Ljava/lang/Object;

    move-result-object p3

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl$TypeValueMatcher;->getParameterAt(I)Ljava/lang/Object;

    move-result-object v5

    move-object v0, p0

    move-object v1, v3

    move-object v3, v4

    move-object v4, p3

    move-object v6, p4

    filled-new-array/range {v0 .. v6}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p2, p1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-virtual {v0, v4}, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl$TypeValueMatcher;->getParameterAt(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v3}, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl$TypeValueMatcher;->getParameterAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2}, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl$TypeValueMatcher;->getParameterAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1}, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl$TypeValueMatcher;->getParameterAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, p3}, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl$TypeValueMatcher;->getParameterAt(I)Ljava/lang/Object;

    move-result-object p3

    move-object v0, p0

    move-object v1, v3

    move-object v3, v4

    move-object v4, p3

    move-object v5, p4

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p2, p1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-virtual {v0, v4}, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl$TypeValueMatcher;->getParameterAt(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v3}, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl$TypeValueMatcher;->getParameterAt(I)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {v0, v2}, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl$TypeValueMatcher;->getParameterAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1}, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl$TypeValueMatcher;->getParameterAt(I)Ljava/lang/Object;

    move-result-object v0

    filled-new-array {p0, p3, v2, v0, p4}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p2, p1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-virtual {v0, v4}, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl$TypeValueMatcher;->getParameterAt(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v3}, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl$TypeValueMatcher;->getParameterAt(I)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {v0, v2}, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl$TypeValueMatcher;->getParameterAt(I)Ljava/lang/Object;

    move-result-object v0

    filled-new-array {p0, p3, v0, p4}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p2, p1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_4
    invoke-virtual {v0, v4}, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl$TypeValueMatcher;->getParameterAt(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v3}, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl$TypeValueMatcher;->getParameterAt(I)Ljava/lang/Object;

    move-result-object p3

    filled-new-array {p0, p3, p4}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p2, p1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_5
    invoke-virtual {v0, v4}, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl$TypeValueMatcher;->getParameterAt(I)Ljava/lang/Object;

    move-result-object p0

    filled-new-array {p0, p4}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p2, p1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_6
    filled-new-array {p4}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p2, p1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final methodInvokeWithChain(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Class;Lcom/transsion/apiinvoke/invoke/InvokeChain;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Method;",
            "[",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/transsion/apiinvoke/invoke/InvokeChain;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    new-instance v0, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl$TypeValueMatcher;

    iget-object p0, p0, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl;->parameters:[Lcom/transsion/apiinvoke/invoke/TypeValuePair;

    const/4 v1, 0x0

    invoke-direct {v0, p3, p0, v1}, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl$TypeValueMatcher;-><init>([Ljava/lang/Class;[Lcom/transsion/apiinvoke/invoke/TypeValuePair;Lcom/transsion/apiinvoke/invoke/APIInvokeImpl$1;)V

    array-length p0, p3

    const/4 p3, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalAccessException;

    const-string p1, "parameter size more then 6 "

    invoke-direct {p0, p1}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    invoke-virtual {v0, v4}, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl$TypeValueMatcher;->getParameterAt(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v3}, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl$TypeValueMatcher;->getParameterAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2}, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl$TypeValueMatcher;->getParameterAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v1}, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl$TypeValueMatcher;->getParameterAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, p3}, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl$TypeValueMatcher;->getParameterAt(I)Ljava/lang/Object;

    move-result-object p3

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl$TypeValueMatcher;->getParameterAt(I)Ljava/lang/Object;

    move-result-object v6

    move-object v0, p4

    move-object v1, p0

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, p3

    filled-new-array/range {v0 .. v6}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p2, p1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-virtual {v0, v4}, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl$TypeValueMatcher;->getParameterAt(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v3}, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl$TypeValueMatcher;->getParameterAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2}, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl$TypeValueMatcher;->getParameterAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v1}, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl$TypeValueMatcher;->getParameterAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, p3}, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl$TypeValueMatcher;->getParameterAt(I)Ljava/lang/Object;

    move-result-object p3

    move-object v0, p4

    move-object v1, p0

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, p3

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p2, p1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-virtual {v0, v4}, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl$TypeValueMatcher;->getParameterAt(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v3}, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl$TypeValueMatcher;->getParameterAt(I)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {v0, v2}, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl$TypeValueMatcher;->getParameterAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1}, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl$TypeValueMatcher;->getParameterAt(I)Ljava/lang/Object;

    move-result-object v0

    filled-new-array {p4, p0, p3, v2, v0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p2, p1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-virtual {v0, v4}, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl$TypeValueMatcher;->getParameterAt(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v3}, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl$TypeValueMatcher;->getParameterAt(I)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {v0, v2}, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl$TypeValueMatcher;->getParameterAt(I)Ljava/lang/Object;

    move-result-object v0

    filled-new-array {p4, p0, p3, v0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p2, p1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_4
    invoke-virtual {v0, v4}, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl$TypeValueMatcher;->getParameterAt(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v3}, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl$TypeValueMatcher;->getParameterAt(I)Ljava/lang/Object;

    move-result-object p3

    filled-new-array {p4, p0, p3}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p2, p1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_5
    invoke-virtual {v0, v4}, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl$TypeValueMatcher;->getParameterAt(I)Ljava/lang/Object;

    move-result-object p0

    filled-new-array {p4, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p2, p1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_6
    filled-new-array {p4}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p2, p1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private methodInvokeWithChainAndCallback(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Class;Lcom/transsion/apiinvoke/invoke/InvokeChain;Lcom/transsion/apiinvoke/invoke/api/ApiCallback;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Method;",
            "[",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/transsion/apiinvoke/invoke/InvokeChain;",
            "Lcom/transsion/apiinvoke/invoke/api/ApiCallback;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    new-instance v0, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl$TypeValueMatcher;

    iget-object p0, p0, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl;->parameters:[Lcom/transsion/apiinvoke/invoke/TypeValuePair;

    const/4 v1, 0x0

    invoke-direct {v0, p3, p0, v1}, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl$TypeValueMatcher;-><init>([Ljava/lang/Class;[Lcom/transsion/apiinvoke/invoke/TypeValuePair;Lcom/transsion/apiinvoke/invoke/APIInvokeImpl$1;)V

    array-length p0, p3

    const/4 p3, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalAccessException;

    const-string p1, "parameter size more then 6 "

    invoke-direct {p0, p1}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    invoke-virtual {v0, v3}, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl$TypeValueMatcher;->getParameterAt(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v2}, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl$TypeValueMatcher;->getParameterAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1}, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl$TypeValueMatcher;->getParameterAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, p3}, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl$TypeValueMatcher;->getParameterAt(I)Ljava/lang/Object;

    move-result-object v4

    const/4 p3, 0x4

    invoke-virtual {v0, p3}, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl$TypeValueMatcher;->getParameterAt(I)Ljava/lang/Object;

    move-result-object v5

    move-object v0, p4

    move-object v1, p0

    move-object v6, p5

    filled-new-array/range {v0 .. v6}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p2, p1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-virtual {v0, v3}, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl$TypeValueMatcher;->getParameterAt(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v2}, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl$TypeValueMatcher;->getParameterAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1}, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl$TypeValueMatcher;->getParameterAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, p3}, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl$TypeValueMatcher;->getParameterAt(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, p4

    move-object v1, p0

    move-object v5, p5

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p2, p1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-virtual {v0, v3}, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl$TypeValueMatcher;->getParameterAt(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v2}, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl$TypeValueMatcher;->getParameterAt(I)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {v0, v1}, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl$TypeValueMatcher;->getParameterAt(I)Ljava/lang/Object;

    move-result-object v0

    filled-new-array {p4, p0, p3, v0, p5}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p2, p1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-virtual {v0, v3}, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl$TypeValueMatcher;->getParameterAt(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v2}, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl$TypeValueMatcher;->getParameterAt(I)Ljava/lang/Object;

    move-result-object p3

    filled-new-array {p4, p0, p3, p5}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p2, p1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_4
    invoke-virtual {v0, v3}, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl$TypeValueMatcher;->getParameterAt(I)Ljava/lang/Object;

    move-result-object p0

    filled-new-array {p4, p0, p5}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p2, p1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_5
    filled-new-array {p4, p5}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p2, p1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final methodInvokeWithOutCallBack(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Class;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Method;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    new-instance v0, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl$TypeValueMatcher;

    iget-object p0, p0, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl;->parameters:[Lcom/transsion/apiinvoke/invoke/TypeValuePair;

    const/4 v1, 0x0

    invoke-direct {v0, p3, p0, v1}, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl$TypeValueMatcher;-><init>([Ljava/lang/Class;[Lcom/transsion/apiinvoke/invoke/TypeValuePair;Lcom/transsion/apiinvoke/invoke/APIInvokeImpl$1;)V

    array-length p0, p3

    const/4 p3, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalAccessException;

    const-string p1, "parameter size more then 6 "

    invoke-direct {p0, p1}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    invoke-virtual {v0, v6}, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl$TypeValueMatcher;->getParameterAt(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v5}, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl$TypeValueMatcher;->getParameterAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v4}, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl$TypeValueMatcher;->getParameterAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3}, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl$TypeValueMatcher;->getParameterAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2}, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl$TypeValueMatcher;->getParameterAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, p3}, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl$TypeValueMatcher;->getParameterAt(I)Ljava/lang/Object;

    move-result-object p3

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl$TypeValueMatcher;->getParameterAt(I)Ljava/lang/Object;

    move-result-object v6

    move-object v0, p0

    move-object v2, v4

    move-object v4, v5

    move-object v5, p3

    filled-new-array/range {v0 .. v6}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p2, p1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-virtual {v0, v6}, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl$TypeValueMatcher;->getParameterAt(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v5}, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl$TypeValueMatcher;->getParameterAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v4}, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl$TypeValueMatcher;->getParameterAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3}, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl$TypeValueMatcher;->getParameterAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2}, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl$TypeValueMatcher;->getParameterAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, p3}, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl$TypeValueMatcher;->getParameterAt(I)Ljava/lang/Object;

    move-result-object p3

    move-object v0, p0

    move-object v2, v4

    move-object v4, v5

    move-object v5, p3

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p2, p1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-virtual {v0, v6}, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl$TypeValueMatcher;->getParameterAt(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v5}, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl$TypeValueMatcher;->getParameterAt(I)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {v0, v4}, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl$TypeValueMatcher;->getParameterAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v3}, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl$TypeValueMatcher;->getParameterAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2}, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl$TypeValueMatcher;->getParameterAt(I)Ljava/lang/Object;

    move-result-object v0

    filled-new-array {p0, p3, v1, v3, v0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p2, p1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-virtual {v0, v6}, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl$TypeValueMatcher;->getParameterAt(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v5}, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl$TypeValueMatcher;->getParameterAt(I)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {v0, v4}, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl$TypeValueMatcher;->getParameterAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v3}, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl$TypeValueMatcher;->getParameterAt(I)Ljava/lang/Object;

    move-result-object v0

    filled-new-array {p0, p3, v1, v0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p2, p1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_4
    invoke-virtual {v0, v6}, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl$TypeValueMatcher;->getParameterAt(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v5}, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl$TypeValueMatcher;->getParameterAt(I)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {v0, v4}, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl$TypeValueMatcher;->getParameterAt(I)Ljava/lang/Object;

    move-result-object v0

    filled-new-array {p0, p3, v0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p2, p1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_5
    invoke-virtual {v0, v6}, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl$TypeValueMatcher;->getParameterAt(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v5}, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl$TypeValueMatcher;->getParameterAt(I)Ljava/lang/Object;

    move-result-object p3

    filled-new-array {p0, p3}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p2, p1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_6
    invoke-virtual {v0, v6}, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl$TypeValueMatcher;->getParameterAt(I)Ljava/lang/Object;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p2, p1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_7
    invoke-virtual {p2, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getParameterAt(Ljava/lang/Class;I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;I)TT;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl;->parameters:[Lcom/transsion/apiinvoke/invoke/TypeValuePair;

    array-length p1, p0

    const/4 v0, 0x0

    if-lt p2, p1, :cond_0

    return-object v0

    :cond_0
    aget-object p0, p0, p2

    invoke-virtual {p0}, Lcom/transsion/apiinvoke/invoke/TypeValuePair;->getValue()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    move-object v0, p0

    :cond_1
    return-object v0
.end method

.method public getValueTypeClass()[Ljava/lang/Class;
    .locals 4

    iget-object v0, p0, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl;->parameters:[Lcom/transsion/apiinvoke/invoke/TypeValuePair;

    array-length v0, v0

    new-array v1, v0, [Ljava/lang/Class;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl;->parameters:[Lcom/transsion/apiinvoke/invoke/TypeValuePair;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/transsion/apiinvoke/invoke/TypeValuePair;->getValueType()Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public invoke()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Lcom/transsion/apiinvoke/invoke/ApiMethodException;
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl;->apiObject:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl;->method:Ljava/lang/reflect/Method;

    invoke-direct {p0, v0, v1}, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl;->methodInvoke(Ljava/lang/Object;Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl;->method:Ljava/lang/reflect/Method;

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/apiinvoke/invoke/ApiMethodException;->onMethodInvokeTypeError(Ljava/lang/String;)Lcom/transsion/apiinvoke/invoke/ApiMethodException;

    move-result-object p0

    throw p0
.end method

.method public invokeAsync(Lcom/transsion/apiinvoke/invoke/api/ApiCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl;->apiWithCallback([Ljava/lang/Class;)Z

    move-result v0

    invoke-static {v4}, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl;->apiWithChannelChain([Ljava/lang/Class;)Z

    move-result v1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl;->apiObject:Ljava/lang/Object;

    iget-object v3, p0, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl;->method:Ljava/lang/reflect/Method;

    iget-object v5, p0, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl;->invokeChain:Lcom/transsion/apiinvoke/invoke/InvokeChain;

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl;->methodInvokeWithChainAndCallback(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Class;Lcom/transsion/apiinvoke/invoke/InvokeChain;Lcom/transsion/apiinvoke/invoke/api/ApiCallback;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl;->apiObject:Ljava/lang/Object;

    iget-object v1, p0, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl;->method:Ljava/lang/reflect/Method;

    invoke-direct {p0, v0, v1, v4, p1}, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl;->methodInvokeWithCallBack(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Class;Lcom/transsion/apiinvoke/invoke/api/ApiCallback;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl;->apiObject:Ljava/lang/Object;

    iget-object v1, p0, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl;->method:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl;->invokeChain:Lcom/transsion/apiinvoke/invoke/InvokeChain;

    invoke-direct {p0, v0, v1, v4, v2}, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl;->methodInvokeWithChain(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Class;Lcom/transsion/apiinvoke/invoke/InvokeChain;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl;->apiObject:Ljava/lang/Object;

    iget-object v1, p0, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl;->method:Ljava/lang/reflect/Method;

    invoke-direct {p0, v0, v1, v4}, Lcom/transsion/apiinvoke/invoke/APIInvokeImpl;->methodInvokeWithOutCallBack(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    if-eqz p1, :cond_3

    invoke-static {p0}, Lcom/transsion/apiinvoke/invoke/ApiResponse;->success(Ljava/lang/Object;)Lcom/transsion/apiinvoke/invoke/ApiResponse;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/transsion/apiinvoke/invoke/api/ApiCallback;->response(Lcom/transsion/apiinvoke/invoke/ApiResponse;)V

    :cond_3
    :goto_1
    return-void
.end method
