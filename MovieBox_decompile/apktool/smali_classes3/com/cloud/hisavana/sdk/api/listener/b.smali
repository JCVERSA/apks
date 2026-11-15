.class public final synthetic Lcom/cloud/hisavana/sdk/api/listener/b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/cloud/hisavana/sdk/api/listener/d;

.field public final synthetic b:Lcom/cloud/hisavana/sdk/api/adx/TBannerView;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/hisavana/sdk/api/listener/d;Lcom/cloud/hisavana/sdk/api/adx/TBannerView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/api/listener/b;->a:Lcom/cloud/hisavana/sdk/api/listener/d;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/cloud/hisavana/sdk/api/listener/b;->b:Lcom/cloud/hisavana/sdk/api/adx/TBannerView;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/listener/b;->a:Lcom/cloud/hisavana/sdk/api/listener/d;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/api/listener/b;->b:Lcom/cloud/hisavana/sdk/api/adx/TBannerView;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->a(Lcom/cloud/hisavana/sdk/api/listener/d;Lcom/cloud/hisavana/sdk/api/adx/TBannerView;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
