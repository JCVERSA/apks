.class public Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity$a;
.super Leo1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity$a;->c:Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;

    invoke-direct {p0, p2}, Leo1;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity$a;->c:Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;

    invoke-static {p0}, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->L0(Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;)V

    const-string p0, "vd_ott_farlog_cl"

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
    return-void
.end method
