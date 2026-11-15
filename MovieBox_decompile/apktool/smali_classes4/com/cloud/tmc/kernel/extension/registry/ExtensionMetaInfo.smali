.class public Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;
.super Lcom/cloud/tmc/kernel/extension/registry/TmcConfigBase;
.source "source.java"


# static fields
.field private static final EXTENSION_VERSION:B = 0xbt

.field private static final TAG:Ljava/lang/String; = "ExtensionMetaInfo"


# instance fields
.field public bundleName:Ljava/lang/String;

.field public extensionClass:Ljava/lang/String;

.field public filter:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public filterStrs:Ljava/lang/String;

.field public isLazy:Z

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

.field public scopeClassName:Ljava/lang/String;

.field public type:Lcom/cloud/tmc/kernel/extension/ExtensionType;

.field public typeString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/cloud/tmc/kernel/node/Scope;",
            ">;)V"
        }
    .end annotation

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/cloud/tmc/kernel/node/Scope;",
            ">;Z)V"
        }
    .end annotation

    .line 3
    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Class;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    const/16 v0, 0xb

    .line 15
    invoke-direct {p0, v0}, Lcom/cloud/tmc/kernel/extension/registry/TmcConfigBase;-><init>(B)V

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;->scope:Ljava/lang/Class;

    .line 17
    iput-object p1, p0, Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;->bundleName:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;->extensionClass:Ljava/lang/String;

    .line 19
    iput-boolean p6, p0, Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;->isLazy:Z

    .line 20
    iput-object p3, p0, Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;->filterStrs:Ljava/lang/String;

    .line 21
    iput-object p4, p0, Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;->scopeClassName:Ljava/lang/String;

    .line 22
    iput-object p5, p0, Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;->typeString:Ljava/lang/String;

    .line 23
    invoke-direct {p0, p3}, Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;->filterStrToList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;->filter:Ljava/util/List;

    .line 24
    invoke-direct {p0, p4}, Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;->getScopeClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;->scope:Ljava/lang/Class;

    .line 25
    const-string p1, "normal"

    iget-object p2, p0, Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;->typeString:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/cloud/tmc/kernel/extension/ExtensionType;->NORMAL:Lcom/cloud/tmc/kernel/extension/ExtensionType;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/cloud/tmc/kernel/extension/ExtensionType;->BRIDGE:Lcom/cloud/tmc/kernel/extension/ExtensionType;

    :goto_0
    iput-object p1, p0, Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;->type:Lcom/cloud/tmc/kernel/extension/ExtensionType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 2
    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 4
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Class;)V
    .locals 6
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
            ">;)V"
        }
    .end annotation

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 5
    invoke-direct/range {v0 .. v5}, Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Class;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Class;Lcom/cloud/tmc/kernel/extension/ExtensionType;Z)V
    .locals 1
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
            ">;",
            "Lcom/cloud/tmc/kernel/extension/ExtensionType;",
            "Z)V"
        }
    .end annotation

    const/16 v0, 0xb

    .line 8
    invoke-direct {p0, v0}, Lcom/cloud/tmc/kernel/extension/registry/TmcConfigBase;-><init>(B)V

    .line 9
    iput-object p1, p0, Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;->bundleName:Ljava/lang/String;

    .line 10
    iput-object p2, p0, Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;->extensionClass:Ljava/lang/String;

    .line 11
    iput-boolean p6, p0, Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;->isLazy:Z

    .line 12
    iput-object p3, p0, Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;->filter:Ljava/util/List;

    .line 13
    iput-object p4, p0, Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;->scope:Ljava/lang/Class;

    .line 14
    iput-object p5, p0, Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;->type:Lcom/cloud/tmc/kernel/extension/ExtensionType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Class;Z)V
    .locals 7
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
            ">;Z)V"
        }
    .end annotation

    .line 7
    sget-object v5, Lcom/cloud/tmc/kernel/extension/ExtensionType;->NORMAL:Lcom/cloud/tmc/kernel/extension/ExtensionType;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Class;Lcom/cloud/tmc/kernel/extension/ExtensionType;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    .line 6
    invoke-direct/range {v0 .. v5}, Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Class;Z)V

    return-void
.end method

.method private filterStrToList(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/cloud/tmc/kernel/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    const-string v0, " "

    .line 10
    .line 11
    const-string v2, ""

    .line 12
    .line 13
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-static {p1}, Lcom/cloud/tmc/kernel/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    return-object v1

    .line 24
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    const-string v1, "add event configs "

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const-string v1, "ExtensionMetaInfo"

    .line 42
    .line 43
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const-string v0, "\\|"

    .line 47
    .line 48
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    return-object p1
.end method

.method private getScopeClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "+",
            "Lcom/cloud/tmc/kernel/node/Scope;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/cloud/tmc/kernel/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    :try_start_0
    const-string v0, "App"

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    const-string p1, "com.app.api.App"

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception p1

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    const-string v0, "Page"

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-eqz p1, :cond_2

    .line 29
    .line 30
    const-string p1, "com.app.api.Page"

    .line 31
    .line 32
    :goto_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    const-class v0, Lcom/cloud/tmc/kernel/node/Scope;

    .line 37
    .line 38
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 39
    .line 40
    .line 41
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    if-eqz v0, :cond_3

    .line 43
    .line 44
    return-object p1

    .line 45
    :cond_2
    return-object v1

    .line 46
    :goto_1
    const-string v0, "ExtensionMetaInfo"

    .line 47
    .line 48
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 49
    .line 50
    .line 51
    :cond_3
    return-object v1
.end method


# virtual methods
.method public deserialize(Ljava/io/BufferedInputStream;)Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-static {p1}, Lcom/cloud/tmc/kernel/api/bytedata/ByteOrderDataUtil;->readByte(Ljava/io/BufferedInputStream;)B

    move-result v0

    iput-byte v0, p0, Lcom/cloud/tmc/kernel/extension/registry/TmcConfigBase;->mFormatVersion:B

    .line 3
    invoke-static {p1}, Lcom/cloud/tmc/kernel/api/bytedata/ByteOrderDataUtil;->readString(Ljava/io/BufferedInputStream;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;->bundleName:Ljava/lang/String;

    .line 4
    invoke-static {p1}, Lcom/cloud/tmc/kernel/api/bytedata/ByteOrderDataUtil;->readString(Ljava/io/BufferedInputStream;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;->filterStrs:Ljava/lang/String;

    .line 5
    invoke-static {p1}, Lcom/cloud/tmc/kernel/api/bytedata/ByteOrderDataUtil;->readString(Ljava/io/BufferedInputStream;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;->extensionClass:Ljava/lang/String;

    .line 6
    invoke-static {p1}, Lcom/cloud/tmc/kernel/api/bytedata/ByteOrderDataUtil;->readBoolean(Ljava/io/BufferedInputStream;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;->isLazy:Z

    .line 7
    invoke-static {p1}, Lcom/cloud/tmc/kernel/api/bytedata/ByteOrderDataUtil;->readString(Ljava/io/BufferedInputStream;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;->scopeClassName:Ljava/lang/String;

    .line 8
    invoke-static {p1}, Lcom/cloud/tmc/kernel/api/bytedata/ByteOrderDataUtil;->readString(Ljava/io/BufferedInputStream;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;->typeString:Ljava/lang/String;

    .line 9
    iget-object p1, p0, Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;->filterStrs:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;->filterStrToList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;->filter:Ljava/util/List;

    .line 10
    iget-object p1, p0, Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;->scopeClassName:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;->getScopeClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;->scope:Ljava/lang/Class;

    .line 11
    const-string p1, "normal"

    iget-object v0, p0, Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;->typeString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/cloud/tmc/kernel/extension/ExtensionType;->NORMAL:Lcom/cloud/tmc/kernel/extension/ExtensionType;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/cloud/tmc/kernel/extension/ExtensionType;->BRIDGE:Lcom/cloud/tmc/kernel/extension/ExtensionType;

    :goto_0
    iput-object p1, p0, Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;->type:Lcom/cloud/tmc/kernel/extension/ExtensionType;

    return-object p0
.end method

.method public bridge synthetic deserialize(Ljava/io/BufferedInputStream;)Lcom/cloud/tmc/kernel/extension/registry/TmcConfigBase;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;->deserialize(Ljava/io/BufferedInputStream;)Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;

    move-result-object p1

    return-object p1
.end method

.method public serialize(Ljava/io/BufferedOutputStream;)Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    iget-byte v0, p0, Lcom/cloud/tmc/kernel/extension/registry/TmcConfigBase;->mFormatVersion:B

    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/api/bytedata/ByteOrderDataUtil;->writeByte(Ljava/io/BufferedOutputStream;B)V

    .line 3
    iget-object v0, p0, Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;->bundleName:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/api/bytedata/ByteOrderDataUtil;->writeString(Ljava/io/BufferedOutputStream;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;->filterStrs:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/api/bytedata/ByteOrderDataUtil;->writeString(Ljava/io/BufferedOutputStream;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;->extensionClass:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/api/bytedata/ByteOrderDataUtil;->writeString(Ljava/io/BufferedOutputStream;Ljava/lang/String;)V

    .line 6
    iget-boolean v0, p0, Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;->isLazy:Z

    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/api/bytedata/ByteOrderDataUtil;->writeBoolean(Ljava/io/BufferedOutputStream;Z)V

    .line 7
    iget-object v0, p0, Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;->scopeClassName:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/api/bytedata/ByteOrderDataUtil;->writeString(Ljava/io/BufferedOutputStream;Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;->typeString:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/api/bytedata/ByteOrderDataUtil;->writeString(Ljava/io/BufferedOutputStream;Ljava/lang/String;)V

    return-object p0
.end method

.method public bridge synthetic serialize(Ljava/io/BufferedOutputStream;)Lcom/cloud/tmc/kernel/extension/registry/TmcConfigBase;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;->serialize(Ljava/io/BufferedOutputStream;)Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;

    move-result-object p1

    return-object p1
.end method

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
    const-string v1, "ExtensionMetaInfo{extensionClass="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;->extensionClass:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const/16 v1, 0x7d

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    return-object v0
.end method
