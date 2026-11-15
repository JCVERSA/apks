.class public Lcom/transsion/vishatransfer/socket/TransferSocketCodeData;
.super Lcom/transsion/socket/pkgdata/SocketStringData;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/socket/pkgdata/SocketStringData;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/transsion/socket/pkgdata/SocketStringData;-><init>()V

    .line 3
    new-instance v0, Lcom/transsion/vishatransfer/socket/TransferHead;

    invoke-direct {v0}, Lcom/transsion/vishatransfer/socket/TransferHead;-><init>()V

    .line 4
    invoke-virtual {v0, p1}, Lcom/transsion/vishatransfer/socket/TransferHead;->setPhase(I)V

    .line 5
    invoke-virtual {v0, p2}, Lcom/transsion/vishatransfer/socket/TransferHead;->setType(I)V

    .line 6
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/socket/pkgdata/SocketStringData;->setString(Ljava/lang/String;)Lcom/transsion/socket/pkgdata/SocketStringData;

    return-void
.end method


# virtual methods
.method public getPhase()I
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/socket/pkgdata/SocketStringData;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p0}, Lcom/transsion/socket/pkgdata/SocketStringData;->getValue()Ljava/lang/String;

    move-result-object p0

    const-class v1, Lcom/transsion/vishatransfer/socket/TransferHead;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/vishatransfer/socket/TransferHead;

    invoke-virtual {p0}, Lcom/transsion/vishatransfer/socket/TransferHead;->getPhase()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public getType()I
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/socket/pkgdata/SocketStringData;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p0}, Lcom/transsion/socket/pkgdata/SocketStringData;->getValue()Ljava/lang/String;

    move-result-object p0

    const-class v1, Lcom/transsion/vishatransfer/socket/TransferHead;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/vishatransfer/socket/TransferHead;

    invoke-virtual {p0}, Lcom/transsion/vishatransfer/socket/TransferHead;->getType()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public onClazzType()B
    .locals 0

    const/16 p0, -0x1c

    return p0
.end method
