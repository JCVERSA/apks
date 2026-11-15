.class public final Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooOO0;
.super Landroid/os/CountDownTimer;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooOO0$OooO00o;
    }
.end annotation


# instance fields
.field public final OooO00o:Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooOO0$OooO00o;

.field public OooO0O0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public OooO0OO:I


# direct methods
.method public constructor <init>(JJLjava/util/List;Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooOO0$OooO00o;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooOO0$OooO00o;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "_timePoints"

    .line 2
    .line 3
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "timeCallback"

    .line 7
    .line 8
    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 12
    .line 13
    .line 14
    iput-object p6, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooOO0;->OooO00o:Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooOO0$OooO00o;

    .line 15
    .line 16
    invoke-static {p5}, Lkotlin/collections/CollectionsKt;->U0(Ljava/util/Collection;)Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooOO0;->OooO0O0:Ljava/util/List;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final OooO00o()J
    .locals 4

    .line 1
    iget v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooOO0;->OooO0OO:I

    .line 2
    .line 3
    int-to-long v0, v0

    .line 4
    const-wide/16 v2, 0x3e8

    .line 5
    .line 6
    mul-long/2addr v0, v2

    .line 7
    return-wide v0
.end method

.method public onFinish()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooOO0;->OooO00o:Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooOO0$OooO00o;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooOO0$OooO00o;->OooO00o()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onTick(J)V
    .locals 1

    .line 1
    iget p1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooOO0;->OooO0OO:I

    .line 2
    .line 3
    add-int/lit8 p1, p1, 0x1

    .line 4
    .line 5
    iput p1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooOO0;->OooO0OO:I

    .line 6
    .line 7
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooOO0;->OooO0O0:Ljava/util/List;

    .line 8
    .line 9
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-gtz p1, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget p1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooOO0;->OooO0OO:I

    .line 17
    .line 18
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooOO0;->OooO0O0:Ljava/util/List;

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    check-cast p2, Ljava/lang/Number;

    .line 26
    .line 27
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    if-ne p1, p2, :cond_1

    .line 32
    .line 33
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooOO0;->OooO0O0:Ljava/util/List;

    .line 34
    .line 35
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooOO0;->OooO00o:Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooOO0$OooO00o;

    .line 39
    .line 40
    invoke-interface {p1}, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooOO0$OooO00o;->OooO0OO()V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooOO0;->OooO00o:Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooOO0$OooO00o;

    .line 45
    .line 46
    invoke-interface {p1}, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooOO0$OooO00o;->OooO0O0()V

    .line 47
    .line 48
    .line 49
    :goto_0
    return-void
.end method
