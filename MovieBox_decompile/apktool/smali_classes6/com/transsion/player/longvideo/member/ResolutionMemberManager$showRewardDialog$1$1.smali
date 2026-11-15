.class public final Lcom/transsion/player/longvideo/member/ResolutionMemberManager$showRewardDialog$1$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lnw/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/player/longvideo/member/ResolutionMemberManager;->i(Landroidx/fragment/app/FragmentManager;Lcom/transsion/memberapi/MemberSource;Lln/a;Ljava/lang/String;Lnw/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lln/a;

.field final synthetic b:Lnw/e;


# direct methods
.method constructor <init>(Lln/a;Lnw/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/player/longvideo/member/ResolutionMemberManager$showRewardDialog$1$1;->a:Lln/a;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/player/longvideo/member/ResolutionMemberManager$showRewardDialog$1$1;->b:Lnw/e;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 7

    .line 1
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v4, Lcom/transsion/player/longvideo/member/ResolutionMemberManager$showRewardDialog$1$1$onActivate$1;

    .line 10
    .line 11
    iget-object v0, p0, Lcom/transsion/player/longvideo/member/ResolutionMemberManager$showRewardDialog$1$1;->a:Lln/a;

    .line 12
    .line 13
    iget-object v2, p0, Lcom/transsion/player/longvideo/member/ResolutionMemberManager$showRewardDialog$1$1;->b:Lnw/e;

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    invoke-direct {v4, p1, v0, v2, v3}, Lcom/transsion/player/longvideo/member/ResolutionMemberManager$showRewardDialog$1$1$onActivate$1;-><init>(ZLln/a;Lnw/e;Lkotlin/coroutines/Continuation;)V

    .line 17
    .line 18
    .line 19
    const/4 v5, 0x3

    .line 20
    const/4 v6, 0x0

    .line 21
    const/4 v2, 0x0

    .line 22
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 23
    .line 24
    .line 25
    return-void
.end method
