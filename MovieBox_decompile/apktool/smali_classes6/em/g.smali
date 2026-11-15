.class public final synthetic Lem/g;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Landroid/widget/TextView;

.field public final synthetic b:Lem/l;

.field public final synthetic c:Lcom/transsion/memberapi/MemberTaskItem;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/TextView;Lem/l;Lcom/transsion/memberapi/MemberTaskItem;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lem/g;->a:Landroid/widget/TextView;

    .line 5
    .line 6
    iput-object p2, p0, Lem/g;->b:Lem/l;

    .line 7
    .line 8
    iput-object p3, p0, Lem/g;->c:Lcom/transsion/memberapi/MemberTaskItem;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lem/g;->a:Landroid/widget/TextView;

    .line 2
    .line 3
    iget-object v1, p0, Lem/g;->b:Lem/l;

    .line 4
    .line 5
    iget-object v2, p0, Lem/g;->c:Lcom/transsion/memberapi/MemberTaskItem;

    .line 6
    .line 7
    invoke-static {v0, v1, v2, p1}, Lem/l;->A(Landroid/widget/TextView;Lem/l;Lcom/transsion/memberapi/MemberTaskItem;Landroid/view/View;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
