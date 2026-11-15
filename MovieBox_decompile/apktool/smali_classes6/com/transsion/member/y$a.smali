.class public final Lcom/transsion/member/y$a;
.super Ldg/a;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/member/y;->h(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/transsion/member/y;


# direct methods
.method constructor <init>(Lcom/transsion/member/y;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/member/y$a;->d:Lcom/transsion/member/y;

    .line 2
    .line 3
    invoke-direct {p0}, Ldg/a;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/transsion/member/y$a;->d:Lcom/transsion/member/y;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsion/member/y;->d(Lcom/transsion/member/y;)Landroidx/lifecycle/b0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/transsion/member/i0;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x0

    .line 11
    invoke-direct {v1, v2, p1, p2, v3}, Lcom/transsion/member/i0;-><init>(ZLjava/lang/String;Ljava/lang/String;Lcom/transsion/member/bean/request/MemberPromoCodeRes;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/transsion/member/bean/request/MemberPromoCodeRes;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/transsion/member/y$a;->e(Lcom/transsion/member/bean/request/MemberPromoCodeRes;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public e(Lcom/transsion/member/bean/request/MemberPromoCodeRes;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Ldg/a;->c(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/transsion/member/y$a;->d:Lcom/transsion/member/y;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/transsion/member/y;->d(Lcom/transsion/member/y;)Landroidx/lifecycle/b0;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Lcom/transsion/member/i0;

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-direct {v1, v2, v3, v3, p1}, Lcom/transsion/member/i0;-><init>(ZLjava/lang/String;Ljava/lang/String;Lcom/transsion/member/bean/request/MemberPromoCodeRes;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
