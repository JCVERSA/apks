.class public final Lcom/transsion/commercialization/task/TaskCenterProvider$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lim/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/commercialization/task/TaskCenterProvider;->i(Lwj/g;Ljava/lang/Integer;Ljava/lang/String;Lcom/transsion/memberapi/MemberSceneType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/commercialization/task/TaskCenterProvider;

.field final synthetic b:Lwj/g;

.field final synthetic c:Lcom/transsion/memberapi/MemberSceneType;

.field final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/transsion/commercialization/task/TaskCenterProvider;Lwj/g;Lcom/transsion/memberapi/MemberSceneType;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/commercialization/task/TaskCenterProvider$a;->a:Lcom/transsion/commercialization/task/TaskCenterProvider;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/commercialization/task/TaskCenterProvider$a;->b:Lwj/g;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/transsion/commercialization/task/TaskCenterProvider$a;->c:Lcom/transsion/memberapi/MemberSceneType;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/transsion/commercialization/task/TaskCenterProvider$a;->d:Ljava/lang/String;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public static synthetic g(Lcom/transsion/commercialization/task/TaskCenterProvider;Lcom/transsion/memberapi/MemberSceneType;Ljava/lang/Object;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/commercialization/task/TaskCenterProvider$a;->h(Lcom/transsion/commercialization/task/TaskCenterProvider;Lcom/transsion/memberapi/MemberSceneType;Ljava/lang/Object;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final h(Lcom/transsion/commercialization/task/TaskCenterProvider;Lcom/transsion/memberapi/MemberSceneType;Ljava/lang/Object;)Lkotlin/Unit;
    .locals 1

    .line 1
    sget-object p2, Lwj/h;->a:Lwj/h;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/transsion/commercialization/task/TaskCenterProvider;->j()Ljava/lang/String;

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
    const-string p0, " --> checkMemberRights() --> sceneType = "

    .line 16
    .line 17
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string p0, " --> success"

    .line 24
    .line 25
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-virtual {p2, p0}, Lwj/h;->a(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 36
    .line 37
    return-object p0
.end method


# virtual methods
.method public a(Lcom/transsion/memberapi/MemberCheckResult;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/commercialization/task/TaskCenterProvider$a;->a:Lcom/transsion/commercialization/task/TaskCenterProvider;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/commercialization/task/TaskCenterProvider$a;->b:Lwj/g;

    .line 4
    .line 5
    invoke-static {v0, v1, p1}, Lcom/transsion/commercialization/task/TaskCenterProvider;->h(Lcom/transsion/commercialization/task/TaskCenterProvider;Lwj/g;Lcom/transsion/memberapi/MemberCheckResult;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public b(Lcom/transsion/memberapi/MemberCheckResult;)V
    .locals 8

    .line 1
    new-instance v7, Lcom/transsion/commercialization/task/DownloadInterceptAdHelper;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/commercialization/task/TaskCenterProvider$a;->b:Lwj/g;

    .line 4
    .line 5
    iget-object v3, p0, Lcom/transsion/commercialization/task/TaskCenterProvider$a;->d:Ljava/lang/String;

    .line 6
    .line 7
    const/16 v5, 0x8

    .line 8
    .line 9
    const/4 v6, 0x0

    .line 10
    const/4 v4, 0x0

    .line 11
    move-object v0, v7

    .line 12
    move-object v2, p1

    .line 13
    invoke-direct/range {v0 .. v6}, Lcom/transsion/commercialization/task/DownloadInterceptAdHelper;-><init>(Lwj/g;Lcom/transsion/memberapi/MemberCheckResult;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v7}, Lcom/transsion/commercialization/task/DownloadInterceptAdHelper;->h()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public c(Lcom/transsion/memberapi/MemberCheckResult;)V
    .locals 2

    .line 1
    invoke-static {p0, p1}, Lim/a$a;->g(Lim/a;Lcom/transsion/memberapi/MemberCheckResult;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/transsion/commercialization/task/treasure/TreasureStyleADialog;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/transsion/commercialization/task/treasure/TreasureStyleADialog;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lcom/transsion/commercialization/task/treasure/TreasureStyleADialog;->z0(Lcom/transsion/memberapi/MemberCheckResult;)Lcom/transsion/commercialization/task/treasure/TreasureStyleADialog;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iget-object v0, p0, Lcom/transsion/commercialization/task/TaskCenterProvider$a;->d:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Lcom/transsion/commercialization/task/treasure/TreasureStyleADialog;->x0(Ljava/lang/String;)Lcom/transsion/commercialization/task/treasure/TreasureStyleADialog;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iget-object v0, p0, Lcom/transsion/commercialization/task/TaskCenterProvider$a;->c:Lcom/transsion/memberapi/MemberSceneType;

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Lcom/transsion/commercialization/task/treasure/TreasureStyleADialog;->A0(Lcom/transsion/memberapi/MemberSceneType;)Lcom/transsion/commercialization/task/treasure/TreasureStyleADialog;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iget-object v0, p0, Lcom/transsion/commercialization/task/TaskCenterProvider$a;->b:Lwj/g;

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Lcom/transsion/commercialization/task/treasure/TreasureStyleADialog;->y0(Lwj/g;)Lcom/transsion/commercialization/task/treasure/TreasureStyleADialog;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-static {}, Lcom/blankj/utilcode/util/a;->b()Landroid/app/Activity;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const-string v1, "TreasureStyleADialog"

    .line 36
    .line 37
    invoke-virtual {p1, v0, v1}, Lcom/transsion/baseui/dialog/BaseDialog;->k0(Landroid/content/Context;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public d(Lcom/transsion/memberapi/MemberCheckResult;)V
    .locals 8

    .line 1
    new-instance v7, Lcom/transsion/commercialization/task/DownloadInterceptAdHelper;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/commercialization/task/TaskCenterProvider$a;->b:Lwj/g;

    .line 4
    .line 5
    iget-object v3, p0, Lcom/transsion/commercialization/task/TaskCenterProvider$a;->d:Ljava/lang/String;

    .line 6
    .line 7
    const/16 v5, 0x8

    .line 8
    .line 9
    const/4 v6, 0x0

    .line 10
    const/4 v4, 0x0

    .line 11
    move-object v0, v7

    .line 12
    move-object v2, p1

    .line 13
    invoke-direct/range {v0 .. v6}, Lcom/transsion/commercialization/task/DownloadInterceptAdHelper;-><init>(Lwj/g;Lcom/transsion/memberapi/MemberCheckResult;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v7}, Lcom/transsion/commercialization/task/DownloadInterceptAdHelper;->h()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public e()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/transsion/commercialization/task/TaskCenterProvider$a;->b:Lwj/g;

    .line 2
    .line 3
    invoke-interface {v0}, Lwj/g;->onSuccess()V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lwj/h;->a:Lwj/h;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/transsion/commercialization/task/TaskCenterProvider$a;->a:Lcom/transsion/commercialization/task/TaskCenterProvider;

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/transsion/commercialization/task/TaskCenterProvider;->j()Ljava/lang/String;

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
    iget-object v2, p0, Lcom/transsion/commercialization/task/TaskCenterProvider$a;->a:Lcom/transsion/commercialization/task/TaskCenterProvider;

    .line 50
    .line 51
    iget-object v3, p0, Lcom/transsion/commercialization/task/TaskCenterProvider$a;->c:Lcom/transsion/memberapi/MemberSceneType;

    .line 52
    .line 53
    new-instance v4, Lcom/transsion/commercialization/task/p;

    .line 54
    .line 55
    invoke-direct {v4, v2, v3}, Lcom/transsion/commercialization/task/p;-><init>(Lcom/transsion/commercialization/task/TaskCenterProvider;Lcom/transsion/memberapi/MemberSceneType;)V

    .line 56
    .line 57
    .line 58
    invoke-interface {v0, v1, v4}, Lim/b;->n(Lcom/transsion/memberapi/OpType;Lkotlin/jvm/functions/Function1;)V

    .line 59
    .line 60
    .line 61
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
    iget-object v0, p0, Lcom/transsion/commercialization/task/TaskCenterProvider$a;->a:Lcom/transsion/commercialization/task/TaskCenterProvider;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/transsion/commercialization/task/TaskCenterProvider;->j()Ljava/lang/String;

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
    iget-object v1, p0, Lcom/transsion/commercialization/task/TaskCenterProvider$a;->a:Lcom/transsion/commercialization/task/TaskCenterProvider;

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/transsion/commercialization/task/TaskCenterProvider;->j()Ljava/lang/String;

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
    iget-object p1, p0, Lcom/transsion/commercialization/task/TaskCenterProvider$a;->b:Lwj/g;

    .line 41
    .line 42
    invoke-interface {p1}, Lwj/g;->onFail()V

    .line 43
    .line 44
    .line 45
    return-void
.end method
