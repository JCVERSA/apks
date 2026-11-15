.class public Lcom/transsion/tools/fragments/SettingFragment$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/playercommon/widgets/CustomOsSeekbar$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/tools/fragments/SettingFragment;->initFadeSetting(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/tools/fragments/SettingFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/tools/fragments/SettingFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/tools/fragments/SettingFragment$j;->a:Lcom/transsion/tools/fragments/SettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Lcom/transsion/playercommon/widgets/CustomOsSeekbar;IFZ)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/tools/fragments/SettingFragment$j;->a:Lcom/transsion/tools/fragments/SettingFragment;

    invoke-static {p1, p2}, Lcom/transsion/tools/fragments/SettingFragment;->a0(Lcom/transsion/tools/fragments/SettingFragment;I)V

    iget-object p0, p0, Lcom/transsion/tools/fragments/SettingFragment$j;->a:Lcom/transsion/tools/fragments/SettingFragment;

    invoke-static {p0}, Lcom/transsion/tools/fragments/SettingFragment;->access$300(Lcom/transsion/tools/fragments/SettingFragment;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lrt6;->b(Landroid/content/Context;)Lrt6;

    move-result-object p0

    invoke-virtual {p0, p2}, Lrt6;->e(I)V

    new-instance p0, Lhb0$a;

    int-to-float p1, p2

    const/high16 p2, 0x447a0000    # 1000.0f

    div-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string p2, "time"

    invoke-direct {p0, p2, p1}, Lhb0$a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    filled-new-array {p0}, [Lhb0$a;

    move-result-object p0

    const-string p1, "setup_setuppage_crossfade_time"

    invoke-static {p1, p0}, Lhb0;->markKV(Ljava/lang/String;[Lhb0$a;)V

    return-void
.end method

.method public onStartTrackingTouch(Lcom/transsion/playercommon/widgets/CustomOsSeekbar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Lcom/transsion/playercommon/widgets/CustomOsSeekbar;)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/tools/fragments/SettingFragment$j;->a:Lcom/transsion/tools/fragments/SettingFragment;

    invoke-static {p1}, Lcom/transsion/tools/fragments/SettingFragment;->access$500(Lcom/transsion/tools/fragments/SettingFragment;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lrt6;->b(Landroid/content/Context;)Lrt6;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/tools/fragments/SettingFragment$j;->a:Lcom/transsion/tools/fragments/SettingFragment;

    invoke-static {p0}, Lcom/transsion/tools/fragments/SettingFragment;->access$400(Lcom/transsion/tools/fragments/SettingFragment;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1, p0}, Lrt6;->d(Landroid/content/Context;)V

    return-void
.end method
