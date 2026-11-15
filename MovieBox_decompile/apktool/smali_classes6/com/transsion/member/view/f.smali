.class public final synthetic Lcom/transsion/member/view/f;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/member/view/InviteUserView;

.field public final synthetic b:I

.field public final synthetic c:Lcom/transsion/member/view/InviteUserView$e;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/member/view/InviteUserView;ILcom/transsion/member/view/InviteUserView$e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/member/view/f;->a:Lcom/transsion/member/view/InviteUserView;

    .line 5
    .line 6
    iput p2, p0, Lcom/transsion/member/view/f;->b:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/transsion/member/view/f;->c:Lcom/transsion/member/view/InviteUserView$e;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/member/view/f;->a:Lcom/transsion/member/view/InviteUserView;

    .line 2
    .line 3
    iget v1, p0, Lcom/transsion/member/view/f;->b:I

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/member/view/f;->c:Lcom/transsion/member/view/InviteUserView$e;

    .line 6
    .line 7
    invoke-static {v0, v1, v2, p1}, Lcom/transsion/member/view/InviteUserView$d;->g(Lcom/transsion/member/view/InviteUserView;ILcom/transsion/member/view/InviteUserView$e;Landroid/view/View;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
