.class public Lcom/cloud/tmc/kernel/extension/TmcManifest$BridgeExtensionManifest;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/kernel/extension/TmcManifest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BridgeExtensionManifest"
.end annotation


# instance fields
.field extensionMetaInfo:Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;

.field isRawType:Z

.field public scope:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/cloud/tmc/kernel/node/Scope;",
            ">;"
        }
    .end annotation
.end field

.field public target:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/cloud/tmc/kernel/extension/BridgeExtension;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static make(Ljava/lang/Class;)Lcom/cloud/tmc/kernel/extension/TmcManifest$BridgeExtensionManifest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/cloud/tmc/kernel/extension/BridgeExtension;",
            ">;)",
            "Lcom/cloud/tmc/kernel/extension/TmcManifest$BridgeExtensionManifest;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lcom/cloud/tmc/kernel/extension/TmcManifest$BridgeExtensionManifest;->make(Ljava/lang/Class;Ljava/lang/Class;)Lcom/cloud/tmc/kernel/extension/TmcManifest$BridgeExtensionManifest;

    move-result-object p0

    return-object p0
.end method

.method public static make(Ljava/lang/Class;Ljava/lang/Class;)Lcom/cloud/tmc/kernel/extension/TmcManifest$BridgeExtensionManifest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/cloud/tmc/kernel/extension/BridgeExtension;",
            ">;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/cloud/tmc/kernel/node/Scope;",
            ">;)",
            "Lcom/cloud/tmc/kernel/extension/TmcManifest$BridgeExtensionManifest;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/cloud/tmc/kernel/extension/TmcManifest$BridgeExtensionManifest;

    invoke-direct {v0}, Lcom/cloud/tmc/kernel/extension/TmcManifest$BridgeExtensionManifest;-><init>()V

    .line 3
    iput-object p0, v0, Lcom/cloud/tmc/kernel/extension/TmcManifest$BridgeExtensionManifest;->target:Ljava/lang/Class;

    .line 4
    iput-object p1, v0, Lcom/cloud/tmc/kernel/extension/TmcManifest$BridgeExtensionManifest;->scope:Ljava/lang/Class;

    return-object v0
.end method

.method public static makeRaw(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/cloud/tmc/kernel/extension/TmcManifest$BridgeExtensionManifest;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/cloud/tmc/kernel/extension/TmcManifest$BridgeExtensionManifest;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/cloud/tmc/kernel/extension/TmcManifest$BridgeExtensionManifest;

    invoke-direct {v0}, Lcom/cloud/tmc/kernel/extension/TmcManifest$BridgeExtensionManifest;-><init>()V

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Lcom/cloud/tmc/kernel/extension/TmcManifest$BridgeExtensionManifest;->isRawType:Z

    .line 3
    new-instance v1, Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;

    sget-object v7, Lcom/cloud/tmc/kernel/extension/ExtensionType;->BRIDGE:Lcom/cloud/tmc/kernel/extension/ExtensionType;

    const/4 v8, 0x1

    const/4 v6, 0x0

    move-object v2, v1

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v2 .. v8}, Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Class;Lcom/cloud/tmc/kernel/extension/ExtensionType;Z)V

    iput-object v1, v0, Lcom/cloud/tmc/kernel/extension/TmcManifest$BridgeExtensionManifest;->extensionMetaInfo:Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;

    return-object v0
.end method

.method public static makeRaw(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Class;)Lcom/cloud/tmc/kernel/extension/TmcManifest$BridgeExtensionManifest;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/cloud/tmc/kernel/node/Scope;",
            ">;)",
            "Lcom/cloud/tmc/kernel/extension/TmcManifest$BridgeExtensionManifest;"
        }
    .end annotation

    .line 4
    new-instance v0, Lcom/cloud/tmc/kernel/extension/TmcManifest$BridgeExtensionManifest;

    invoke-direct {v0}, Lcom/cloud/tmc/kernel/extension/TmcManifest$BridgeExtensionManifest;-><init>()V

    const/4 v1, 0x1

    .line 5
    iput-boolean v1, v0, Lcom/cloud/tmc/kernel/extension/TmcManifest$BridgeExtensionManifest;->isRawType:Z

    .line 6
    new-instance v1, Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;

    sget-object v7, Lcom/cloud/tmc/kernel/extension/ExtensionType;->BRIDGE:Lcom/cloud/tmc/kernel/extension/ExtensionType;

    const/4 v8, 0x1

    move-object v2, v1

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v2 .. v8}, Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Class;Lcom/cloud/tmc/kernel/extension/ExtensionType;Z)V

    iput-object v1, v0, Lcom/cloud/tmc/kernel/extension/TmcManifest$BridgeExtensionManifest;->extensionMetaInfo:Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "BridgeExtensionManifest{target="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/cloud/tmc/kernel/extension/TmcManifest$BridgeExtensionManifest;->target:Ljava/lang/Class;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", scope="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/cloud/tmc/kernel/extension/TmcManifest$BridgeExtensionManifest;->scope:Ljava/lang/Class;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const/16 v1, 0x7d

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    return-object v0
.end method
