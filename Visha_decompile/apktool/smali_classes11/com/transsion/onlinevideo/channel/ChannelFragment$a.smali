.class public Lcom/transsion/onlinevideo/channel/ChannelFragment$a;
.super Lfo1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/onlinevideo/channel/ChannelFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/onlinevideo/channel/ChannelFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/onlinevideo/channel/ChannelFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment$a;->b:Lcom/transsion/onlinevideo/channel/ChannelFragment;

    invoke-direct {p0}, Lfo1;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    sget-object p1, Ld06;->j:Ljava/lang/String;

    invoke-static {p1}, Lhb0;->markDirect(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment$a;->b:Lcom/transsion/onlinevideo/channel/ChannelFragment;

    invoke-static {p0}, Lcom/transsion/onlinevideo/channel/ChannelFragment;->B0(Lcom/transsion/onlinevideo/channel/ChannelFragment;)Lcom/transsion/playercommon/activities/BaseActivity;

    move-result-object p0

    const-string p1, "autoPlay"

    invoke-static {p0, p1}, Lcom/transsion/playercommon/router/RouterUtils;->jumpToSettingActivity(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
