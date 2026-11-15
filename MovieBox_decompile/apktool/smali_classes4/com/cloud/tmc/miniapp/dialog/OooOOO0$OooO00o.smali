.class public final Lcom/cloud/tmc/miniapp/dialog/OooOOO0$OooO00o;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/miniapp/base/BaseAdapter$OnChildClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/dialog/OooOOO0;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Lcom/cloud/tmc/miniapp/dialog/OooOOO0;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/dialog/OooOOO0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooOOO0$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/dialog/OooOOO0;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onChildClick(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooOOO0$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/dialog/OooOOO0;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/cloud/tmc/miniapp/dialog/OooOOO0;->OooO0oo:Lcom/cloud/tmc/miniapp/base/BaseAdapter$OnItemClickListener;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0, p1, p2, p3}, Lcom/cloud/tmc/miniapp/base/BaseAdapter$OnItemClickListener;->onItemClick(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;I)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method
