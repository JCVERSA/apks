.class public final synthetic Lcom/cloud/tmc/miniapp/prepare/steps/b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic a:Lcom/cloud/tmc/integration/model/PrepareContext;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/tmc/integration/model/PrepareContext;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/b;->a:Lcom/cloud/tmc/integration/model/PrepareContext;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/b;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/cloud/tmc/miniapp/prepare/steps/b;->c:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/steps/b;->a:Lcom/cloud/tmc/integration/model/PrepareContext;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/b;->b:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/b;->c:Ljava/lang/String;

    .line 6
    .line 7
    move-object v3, p1

    .line 8
    check-cast v3, Ljava/lang/String;

    .line 9
    .line 10
    move-object v4, p2

    .line 11
    check-cast v4, Ljava/lang/String;

    .line 12
    .line 13
    move-object v5, p3

    .line 14
    check-cast v5, Ljava/io/IOException;

    .line 15
    .line 16
    invoke-static/range {v0 .. v5}, Lcom/cloud/tmc/miniapp/prepare/steps/OooOOO;->OooO00o(Lcom/cloud/tmc/integration/model/PrepareContext;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/IOException;)Lkotlin/Unit;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    return-object p1
.end method
