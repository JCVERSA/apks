.class public abstract Lcom/transsion/widgetslib/adapter/RecyclerAdapter$Holder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetslib/adapter/RecyclerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Holder"
.end annotation


# instance fields
.field public p:Z

.field public q:Z


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public setSetOnClickListener(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/widgetslib/adapter/RecyclerAdapter$Holder;->p:Z

    return-void
.end method

.method public setSetOnLongClickListener(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/widgetslib/adapter/RecyclerAdapter$Holder;->q:Z

    return-void
.end method
