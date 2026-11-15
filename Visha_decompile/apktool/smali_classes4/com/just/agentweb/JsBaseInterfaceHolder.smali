.class public abstract Lcom/just/agentweb/JsBaseInterfaceHolder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/just/agentweb/JsInterfaceHolder;


# instance fields
.field private mSecurityType:Lcom/just/agentweb/AgentWeb$SecurityType;

.field private mWebCreator:Lcom/just/agentweb/WebCreator;


# direct methods
.method public constructor <init>(Lcom/just/agentweb/WebCreator;Lcom/just/agentweb/AgentWeb$SecurityType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/just/agentweb/JsBaseInterfaceHolder;->mSecurityType:Lcom/just/agentweb/AgentWeb$SecurityType;

    iput-object p1, p0, Lcom/just/agentweb/JsBaseInterfaceHolder;->mWebCreator:Lcom/just/agentweb/WebCreator;

    return-void
.end method


# virtual methods
.method public checkObject(Ljava/lang/Object;)Z
    .locals 8

    iget-object p0, p0, Lcom/just/agentweb/JsBaseInterfaceHolder;->mWebCreator:Lcom/just/agentweb/WebCreator;

    invoke-interface {p0}, Lcom/just/agentweb/WebCreator;->getWebViewType()I

    move-result p0

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p0, v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object p0

    array-length p1, p0

    const/4 v0, 0x0

    move v2, v0

    move v3, v2

    :goto_0
    if-ge v2, p1, :cond_4

    aget-object v4, p0, v2

    invoke-virtual {v4}, Ljava/lang/reflect/AccessibleObject;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v4

    array-length v5, v4

    move v6, v0

    :goto_1
    if-ge v6, v5, :cond_2

    aget-object v7, v4, v6

    instance-of v7, v7, Landroid/webkit/JavascriptInterface;

    if-eqz v7, :cond_1

    move v3, v1

    goto :goto_2

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    if-eqz v3, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    :goto_3
    return v3
.end method

.method public checkSecurity()Z
    .locals 2

    iget-object v0, p0, Lcom/just/agentweb/JsBaseInterfaceHolder;->mSecurityType:Lcom/just/agentweb/AgentWeb$SecurityType;

    sget-object v1, Lcom/just/agentweb/AgentWeb$SecurityType;->STRICT_CHECK:Lcom/just/agentweb/AgentWeb$SecurityType;

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/just/agentweb/JsBaseInterfaceHolder;->mWebCreator:Lcom/just/agentweb/WebCreator;

    invoke-interface {p0}, Lcom/just/agentweb/WebCreator;->getWebViewType()I

    :goto_0
    const/4 p0, 0x1

    return p0
.end method
