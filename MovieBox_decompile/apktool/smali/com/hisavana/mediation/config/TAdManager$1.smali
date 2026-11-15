.class Lcom/hisavana/mediation/config/TAdManager$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hisavana/mediation/config/TAdManager;->init(Landroid/content/Context;Lcom/hisavana/mediation/config/TAdManager$AdConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/hisavana/mediation/config/TAdManager$1;->val$context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hisavana/mediation/config/TAdManager$1;->val$context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/cloud/sdk/commonutil/util/MitNetUtil;->c(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/manager/NetStateManager;->setIsNetAvailable(Z)V

    .line 8
    .line 9
    .line 10
    invoke-static {}, Lcom/hisavana/mediation/config/CloudControlConfigSync;->q()V

    .line 11
    .line 12
    .line 13
    return-void
.end method
