.class public Lcom/hisavana/mediation/a$b;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hisavana/mediation/a;-><init>(Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;Lvid;Lrud;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/hisavana/mediation/a;


# direct methods
.method public constructor <init>(Lcom/hisavana/mediation/a;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/hisavana/mediation/a$b;->a:Lcom/hisavana/mediation/a;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3e9

    const-string v2, "CacheHandler"

    if-eq v0, v1, :cond_1

    const/16 v1, 0x3ea

    if-eq v0, v1, :cond_0

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of p1, p0, Lcom/hisavana/common/interfacz/Iad;

    if-eqz p1, :cond_2

    check-cast p0, Lcom/hisavana/common/interfacz/Iad;

    invoke-interface {p0}, Lcom/hisavana/common/interfacz/Iad;->loadAd()V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p1

    const-string v0, "receive MSG_BIDDING_WAITING..."

    invoke-virtual {p1, v2, v0}, Lja1;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/hisavana/mediation/a$b;->a:Lcom/hisavana/mediation/a;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/hisavana/mediation/a;->U(I)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p1

    const-string v0, "receive MSG_REQUEST_NEXT_GROUP_WAITING..."

    invoke-virtual {p1, v2, v0}, Lja1;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/hisavana/mediation/a$b;->a:Lcom/hisavana/mediation/a;

    invoke-static {p0}, Lcom/hisavana/mediation/a;->s(Lcom/hisavana/mediation/a;)Z

    :cond_2
    :goto_0
    return-void
.end method
