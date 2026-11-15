.class public Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lmg8;

.field public final b:Lcom/transsion/privateroom/privateroom/PrivateFileDataProvider;

.field public final c:Lcom/transsion/privateroom/privateroom/PrivateSecurityInfoProvider;

.field public d:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lmg8;

    invoke-direct {v0}, Lmg8;-><init>()V

    iput-object v0, p0, Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate;->a:Lmg8;

    new-instance v0, Lcom/transsion/privateroom/privateroom/PrivateFileDataProvider;

    invoke-direct {v0}, Lcom/transsion/privateroom/privateroom/PrivateFileDataProvider;-><init>()V

    iput-object v0, p0, Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate;->b:Lcom/transsion/privateroom/privateroom/PrivateFileDataProvider;

    new-instance v0, Lcom/transsion/privateroom/privateroom/PrivateSecurityInfoProvider;

    invoke-direct {v0}, Lcom/transsion/privateroom/privateroom/PrivateSecurityInfoProvider;-><init>()V

    iput-object v0, p0, Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate;->c:Lcom/transsion/privateroom/privateroom/PrivateSecurityInfoProvider;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate;->d:J

    return-void
.end method

.method public static bridge synthetic a(Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate;)Lcom/transsion/privateroom/privateroom/PrivateFileDataProvider;
    .locals 0

    iget-object p0, p0, Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate;->b:Lcom/transsion/privateroom/privateroom/PrivateFileDataProvider;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate;)Lmg8;
    .locals 0

    iget-object p0, p0, Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate;->a:Lmg8;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate;)Lcom/transsion/privateroom/privateroom/PrivateSecurityInfoProvider;
    .locals 0

    iget-object p0, p0, Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate;->c:Lcom/transsion/privateroom/privateroom/PrivateSecurityInfoProvider;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate;Lcom/transsion/privateroom/api/beans/PrivateFile;DJJLtv4;Z)V
    .locals 0

    invoke-virtual/range {p0 .. p9}, Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate;->l(Lcom/transsion/privateroom/api/beans/PrivateFile;DJJLtv4;Z)V

    return-void
.end method


# virtual methods
.method public e(Ljava/util/List;Ltv4;)V
    .locals 1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate$4;-><init>(Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate;Ljava/util/List;Ltv4;)V

    invoke-static {v0}, Lcom/blankj/utilcode/util/ThreadUtils;->i(Lcom/blankj/utilcode/util/ThreadUtils$Task;)V

    return-void

    :cond_1
    :goto_0
    const-string p0, "delete files failed"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "PrivateRoom_PrivateRoomDelegate"

    invoke-static {p1, p0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p2, :cond_2

    invoke-interface {p2}, Ltv4;->h()V

    :cond_2
    return-void
.end method

.method public f()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate;->b:Lcom/transsion/privateroom/privateroom/PrivateFileDataProvider;

    invoke-virtual {p0}, Lcom/transsion/privateroom/privateroom/PrivateFileDataProvider;->c()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public g()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate;->c:Lcom/transsion/privateroom/privateroom/PrivateSecurityInfoProvider;

    invoke-virtual {p0}, Lcom/transsion/privateroom/privateroom/PrivateSecurityInfoProvider;->g()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public h()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate;->c:Lcom/transsion/privateroom/privateroom/PrivateSecurityInfoProvider;

    invoke-virtual {p0}, Lcom/transsion/privateroom/privateroom/PrivateSecurityInfoProvider;->h()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public i(Luv4;)Z
    .locals 3

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1e

    const-string v1, "PrivateRoom_PrivateRoomDelegate"

    const/4 v2, 0x0

    if-lt p0, v0, :cond_1

    invoke-static {}, Lcac;->a()Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "Visha no MANAGE_EXTERNAL_STORAGE permission,should first request"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Luv4;->a()V

    :cond_0
    return v2

    :cond_1
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object p0

    invoke-static {p0, v2}, Lcom/transsion/privateroom/privateroom/a;->a(Landroid/content/Context;I)Z

    move-result p0

    if-nez p0, :cond_3

    if-eqz p1, :cond_2

    const-string p0, "Visha no file permission,should first request"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {p1}, Luv4;->a()V

    :cond_2
    return v2

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public j(Ljava/util/List;Ltv4;)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate;->d:J

    new-instance v0, Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate$2;-><init>(Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate;Ljava/util/List;Ltv4;)V

    invoke-static {v0}, Lcom/blankj/utilcode/util/ThreadUtils;->i(Lcom/blankj/utilcode/util/ThreadUtils$Task;)V

    return-void

    :cond_1
    :goto_0
    const-string p0, "hide files failed"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "PrivateRoom_PrivateRoomDelegate"

    invoke-static {p1, p0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p2, :cond_2

    invoke-interface {p2}, Ltv4;->j()V

    :cond_2
    return-void
.end method

.method public k(Luv4;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate;->a:Lmg8;

    invoke-virtual {v0}, Lmg8;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate;->b:Lcom/transsion/privateroom/privateroom/PrivateFileDataProvider;

    invoke-virtual {v1}, Lcom/transsion/privateroom/privateroom/PrivateFileDataProvider;->e()V

    iget-object p0, p0, Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate;->c:Lcom/transsion/privateroom/privateroom/PrivateSecurityInfoProvider;

    invoke-virtual {p0}, Lcom/transsion/privateroom/privateroom/PrivateSecurityInfoProvider;->i()V

    :cond_0
    const-string p0, "PrivateRoom_PrivateRoomDelegate"

    if-eqz v0, :cond_1

    const-string v0, "private room init onSuccess"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_2

    invoke-interface {p1}, Luv4;->onInitSuccess()V

    goto :goto_0

    :cond_1
    const-string v0, "private room init failed"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_2

    invoke-interface {p1}, Luv4;->b()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final l(Lcom/transsion/privateroom/api/beans/PrivateFile;DJJLtv4;Z)V
    .locals 4

    if-eqz p8, :cond_3

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    if-nez p9, :cond_2

    const-wide/16 p0, 0x0

    cmpg-double p4, p2, p0

    if-ltz p4, :cond_1

    cmpl-double p4, p2, v0

    if-lez p4, :cond_0

    goto :goto_0

    :cond_0
    mul-double/2addr p2, v0

    invoke-interface {p8, p2, p3}, Ltv4;->a(D)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-interface {p8, p0, p1}, Ltv4;->a(D)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/transsion/privateroom/api/beans/PrivateFile;->getSize()J

    move-result-wide p1

    const-wide/16 v2, 0x0

    cmp-long p1, p1, v2

    if-lez p1, :cond_3

    cmp-long p1, p4, v2

    if-lez p1, :cond_3

    iget-wide p1, p0, Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate;->d:J

    add-long/2addr p1, p6

    iput-wide p1, p0, Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate;->d:J

    long-to-double p0, p1

    long-to-double p2, p4

    div-double/2addr p0, p2

    mul-double/2addr p0, v0

    invoke-interface {p8, p0, p1}, Ltv4;->a(D)V

    :cond_3
    :goto_1
    return-void
.end method

.method public m(Ljava/util/List;Ltv4;)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate;->d:J

    new-instance v0, Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate$3;-><init>(Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate;Ljava/util/List;Ltv4;)V

    invoke-static {v0}, Lcom/blankj/utilcode/util/ThreadUtils;->i(Lcom/blankj/utilcode/util/ThreadUtils$Task;)V

    return-void

    :cond_1
    :goto_0
    const-string p0, "restore files failed"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "PrivateRoom_PrivateRoomDelegate"

    invoke-static {p1, p0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p2, :cond_2

    invoke-interface {p2}, Ltv4;->c()V

    :cond_2
    return-void
.end method

.method public n(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate;->c:Lcom/transsion/privateroom/privateroom/PrivateSecurityInfoProvider;

    invoke-virtual {p0, p1}, Lcom/transsion/privateroom/privateroom/PrivateSecurityInfoProvider;->j(Ljava/lang/String;)V

    return-void
.end method

.method public o(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate;->c:Lcom/transsion/privateroom/privateroom/PrivateSecurityInfoProvider;

    invoke-virtual {p0, p1}, Lcom/transsion/privateroom/privateroom/PrivateSecurityInfoProvider;->k(Ljava/lang/String;)V

    return-void
.end method

.method public p(Ljava/lang/String;Lsv4;)V
    .locals 2

    new-instance v0, Lcom/transsion/privateroom/api/beans/PrivateCodeVerifyInfoBean;

    const-string v1, ""

    invoke-direct {v0, p1, v1}, Lcom/transsion/privateroom/api/beans/PrivateCodeVerifyInfoBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate;->c:Lcom/transsion/privateroom/privateroom/PrivateSecurityInfoProvider;

    invoke-virtual {p0, v0, p2}, Lcom/transsion/privateroom/privateroom/PrivateSecurityInfoProvider;->l(Lcom/transsion/privateroom/api/beans/PrivateCodeVerifyInfoBean;Lsv4;)V

    return-void
.end method

.method public q(Ljava/lang/String;Ljava/lang/String;Lsv4;)V
    .locals 1

    new-instance v0, Lcom/transsion/privateroom/api/beans/PrivateCodeVerifyInfoBean;

    invoke-direct {v0, p1, p2}, Lcom/transsion/privateroom/api/beans/PrivateCodeVerifyInfoBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/privateroom/privateroom/PrivateRoomDelegate;->c:Lcom/transsion/privateroom/privateroom/PrivateSecurityInfoProvider;

    invoke-virtual {p0, v0, p3}, Lcom/transsion/privateroom/privateroom/PrivateSecurityInfoProvider;->m(Lcom/transsion/privateroom/api/beans/PrivateCodeVerifyInfoBean;Lsv4;)V

    return-void
.end method
