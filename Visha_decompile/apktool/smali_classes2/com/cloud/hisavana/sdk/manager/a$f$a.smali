.class final Lcom/cloud/hisavana/sdk/manager/a$f$a;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Ls74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/manager/a$f;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.cloud.hisavana.sdk.manager.CustomTabsManager$checkAndLaunchCCTLandingPage$1$1"
    f = "CustomTabsManager.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field a:I

.field final synthetic b:Le74;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le74;"
        }
    .end annotation
.end field

.field final synthetic c:Lkotlin/jvm/internal/Ref$IntRef;


# direct methods
.method public constructor <init>(Le74;Lkotlin/jvm/internal/Ref$IntRef;Lwh1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le74;",
            "Lkotlin/jvm/internal/Ref$IntRef;",
            "Lwh1<",
            "-",
            "Lcom/cloud/hisavana/sdk/manager/a$f$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/manager/a$f$a;->b:Le74;

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/manager/a$f$a;->c:Lkotlin/jvm/internal/Ref$IntRef;

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

    invoke-virtual {p0, p1, p2}, Lcom/cloud/hisavana/sdk/manager/a$f$a;->create(Ljava/lang/Object;Lwh1;)Lwh1;

    move-result-object p0

    check-cast p0, Lcom/cloud/hisavana/sdk/manager/a$f$a;

    sget-object p1, Lzfb;->a:Lzfb;

    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/manager/a$f$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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

    new-instance p1, Lcom/cloud/hisavana/sdk/manager/a$f$a;

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/manager/a$f$a;->b:Le74;

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/manager/a$f$a;->c:Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {p1, v0, p0, p2}, Lcom/cloud/hisavana/sdk/manager/a$f$a;-><init>(Le74;Lkotlin/jvm/internal/Ref$IntRef;Lwh1;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lnk1;

    check-cast p2, Lwh1;

    invoke-virtual {p0, p1, p2}, Lcom/cloud/hisavana/sdk/manager/a$f$a;->a(Lnk1;Lwh1;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    iget v0, p0, Lcom/cloud/hisavana/sdk/manager/a$f$a;->a:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/manager/a$f$a;->b:Le74;

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/manager/a$f$a;->c:Lkotlin/jvm/internal/Ref$IntRef;

    iget p0, p0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-static {p0}, Lmk0;->b(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
