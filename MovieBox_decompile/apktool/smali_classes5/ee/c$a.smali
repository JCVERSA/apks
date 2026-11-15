.class public Lee/c$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/hisavana/common/bean/AdCache$AdCacheExpiredWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lee/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lee/c;


# direct methods
.method public constructor <init>(Lee/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lee/c$a;->a:Lee/c;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onExpired(Lcom/hisavana/common/interfacz/ICacheAd;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "CacheHandler"

    .line 6
    .line 7
    const-string v1, "ad expired"

    .line 8
    .line 9
    invoke-virtual {p1, v0, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
