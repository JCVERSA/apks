.class public Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity$a;
.super Lfo1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->T0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity$a;->b:Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;

    invoke-direct {p0}, Lfo1;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity$a;->b:Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;

    invoke-static {p0}, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->M0(Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;)V

    const-string p0, "vd_ott_hislog_cl"

    invoke-static {p0}, Lp06;->d0(Ljava/lang/String;)V

    invoke-static {}, Lcom/transsion/palmsdk/b;->s()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    invoke-static {p0}, Lcom/transsion/palmsdk/b;->C(Landroid/app/Activity;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    invoke-static {p0}, Lcom/transsion/palmsdk/b;->g(Landroid/app/Activity;)V

    :goto_0
    const-string p0, "vd_ott_history_more_login_cl"

    invoke-static {p0}, Lhb0;->markDirect(Ljava/lang/String;)V

    return-void
.end method
