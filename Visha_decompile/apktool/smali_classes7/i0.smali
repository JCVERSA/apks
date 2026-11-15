.class public Li0;
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

    invoke-virtual {p0, p1}, Li0;->h(Landroid/content/Context;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public h(Landroid/content/Context;)Ljava/lang/Void;
    .locals 0

    invoke-static {}, Lw;->k()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1}, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister;->initClientAsync(Landroid/content/Context;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
