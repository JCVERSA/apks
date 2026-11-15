.class Lcom/transsion/audio/fragments/AudiosFragment$6$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/audio/fragments/AudiosFragment$6;->closeAdBanner()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/transsion/audio/fragments/AudiosFragment$6;


# direct methods
.method public constructor <init>(Lcom/transsion/audio/fragments/AudiosFragment$6;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/fragments/AudiosFragment$6$1;->this$1:Lcom/transsion/audio/fragments/AudiosFragment$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object p0, p0, Lcom/transsion/audio/fragments/AudiosFragment$6$1;->this$1:Lcom/transsion/audio/fragments/AudiosFragment$6;

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudiosFragment$6;->this$0:Lcom/transsion/audio/fragments/AudiosFragment;

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    invoke-static {p0}, Lcom/transsion/audio/fragments/AudiosFragment;->u2(Lcom/transsion/audio/fragments/AudiosFragment;)Lcom/transsion/vishaads/views/AdBannerView;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->removeHeaderView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "closeAdBanner audioBanner:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AudiosFragment"

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/blankj/utilcode/util/LogUtils;->l([Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
