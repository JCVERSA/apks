.class public final Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lim/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView;


# direct methods
.method constructor <init>(Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView$a;->a:Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic g(Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView;Ljava/lang/Object;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView$a;->h(Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView;Ljava/lang/Object;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final h(Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView;Ljava/lang/Object;)Lkotlin/Unit;
    .locals 1

    .line 1
    sget-object p1, Lwj/h;->a:Lwj/h;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView;->access$getClassTag(Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string p0, " --> checkMemberRights() --> sceneType = MemberSceneType.SCENE_PREDL --> success"

    .line 16
    .line 17
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-virtual {p1, p0}, Lwj/h;->a(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 28
    .line 29
    return-object p0
.end method


# virtual methods
.method public a(Lcom/transsion/memberapi/MemberCheckResult;)V
    .locals 8

    .line 1
    iget-object p1, p0, Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView$a;->a:Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView;

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
    iget-object p1, p0, Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView$a;->a:Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView;

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    new-array v0, v0, [Ljava/lang/Object;

    .line 23
    .line 24
    const-class v2, Lim/b;

    .line 25
    .line 26
    invoke-static {v2, v0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Lim/b;

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    sget-object v2, Lcom/transsion/memberapi/MemberSource;->SOURCE_STREAM_RESOLUTION_START_PLAY_ERROR:Lcom/transsion/memberapi/MemberSource;

    .line 35
    .line 36
    new-instance v3, Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView$a$a;

    .line 37
    .line 38
    invoke-direct {v3, p1, v1}, Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView$a$a;-><init>(Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView;Landroidx/appcompat/app/AppCompatActivity;)V

    .line 39
    .line 40
    .line 41
    const/16 v6, 0x18

    .line 42
    .line 43
    const/4 v7, 0x0

    .line 44
    const/4 v4, 0x0

    .line 45
    const/4 v5, 0x0

    .line 46
    invoke-static/range {v0 .. v7}, Lim/b$a;->c(Lim/b;Landroid/app/Activity;Lcom/transsion/memberapi/MemberSource;Lim/c;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    :cond_1
    return-void
.end method

.method public b(Lcom/transsion/memberapi/MemberCheckResult;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lim/a$a;->d(Lim/a;Lcom/transsion/memberapi/MemberCheckResult;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public c(Lcom/transsion/memberapi/MemberCheckResult;)V
    .locals 3

    .line 1
    invoke-static {p0, p1}, Lim/a$a;->g(Lim/a;Lcom/transsion/memberapi/MemberCheckResult;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    new-array v0, v0, [Ljava/lang/Object;

    .line 6
    .line 7
    const-class v1, Lwj/f;

    .line 8
    .line 9
    invoke-static {v1, v0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lwj/f;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    new-instance v1, Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView$a$b;

    .line 18
    .line 19
    iget-object v2, p0, Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView$a;->a:Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView;

    .line 20
    .line 21
    invoke-direct {v1, v2}, Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView$a$b;-><init>(Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView;)V

    .line 22
    .line 23
    .line 24
    const-string v2, ""

    .line 25
    .line 26
    invoke-interface {v0, v2, p1, v1}, Lwj/f;->b(Ljava/lang/String;Lcom/transsion/memberapi/MemberCheckResult;Lwj/g;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method public d(Lcom/transsion/memberapi/MemberCheckResult;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lim/a$a;->e(Lim/a;Lcom/transsion/memberapi/MemberCheckResult;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public e()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView$a;->a:Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView;->access$unlock(Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lwj/h;->a:Lwj/h;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView$a;->a:Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView;

    .line 9
    .line 10
    invoke-static {v1}, Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView;->access$getClassTag(Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v1, " --> checkMemberRights() --> passed() --> \u4f1a\u5458\u6743\u76ca\u901a\u8fc7\u9a8c\u8bc1 --> \u7ee7\u7eed\u4e0b\u8f7d\u4efb\u52a1"

    .line 23
    .line 24
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v0, v1}, Lwj/h;->a(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const/4 v0, 0x0

    .line 35
    new-array v0, v0, [Ljava/lang/Object;

    .line 36
    .line 37
    const-class v1, Lim/b;

    .line 38
    .line 39
    invoke-static {v1, v0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    check-cast v0, Lim/b;

    .line 44
    .line 45
    if-eqz v0, :cond_0

    .line 46
    .line 47
    sget-object v1, Lcom/transsion/memberapi/OpType;->OP_DOWNLOAD:Lcom/transsion/memberapi/OpType;

    .line 48
    .line 49
    iget-object v2, p0, Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView$a;->a:Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView;

    .line 50
    .line 51
    new-instance v3, Lcom/transsion/player/longvideo/member/b;

    .line 52
    .line 53
    invoke-direct {v3, v2}, Lcom/transsion/player/longvideo/member/b;-><init>(Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView;)V

    .line 54
    .line 55
    .line 56
    invoke-interface {v0, v1, v3}, Lim/b;->n(Lcom/transsion/memberapi/OpType;Lkotlin/jvm/functions/Function1;)V

    .line 57
    .line 58
    .line 59
    :cond_0
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
    iget-object v0, p0, Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView$a;->a:Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView;->access$getClassTag(Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView;)Ljava/lang/String;

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
    const-string v0, " --> triggerDownload() --> showCheckMemberRights() --> notImplement() --> \u5f53\u524d\u7c7b\u578b\u6ca1\u6709\u5b9e\u73b0"

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
    invoke-virtual {p1, v0}, Lwj/h;->b(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public onFail(Ljava/lang/String;)V
    .locals 3

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
    sget-object v0, Lwj/h;->a:Lwj/h;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView$a;->a:Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView;

    .line 12
    .line 13
    invoke-static {v1}, Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView;->access$getClassTag(Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v1, " --> checkMemberRights() --> showCheckMemberRightsDialog() --> "

    .line 26
    .line 27
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {v0, p1}, Lwj/h;->b(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method
