.class public final synthetic Llwb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/LifecycleEventObserver;


# instance fields
.field public final synthetic b:Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llwb;->b:Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;

    return-void
.end method


# virtual methods
.method public final onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 0

    iget-object p0, p0, Llwb;->b:Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;

    invoke-static {p0, p1, p2}, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->b(Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V

    return-void
.end method
