.class public Lorg/mozilla/javascript/JavaScriptException;
.super Lorg/mozilla/javascript/RhinoException;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = -0x6a639115d68db9edL


# instance fields
.field private value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    const-string v0, ""

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/mozilla/javascript/JavaScriptException;-><init>(Ljava/lang/Object;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;I)V
    .locals 2

    .line 2
    invoke-direct {p0}, Lorg/mozilla/javascript/RhinoException;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, p2, p3, v0, v1}, Lorg/mozilla/javascript/RhinoException;->recordErrorOrigin(Ljava/lang/String;ILjava/lang/String;I)V

    .line 4
    iput-object p1, p0, Lorg/mozilla/javascript/JavaScriptException;->value:Ljava/lang/Object;

    .line 5
    instance-of v0, p1, Lorg/mozilla/javascript/NativeError;

    if-eqz v0, :cond_2

    invoke-static {}, Lorg/mozilla/javascript/Context;->getContext()Lorg/mozilla/javascript/Context;

    move-result-object v0

    const/16 v1, 0xa

    .line 6
    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Context;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    check-cast p1, Lorg/mozilla/javascript/NativeError;

    .line 8
    const-string v0, "fileName"

    invoke-virtual {p1, v0, p1}, Lorg/mozilla/javascript/IdScriptableObject;->has(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 9
    invoke-virtual {p1, v0, p1, p2}, Lorg/mozilla/javascript/IdScriptableObject;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    .line 10
    :cond_0
    const-string p2, "lineNumber"

    invoke-virtual {p1, p2, p1}, Lorg/mozilla/javascript/IdScriptableObject;->has(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 11
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p1, p3}, Lorg/mozilla/javascript/IdScriptableObject;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    .line 12
    :cond_1
    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/NativeError;->setStackProvider(Lorg/mozilla/javascript/RhinoException;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public details()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/mozilla/javascript/JavaScriptException;->value:Ljava/lang/Object;

    if-nez v0, :cond_0

    const-string p0, "null"

    return-object p0

    :cond_0
    instance-of v1, v0, Lorg/mozilla/javascript/NativeError;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :try_start_0
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    iget-object p0, p0, Lorg/mozilla/javascript/JavaScriptException;->value:Ljava/lang/Object;

    instance-of v0, p0, Lorg/mozilla/javascript/Scriptable;

    if-eqz v0, :cond_2

    check-cast p0, Lorg/mozilla/javascript/Scriptable;

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->defaultObjectToString(Lorg/mozilla/javascript/Scriptable;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLineNumber()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lorg/mozilla/javascript/RhinoException;->lineNumber()I

    move-result p0

    return p0
.end method

.method public getSourceName()Ljava/lang/String;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lorg/mozilla/javascript/RhinoException;->sourceName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/mozilla/javascript/JavaScriptException;->value:Ljava/lang/Object;

    return-object p0
.end method
