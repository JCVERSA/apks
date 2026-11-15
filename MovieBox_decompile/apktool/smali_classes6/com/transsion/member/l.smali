.class public final synthetic Lcom/transsion/member/l;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic a:Lcom/transsion/member/MemberFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/member/MemberFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/member/l;->a:Lcom/transsion/member/MemberFragment;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/member/l;->a:Lcom/transsion/member/MemberFragment;

    .line 2
    .line 3
    check-cast p1, Lcom/transsion/memberapi/SkuItem;

    .line 4
    .line 5
    check-cast p2, Landroid/view/View;

    .line 6
    .line 7
    invoke-static {v0, p1, p2}, Lcom/transsion/member/MemberFragment;->m0(Lcom/transsion/member/MemberFragment;Lcom/transsion/memberapi/SkuItem;Landroid/view/View;)Lkotlin/Unit;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method
