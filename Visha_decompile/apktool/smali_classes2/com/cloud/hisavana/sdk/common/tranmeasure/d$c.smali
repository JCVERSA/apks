.class public Lcom/cloud/hisavana/sdk/common/tranmeasure/d$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cloud/sdk/commonutil/util/Preconditions$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/hisavana/sdk/common/tranmeasure/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final a:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/cloud/hisavana/sdk/common/tranmeasure/d;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/d$c;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onRun()V
    .locals 4

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/d$c;->a:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/d;

    if-nez p0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/d;->b:Lcom/cloud/hisavana/sdk/common/tranmeasure/d$b;

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/common/tranmeasure/d;->g()Ljava/lang/Object;

    move-result-object p0

    if-eqz v0, :cond_1

    if-eqz p0, :cond_1

    invoke-static {}, Likd;->b()Likd;

    move-result-object v1

    const-string/jumbo v2, "ssp"

    const-string v3, "----------------> \u66dd\u5149\u56de\u8c03"

    invoke-virtual {v1, v2, v3}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, p0}, Lcom/cloud/hisavana/sdk/common/tranmeasure/d$b;->a(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
