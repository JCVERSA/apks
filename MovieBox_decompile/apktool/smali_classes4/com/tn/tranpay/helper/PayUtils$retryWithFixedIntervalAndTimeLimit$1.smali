.class final Lcom/tn/tranpay/helper/PayUtils$retryWithFixedIntervalAndTimeLimit$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tn/tranpay/helper/PayUtils;->m(JJLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlin/coroutines/jvm/internal/ContinuationImpl;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.tn.tranpay.helper.PayUtils"
    f = "PayUtils.kt"
    l = {
        0x63,
        0x70
    }
    m = "retryWithFixedIntervalAndTimeLimit"
.end annotation


# instance fields
.field J$0:J

.field J$1:J

.field J$2:J

.field L$0:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lcom/tn/tranpay/helper/PayUtils;


# direct methods
.method constructor <init>(Lcom/tn/tranpay/helper/PayUtils;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tn/tranpay/helper/PayUtils;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/tn/tranpay/helper/PayUtils$retryWithFixedIntervalAndTimeLimit$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/tn/tranpay/helper/PayUtils$retryWithFixedIntervalAndTimeLimit$1;->this$0:Lcom/tn/tranpay/helper/PayUtils;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    iput-object p1, p0, Lcom/tn/tranpay/helper/PayUtils$retryWithFixedIntervalAndTimeLimit$1;->result:Ljava/lang/Object;

    .line 2
    .line 3
    iget p1, p0, Lcom/tn/tranpay/helper/PayUtils$retryWithFixedIntervalAndTimeLimit$1;->label:I

    .line 4
    .line 5
    const/high16 v0, -0x80000000

    .line 6
    .line 7
    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Lcom/tn/tranpay/helper/PayUtils$retryWithFixedIntervalAndTimeLimit$1;->label:I

    .line 9
    .line 10
    iget-object v0, p0, Lcom/tn/tranpay/helper/PayUtils$retryWithFixedIntervalAndTimeLimit$1;->this$0:Lcom/tn/tranpay/helper/PayUtils;

    .line 11
    .line 12
    const-wide/16 v3, 0x0

    .line 13
    .line 14
    const/4 v5, 0x0

    .line 15
    const-wide/16 v1, 0x0

    .line 16
    .line 17
    move-object v6, p0

    .line 18
    invoke-virtual/range {v0 .. v6}, Lcom/tn/tranpay/helper/PayUtils;->m(JJLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1
.end method
