.class public Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment$b;
.super Lcom/transsion/utils/CustomGridLayoutManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;Landroid/content/Context;I)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment$b;->e:Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;

    invoke-direct {p0, p2, p3}, Lcom/transsion/utils/CustomGridLayoutManager;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public canScrollVertically()Z
    .locals 0

    invoke-super {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->canScrollVertically()Z

    move-result p0

    return p0
.end method
