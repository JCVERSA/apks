.class public Lcom/hisavana/mediation/b$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hisavana/mediation/b;-><init>(Lvid;Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lcom/hisavana/mediation/b;


# direct methods
.method public constructor <init>(Lcom/hisavana/mediation/b;Landroid/os/Looper;Z)V
    .locals 0

    iput-object p1, p0, Lcom/hisavana/mediation/b$a;->b:Lcom/hisavana/mediation/b;

    iput-boolean p3, p0, Lcom/hisavana/mediation/b$a;->a:Z

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x65

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p1

    const-string v0, "QueryPriceCenter"

    const-string v1, "receive MSG_QUERY_TIME_OUT message"

    invoke-virtual {p1, v0, v1}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/hisavana/mediation/b$a;->a:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/hisavana/mediation/b$a;->b:Lcom/hisavana/mediation/b;

    invoke-static {p0, v0}, Lcom/hisavana/mediation/b;->g(Lcom/hisavana/mediation/b;Z)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/hisavana/mediation/b$a;->b:Lcom/hisavana/mediation/b;

    const/4 p1, 0x0

    invoke-static {p0, v0, p1}, Lcom/hisavana/mediation/b;->h(Lcom/hisavana/mediation/b;ZLjava/lang/String;)V

    :goto_0
    return-void
.end method
