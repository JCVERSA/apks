.class Lcom/cloud/hisavana/sdk/common/tranmeasure/e$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/common/tranmeasure/e;->e(Ljava/lang/Object;Landroid/view/View;Lcom/cloud/hisavana/sdk/common/tranmeasure/d$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lcom/cloud/hisavana/sdk/common/tranmeasure/d$b;

.field final synthetic d:Lcom/cloud/hisavana/sdk/common/tranmeasure/e;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/common/tranmeasure/e;Ljava/lang/Object;Landroid/view/View;Lcom/cloud/hisavana/sdk/common/tranmeasure/d$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/e$a;->d:Lcom/cloud/hisavana/sdk/common/tranmeasure/e;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/e$a;->a:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/e$a;->b:Landroid/view/View;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/e$a;->c:Lcom/cloud/hisavana/sdk/common/tranmeasure/d$b;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/cloud/hisavana/sdk/common/tranmeasure/e;->c()Lcom/cloud/hisavana/sdk/common/tranmeasure/e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/e$a;->a:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/cloud/hisavana/sdk/common/tranmeasure/e;->a(Lcom/cloud/hisavana/sdk/common/tranmeasure/e;Ljava/lang/Object;)Lcom/cloud/hisavana/sdk/common/tranmeasure/d;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/e$a;->b:Landroid/view/View;

    .line 12
    .line 13
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/e$a;->c:Lcom/cloud/hisavana/sdk/common/tranmeasure/d$b;

    .line 14
    .line 15
    invoke-virtual {v0, v1, v2}, Lcom/cloud/hisavana/sdk/common/tranmeasure/d;->b(Landroid/view/View;Lcom/cloud/hisavana/sdk/common/tranmeasure/d$b;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
