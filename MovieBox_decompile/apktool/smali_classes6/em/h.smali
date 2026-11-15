.class public final synthetic Lem/h;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lem/l;

.field public final synthetic b:Lcom/transsion/memberapi/MemberTaskItem;

.field public final synthetic c:Lcom/transsion/member/view/InviteUserView;

.field public final synthetic d:Landroid/widget/TextView;


# direct methods
.method public synthetic constructor <init>(Lem/l;Lcom/transsion/memberapi/MemberTaskItem;Lcom/transsion/member/view/InviteUserView;Landroid/widget/TextView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lem/h;->a:Lem/l;

    .line 5
    .line 6
    iput-object p2, p0, Lem/h;->b:Lcom/transsion/memberapi/MemberTaskItem;

    .line 7
    .line 8
    iput-object p3, p0, Lem/h;->c:Lcom/transsion/member/view/InviteUserView;

    .line 9
    .line 10
    iput-object p4, p0, Lem/h;->d:Landroid/widget/TextView;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lem/h;->a:Lem/l;

    .line 2
    .line 3
    iget-object v1, p0, Lem/h;->b:Lcom/transsion/memberapi/MemberTaskItem;

    .line 4
    .line 5
    iget-object v2, p0, Lem/h;->c:Lcom/transsion/member/view/InviteUserView;

    .line 6
    .line 7
    iget-object v3, p0, Lem/h;->d:Landroid/widget/TextView;

    .line 8
    .line 9
    check-cast p1, Lim/e;

    .line 10
    .line 11
    invoke-static {v0, v1, v2, v3, p1}, Lem/l;->C(Lem/l;Lcom/transsion/memberapi/MemberTaskItem;Lcom/transsion/member/view/InviteUserView;Landroid/widget/TextView;Lim/e;)Lkotlin/Unit;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method
