.class Lcom/cloud/hisavana/sdk/i4$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/hisavana/sdk/s5$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/i4;->d(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cloud/hisavana/sdk/i4;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/i4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/i4$a;->a:Lcom/cloud/hisavana/sdk/i4;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/i4$a;->a:Lcom/cloud/hisavana/sdk/i4;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/i4;->a(Lcom/cloud/hisavana/sdk/i4;)Lcom/cloud/hisavana/sdk/i4$f;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/i4$a;->a:Lcom/cloud/hisavana/sdk/i4;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/i4;->a(Lcom/cloud/hisavana/sdk/i4;)Lcom/cloud/hisavana/sdk/i4$f;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0, p1, p2}, Lcom/cloud/hisavana/sdk/i4$f;->a(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Landroid/os/Bundle;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public b(Ljava/util/List;Ljava/util/List;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/i4$a;->a:Lcom/cloud/hisavana/sdk/i4;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/cloud/hisavana/sdk/i4;->a(Lcom/cloud/hisavana/sdk/i4;)Lcom/cloud/hisavana/sdk/i4$f;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/i4$a;->a:Lcom/cloud/hisavana/sdk/i4;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/cloud/hisavana/sdk/i4;->a(Lcom/cloud/hisavana/sdk/i4;)Lcom/cloud/hisavana/sdk/i4$f;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-interface {p1, p2, p3}, Lcom/cloud/hisavana/sdk/i4$f;->b(Ljava/util/List;Landroid/os/Bundle;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method
