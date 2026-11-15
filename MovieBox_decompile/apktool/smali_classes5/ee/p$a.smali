.class public Lee/p$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/hisavana/common/interfacz/QueryPriceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lee/p;->i(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lee/p;


# direct methods
.method public constructor <init>(Lee/p;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lee/p$a;->b:Lee/p;

    .line 2
    .line 3
    iput-object p2, p0, Lee/p$a;->a:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onQueryPriceFailed()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "PreloadHandler"

    .line 6
    .line 7
    const-string v2, "receive query price failed"

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lee/p$a;->b:Lee/p;

    .line 13
    .line 14
    iget-object v1, p0, Lee/p$a;->a:Landroid/content/Context;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-static {v0, v1, v2}, Lee/p;->f(Lee/p;Landroid/content/Context;Ljava/util/List;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public onQueryPriceSuccess(Ljava/util/List;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "PreloadHandler"

    .line 6
    .line 7
    const-string v2, "CacheHandler --> queryPrice --> receive query price success"

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lee/p$a;->b:Lee/p;

    .line 13
    .line 14
    iget-object v1, p0, Lee/p$a;->a:Landroid/content/Context;

    .line 15
    .line 16
    invoke-static {v0, v1, p1}, Lee/p;->f(Lee/p;Landroid/content/Context;Ljava/util/List;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
