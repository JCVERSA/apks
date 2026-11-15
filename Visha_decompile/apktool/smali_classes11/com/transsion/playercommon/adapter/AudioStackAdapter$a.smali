.class public Lcom/transsion/playercommon/adapter/AudioStackAdapter$a;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/playercommon/adapter/AudioStackAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public p:Landroid/widget/RelativeLayout;

.field public q:Landroid/widget/FrameLayout;

.field public r:Landroid/widget/TextView;

.field public s:Landroid/widget/TextView;

.field public t:Lcom/transsion/widgets/BadgeView;

.field public u:Landroid/widget/ImageView;

.field public final synthetic v:Lcom/transsion/playercommon/adapter/AudioStackAdapter;


# direct methods
.method public constructor <init>(Lcom/transsion/playercommon/adapter/AudioStackAdapter;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/adapter/AudioStackAdapter$a;->v:Lcom/transsion/playercommon/adapter/AudioStackAdapter;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    sget p1, Lcom/transsion/playercommon/R$id;->rl_audio_stack:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/transsion/playercommon/adapter/AudioStackAdapter$a;->p:Landroid/widget/RelativeLayout;

    sget p1, Lcom/transsion/playercommon/R$id;->fl_play_status:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/transsion/playercommon/adapter/AudioStackAdapter$a;->q:Landroid/widget/FrameLayout;

    sget p1, Lcom/transsion/playercommon/R$id;->tv_name:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/transsion/playercommon/adapter/AudioStackAdapter$a;->r:Landroid/widget/TextView;

    sget p1, Lcom/transsion/playercommon/R$id;->tv_author:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/transsion/playercommon/adapter/AudioStackAdapter$a;->s:Landroid/widget/TextView;

    sget p1, Lcom/transsion/playercommon/R$id;->tv_stack_num:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/widgets/BadgeView;

    iput-object p1, p0, Lcom/transsion/playercommon/adapter/AudioStackAdapter$a;->t:Lcom/transsion/widgets/BadgeView;

    sget p1, Lcom/transsion/playercommon/R$id;->imv_not_receive:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/transsion/playercommon/adapter/AudioStackAdapter$a;->u:Landroid/widget/ImageView;

    return-void
.end method
