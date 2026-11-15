.class public final synthetic Lha0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/playercommon/fragments/BaseFragment;

.field public final synthetic c:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/playercommon/fragments/BaseFragment;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lha0;->b:Lcom/transsion/playercommon/fragments/BaseFragment;

    iput-object p2, p0, Lha0;->c:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lha0;->b:Lcom/transsion/playercommon/fragments/BaseFragment;

    iget-object p0, p0, Lha0;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0, p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->w(Lcom/transsion/playercommon/fragments/BaseFragment;Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method
