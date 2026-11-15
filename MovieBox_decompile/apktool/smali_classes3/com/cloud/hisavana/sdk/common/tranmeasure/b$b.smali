.class Lcom/cloud/hisavana/sdk/common/tranmeasure/b$b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/hisavana/sdk/common/tranmeasure/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cloud/hisavana/sdk/common/tranmeasure/b;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/common/tranmeasure/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/b$b;->a:Lcom/cloud/hisavana/sdk/common/tranmeasure/b;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/b$b;->a:Lcom/cloud/hisavana/sdk/common/tranmeasure/b;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/tranmeasure/b;->e(Lcom/cloud/hisavana/sdk/common/tranmeasure/b;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/cloud/hisavana/sdk/common/tranmeasure/e;->c()Lcom/cloud/hisavana/sdk/common/tranmeasure/e;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/tranmeasure/e;->i()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method
