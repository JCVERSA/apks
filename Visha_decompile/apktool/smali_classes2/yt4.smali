.class public abstract Lyt4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/app/Activity;

.field public final b:Landroid/view/View;

.field public final c:Lmrd;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;Lmrd;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rootView"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "helper"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyt4;->a:Landroid/app/Activity;

    iput-object p2, p0, Lyt4;->b:Landroid/view/View;

    iput-object p3, p0, Lyt4;->c:Lmrd;

    return-void
.end method


# virtual methods
.method public final a()Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lyt4;->a:Landroid/app/Activity;

    return-object p0
.end method

.method public abstract b(Landroid/widget/ImageView;F)V
.end method

.method public abstract c(Lcom/cloud/hisavana/sdk/common/util/HSChronometer;)V
.end method

.method public abstract d(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
.end method

.method public abstract e(ZLcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;Landroid/view/View;)V
.end method

.method public final f()Lmrd;
    .locals 0

    iget-object p0, p0, Lyt4;->c:Lmrd;

    return-object p0
.end method

.method public final g()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lyt4;->b:Landroid/view/View;

    return-object p0
.end method

.method public abstract h()V
.end method

.method public abstract i()V
.end method

.method public abstract j()V
.end method

.method public abstract k()V
.end method

.method public abstract l()V
.end method
