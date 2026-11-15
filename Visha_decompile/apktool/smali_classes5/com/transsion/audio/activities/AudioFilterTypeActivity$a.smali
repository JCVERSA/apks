.class public Lcom/transsion/audio/activities/AudioFilterTypeActivity$a;
.super Lif7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/audio/activities/AudioFilterTypeActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/audio/activities/AudioFilterTypeActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/audio/activities/AudioFilterTypeActivity;IZ)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/activities/AudioFilterTypeActivity$a;->b:Lcom/transsion/audio/activities/AudioFilterTypeActivity;

    invoke-direct {p0, p2, p3}, Lif7;-><init>(IZ)V

    return-void
.end method


# virtual methods
.method public OnNoDoubleItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    iget-object p1, p0, Lcom/transsion/audio/activities/AudioFilterTypeActivity$a;->b:Lcom/transsion/audio/activities/AudioFilterTypeActivity;

    invoke-static {p1}, Lcom/transsion/audio/activities/AudioFilterTypeActivity;->F0(Lcom/transsion/audio/activities/AudioFilterTypeActivity;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "filter_size"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p3}, Lcom/transsion/dbdata/utils/AudioFilterUtils;->g(I)V

    invoke-static {p3}, Luy5;->k(I)V

    goto :goto_0

    :cond_0
    invoke-static {p3}, Lcom/transsion/dbdata/utils/AudioFilterUtils;->f(I)V

    invoke-static {p3}, Luy5;->h(I)V

    :goto_0
    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const/16 v0, 0x455

    invoke-virtual {p1, v0, p2}, Lh27;->e(I[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/audio/activities/AudioFilterTypeActivity$a;->b:Lcom/transsion/audio/activities/AudioFilterTypeActivity;

    invoke-static {p1}, Lcom/transsion/audio/activities/AudioFilterTypeActivity;->E0(Lcom/transsion/audio/activities/AudioFilterTypeActivity;)Lcom/transsion/audio/adapter/AudioFilterSingleChoiceAdapter;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/audio/activities/AudioFilterTypeActivity$a;->b:Lcom/transsion/audio/activities/AudioFilterTypeActivity;

    invoke-static {p2}, Lcom/transsion/audio/activities/AudioFilterTypeActivity;->E0(Lcom/transsion/audio/activities/AudioFilterTypeActivity;)Lcom/transsion/audio/adapter/AudioFilterSingleChoiceAdapter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/audio/adapter/AudioFilterSingleChoiceAdapter;->g()I

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    iget-object p1, p0, Lcom/transsion/audio/activities/AudioFilterTypeActivity$a;->b:Lcom/transsion/audio/activities/AudioFilterTypeActivity;

    invoke-static {p1}, Lcom/transsion/audio/activities/AudioFilterTypeActivity;->E0(Lcom/transsion/audio/activities/AudioFilterTypeActivity;)Lcom/transsion/audio/adapter/AudioFilterSingleChoiceAdapter;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/transsion/audio/adapter/AudioFilterSingleChoiceAdapter;->r(I)V

    iget-object p1, p0, Lcom/transsion/audio/activities/AudioFilterTypeActivity$a;->b:Lcom/transsion/audio/activities/AudioFilterTypeActivity;

    invoke-static {p1}, Lcom/transsion/audio/activities/AudioFilterTypeActivity;->E0(Lcom/transsion/audio/activities/AudioFilterTypeActivity;)Lcom/transsion/audio/adapter/AudioFilterSingleChoiceAdapter;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    iget-object p1, p0, Lcom/transsion/audio/activities/AudioFilterTypeActivity$a;->b:Lcom/transsion/audio/activities/AudioFilterTypeActivity;

    invoke-static {p1, p3}, Lcom/transsion/audio/activities/AudioFilterTypeActivity;->G0(Lcom/transsion/audio/activities/AudioFilterTypeActivity;I)V

    iget-object p0, p0, Lcom/transsion/audio/activities/AudioFilterTypeActivity$a;->b:Lcom/transsion/audio/activities/AudioFilterTypeActivity;

    invoke-static {p0, p3}, Lcom/transsion/audio/activities/AudioFilterTypeActivity;->H0(Lcom/transsion/audio/activities/AudioFilterTypeActivity;I)V

    return-void
.end method
