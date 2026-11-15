.class public Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity$i;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->initScrollListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity$i;->c:Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    if-nez p2, :cond_0

    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity$i;->c:Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;

    invoke-static {p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->J1(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;)V

    :cond_0
    return-void
.end method
