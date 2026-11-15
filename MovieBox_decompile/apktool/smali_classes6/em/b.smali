.class public final synthetic Lem/b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lem/c;

.field public final synthetic b:Lcom/transsion/memberapi/MemberTaskItem;

.field public final synthetic c:Lcom/transsion/member/view/CheckInView;


# direct methods
.method public synthetic constructor <init>(Lem/c;Lcom/transsion/memberapi/MemberTaskItem;Lcom/transsion/member/view/CheckInView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lem/b;->a:Lem/c;

    .line 5
    .line 6
    iput-object p2, p0, Lem/b;->b:Lcom/transsion/memberapi/MemberTaskItem;

    .line 7
    .line 8
    iput-object p3, p0, Lem/b;->c:Lcom/transsion/member/view/CheckInView;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lem/b;->a:Lem/c;

    .line 2
    .line 3
    iget-object v1, p0, Lem/b;->b:Lcom/transsion/memberapi/MemberTaskItem;

    .line 4
    .line 5
    iget-object v2, p0, Lem/b;->c:Lcom/transsion/member/view/CheckInView;

    .line 6
    .line 7
    check-cast p1, Lkotlin/Pair;

    .line 8
    .line 9
    invoke-static {v0, v1, v2, p1}, Lem/c;->z(Lem/c;Lcom/transsion/memberapi/MemberTaskItem;Lcom/transsion/member/view/CheckInView;Lkotlin/Pair;)Lkotlin/Unit;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method
