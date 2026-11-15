.class public final synthetic Lcom/cloud/tmc/integration/utils/h;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/cloud/tmc/integration/model/AppModel;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lcom/cloud/tmc/integration/utils/CreateShortCutUtils$MiniAppIconCallback;

.field public final synthetic e:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lcom/cloud/tmc/integration/model/AppModel;Ljava/lang/String;Lcom/cloud/tmc/integration/utils/CreateShortCutUtils$MiniAppIconCallback;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/cloud/tmc/integration/utils/h;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/cloud/tmc/integration/utils/h;->b:Lcom/cloud/tmc/integration/model/AppModel;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/cloud/tmc/integration/utils/h;->c:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/cloud/tmc/integration/utils/h;->d:Lcom/cloud/tmc/integration/utils/CreateShortCutUtils$MiniAppIconCallback;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/cloud/tmc/integration/utils/h;->e:Landroid/content/Context;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/utils/h;->a:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/cloud/tmc/integration/utils/h;->b:Lcom/cloud/tmc/integration/model/AppModel;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/cloud/tmc/integration/utils/h;->c:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/cloud/tmc/integration/utils/h;->d:Lcom/cloud/tmc/integration/utils/CreateShortCutUtils$MiniAppIconCallback;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/cloud/tmc/integration/utils/h;->e:Landroid/content/Context;

    .line 10
    .line 11
    invoke-static {v0, v1, v2, v3, v4}, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;->b(Ljava/lang/String;Lcom/cloud/tmc/integration/model/AppModel;Ljava/lang/String;Lcom/cloud/tmc/integration/utils/CreateShortCutUtils$MiniAppIconCallback;Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
