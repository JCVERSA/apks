.class final Lcom/cloud/hisavana/sdk/J$b$a;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Ls74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/J$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Ls74;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lnk1;",
        "Lzfb;",
        "<anonymous>",
        "(Lnk1;)V"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation

.annotation runtime Lnt1;
    c = "com.cloud.hisavana.sdk.common.activity.base.BaseTemplateActivity$loadTemplate$1$1$1"
    f = "BaseTemplateActivity.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/cloud/hisavana/sdk/J;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/cloud/hisavana/sdk/J;Lwh1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/cloud/hisavana/sdk/J;",
            "Lwh1<",
            "-",
            "Lcom/cloud/hisavana/sdk/J$b$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/J$b$a;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/J$b$a;->c:Lcom/cloud/hisavana/sdk/J;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILwh1;)V

    return-void
.end method


# virtual methods
.method public final a(Lnk1;Lwh1;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnk1;",
            "Lwh1<",
            "-",
            "Lzfb;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/cloud/hisavana/sdk/J$b$a;->create(Ljava/lang/Object;Lwh1;)Lwh1;

    move-result-object p0

    check-cast p0, Lcom/cloud/hisavana/sdk/J$b$a;

    sget-object p1, Lzfb;->a:Lzfb;

    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/J$b$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final create(Ljava/lang/Object;Lwh1;)Lwh1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lwh1<",
            "*>;)",
            "Lwh1<",
            "Lzfb;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/cloud/hisavana/sdk/J$b$a;

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/J$b$a;->b:Ljava/lang/String;

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/J$b$a;->c:Lcom/cloud/hisavana/sdk/J;

    invoke-direct {p1, v0, p0, p2}, Lcom/cloud/hisavana/sdk/J$b$a;-><init>(Ljava/lang/String;Lcom/cloud/hisavana/sdk/J;Lwh1;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lnk1;

    check-cast p2, Lwh1;

    invoke-virtual {p0, p1, p2}, Lcom/cloud/hisavana/sdk/J$b$a;->a(Lnk1;Lwh1;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    iget v0, p0, Lcom/cloud/hisavana/sdk/J$b$a;->a:I

    if-nez v0, :cond_4

    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/J$b$a;->b:Ljava/lang/String;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/J$b$a;->c:Lcom/cloud/hisavana/sdk/J;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/J;->q()Lcom/cloud/hisavana/sdk/common/widget/TemplateAdWebView;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/J$b$a;->b:Ljava/lang/String;

    const-string v1, "$htmlStr"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/cloud/hisavana/sdk/common/widget/TemplateAdWebView;->loadTemplate(Ljava/lang/String;)V

    :cond_1
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/J$b$a;->c:Lcom/cloud/hisavana/sdk/J;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/J;->q()Lcom/cloud/hisavana/sdk/common/widget/TemplateAdWebView;

    move-result-object p1

    if-eqz p1, :cond_2

    new-instance v0, Lcom/cloud/hisavana/sdk/J$a;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/J$b$a;->c:Lcom/cloud/hisavana/sdk/J;

    invoke-direct {v0, v1}, Lcom/cloud/hisavana/sdk/J$a;-><init>(Lcom/cloud/hisavana/sdk/J;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_2
    invoke-static {}, Lcom/cloud/hisavana/sdk/common/tranmeasure/e;->c()Lcom/cloud/hisavana/sdk/common/tranmeasure/e;

    move-result-object p1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/J$b$a;->c:Lcom/cloud/hisavana/sdk/J;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/J;->m()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/J$b$a;->c:Lcom/cloud/hisavana/sdk/J;

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/J;->q()Lcom/cloud/hisavana/sdk/common/widget/TemplateAdWebView;

    move-result-object v1

    new-instance v2, Lcom/cloud/hisavana/sdk/J$b$a$a;

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/J$b$a;->c:Lcom/cloud/hisavana/sdk/J;

    invoke-direct {v2, p0}, Lcom/cloud/hisavana/sdk/J$b$a$a;-><init>(Lcom/cloud/hisavana/sdk/J;)V

    invoke-virtual {p1, v0, v1, v2}, Lcom/cloud/hisavana/sdk/common/tranmeasure/e;->e(Ljava/lang/Object;Landroid/view/View;Lcom/cloud/hisavana/sdk/common/tranmeasure/d$b;)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0

    :cond_3
    :goto_0
    invoke-static {}, Likd;->b()Likd;

    move-result-object p1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/J$b$a;->c:Lcom/cloud/hisavana/sdk/J;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/J;->p()Ljava/lang/String;

    move-result-object v0

    const-string v1, "read html error"

    invoke-virtual {p1, v0, v1}, Lja1;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/J$b$a;->c:Lcom/cloud/hisavana/sdk/J;

    sget-object v0, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_TEMPLATE_HTML_READ_FAILED:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    const-string v1, "ERROR_TEMPLATE_HTML_READ_FAILED"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/cloud/hisavana/sdk/J;->e(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/J$b$a;->c:Lcom/cloud/hisavana/sdk/J;

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/J;->a()V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
