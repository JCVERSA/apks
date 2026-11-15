.class public final synthetic Lpwb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpwb;->a:Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lpwb;->a:Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {p0, p1}, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->c(Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;Ljava/lang/Integer;)V

    return-void
.end method
