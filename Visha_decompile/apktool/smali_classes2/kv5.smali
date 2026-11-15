.class public final synthetic Lkv5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/cloud/hisavana/sdk/i;

.field public final synthetic c:Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;

.field public final synthetic d:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/hisavana/sdk/i;Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkv5;->b:Lcom/cloud/hisavana/sdk/i;

    iput-object p2, p0, Lkv5;->c:Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;

    iput-object p3, p0, Lkv5;->d:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lkv5;->b:Lcom/cloud/hisavana/sdk/i;

    iget-object v1, p0, Lkv5;->c:Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;

    iget-object p0, p0, Lkv5;->d:Ljava/util/List;

    invoke-static {v0, v1, p0}, Lcom/cloud/hisavana/sdk/i;->a(Lcom/cloud/hisavana/sdk/i;Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;Ljava/util/List;)V

    return-void
.end method
