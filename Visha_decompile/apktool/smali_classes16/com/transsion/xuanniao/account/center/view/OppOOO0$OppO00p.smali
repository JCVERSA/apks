.class public Lcom/transsion/xuanniao/account/center/view/OppOOO0$OppO00p;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/xuanniao/account/center/view/OppOOO0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OppO00p"
.end annotation


# instance fields
.field public p:Ltech/palm/lib/widget/TagTextView;

.field public q:Landroid/widget/TextView;

.field public r:Landroid/widget/TextView;

.field public s:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    sget v0, Lcom/transsion/xuanniao/account/R$id;->fullName:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Ltech/palm/lib/widget/TagTextView;

    iput-object v0, p0, Lcom/transsion/xuanniao/account/center/view/OppOOO0$OppO00p;->p:Ltech/palm/lib/widget/TagTextView;

    sget v0, Lcom/transsion/xuanniao/account/R$id;->phone:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/xuanniao/account/center/view/OppOOO0$OppO00p;->q:Landroid/widget/TextView;

    sget v0, Lcom/transsion/xuanniao/account/R$id;->address:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/xuanniao/account/center/view/OppOOO0$OppO00p;->r:Landroid/widget/TextView;

    sget v0, Lcom/transsion/xuanniao/account/R$id;->edit:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/transsion/xuanniao/account/center/view/OppOOO0$OppO00p;->s:Landroid/widget/LinearLayout;

    return-void
.end method
