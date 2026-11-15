.class public final synthetic Lzba;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc74;


# instance fields
.field public final synthetic b:Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzba;->b:Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;

    iput-boolean p2, p0, Lzba;->c:Z

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lzba;->b:Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;

    iget-boolean p0, p0, Lzba;->c:Z

    invoke-static {v0, p0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->o(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;Z)Lzfb;

    move-result-object p0

    return-object p0
.end method
