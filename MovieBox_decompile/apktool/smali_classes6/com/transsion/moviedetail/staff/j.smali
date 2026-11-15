.class public final synthetic Lcom/transsion/moviedetail/staff/j;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic a:Lcom/transsion/moviedetail/staff/MovieStaffActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/moviedetail/staff/MovieStaffActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/moviedetail/staff/j;->a:Lcom/transsion/moviedetail/staff/MovieStaffActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/moviedetail/staff/j;->a:Lcom/transsion/moviedetail/staff/MovieStaffActivity;

    .line 2
    .line 3
    check-cast p1, Ljava/lang/Integer;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    check-cast p2, Lkotlin/Pair;

    .line 10
    .line 11
    invoke-static {v0, p1, p2}, Lcom/transsion/moviedetail/staff/MovieStaffActivity;->g0(Lcom/transsion/moviedetail/staff/MovieStaffActivity;ILkotlin/Pair;)Lkotlin/Unit;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method
