.class public Lcom/transsion/apiinvoke/common/router/ProcessInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final DEFAULT_VERSION:Ljava/lang/String; = "1.2.100"

.field public static final SPLIT_NEW_VERSION:Ljava/lang/String; = ";"

.field public static final SPLIT_OLD_VERSION:Ljava/lang/String; = "#"

.field private static final serialVersionUID:J = -0x4fa511fd1e18b714L


# instance fields
.field private channels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private packageName:Ljava/lang/String;

.field private pid:Ljava/lang/String;

.field private process:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/apiinvoke/common/router/ProcessInfo;->pid:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/transsion/apiinvoke/common/router/ProcessInfo;->process:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/transsion/apiinvoke/common/router/ProcessInfo;->packageName:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/transsion/apiinvoke/common/router/ProcessInfo;->version:Ljava/lang/String;

    .line 6
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/apiinvoke/common/router/ProcessInfo;->channels:Ljava/util/List;

    .line 7
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    const-string p1, "1.2.100"

    iput-object p1, p0, Lcom/transsion/apiinvoke/common/router/ProcessInfo;->version:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 9
    const-string v4, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/transsion/apiinvoke/common/router/ProcessInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/apiinvoke/common/router/ProcessInfo;->pid:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lcom/transsion/apiinvoke/common/router/ProcessInfo;->process:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/transsion/apiinvoke/common/router/ProcessInfo;->packageName:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lcom/transsion/apiinvoke/common/router/ProcessInfo;->version:Ljava/lang/String;

    .line 15
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lcom/transsion/apiinvoke/common/router/ProcessInfo;->channels:Ljava/util/List;

    .line 16
    iput-object p1, p0, Lcom/transsion/apiinvoke/common/router/ProcessInfo;->process:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcom/transsion/apiinvoke/common/router/ProcessInfo;->pid:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 19
    :cond_0
    const-string p1, "0"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 20
    const-string p1, "APPService"

    iput-object p1, p0, Lcom/transsion/apiinvoke/common/router/ProcessInfo;->process:Ljava/lang/String;

    goto :goto_0

    .line 21
    :cond_1
    iput-object p2, p0, Lcom/transsion/apiinvoke/common/router/ProcessInfo;->process:Ljava/lang/String;

    :cond_2
    :goto_0
    if-eqz p3, :cond_3

    .line 22
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 23
    iput-object p3, p0, Lcom/transsion/apiinvoke/common/router/ProcessInfo;->packageName:Ljava/lang/String;

    :cond_3
    if-eqz p4, :cond_4

    .line 24
    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 25
    iget-object p1, p0, Lcom/transsion/apiinvoke/common/router/ProcessInfo;->channels:Ljava/util/List;

    invoke-interface {p1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    :cond_4
    iput-object p5, p0, Lcom/transsion/apiinvoke/common/router/ProcessInfo;->version:Ljava/lang/String;

    return-void
.end method

.method private static convertStringArray(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    if-lez v1, :cond_0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static myPid()I
    .locals 3

    :try_start_0
    const-string v0, "android.os.Process"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "myPid"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const-string v0, "ProcessInfo"

    const-string v1, "android.os.Process not found"

    invoke-static {v0, v1}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logError(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    return v0
.end method


# virtual methods
.method public clone()Lcom/transsion/apiinvoke/common/router/ProcessInfo;
    .locals 2

    .line 2
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/apiinvoke/common/router/ProcessInfo;

    .line 3
    iget-object v1, p0, Lcom/transsion/apiinvoke/common/router/ProcessInfo;->pid:Ljava/lang/String;

    iput-object v1, v0, Lcom/transsion/apiinvoke/common/router/ProcessInfo;->pid:Ljava/lang/String;

    .line 4
    iget-object v1, p0, Lcom/transsion/apiinvoke/common/router/ProcessInfo;->process:Ljava/lang/String;

    iput-object v1, v0, Lcom/transsion/apiinvoke/common/router/ProcessInfo;->process:Ljava/lang/String;

    .line 5
    iget-object v1, p0, Lcom/transsion/apiinvoke/common/router/ProcessInfo;->packageName:Ljava/lang/String;

    iput-object v1, v0, Lcom/transsion/apiinvoke/common/router/ProcessInfo;->packageName:Ljava/lang/String;

    .line 6
    iget-object v1, p0, Lcom/transsion/apiinvoke/common/router/ProcessInfo;->channels:Ljava/util/List;

    iput-object v1, v0, Lcom/transsion/apiinvoke/common/router/ProcessInfo;->channels:Ljava/util/List;

    .line 7
    iget-object p0, p0, Lcom/transsion/apiinvoke/common/router/ProcessInfo;->version:Ljava/lang/String;

    iput-object p0, v0, Lcom/transsion/apiinvoke/common/router/ProcessInfo;->version:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 8
    :catch_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/transsion/apiinvoke/common/router/ProcessInfo;->clone()Lcom/transsion/apiinvoke/common/router/ProcessInfo;

    move-result-object p0

    return-object p0
.end method

.method public containChannel(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/apiinvoke/common/router/ProcessInfo;->channels:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public copyChannels()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/apiinvoke/common/router/ProcessInfo;->channels:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public packageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/apiinvoke/common/router/ProcessInfo;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public pid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/apiinvoke/common/router/ProcessInfo;->pid:Ljava/lang/String;

    return-object p0
.end method

.method public pidEquals(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/transsion/apiinvoke/common/router/ProcessInfo;->pid:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/apiinvoke/common/router/ProcessInfo;->pid()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public process()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/apiinvoke/common/router/ProcessInfo;->process:Ljava/lang/String;

    return-object p0
.end method

.method public putChannel(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/apiinvoke/common/router/ProcessInfo;->channels:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/transsion/apiinvoke/common/router/ProcessInfo;->channels:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setChannels(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/apiinvoke/common/router/ProcessInfo;->channels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object p0, p0, Lcom/transsion/apiinvoke/common/router/ProcessInfo;->channels:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public toSimpleInfo()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/transsion/apiinvoke/common/router/ProcessInfo;->process:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " {version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/apiinvoke/common/router/ProcessInfo;->version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "0"

    iget-object v3, p0, Lcom/transsion/apiinvoke/common/router/ProcessInfo;->pid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " {pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/apiinvoke/common/router/ProcessInfo;->pid:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "pid"

    iget-object v2, p0, Lcom/transsion/apiinvoke/common/router/ProcessInfo;->pid:Ljava/lang/String;

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "\"%s\": \"%s\""

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "process"

    iget-object v4, p0, Lcom/transsion/apiinvoke/common/router/ProcessInfo;->process:Ljava/lang/String;

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "packageName"

    iget-object v4, p0, Lcom/transsion/apiinvoke/common/router/ProcessInfo;->packageName:Ljava/lang/String;

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/apiinvoke/common/router/ProcessInfo;->channels:Ljava/util/List;

    invoke-static {v3}, Lcom/transsion/apiinvoke/common/router/ProcessInfo;->convertStringArray(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "channels"

    filled-new-array {v4, v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "\"%s\": %s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "version"

    iget-object p0, p0, Lcom/transsion/apiinvoke/common/router/ProcessInfo;->version:Ljava/lang/String;

    filled-new-array {v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v2, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public version()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/apiinvoke/common/router/ProcessInfo;->version:Ljava/lang/String;

    return-object p0
.end method
