.class public Lcom/transsion/tools/covert/fragments/VideosSelectFragment$b;
.super Lcom/transsion/utils/CustomGridLayoutManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/tools/covert/fragments/VideosSelectFragment;->L1(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lcom/transsion/tools/covert/fragments/VideosSelectFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/tools/covert/fragments/VideosSelectFragment;Landroid/content/Context;I)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/tools/covert/fragments/VideosSelectFragment$b;->e:Lcom/transsion/tools/covert/fragments/VideosSelectFragment;

    invoke-direct {p0, p2, p3}, Lcom/transsion/utils/CustomGridLayoutManager;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public canScrollVertically()Z
    .locals 1

    iget-object v0, p0, Lcom/transsion/tools/covert/fragments/VideosSelectFragment$b;->e:Lcom/transsion/tools/covert/fragments/VideosSelectFragment;

    invoke-static {v0}, Lcom/transsion/tools/covert/fragments/VideosSelectFragment;->J1(Lcom/transsion/tools/covert/fragments/VideosSelectFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-super {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->canScrollVertically()Z

    move-result p0

    return p0
.end method
