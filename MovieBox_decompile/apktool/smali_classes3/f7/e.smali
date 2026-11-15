.class public final synthetic Lf7/e;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/sdk/commonutil/util/Preconditions$a;


# instance fields
.field public final synthetic a:Lcom/cloud/hisavana/sdk/bridge/HisavanaAdJsBridge;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/hisavana/sdk/bridge/HisavanaAdJsBridge;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lf7/e;->a:Lcom/cloud/hisavana/sdk/bridge/HisavanaAdJsBridge;

    .line 5
    .line 6
    iput-object p2, p0, Lf7/e;->b:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onRun()V
    .locals 2

    .line 1
    iget-object v0, p0, Lf7/e;->a:Lcom/cloud/hisavana/sdk/bridge/HisavanaAdJsBridge;

    .line 2
    .line 3
    iget-object v1, p0, Lf7/e;->b:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/cloud/hisavana/sdk/bridge/HisavanaAdJsBridge;->b(Lcom/cloud/hisavana/sdk/bridge/HisavanaAdJsBridge;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
