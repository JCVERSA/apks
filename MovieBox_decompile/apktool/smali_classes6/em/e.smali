.class public final synthetic Lem/e;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic a:Lcom/transsion/member/view/InviteUserView;

.field public final synthetic b:Lcom/transsion/memberapi/MemberTaskItem;

.field public final synthetic c:Lem/l;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/member/view/InviteUserView;Lcom/transsion/memberapi/MemberTaskItem;Lem/l;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lem/e;->a:Lcom/transsion/member/view/InviteUserView;

    .line 5
    .line 6
    iput-object p2, p0, Lem/e;->b:Lcom/transsion/memberapi/MemberTaskItem;

    .line 7
    .line 8
    iput-object p3, p0, Lem/e;->c:Lem/l;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lem/e;->a:Lcom/transsion/member/view/InviteUserView;

    .line 2
    .line 3
    iget-object v1, p0, Lem/e;->b:Lcom/transsion/memberapi/MemberTaskItem;

    .line 4
    .line 5
    iget-object v2, p0, Lem/e;->c:Lem/l;

    .line 6
    .line 7
    check-cast p1, Ljava/lang/Integer;

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    check-cast p2, Ljava/lang/Integer;

    .line 14
    .line 15
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    invoke-static {v0, v1, v2, p1, p2}, Lem/l;->D(Lcom/transsion/member/view/InviteUserView;Lcom/transsion/memberapi/MemberTaskItem;Lem/l;II)Lkotlin/Unit;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    return-object p1
.end method
