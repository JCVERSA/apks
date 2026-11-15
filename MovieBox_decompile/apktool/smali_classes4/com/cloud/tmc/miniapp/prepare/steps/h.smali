.class public final synthetic Lcom/cloud/tmc/miniapp/prepare/steps/h;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


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
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/h;->a:Lcom/cloud/tmc/integration/model/PrepareContext;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/h;->b:Lcom/cloud/tmc/integration/model/AppModel;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/cloud/tmc/miniapp/prepare/steps/h;->c:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/cloud/tmc/miniapp/prepare/steps/h;->d:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/cloud/tmc/miniapp/prepare/steps/h;->e:Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/steps/h;->a:Lcom/cloud/tmc/integration/model/PrepareContext;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/h;->b:Lcom/cloud/tmc/integration/model/AppModel;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/h;->c:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/prepare/steps/h;->d:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/cloud/tmc/miniapp/prepare/steps/h;->e:Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;

    .line 10
    .line 11
    move-object v5, p1

    .line 12
    check-cast v5, Ljava/lang/String;

    .line 13
    .line 14
    move-object v6, p2

    .line 15
    check-cast v6, Ljava/lang/String;

    .line 16
    .line 17
    move-object v7, p3

    .line 18
    check-cast v7, Ljava/io/IOException;

    .line 19
    .line 20
    invoke-static/range {v0 .. v7}, Lcom/cloud/tmc/miniapp/prepare/steps/UpdateStep;->OooO00o(Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/integration/model/AppModel;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;Ljava/lang/String;Ljava/lang/String;Ljava/io/IOException;)Lkotlin/Unit;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    return-object p1
.end method
