.class public Lcom/zhpan/bannerview/provider/ScrollDurationManger$a;
.super Landroidx/recyclerview/widget/LinearSmoothScroller;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zhpan/bannerview/provider/ScrollDurationManger;->smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/zhpan/bannerview/provider/ScrollDurationManger;


# direct methods
.method public constructor <init>(Lcom/zhpan/bannerview/provider/ScrollDurationManger;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/zhpan/bannerview/provider/ScrollDurationManger$a;->a:Lcom/zhpan/bannerview/provider/ScrollDurationManger;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public calculateTimeForDeceleration(I)I
    .locals 0

    iget-object p0, p0, Lcom/zhpan/bannerview/provider/ScrollDurationManger$a;->a:Lcom/zhpan/bannerview/provider/ScrollDurationManger;

    invoke-static {p0}, Lcom/zhpan/bannerview/provider/ScrollDurationManger;->g(Lcom/zhpan/bannerview/provider/ScrollDurationManger;)I

    move-result p0

    return p0
.end method
