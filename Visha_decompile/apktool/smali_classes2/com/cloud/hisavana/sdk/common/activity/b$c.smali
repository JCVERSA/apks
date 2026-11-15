.class Lcom/cloud/hisavana/sdk/common/activity/b$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/common/activity/b;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cloud/hisavana/sdk/common/activity/b;


# direct methods
.method public constructor <init>(Lcom/cloud/hisavana/sdk/common/activity/b;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/b$c;->a:Lcom/cloud/hisavana/sdk/common/activity/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/b$c;->a:Lcom/cloud/hisavana/sdk/common/activity/b;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/b$c;->a:Lcom/cloud/hisavana/sdk/common/activity/b;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/activity/b$c;->a:Lcom/cloud/hisavana/sdk/common/activity/b;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    invoke-static {}, Likd;->b()Likd;

    move-result-object p0

    const-string v0, "TBaseLandingActivity"

    const-string v1, "goToNext ,post finish"

    invoke-virtual {p0, v0, v1}, Lja1;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
