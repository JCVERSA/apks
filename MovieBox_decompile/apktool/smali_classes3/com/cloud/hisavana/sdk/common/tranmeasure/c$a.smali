.class Lcom/cloud/hisavana/sdk/common/tranmeasure/c$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/sdk/commonutil/util/Preconditions$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/common/tranmeasure/c;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cloud/hisavana/sdk/common/tranmeasure/c;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/common/tranmeasure/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/c$a;->a:Lcom/cloud/hisavana/sdk/common/tranmeasure/c;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onRun()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/c$a;->a:Lcom/cloud/hisavana/sdk/common/tranmeasure/c;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/tranmeasure/c;->a(Lcom/cloud/hisavana/sdk/common/tranmeasure/c;)Lcom/cloud/hisavana/sdk/common/tranmeasure/d;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/c$a;->a:Lcom/cloud/hisavana/sdk/common/tranmeasure/c;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/tranmeasure/c;->a(Lcom/cloud/hisavana/sdk/common/tranmeasure/c;)Lcom/cloud/hisavana/sdk/common/tranmeasure/d;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v0, v0, Lcom/cloud/hisavana/sdk/common/tranmeasure/d;->b:Lcom/cloud/hisavana/sdk/common/tranmeasure/d$b;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/c$a;->a:Lcom/cloud/hisavana/sdk/common/tranmeasure/c;

    .line 20
    .line 21
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/tranmeasure/c;->a(Lcom/cloud/hisavana/sdk/common/tranmeasure/c;)Lcom/cloud/hisavana/sdk/common/tranmeasure/d;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/tranmeasure/d;->g()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/c$a;->a:Lcom/cloud/hisavana/sdk/common/tranmeasure/c;

    .line 32
    .line 33
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/tranmeasure/c;->a(Lcom/cloud/hisavana/sdk/common/tranmeasure/c;)Lcom/cloud/hisavana/sdk/common/tranmeasure/d;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iget-object v0, v0, Lcom/cloud/hisavana/sdk/common/tranmeasure/d;->b:Lcom/cloud/hisavana/sdk/common/tranmeasure/d$b;

    .line 38
    .line 39
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/c$a;->a:Lcom/cloud/hisavana/sdk/common/tranmeasure/c;

    .line 40
    .line 41
    invoke-static {v1}, Lcom/cloud/hisavana/sdk/common/tranmeasure/c;->a(Lcom/cloud/hisavana/sdk/common/tranmeasure/c;)Lcom/cloud/hisavana/sdk/common/tranmeasure/d;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/common/tranmeasure/d;->g()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-interface {v0, v1}, Lcom/cloud/hisavana/sdk/common/tranmeasure/d$b;->a(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    :cond_0
    return-void
.end method
