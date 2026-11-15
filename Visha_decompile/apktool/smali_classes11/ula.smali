.class public final synthetic Lula;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc74;


# instance fields
.field public final synthetic b:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

.field public final synthetic c:Lcom/transsion/onlinevideo/tiktok/widget/TiktokShortVideoPlayer;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;Lcom/transsion/onlinevideo/tiktok/widget/TiktokShortVideoPlayer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lula;->b:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    iput-object p2, p0, Lula;->c:Lcom/transsion/onlinevideo/tiktok/widget/TiktokShortVideoPlayer;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lula;->b:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    iget-object p0, p0, Lula;->c:Lcom/transsion/onlinevideo/tiktok/widget/TiktokShortVideoPlayer;

    invoke-static {v0, p0}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;->O(Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;Lcom/transsion/onlinevideo/tiktok/widget/TiktokShortVideoPlayer;)Lzfb;

    move-result-object p0

    return-object p0
.end method
