.class public final synthetic Lcom/cloud/tmc/miniapp/prepare/steps/g;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lcom/cloud/tmc/integration/model/PrepareContext;

.field public final synthetic b:Lcom/cloud/tmc/integration/model/AppModel;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/integration/model/AppModel;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/g;->a:Lcom/cloud/tmc/integration/model/PrepareContext;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/g;->b:Lcom/cloud/tmc/integration/model/AppModel;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/cloud/tmc/miniapp/prepare/steps/g;->c:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/cloud/tmc/miniapp/prepare/steps/g;->d:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/cloud/tmc/miniapp/prepare/steps/g;->e:Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/steps/g;->a:Lcom/cloud/tmc/integration/model/PrepareContext;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/g;->b:Lcom/cloud/tmc/integration/model/AppModel;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/g;->c:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/prepare/steps/g;->d:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/cloud/tmc/miniapp/prepare/steps/g;->e:Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;

    .line 10
    .line 11
    invoke-static {v0, v1, v2, v3, v4}, Lcom/cloud/tmc/miniapp/prepare/steps/UpdateStep;->OooO00o(Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/integration/model/AppModel;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;)Lkotlin/Unit;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method
