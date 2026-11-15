.class public Lcom/transsion/playercommon/adapter/VideoStackAdapter$a;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/playercommon/adapter/VideoStackAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public p:Landroid/widget/RelativeLayout;

.field public q:Landroid/widget/ImageView;

.field public r:Landroid/widget/TextView;

.field public s:Lcom/transsion/widgets/BadgeView;

.field public t:Landroid/widget/ImageView;

.field public final synthetic u:Lcom/transsion/playercommon/adapter/VideoStackAdapter;


# direct methods
.method public constructor <init>(Lcom/transsion/playercommon/adapter/VideoStackAdapter;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/adapter/VideoStackAdapter$a;->u:Lcom/transsion/playercommon/adapter/VideoStackAdapter;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    sget p1, Lcom/transsion/playercommon/R$id;->rl_video_stack:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/transsion/playercommon/adapter/VideoStackAdapter$a;->p:Landroid/widget/RelativeLayout;

    sget p1, Lcom/transsion/playercommon/R$id;->iv_avatar:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/transsion/playercommon/adapter/VideoStackAdapter$a;->q:Landroid/widget/ImageView;

    sget p1, Lcom/transsion/playercommon/R$id;->tv_time:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/transsion/playercommon/adapter/VideoStackAdapter$a;->r:Landroid/widget/TextView;

    sget p1, Lcom/transsion/playercommon/R$id;->tv_stack_num:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/widgets/BadgeView;

    iput-object p1, p0, Lcom/transsion/playercommon/adapter/VideoStackAdapter$a;->s:Lcom/transsion/widgets/BadgeView;

    sget p1, Lcom/transsion/playercommon/R$id;->imv_not_receive:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/transsion/playercommon/adapter/VideoStackAdapter$a;->t:Landroid/widget/ImageView;

    return-void
.end method
