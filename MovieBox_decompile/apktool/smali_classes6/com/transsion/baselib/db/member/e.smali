.class public final synthetic Lcom/transsion/baselib/db/member/e;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/baselib/db/member/g;

.field public final synthetic b:Lcom/transsion/baselib/db/member/MemberResolutionBean;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/baselib/db/member/g;Lcom/transsion/baselib/db/member/MemberResolutionBean;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/baselib/db/member/e;->a:Lcom/transsion/baselib/db/member/g;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/transsion/baselib/db/member/e;->b:Lcom/transsion/baselib/db/member/MemberResolutionBean;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/member/e;->a:Lcom/transsion/baselib/db/member/g;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/baselib/db/member/e;->b:Lcom/transsion/baselib/db/member/MemberResolutionBean;

    .line 4
    .line 5
    check-cast p1, Ly3/b;

    .line 6
    .line 7
    invoke-static {v0, v1, p1}, Lcom/transsion/baselib/db/member/g;->i(Lcom/transsion/baselib/db/member/g;Lcom/transsion/baselib/db/member/MemberResolutionBean;Ly3/b;)Lkotlin/Unit;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method
