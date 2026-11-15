.class public final synthetic Ln09;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroid/os/Bundle;

.field public final synthetic c:Lied;

.field public final synthetic d:I

.field public final synthetic e:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;


# direct methods
.method public synthetic constructor <init>(Landroid/os/Bundle;Lied;ILcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln09;->b:Landroid/os/Bundle;

    iput-object p2, p0, Ln09;->c:Lied;

    iput p3, p0, Ln09;->d:I

    iput-object p4, p0, Ln09;->e:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Ln09;->b:Landroid/os/Bundle;

    iget-object v1, p0, Ln09;->c:Lied;

    iget v2, p0, Ln09;->d:I

    iget-object p0, p0, Ln09;->e:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-static {v0, v1, v2, p0}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->i(Landroid/os/Bundle;Lied;ILcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    return-void
.end method
