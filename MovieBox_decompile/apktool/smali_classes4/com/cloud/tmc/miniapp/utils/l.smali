.class public final synthetic Lcom/cloud/tmc/miniapp/utils/l;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/integration/callback/PackageInstallCallback;


# instance fields
.field public final synthetic a:Lcom/cloud/tmc/integration/model/AppModel;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Z

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/tmc/integration/model/AppModel;Landroid/content/Context;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/utils/l;->a:Lcom/cloud/tmc/integration/model/AppModel;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/cloud/tmc/miniapp/utils/l;->b:Landroid/content/Context;

    .line 7
    .line 8
    iput-boolean p3, p0, Lcom/cloud/tmc/miniapp/utils/l;->c:Z

    .line 9
    .line 10
    iput-boolean p4, p0, Lcom/cloud/tmc/miniapp/utils/l;->d:Z

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onResult(ZLjava/lang/String;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/utils/l;->a:Lcom/cloud/tmc/integration/model/AppModel;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/utils/l;->b:Landroid/content/Context;

    .line 4
    .line 5
    iget-boolean v2, p0, Lcom/cloud/tmc/miniapp/utils/l;->c:Z

    .line 6
    .line 7
    iget-boolean v3, p0, Lcom/cloud/tmc/miniapp/utils/l;->d:Z

    .line 8
    .line 9
    move v4, p1

    .line 10
    move-object v5, p2

    .line 11
    invoke-static/range {v0 .. v5}, Lcom/cloud/tmc/miniapp/utils/OooOO0;->OooO00o(Lcom/cloud/tmc/integration/model/AppModel;Landroid/content/Context;ZZZLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
