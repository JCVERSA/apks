.class public Lorg/mozilla/javascript/commonjs/module/provider/SoftCachingModuleScriptProvider$a;
.super Ljava/lang/ref/SoftReference;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/javascript/commonjs/module/provider/SoftCachingModuleScriptProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/net/URI;

.field public final c:Ljava/net/URI;

.field public final d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lorg/mozilla/javascript/Script;Ljava/lang/String;Ljava/net/URI;Ljava/net/URI;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V
    .locals 0

    invoke-direct {p0, p1, p6}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    iput-object p2, p0, Lorg/mozilla/javascript/commonjs/module/provider/SoftCachingModuleScriptProvider$a;->a:Ljava/lang/String;

    iput-object p3, p0, Lorg/mozilla/javascript/commonjs/module/provider/SoftCachingModuleScriptProvider$a;->b:Ljava/net/URI;

    iput-object p4, p0, Lorg/mozilla/javascript/commonjs/module/provider/SoftCachingModuleScriptProvider$a;->c:Ljava/net/URI;

    iput-object p5, p0, Lorg/mozilla/javascript/commonjs/module/provider/SoftCachingModuleScriptProvider$a;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()Lorg/mozilla/javascript/commonjs/module/provider/CachingModuleScriptProviderBase$CachedModuleScript;
    .locals 5

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/javascript/Script;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v1, Lorg/mozilla/javascript/commonjs/module/provider/CachingModuleScriptProviderBase$CachedModuleScript;

    new-instance v2, Lorg/mozilla/javascript/commonjs/module/ModuleScript;

    iget-object v3, p0, Lorg/mozilla/javascript/commonjs/module/provider/SoftCachingModuleScriptProvider$a;->b:Ljava/net/URI;

    iget-object v4, p0, Lorg/mozilla/javascript/commonjs/module/provider/SoftCachingModuleScriptProvider$a;->c:Ljava/net/URI;

    invoke-direct {v2, v0, v3, v4}, Lorg/mozilla/javascript/commonjs/module/ModuleScript;-><init>(Lorg/mozilla/javascript/Script;Ljava/net/URI;Ljava/net/URI;)V

    iget-object p0, p0, Lorg/mozilla/javascript/commonjs/module/provider/SoftCachingModuleScriptProvider$a;->d:Ljava/lang/Object;

    invoke-direct {v1, v2, p0}, Lorg/mozilla/javascript/commonjs/module/provider/CachingModuleScriptProviderBase$CachedModuleScript;-><init>(Lorg/mozilla/javascript/commonjs/module/ModuleScript;Ljava/lang/Object;)V

    return-object v1
.end method

.method public b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/mozilla/javascript/commonjs/module/provider/SoftCachingModuleScriptProvider$a;->a:Ljava/lang/String;

    return-object p0
.end method
