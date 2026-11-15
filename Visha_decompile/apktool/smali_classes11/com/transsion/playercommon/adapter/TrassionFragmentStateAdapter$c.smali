.class public abstract Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$c;
.super Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "c"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ln9b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$c;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onChanged()V
.end method

.method public final onItemRangeChanged(II)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$c;->onChanged()V

    return-void
.end method

.method public final onItemRangeChanged(IILjava/lang/Object;)V
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$c;->onChanged()V

    return-void
.end method

.method public final onItemRangeInserted(II)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$c;->onChanged()V

    return-void
.end method

.method public final onItemRangeMoved(III)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$c;->onChanged()V

    return-void
.end method

.method public final onItemRangeRemoved(II)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$c;->onChanged()V

    return-void
.end method
