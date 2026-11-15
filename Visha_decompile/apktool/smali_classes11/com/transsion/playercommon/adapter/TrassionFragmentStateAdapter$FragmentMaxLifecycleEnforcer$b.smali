.class public Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$FragmentMaxLifecycleEnforcer$b;
.super Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$FragmentMaxLifecycleEnforcer;->b(Landroidx/recyclerview/widget/RecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$FragmentMaxLifecycleEnforcer;


# direct methods
.method public constructor <init>(Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$FragmentMaxLifecycleEnforcer;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$FragmentMaxLifecycleEnforcer$b;->a:Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$FragmentMaxLifecycleEnforcer;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$c;-><init>(Ln9b;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    iget-object p0, p0, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$FragmentMaxLifecycleEnforcer$b;->a:Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$FragmentMaxLifecycleEnforcer;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$FragmentMaxLifecycleEnforcer;->d(Z)V

    return-void
.end method
