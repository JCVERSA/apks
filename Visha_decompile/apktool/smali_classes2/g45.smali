.class public final synthetic Lg45;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg45;->b:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lg45;->b:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    invoke-static {p0}, Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;->a(Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;)V

    return-void
.end method
