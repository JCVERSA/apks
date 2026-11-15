.class public Lfe/b$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/hisavana/common/utils/RunTimer$TimeOutCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfe/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lfe/b;


# direct methods
.method public constructor <init>(Lfe/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfe/b$a;->a:Lfe/b;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public isTimeOut()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "ad_flow"

    .line 6
    .line 7
    const-string v2, "TBaseAd --> Load ad is time out "

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lfe/b$a;->a:Lfe/b;

    .line 13
    .line 14
    invoke-virtual {v0}, Lfe/b;->clearCurrentAd()V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lfe/b$a;->a:Lfe/b;

    .line 18
    .line 19
    iget-object v0, v0, Lfe/b;->h:Lee/s;

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    sget-object v1, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_FILL_FAILED_WITH_MEDIATION_TIME_OUT:Lcom/hisavana/common/bean/TAdErrorCode;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lee/s;->onError(Lcom/hisavana/common/bean/TAdErrorCode;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method
