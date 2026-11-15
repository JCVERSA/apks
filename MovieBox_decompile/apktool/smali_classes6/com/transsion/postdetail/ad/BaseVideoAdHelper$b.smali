.class public final Lcom/transsion/postdetail/ad/BaseVideoAdHelper$b;
.super Landroid/os/CountDownTimer;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->I(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/postdetail/ad/BaseVideoAdHelper;

.field final synthetic b:Lkotlin/jvm/internal/Ref$IntRef;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;Lkotlin/jvm/internal/Ref$IntRef;Ljava/lang/String;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$b;->a:Lcom/transsion/postdetail/ad/BaseVideoAdHelper;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$b;->b:Lkotlin/jvm/internal/Ref$IntRef;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$b;->c:Ljava/lang/String;

    .line 6
    .line 7
    const-wide/16 p1, 0x3e8

    .line 8
    .line 9
    invoke-direct {p0, p4, p5, p1, p2}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$b;->c:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "VideoStartBidScene"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$b;->a:Lcom/transsion/postdetail/ad/BaseVideoAdHelper;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->l2()V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$b;->a:Lcom/transsion/postdetail/ad/BaseVideoAdHelper;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-virtual {v0, v1}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->E1(I)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$b;->a:Lcom/transsion/postdetail/ad/BaseVideoAdHelper;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->P()V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$b;->a:Lcom/transsion/postdetail/ad/BaseVideoAdHelper;

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->Q()V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$b;->a:Lcom/transsion/postdetail/ad/BaseVideoAdHelper;

    .line 33
    .line 34
    iget-object v1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$b;->c:Ljava/lang/String;

    .line 35
    .line 36
    invoke-static {v0, v1}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->E(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public onTick(J)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$b;->a:Lcom/transsion/postdetail/ad/BaseVideoAdHelper;

    .line 2
    .line 3
    iget-object p2, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$b;->b:Lkotlin/jvm/internal/Ref$IntRef;

    .line 4
    .line 5
    iget v0, p2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 6
    .line 7
    add-int/lit8 v1, v0, -0x1

    .line 8
    .line 9
    iput v1, p2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->E1(I)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$b;->a:Lcom/transsion/postdetail/ad/BaseVideoAdHelper;

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->W()Lcom/transsion/postdetail/ui/view/AdCountDownView;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    iget-object p2, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$b;->a:Lcom/transsion/postdetail/ad/BaseVideoAdHelper;

    .line 23
    .line 24
    invoke-virtual {p2}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->y0()I

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    invoke-virtual {p1, p2}, Lcom/transsion/postdetail/ui/view/AdCountDownView;->refreshCountDown(I)V

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void
.end method
