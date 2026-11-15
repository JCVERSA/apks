.class public final Lcom/transsion/player/longvideo/ui/LongVodPlayerView$showResolutionIntercept$1$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lim/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/player/longvideo/ui/LongVodPlayerView$showResolutionIntercept$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

.field final synthetic b:Lln/b;


# direct methods
.method constructor <init>(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;Lln/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$showResolutionIntercept$1$a;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$showResolutionIntercept$1$a;->b:Lln/b;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Lcom/transsion/memberapi/MemberCheckResult;)V
    .locals 8

    .line 1
    iget-object p1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$showResolutionIntercept$1$a;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    instance-of v0, p1, Landroidx/appcompat/app/AppCompatActivity;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    check-cast p1, Landroidx/appcompat/app/AppCompatActivity;

    .line 12
    .line 13
    :goto_0
    move-object v1, p1

    .line 14
    goto :goto_1

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    goto :goto_0

    .line 17
    :goto_1
    if-eqz v1, :cond_1

    .line 18
    .line 19
    iget-object p1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$showResolutionIntercept$1$a;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 20
    .line 21
    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$showResolutionIntercept$1$a;->b:Lln/b;

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    new-array v2, v2, [Ljava/lang/Object;

    .line 25
    .line 26
    const-class v3, Lim/b;

    .line 27
    .line 28
    invoke-static {v3, v2}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Lim/b;

    .line 33
    .line 34
    if-eqz v2, :cond_1

    .line 35
    .line 36
    sget-object v3, Lcom/transsion/memberapi/MemberSource;->SOURCE_STREAM_RESOLUTION_DIALOG:Lcom/transsion/memberapi/MemberSource;

    .line 37
    .line 38
    new-instance v4, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$showResolutionIntercept$1$a$a;

    .line 39
    .line 40
    invoke-direct {v4, p1, v0}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$showResolutionIntercept$1$a$a;-><init>(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;Lln/b;)V

    .line 41
    .line 42
    .line 43
    const/16 v6, 0x18

    .line 44
    .line 45
    const/4 v7, 0x0

    .line 46
    const/4 p1, 0x0

    .line 47
    const/4 v5, 0x0

    .line 48
    move-object v0, v2

    .line 49
    move-object v2, v3

    .line 50
    move-object v3, v4

    .line 51
    move v4, p1

    .line 52
    invoke-static/range {v0 .. v7}, Lim/b$a;->c(Lim/b;Landroid/app/Activity;Lcom/transsion/memberapi/MemberSource;Lim/c;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    :cond_1
    return-void
.end method

.method public b(Lcom/transsion/memberapi/MemberCheckResult;)V
    .locals 0

    .line 1
    return-void
.end method

.method public c(Lcom/transsion/memberapi/MemberCheckResult;)V
    .locals 3

    .line 1
    invoke-static {p0, p1}, Lim/a$a;->g(Lim/a;Lcom/transsion/memberapi/MemberCheckResult;)V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lwj/h;->a:Lwj/h;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$showResolutionIntercept$1$a;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 7
    .line 8
    invoke-static {v1}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getClassTag(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v1, " --> memberCheckResult = "

    .line 21
    .line 22
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v0, v1}, Lwj/h;->a(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$showResolutionIntercept$1$a;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 36
    .line 37
    iget-object v1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$showResolutionIntercept$1$a;->b:Lln/b;

    .line 38
    .line 39
    invoke-virtual {v0, v1, p1}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->closeResolutionPanel(Lln/b;Lcom/transsion/memberapi/MemberCheckResult;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public d(Lcom/transsion/memberapi/MemberCheckResult;)V
    .locals 0

    .line 1
    return-void
.end method

.method public e()V
    .locals 3

    .line 1
    sget-object v0, Lwj/h;->a:Lwj/h;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$showResolutionIntercept$1$a;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getClassTag(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, " --> onPassed() --> \u4f1a\u5458\u6743\u76ca\u9a8c\u8bc1\u901a\u8fc7 -- \u5207\u6362\u5206\u8fa8\u7387\u64ad\u653e"

    .line 18
    .line 19
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Lwj/h;->a(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$showResolutionIntercept$1$a;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 30
    .line 31
    iget-object v1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$showResolutionIntercept$1$a;->b:Lln/b;

    .line 32
    .line 33
    invoke-static {v0, v1}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$unLockResolution(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;Lln/b;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public f(Lcom/transsion/memberapi/MemberCheckResult;)V
    .locals 2

    .line 1
    invoke-static {p0, p1}, Lim/a$a;->a(Lim/a;Lcom/transsion/memberapi/MemberCheckResult;)V

    .line 2
    .line 3
    .line 4
    sget-object p1, Lwj/h;->a:Lwj/h;

    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$showResolutionIntercept$1$a;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getClassTag(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v0, " --> notImplement() --> \u5f53\u524d\u7c7b\u578b\u6ca1\u6709\u5b9e\u73b0"

    .line 21
    .line 22
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {p1, v0}, Lwj/h;->a(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public onFail(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "errorMsg"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1}, Lim/a$a;->b(Lim/a;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    sget-object p1, Lwj/h;->a:Lwj/h;

    .line 10
    .line 11
    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$showResolutionIntercept$1$a;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getClassTag(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v0, " --> onFail() --> \u52a0\u8f7d\u5931\u8d25"

    .line 26
    .line 27
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {p1, v0}, Lwj/h;->a(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method
