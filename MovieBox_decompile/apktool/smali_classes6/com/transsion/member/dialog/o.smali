.class public final synthetic Lcom/transsion/member/dialog/o;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic a:Lcom/transsion/member/view/CheckInView;

.field public final synthetic b:Lcom/transsion/member/dialog/MemberTaskCheckInDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/member/view/CheckInView;Lcom/transsion/member/dialog/MemberTaskCheckInDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/member/dialog/o;->a:Lcom/transsion/member/view/CheckInView;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/transsion/member/dialog/o;->b:Lcom/transsion/member/dialog/MemberTaskCheckInDialog;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/member/dialog/o;->a:Lcom/transsion/member/view/CheckInView;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/member/dialog/o;->b:Lcom/transsion/member/dialog/MemberTaskCheckInDialog;

    .line 4
    .line 5
    check-cast p1, Ljava/lang/Integer;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    check-cast p2, Ljava/lang/Integer;

    .line 12
    .line 13
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    invoke-static {v0, v1, p1, p2}, Lcom/transsion/member/dialog/MemberTaskCheckInDialog;->n0(Lcom/transsion/member/view/CheckInView;Lcom/transsion/member/dialog/MemberTaskCheckInDialog;II)Lkotlin/Unit;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1
.end method
