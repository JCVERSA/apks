.class public Lcom/transsion/onlinevideo/widgets/topic/LabelViewHolder$a;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/onlinevideo/widgets/topic/LabelViewHolder;-><init>(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/transsion/onlinevideo/widgets/topic/LabelViewHolder;


# direct methods
.method public constructor <init>(Lcom/transsion/onlinevideo/widgets/topic/LabelViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/onlinevideo/widgets/topic/LabelViewHolder$a;->c:Lcom/transsion/onlinevideo/widgets/topic/LabelViewHolder;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    if-nez p2, :cond_0

    const-string p0, "vd_ott_label_sl"

    invoke-static {p0}, Lp06;->d0(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
