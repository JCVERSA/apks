.class public final synthetic Lk49;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/cloud/fragment/SearchCloudFragment;

.field public final synthetic c:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/cloud/fragment/SearchCloudFragment;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk49;->b:Lcom/transsion/cloud/fragment/SearchCloudFragment;

    iput-object p2, p0, Lk49;->c:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lk49;->b:Lcom/transsion/cloud/fragment/SearchCloudFragment;

    iget-object p0, p0, Lk49;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0, p0}, Lcom/transsion/cloud/fragment/SearchCloudFragment;->N0(Lcom/transsion/cloud/fragment/SearchCloudFragment;Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method
