.class public final synthetic Lnyd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cloud/sdk/commonutil/util/Preconditions$a;


# instance fields
.field public final synthetic a:Ly30;

.field public final synthetic b:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;


# direct methods
.method public synthetic constructor <init>(Ly30;Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnyd;->a:Ly30;

    iput-object p2, p0, Lnyd;->b:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    return-void
.end method


# virtual methods
.method public final onRun()V
    .locals 1

    iget-object v0, p0, Lnyd;->a:Ly30;

    iget-object p0, p0, Lnyd;->b:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    invoke-static {v0, p0}, Loyd;->a(Ly30;Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;)V

    return-void
.end method
