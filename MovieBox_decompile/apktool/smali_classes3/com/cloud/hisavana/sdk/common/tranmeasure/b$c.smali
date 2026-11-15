.class Lcom/cloud/hisavana/sdk/common/tranmeasure/b$c;
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
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/b$c;->a:Lcom/cloud/hisavana/sdk/common/tranmeasure/b;

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
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/b$c;->a:Lcom/cloud/hisavana/sdk/common/tranmeasure/b;

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
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/b$c;->a:Lcom/cloud/hisavana/sdk/common/tranmeasure/b;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/tranmeasure/b;->f(Lcom/cloud/hisavana/sdk/common/tranmeasure/b;)Landroid/os/Handler;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/b$c;->a:Lcom/cloud/hisavana/sdk/common/tranmeasure/b;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/tranmeasure/b;->f(Lcom/cloud/hisavana/sdk/common/tranmeasure/b;)Landroid/os/Handler;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/b$c;->a:Lcom/cloud/hisavana/sdk/common/tranmeasure/b;

    .line 24
    .line 25
    invoke-static {v1}, Lcom/cloud/hisavana/sdk/common/tranmeasure/b;->g(Lcom/cloud/hisavana/sdk/common/tranmeasure/b;)Ljava/lang/Runnable;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/b$c;->a:Lcom/cloud/hisavana/sdk/common/tranmeasure/b;

    .line 33
    .line 34
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/tranmeasure/b;->f(Lcom/cloud/hisavana/sdk/common/tranmeasure/b;)Landroid/os/Handler;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/b$c;->a:Lcom/cloud/hisavana/sdk/common/tranmeasure/b;

    .line 39
    .line 40
    invoke-static {v1}, Lcom/cloud/hisavana/sdk/common/tranmeasure/b;->h(Lcom/cloud/hisavana/sdk/common/tranmeasure/b;)Ljava/lang/Runnable;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    const-wide/16 v2, 0xc8

    .line 45
    .line 46
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 47
    .line 48
    .line 49
    :cond_0
    return-void
.end method
