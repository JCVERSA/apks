.class public Lcom/transsion/playercommon/utils/CountryInfoUtil$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvz6;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/playercommon/utils/CountryInfoUtil;->q()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnect(I)V
    .locals 0

    const-string p0, "network_restored_retry_country_info"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "visha_CountryInfoUtil"

    invoke-static {p1, p0}, Lcom/blankj/utilcode/util/LogUtils;->P(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p0, "CountryInfoUtil_net_retry"

    invoke-static {p0}, Lcom/transsion/playercommon/core/MainApp;->s(Ljava/lang/String;)V

    invoke-static {}, Lcom/transsion/playercommon/core/MainApp;->f()Landroid/app/Application;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/transsion/playercommon/utils/CountryInfoUtil;->j(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
