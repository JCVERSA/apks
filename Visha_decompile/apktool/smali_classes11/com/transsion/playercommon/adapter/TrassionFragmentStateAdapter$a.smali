.class public Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;->h(Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$FragmentViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroid/widget/FrameLayout;

.field public final synthetic c:Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$FragmentViewHolder;

.field public final synthetic d:Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;


# direct methods
.method public constructor <init>(Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;Landroid/widget/FrameLayout;Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$FragmentViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$a;->d:Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;

    iput-object p2, p0, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$a;->b:Landroid/widget/FrameLayout;

    iput-object p3, p0, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$a;->c:Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$FragmentViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$a;->b:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$a;->b:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object p1, p0, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$a;->d:Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;

    iget-object p0, p0, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$a;->c:Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$FragmentViewHolder;

    invoke-virtual {p1, p0}, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;->r(Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$FragmentViewHolder;)V

    :cond_0
    return-void
.end method
