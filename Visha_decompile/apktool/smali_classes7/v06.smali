.class public Lv06;
.super Lvec;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lvec;-><init>()V

    return-void
.end method


# virtual methods
.method public b()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public c()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic create(Landroid/content/Context;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lv06;->h(Landroid/content/Context;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public h(Landroid/content/Context;)Ljava/lang/Void;
    .locals 6

    sget-boolean p0, Lcom/transsion/utils/BaseConstant;->h:Z

    if-eqz p0, :cond_0

    const-string p0, "channel_gp"

    :goto_0
    move-object v1, p0

    goto :goto_1

    :cond_0
    const-string p0, "channel_preload"

    goto :goto_0

    :goto_1
    invoke-static {p1}, Lcom/transsion/playercommon/core/MainApp;->o(Landroid/content/Context;)Z

    move-result v4

    const/4 v5, 0x1

    const/16 v2, 0x246c

    const/4 v3, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/transsion/privacy/MarkPointUtil;->i(Landroid/content/Context;Ljava/lang/String;IIZZ)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/privacy/MarkPointUtil;->k(Landroid/content/Context;)V

    new-instance p0, Lcom/transsion/playercommon/core/MainApp$c;

    invoke-direct {p0}, Lcom/transsion/playercommon/core/MainApp$c;-><init>()V

    invoke-virtual {p0}, Lo12;->h()V

    invoke-static {p0}, Lcom/transsion/privacy/MarkPointUtil;->o(Lid4;)V

    instance-of p0, p1, Landroid/app/Application;

    if-eqz p0, :cond_1

    check-cast p1, Landroid/app/Application;

    invoke-static {p1}, Lbcc;->b(Landroid/app/Application;)V

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
