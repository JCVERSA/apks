.class public final synthetic Lcom/transsion/member/view/b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/member/view/CheckInView;

.field public final synthetic b:I

.field public final synthetic c:Lcom/transsion/member/view/CheckInView$b;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/member/view/CheckInView;ILcom/transsion/member/view/CheckInView$b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/member/view/b;->a:Lcom/transsion/member/view/CheckInView;

    .line 5
    .line 6
    iput p2, p0, Lcom/transsion/member/view/b;->b:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/transsion/member/view/b;->c:Lcom/transsion/member/view/CheckInView$b;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/member/view/b;->a:Lcom/transsion/member/view/CheckInView;

    .line 2
    .line 3
    iget v1, p0, Lcom/transsion/member/view/b;->b:I

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/member/view/b;->c:Lcom/transsion/member/view/CheckInView$b;

    .line 6
    .line 7
    invoke-static {v0, v1, v2, p1}, Lcom/transsion/member/view/CheckInView$a;->g(Lcom/transsion/member/view/CheckInView;ILcom/transsion/member/view/CheckInView$b;Landroid/view/View;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
