.class public final synthetic Lop4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cloud/sdk/commonutil/util/Preconditions$a;


# instance fields
.field public final synthetic a:Lcom/cloud/hisavana/sdk/bridge/HisavanaAdJsBridge;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/hisavana/sdk/bridge/HisavanaAdJsBridge;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lop4;->a:Lcom/cloud/hisavana/sdk/bridge/HisavanaAdJsBridge;

    iput-object p2, p0, Lop4;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onRun()V
    .locals 1

    iget-object v0, p0, Lop4;->a:Lcom/cloud/hisavana/sdk/bridge/HisavanaAdJsBridge;

    iget-object p0, p0, Lop4;->b:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/cloud/hisavana/sdk/bridge/HisavanaAdJsBridge;->b(Lcom/cloud/hisavana/sdk/bridge/HisavanaAdJsBridge;Ljava/lang/String;)V

    return-void
.end method
