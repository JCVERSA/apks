.class public Lzi8;
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

    const/4 p0, 0x0

    return p0
.end method

.method public c()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic create(Landroid/content/Context;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lzi8;->h(Landroid/content/Context;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public h(Landroid/content/Context;)Ljava/lang/Void;
    .locals 1

    const-string p0, "ro.os_dragdrop_support"

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lmaa;->a(Ljava/lang/String;Z)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "ro.tr_dragdrop.feature.support"

    invoke-static {p0, v0}, Lmaa;->a(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    invoke-static {v0}, Lydc;->h(Z)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/playercommon/core/MainApp;->y(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/transsion/playercommon/core/MainApp;->e()V

    const/4 p0, 0x0

    return-object p0
.end method
