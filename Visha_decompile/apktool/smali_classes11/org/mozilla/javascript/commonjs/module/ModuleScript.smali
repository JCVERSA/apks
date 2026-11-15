.class public Lorg/mozilla/javascript/commonjs/module/ModuleScript;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final base:Ljava/net/URI;

.field private final script:Lorg/mozilla/javascript/Script;

.field private final uri:Ljava/net/URI;


# direct methods
.method public constructor <init>(Lorg/mozilla/javascript/Script;Ljava/net/URI;Ljava/net/URI;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mozilla/javascript/commonjs/module/ModuleScript;->script:Lorg/mozilla/javascript/Script;

    iput-object p2, p0, Lorg/mozilla/javascript/commonjs/module/ModuleScript;->uri:Ljava/net/URI;

    iput-object p3, p0, Lorg/mozilla/javascript/commonjs/module/ModuleScript;->base:Ljava/net/URI;

    return-void
.end method


# virtual methods
.method public getBase()Ljava/net/URI;
    .locals 0

    iget-object p0, p0, Lorg/mozilla/javascript/commonjs/module/ModuleScript;->base:Ljava/net/URI;

    return-object p0
.end method

.method public getScript()Lorg/mozilla/javascript/Script;
    .locals 0

    iget-object p0, p0, Lorg/mozilla/javascript/commonjs/module/ModuleScript;->script:Lorg/mozilla/javascript/Script;

    return-object p0
.end method

.method public getUri()Ljava/net/URI;
    .locals 0

    iget-object p0, p0, Lorg/mozilla/javascript/commonjs/module/ModuleScript;->uri:Ljava/net/URI;

    return-object p0
.end method

.method public isSandboxed()Z
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/commonjs/module/ModuleScript;->base:Ljava/net/URI;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/mozilla/javascript/commonjs/module/ModuleScript;->uri:Ljava/net/URI;

    if-eqz p0, :cond_0

    invoke-virtual {v0, p0}, Ljava/net/URI;->relativize(Ljava/net/URI;)Ljava/net/URI;

    move-result-object p0

    invoke-virtual {p0}, Ljava/net/URI;->isAbsolute()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
