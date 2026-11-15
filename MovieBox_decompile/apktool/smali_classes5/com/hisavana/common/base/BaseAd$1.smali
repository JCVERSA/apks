.class Lcom/hisavana/common/base/BaseAd$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/hisavana/common/utils/RunTimer$TimeOutCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hisavana/common/base/BaseAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hisavana/common/base/BaseAd;


# direct methods
.method constructor <init>(Lcom/hisavana/common/base/BaseAd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hisavana/common/base/BaseAd$1;->this$0:Lcom/hisavana/common/base/BaseAd;

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
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "Load ad is time out"

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    iget-object v2, p0, Lcom/hisavana/common/base/BaseAd$1;->this$0:Lcom/hisavana/common/base/BaseAd;

    .line 16
    .line 17
    invoke-virtual {v2}, Lcom/hisavana/common/base/BaseAd;->getLogString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const-string v2, "BaseAd"

    .line 29
    .line 30
    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd$1;->this$0:Lcom/hisavana/common/base/BaseAd;

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/hisavana/common/base/BaseAd;->onTimeOut()V

    .line 36
    .line 37
    .line 38
    return-void
.end method
