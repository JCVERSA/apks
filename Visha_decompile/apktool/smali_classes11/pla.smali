.class public final synthetic Lpla;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

.field public final synthetic c:Lcom/transsion/onlinevideo/tiktok/widget/TiktokShortVideoPlayer;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;Lcom/transsion/onlinevideo/tiktok/widget/TiktokShortVideoPlayer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpla;->b:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    iput-object p2, p0, Lpla;->c:Lcom/transsion/onlinevideo/tiktok/widget/TiktokShortVideoPlayer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lpla;->b:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    iget-object p0, p0, Lpla;->c:Lcom/transsion/onlinevideo/tiktok/widget/TiktokShortVideoPlayer;

    invoke-static {v0, p0}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;->J(Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;Lcom/transsion/onlinevideo/tiktok/widget/TiktokShortVideoPlayer;)V

    return-void
.end method
