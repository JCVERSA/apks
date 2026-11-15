.class public final synthetic Lcom/cloud/tmc/integration/utils/e;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/cloud/tmc/integration/model/MiniAddHomeDataModel;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/cloud/tmc/integration/utils/CreateShortCutUtils$MiniAppIconCallback;

.field public final synthetic d:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/tmc/integration/model/MiniAddHomeDataModel;Ljava/lang/String;Lcom/cloud/tmc/integration/utils/CreateShortCutUtils$MiniAppIconCallback;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/cloud/tmc/integration/utils/e;->a:Lcom/cloud/tmc/integration/model/MiniAddHomeDataModel;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/cloud/tmc/integration/utils/e;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/cloud/tmc/integration/utils/e;->c:Lcom/cloud/tmc/integration/utils/CreateShortCutUtils$MiniAppIconCallback;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/cloud/tmc/integration/utils/e;->d:Landroid/content/Context;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/utils/e;->a:Lcom/cloud/tmc/integration/model/MiniAddHomeDataModel;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/cloud/tmc/integration/utils/e;->b:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/cloud/tmc/integration/utils/e;->c:Lcom/cloud/tmc/integration/utils/CreateShortCutUtils$MiniAppIconCallback;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/cloud/tmc/integration/utils/e;->d:Landroid/content/Context;

    .line 8
    .line 9
    invoke-static {v0, v1, v2, v3}, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;->a(Lcom/cloud/tmc/integration/model/MiniAddHomeDataModel;Ljava/lang/String;Lcom/cloud/tmc/integration/utils/CreateShortCutUtils$MiniAppIconCallback;Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
