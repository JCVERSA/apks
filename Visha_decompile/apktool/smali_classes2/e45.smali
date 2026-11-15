.class public final synthetic Le45;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le45;->b:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    iput-object p2, p0, Le45;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Le45;->b:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    iget-object p0, p0, Le45;->c:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;->c(Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;Ljava/lang/String;)V

    return-void
.end method
