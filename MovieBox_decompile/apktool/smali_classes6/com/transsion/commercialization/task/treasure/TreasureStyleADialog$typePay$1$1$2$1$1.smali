.class public final Lcom/transsion/commercialization/task/treasure/TreasureStyleADialog$typePay$1$1$2$1$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/transsion/payment/lib/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/commercialization/task/treasure/TreasureStyleADialog;->H0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/commercialization/task/treasure/TreasureStyleADialog;


# direct methods
.method constructor <init>(Lcom/transsion/commercialization/task/treasure/TreasureStyleADialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/commercialization/task/treasure/TreasureStyleADialog$typePay$1$1$2$1$1;->a:Lcom/transsion/commercialization/task/treasure/TreasureStyleADialog;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Integer;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 1

    .line 1
    sget-object p3, Lwj/h;->a:Lwj/h;

    .line 2
    .line 3
    iget-object p4, p0, Lcom/transsion/commercialization/task/treasure/TreasureStyleADialog$typePay$1$1$2$1$1;->a:Lcom/transsion/commercialization/task/treasure/TreasureStyleADialog;

    .line 4
    .line 5
    invoke-virtual {p4}, Lcom/transsion/baseui/dialog/BaseDialog;->getClassTag()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p4

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string p4, " --> error(\u652f\u4ed8\u5931\u8d25) --> Payment failed "

    .line 18
    .line 19
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string p2, ", "

    .line 26
    .line 27
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p3, p1}, Lwj/h;->a(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public c(ILjava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1
    const-string p1, "balance"

    .line 2
    .line 3
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object p1, Lwj/h;->a:Lwj/h;

    .line 7
    .line 8
    iget-object p2, p0, Lcom/transsion/commercialization/task/treasure/TreasureStyleADialog$typePay$1$1$2$1$1;->a:Lcom/transsion/commercialization/task/treasure/TreasureStyleADialog;

    .line 9
    .line 10
    invoke-virtual {p2}, Lcom/transsion/baseui/dialog/BaseDialog;->getClassTag()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string p2, " --> success(\u652f\u4ed8\u6210\u529f) --> 1.\u6fc0\u52b1\u4efb\u52a1\u5b8c\u6210 -- 2. \u652f\u4ed8\u6210\u529f\uff0c\u8bf7\u6c42\u5927\u8f6c\u76d8\u4fe1\u606f"

    .line 23
    .line 24
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    invoke-virtual {p1, p2}, Lwj/h;->a(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lcom/transsion/commercialization/task/treasure/TreasureStyleADialog$typePay$1$1$2$1$1;->a:Lcom/transsion/commercialization/task/treasure/TreasureStyleADialog;

    .line 35
    .line 36
    invoke-static {p1}, Lcom/transsion/commercialization/task/treasure/TreasureStyleADialog;->s0(Lcom/transsion/commercialization/task/treasure/TreasureStyleADialog;)Lwj/g;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    if-eqz p1, :cond_0

    .line 41
    .line 42
    invoke-interface {p1}, Lwj/g;->onSuccess()V

    .line 43
    .line 44
    .line 45
    :cond_0
    iget-object p1, p0, Lcom/transsion/commercialization/task/treasure/TreasureStyleADialog$typePay$1$1$2$1$1;->a:Lcom/transsion/commercialization/task/treasure/TreasureStyleADialog;

    .line 46
    .line 47
    invoke-static {p1}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    new-instance v3, Lcom/transsion/commercialization/task/treasure/TreasureStyleADialog$typePay$1$1$2$1$1$success$1;

    .line 52
    .line 53
    iget-object p1, p0, Lcom/transsion/commercialization/task/treasure/TreasureStyleADialog$typePay$1$1$2$1$1;->a:Lcom/transsion/commercialization/task/treasure/TreasureStyleADialog;

    .line 54
    .line 55
    const/4 p2, 0x0

    .line 56
    invoke-direct {v3, p3, p1, p2}, Lcom/transsion/commercialization/task/treasure/TreasureStyleADialog$typePay$1$1$2$1$1$success$1;-><init>(Ljava/lang/String;Lcom/transsion/commercialization/task/treasure/TreasureStyleADialog;Lkotlin/coroutines/Continuation;)V

    .line 57
    .line 58
    .line 59
    const/4 v4, 0x3

    .line 60
    const/4 v5, 0x0

    .line 61
    const/4 v1, 0x0

    .line 62
    const/4 v2, 0x0

    .line 63
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 64
    .line 65
    .line 66
    return-void
.end method
