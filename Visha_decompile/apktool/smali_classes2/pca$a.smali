.class public Lpca$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hisavana/common/utils/RunTimer$TimeOutCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpca;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lpca;


# direct methods
.method public constructor <init>(Lpca;)V
    .locals 0

    iput-object p1, p0, Lpca$a;->a:Lpca;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isTimeOut()V
    .locals 3

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    const-string v1, "ad_flow"

    const-string v2, "TBaseAd --> Load ad is time out "

    invoke-virtual {v0, v1, v2}, Lja1;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lpca$a;->a:Lpca;

    invoke-virtual {v0}, Lpca;->clearCurrentAd()V

    iget-object p0, p0, Lpca$a;->a:Lpca;

    iget-object p0, p0, Lpca;->h:Lrud;

    if-eqz p0, :cond_0

    sget-object v0, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_FILL_FAILED_WITH_MEDIATION_TIME_OUT:Lcom/hisavana/common/bean/TAdErrorCode;

    invoke-virtual {p0, v0}, Lrud;->onError(Lcom/hisavana/common/bean/TAdErrorCode;)V

    :cond_0
    return-void
.end method
