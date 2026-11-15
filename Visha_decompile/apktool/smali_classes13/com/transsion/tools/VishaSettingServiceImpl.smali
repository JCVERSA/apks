.class public Lcom/transsion/tools/VishaSettingServiceImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/moduleservice/IVishaSettingService;


# annotations
.annotation build Lcom/alibaba/android/arouter/facade/annotation/Route;
    path = "/tools/vishasettings"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSettingFragment(Lcom/transsion/playercommon/activities/BaseActivity;Landroid/os/Bundle;)Lcom/transsion/playercommon/fragments/BaseFragment;
    .locals 0

    invoke-static {p2}, Lcom/transsion/tools/fragments/SettingFragment;->newInstance(Landroid/os/Bundle;)Lcom/transsion/tools/fragments/SettingFragment;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/tools/fragments/SettingFragment;->setBaseActivity(Lcom/transsion/playercommon/activities/BaseActivity;)Lcom/transsion/tools/fragments/SettingFragment;

    move-result-object p0

    return-object p0
.end method

.method public init(Landroid/content/Context;)V
    .locals 0

    const-string p0, "VishaSettingServiceImpl init"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Router"

    invoke-static {p1, p0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
