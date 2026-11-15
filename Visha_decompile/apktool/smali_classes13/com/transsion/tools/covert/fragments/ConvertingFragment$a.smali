.class public Lcom/transsion/tools/covert/fragments/ConvertingFragment$a;
.super Lcom/transsion/utils/CustomGridLayoutManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/tools/covert/fragments/ConvertingFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lcom/transsion/tools/covert/fragments/ConvertingFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/tools/covert/fragments/ConvertingFragment;Landroid/content/Context;I)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/tools/covert/fragments/ConvertingFragment$a;->e:Lcom/transsion/tools/covert/fragments/ConvertingFragment;

    invoke-direct {p0, p2, p3}, Lcom/transsion/utils/CustomGridLayoutManager;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public canScrollVertically()Z
    .locals 1

    iget-object v0, p0, Lcom/transsion/tools/covert/fragments/ConvertingFragment$a;->e:Lcom/transsion/tools/covert/fragments/ConvertingFragment;

    iget-object v0, v0, Lcom/transsion/tools/covert/fragments/ConvertingFragment;->l:Lcom/transsion/tools/covert/adapter/ConvertingAdapter;

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-super {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->canScrollVertically()Z

    move-result p0

    return p0
.end method
