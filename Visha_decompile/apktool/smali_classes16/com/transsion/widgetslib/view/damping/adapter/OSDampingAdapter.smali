.class public abstract Lcom/transsion/widgetslib/view/damping/adapter/OSDampingAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"

# interfaces
.implements Lmu4;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetslib/view/damping/adapter/OSDampingAdapter$HeaderHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "TVH;>;",
        "Lmu4;"
    }
.end annotation


# instance fields
.field public o:Lcom/transsion/widgetslib/view/damping/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getHeaderCount()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getRefreshLayout()Lcom/transsion/widgetslib/view/damping/a;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/adapter/OSDampingAdapter;->o:Lcom/transsion/widgetslib/view/damping/a;

    return-object p0
.end method

.method public setRefreshLayout(Lcom/transsion/widgetslib/view/damping/a;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/view/damping/adapter/OSDampingAdapter;->o:Lcom/transsion/widgetslib/view/damping/a;

    return-void
.end method
