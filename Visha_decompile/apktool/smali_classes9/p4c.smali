.class public final synthetic Lp4c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp4c;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lp4c;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;

    check-cast p1, Lwoc;

    invoke-static {p0, p1}, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->b(Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;Lwoc;)V

    return-void
.end method
