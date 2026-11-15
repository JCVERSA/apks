.class public final synthetic Lcom/cloud/hisavana/sdk/i2;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/cloud/hisavana/sdk/t0;

.field public final synthetic b:Lcom/cloud/hisavana/sdk/data/bean/inapp/CachedAdInfos;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/hisavana/sdk/t0;Lcom/cloud/hisavana/sdk/data/bean/inapp/CachedAdInfos;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/i2;->a:Lcom/cloud/hisavana/sdk/t0;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/cloud/hisavana/sdk/i2;->b:Lcom/cloud/hisavana/sdk/data/bean/inapp/CachedAdInfos;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/i2;->a:Lcom/cloud/hisavana/sdk/t0;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/i2;->b:Lcom/cloud/hisavana/sdk/data/bean/inapp/CachedAdInfos;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/cloud/hisavana/sdk/Y;->e(Lcom/cloud/hisavana/sdk/t0;Lcom/cloud/hisavana/sdk/data/bean/inapp/CachedAdInfos;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
