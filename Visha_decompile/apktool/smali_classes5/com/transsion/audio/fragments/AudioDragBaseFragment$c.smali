.class public Lcom/transsion/audio/fragments/AudioDragBaseFragment$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/audio/fragments/AudioDragBaseFragment;->O1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/audio/fragments/AudioDragBaseFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/audio/fragments/AudioDragBaseFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment$c;->b:Lcom/transsion/audio/fragments/AudioDragBaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment$c;->b:Lcom/transsion/audio/fragments/AudioDragBaseFragment;

    invoke-static {p0, p2}, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->J1(Lcom/transsion/audio/fragments/AudioDragBaseFragment;Z)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment$c;->b:Lcom/transsion/audio/fragments/AudioDragBaseFragment;

    invoke-static {p0, v0}, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->J1(Lcom/transsion/audio/fragments/AudioDragBaseFragment;Z)V

    :goto_0
    return p2
.end method

.method public onRequestDisallowInterceptTouchEvent(Z)V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method
