.class Lcom/cloud/hisavana/sdk/q1$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/q1;->o0(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cloud/hisavana/sdk/q1;


# direct methods
.method public constructor <init>(Lcom/cloud/hisavana/sdk/q1;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/q1$b;->a:Lcom/cloud/hisavana/sdk/q1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/q1$b;->a:Lcom/cloud/hisavana/sdk/q1;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/q1;->Y(Lcom/cloud/hisavana/sdk/q1;)Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/q1$b;->a:Lcom/cloud/hisavana/sdk/q1;

    invoke-static {p0}, Lcom/cloud/hisavana/sdk/q1;->Y(Lcom/cloud/hisavana/sdk/q1;)Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
