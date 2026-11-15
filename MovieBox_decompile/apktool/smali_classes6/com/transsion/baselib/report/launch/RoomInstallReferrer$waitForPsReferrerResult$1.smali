.class final Lcom/transsion/baselib/report/launch/RoomInstallReferrer$waitForPsReferrerResult$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/baselib/report/launch/RoomInstallReferrer;->k(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.transsion.baselib.report.launch.RoomInstallReferrer"
    f = "RoomInstallReferrer.kt"
    l = {
        0xc6
    }
    m = "waitForPsReferrerResult"
.end annotation


# instance fields
.field J$0:J

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lcom/transsion/baselib/report/launch/RoomInstallReferrer;


# direct methods
.method constructor <init>(Lcom/transsion/baselib/report/launch/RoomInstallReferrer;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/baselib/report/launch/RoomInstallReferrer;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/baselib/report/launch/RoomInstallReferrer$waitForPsReferrerResult$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/baselib/report/launch/RoomInstallReferrer$waitForPsReferrerResult$1;->this$0:Lcom/transsion/baselib/report/launch/RoomInstallReferrer;

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
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/transsion/baselib/report/launch/RoomInstallReferrer$waitForPsReferrerResult$1;->result:Ljava/lang/Object;

    .line 2
    .line 3
    iget p1, p0, Lcom/transsion/baselib/report/launch/RoomInstallReferrer$waitForPsReferrerResult$1;->label:I

    .line 4
    .line 5
    const/high16 v0, -0x80000000

    .line 6
    .line 7
    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Lcom/transsion/baselib/report/launch/RoomInstallReferrer$waitForPsReferrerResult$1;->label:I

    .line 9
    .line 10
    iget-object p1, p0, Lcom/transsion/baselib/report/launch/RoomInstallReferrer$waitForPsReferrerResult$1;->this$0:Lcom/transsion/baselib/report/launch/RoomInstallReferrer;

    .line 11
    .line 12
    invoke-static {p1, p0}, Lcom/transsion/baselib/report/launch/RoomInstallReferrer;->d(Lcom/transsion/baselib/report/launch/RoomInstallReferrer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1
.end method
