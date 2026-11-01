.class public abstract Lcom/snaptube/taskManager/task/video/MetaInfoHelper;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snaptube/taskManager/task/video/MetaInfoHelper$a;,
        Lcom/snaptube/taskManager/task/video/MetaInfoHelper$MetaExtraInfo;
    }
.end annotation


# static fields
.field public static final e:Lcom/snaptube/taskManager/task/video/MetaInfoHelper$a;


# instance fields
.field public final a:Lcom/snaptube/taskManager/datasets/TaskInfo;

.field public final b:Lcom/snaptube/extractor/pluginlib/models/VideoInfo;

.field public final c:Lo/t14;

.field public d:Lcom/snaptube/premium/api_service/response/MatchResponse;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/snaptube/taskManager/task/video/MetaInfoHelper$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/snaptube/taskManager/task/video/MetaInfoHelper$a;-><init>(Lo/pg1;)V

    sput-object v0, Lcom/snaptube/taskManager/task/video/MetaInfoHelper;->e:Lcom/snaptube/taskManager/task/video/MetaInfoHelper$a;

    return-void
.end method

.method public constructor <init>(Lcom/snaptube/taskManager/datasets/TaskInfo;Lcom/snaptube/extractor/pluginlib/models/VideoInfo;)V
    .locals 1

    const-string v0, "taskInfo"

    invoke-static {p1, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoInfo"

    invoke-static {p2, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/snaptube/taskManager/task/video/MetaInfoHelper;->a:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iput-object p2, p0, Lcom/snaptube/taskManager/task/video/MetaInfoHelper;->b:Lcom/snaptube/extractor/pluginlib/models/VideoInfo;

    sget-object p1, Lcom/snaptube/taskManager/task/video/MetaInfoHelper$apiService$2;->INSTANCE:Lcom/snaptube/taskManager/task/video/MetaInfoHelper$apiService$2;

    invoke-static {p1}, Lkotlin/b;->b(Lo/bx2;)Lo/t14;

    move-result-object p1

    iput-object p1, p0, Lcom/snaptube/taskManager/task/video/MetaInfoHelper;->c:Lo/t14;

    return-void
.end method

.method public static final C(Lo/dx2;Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lo/dx2;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static final D(Lo/dx2;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lo/dx2;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static final E(Ljava/lang/String;Lcom/snaptube/taskManager/datasets/TaskInfo;Lcom/snaptube/extractor/pluginlib/models/VideoInfo;Ljava/lang/String;Lo/dx2;Ljava/lang/Throwable;)V
    .locals 8

    const-string v0, "$videoInfo"

    invoke-static {p2, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$onError"

    invoke-static {p4, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lo/tf4;->a:Lo/tf4;

    invoke-virtual {p5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    const-string v5, "subtitle"

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v7, p3

    invoke-virtual/range {v1 .. v7}, Lo/tf4;->b(Ljava/lang/String;Lcom/snaptube/taskManager/datasets/TaskInfo;Lcom/snaptube/extractor/pluginlib/models/VideoInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p5}, Lo/or3;->c(Ljava/lang/Object;)V

    invoke-interface {p4, p5}, Lo/dx2;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "downloadSrtLyricMeta exception: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LyricMeta"

    invoke-static {p1, p0}, Lcom/snaptube/util/ProductionEnv;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final G(Lcom/snaptube/taskManager/task/video/MetaInfoHelper;Landroid/support/v4/media/MediaMetadataCompat;)Lo/mg8;
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$meta"

    invoke-static {p1, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/MetaInfoHelper;->a:Lcom/snaptube/taskManager/datasets/TaskInfo;

    invoke-virtual {v0}, Lcom/snaptube/taskManager/datasets/TaskInfo;->i()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getFilePath(...)"

    invoke-static {v0, v1}, Lo/or3;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/snaptube/taskManager/task/video/MetaInfoHelper;->U(Landroid/support/v4/media/MediaMetadataCompat;Ljava/lang/String;)V

    sget-object p0, Lo/mg8;->a:Lo/mg8;

    return-object p0
.end method

.method public static final J(Lcom/snaptube/taskManager/task/video/MetaInfoHelper;)Landroid/support/v4/media/MediaMetadataCompat;
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/support/v4/media/MediaMetadataCompat$Builder;

    invoke-direct {v0}, Landroid/support/v4/media/MediaMetadataCompat$Builder;-><init>()V

    iget-object v1, p0, Lcom/snaptube/taskManager/task/video/MetaInfoHelper;->b:Lcom/snaptube/extractor/pluginlib/models/VideoInfo;

    invoke-virtual {v1}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/snaptube/taskManager/task/video/MetaInfoHelper;->a:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-object v2, v2, Lcom/snaptube/taskManager/datasets/TaskInfo;->l:Ljava/lang/String;

    invoke-static {v1, v2}, Lo/or3;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/snaptube/taskManager/task/video/MetaInfoHelper;->a:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-object v1, v1, Lcom/snaptube/taskManager/datasets/TaskInfo;->l:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/snaptube/taskManager/task/video/MetaInfoHelper;->b:Lcom/snaptube/extractor/pluginlib/models/VideoInfo;

    iget-object v2, p0, Lcom/snaptube/taskManager/task/video/MetaInfoHelper;->a:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-object v2, v2, Lcom/snaptube/taskManager/datasets/TaskInfo;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->setThumbnailUrl(Ljava/lang/String;)V

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/snaptube/taskManager/task/video/MetaInfoHelper;->b:Lcom/snaptube/extractor/pluginlib/models/VideoInfo;

    invoke-static {v0, p0}, Lo/wd9;->c(Landroid/support/v4/media/MediaMetadataCompat$Builder;Lcom/snaptube/extractor/pluginlib/models/VideoInfo;)V

    invoke-virtual {v0}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->build()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object p0

    return-object p0
.end method

.method public static final K(Lo/dx2;Ljava/lang/Object;)Lrx/c;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lo/dx2;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lrx/c;

    return-object p0
.end method

.method public static final L(Lo/dx2;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lo/dx2;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static final M(Lcom/snaptube/taskManager/task/video/MetaInfoHelper;Lo/rx2;Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$onFinish"

    invoke-static {p1, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lo/or3;->c(Ljava/lang/Object;)V

    invoke-virtual {p0, p2, p1}, Lcom/snaptube/taskManager/task/video/MetaInfoHelper;->T(Ljava/lang/Throwable;Lo/rx2;)V

    return-void
.end method

.method public static final Q(Lcom/snaptube/taskManager/datasets/TaskInfo;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/snaptube/taskManager/task/video/MetaInfoHelper;->e:Lcom/snaptube/taskManager/task/video/MetaInfoHelper$a;

    invoke-virtual {v0, p0}, Lcom/snaptube/taskManager/task/video/MetaInfoHelper$a;->b(Lcom/snaptube/taskManager/datasets/TaskInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final X(Lo/dx2;Ljava/lang/Object;)Lrx/c;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lo/dx2;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lrx/c;

    return-object p0
.end method

.method public static final Y(Lo/dx2;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lo/dx2;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static final Z(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/snaptube/taskManager/datasets/TaskInfo;Lcom/snaptube/extractor/pluginlib/models/VideoInfo;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 10

    const-string v0, "$lyricUrl"

    invoke-static {p0, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$videoInfo"

    invoke-static {p2, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$pos"

    invoke-static {p3, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lo/tf4;->a:Lo/tf4;

    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v2, p0

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    const/16 v8, 0x20

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v1 .. v9}, Lo/tf4;->c(Lo/tf4;Ljava/lang/String;Lcom/snaptube/taskManager/datasets/TaskInfo;Lcom/snaptube/extractor/pluginlib/models/VideoInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    invoke-virtual {p4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "lyrics download exception: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", pos:"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LyricMeta"

    invoke-static {p1, p0}, Lcom/snaptube/util/ProductionEnv;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lo/dx2;Ljava/lang/Object;)Lrx/c;
    .locals 0

    invoke-static {p0, p1}, Lcom/snaptube/taskManager/task/video/MetaInfoHelper;->b0(Lo/dx2;Ljava/lang/Object;)Lrx/c;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lo/dx2;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/snaptube/taskManager/task/video/MetaInfoHelper;->D(Lo/dx2;Ljava/lang/Object;)V

    return-void
.end method

.method public static final b0(Lo/dx2;Ljava/lang/Object;)Lrx/c;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lo/dx2;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lrx/c;

    return-object p0
.end method

.method public static synthetic c(Lo/dx2;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/snaptube/taskManager/task/video/MetaInfoHelper;->Y(Lo/dx2;Ljava/lang/Object;)V

    return-void
.end method

.method public static final c0(Lo/dx2;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lo/dx2;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic d(Lo/dx2;Ljava/lang/Object;)Lrx/c;
    .locals 0

    invoke-static {p0, p1}, Lcom/snaptube/taskManager/task/video/MetaInfoHelper;->X(Lo/dx2;Ljava/lang/Object;)Lrx/c;

    move-result-object p0

    return-object p0
.end method

.method public static final d0(Lcom/snaptube/taskManager/task/video/MetaInfoHelper;Lo/rx2;Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$onFinish"

    invoke-static {p1, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lo/or3;->c(Ljava/lang/Object;)V

    invoke-virtual {p0, p2, p1}, Lcom/snaptube/taskManager/task/video/MetaInfoHelper;->T(Ljava/lang/Throwable;Lo/rx2;)V

    return-void
.end method

.method public static synthetic e(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcom/snaptube/taskManager/task/video/MetaInfoHelper;->i0(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic f(Lo/dx2;Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/snaptube/taskManager/task/video/MetaInfoHelper;->z(Lo/dx2;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Lcom/snaptube/taskManager/task/video/MetaInfoHelper;Lo/rx2;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/snaptube/taskManager/task/video/MetaInfoHelper;->M(Lcom/snaptube/taskManager/task/video/MetaInfoHelper;Lo/rx2;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic h(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/snaptube/taskManager/datasets/TaskInfo;Lcom/snaptube/extractor/pluginlib/models/VideoInfo;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/snaptube/taskManager/task/video/MetaInfoHelper;->Z(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/snaptube/taskManager/datasets/TaskInfo;Lcom/snaptube/extractor/pluginlib/models/VideoInfo;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static final h0(Lo/dx2;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lo/dx2;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic i(Lo/dx2;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/snaptube/taskManager/task/video/MetaInfoHelper;->c0(Lo/dx2;Ljava/lang/Object;)V

    return-void
.end method

.method public static final i0(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "MetaInfoHelper"

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/snaptube/util/ProductionEnv;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic j(Lo/dx2;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/snaptube/taskManager/task/video/MetaInfoHelper;->L(Lo/dx2;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic k(Lcom/snaptube/taskManager/task/video/MetaInfoHelper;Lo/rx2;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/snaptube/taskManager/task/video/MetaInfoHelper;->d0(Lcom/snaptube/taskManager/task/video/MetaInfoHelper;Lo/rx2;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic l(Ljava/lang/String;Lcom/snaptube/taskManager/datasets/TaskInfo;Lcom/snaptube/extractor/pluginlib/models/VideoInfo;Ljava/lang/String;Lo/dx2;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/snaptube/taskManager/task/video/MetaInfoHelper;->E(Ljava/lang/String;Lcom/snaptube/taskManager/datasets/TaskInfo;Lcom/snaptube/extractor/pluginlib/models/VideoInfo;Ljava/lang/String;Lo/dx2;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic m(Lo/dx2;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/snaptube/taskManager/task/video/MetaInfoHelper;->h0(Lo/dx2;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic n(Lcom/snaptube/taskManager/task/video/MetaInfoHelper;Landroid/support/v4/media/MediaMetadataCompat;)Lo/mg8;
    .locals 0

    invoke-static {p0, p1}, Lcom/snaptube/taskManager/task/video/MetaInfoHelper;->G(Lcom/snaptube/taskManager/task/video/MetaInfoHelper;Landroid/support/v4/media/MediaMetadataCompat;)Lo/mg8;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic o(Lo/dx2;Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/snaptube/taskManager/task/video/MetaInfoHelper;->C(Lo/dx2;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic p(Lo/dx2;Ljava/lang/Object;)Lrx/c;
    .locals 0

    invoke-static {p0, p1}, Lcom/snaptube/taskManager/task/video/MetaInfoHelper;->K(Lo/dx2;Ljava/lang/Object;)Lrx/c;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic q(Lcom/snaptube/taskManager/task/video/MetaInfoHelper;)Landroid/support/v4/media/MediaMetadataCompat;
    .locals 0

    invoke-static {p0}, Lcom/snaptube/taskManager/task/video/MetaInfoHelper;->J(Lcom/snaptube/taskManager/task/video/MetaInfoHelper;)Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic r(Lcom/snaptube/taskManager/task/video/MetaInfoHelper;Ljava/lang/String;)Lrx/c;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/snaptube/taskManager/task/video/MetaInfoHelper;->y(Ljava/lang/String;)Lrx/c;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic s(Lcom/snaptube/taskManager/task/video/MetaInfoHelper;Landroid/support/v4/media/MediaMetadataCompat;)Lrx/c;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/snaptube/taskManager/task/video/MetaInfoHelper;->F(Landroid/support/v4/media/MediaMetadataCompat;)Lrx/c;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic t(Lcom/snaptube/taskManager/task/video/MetaInfoHelper;Lcom/snaptube/extractor/pluginlib/youtube/subtitle/Subtitle;)I
    .locals 0

    invoke-virtual {p0, p1}, Lcom/snaptube/taskManager/task/video/MetaInfoHelper;->O(Lcom/snaptube/extractor/pluginlib/youtube/subtitle/Subtitle;)I

    move-result p0

    return p0
.end method

.method public static final z(Lo/dx2;Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lo/dx2;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final A(Lcom/snaptube/taskManager/datasets/TaskInfo;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/snaptube/premium/lyric/LyricManager;->T(Lcom/snaptube/taskManager/datasets/TaskInfo;Z)Lrx/c;

    move-result-object p1

    invoke-static {}, Lo/ix6;->d()Lrx/d;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/c;->z0(Lrx/d;)Lrx/c;

    move-result-object p1

    const-string v0, "subscribeOn(...)"

    invoke-static {p1, v0}, Lo/or3;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/snaptube/base/ktx/ObservableKt;->h(Lrx/c;)Lo/wu7;

    return-void
.end method

.method public final B(Lcom/snaptube/taskManager/datasets/TaskInfo;Lcom/snaptube/extractor/pluginlib/models/VideoInfo;Ljava/lang/String;Lcom/snaptube/extractor/pluginlib/youtube/subtitle/Subtitle;Lo/dx2;)V
    .locals 16

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v3, p4

    const-string v0, "videoInfo"

    invoke-static {v11, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoId"

    move-object/from16 v1, p3

    invoke-static {v1, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "subtitle"

    invoke-static {v3, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "onError"

    move-object/from16 v12, p5

    invoke-static {v12, v2}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lcom/snaptube/plugin/extension/chooseformat/subtitles/SubtitleManager;->a:Lcom/snaptube/plugin/extension/chooseformat/subtitles/SubtitleManager;

    invoke-virtual {v2, v3}, Lcom/snaptube/plugin/extension/chooseformat/subtitles/SubtitleManager;->p(Lcom/snaptube/extractor/pluginlib/youtube/subtitle/Subtitle;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p4 .. p4}, Lcom/snaptube/extractor/pluginlib/youtube/subtitle/Subtitle;->e()Ljava/lang/String;

    move-result-object v14

    if-eqz v13, :cond_1

    invoke-static {v13}, Lo/cu7;->B(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sget-object v2, Lo/tf4;->a:Lo/tf4;

    invoke-virtual {v2, v10, v11, v0, v14}, Lo/tf4;->f(Lcom/snaptube/taskManager/datasets/TaskInfo;Lcom/snaptube/extractor/pluginlib/models/VideoInfo;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/snaptube/taskManager/task/video/MetaInfoHelper;->N()Lo/yk;

    move-result-object v0

    invoke-interface {v0, v13}, Lo/yk;->d(Ljava/lang/String;)Lrx/c;

    move-result-object v0

    new-instance v2, Lcom/snaptube/taskManager/task/video/MetaInfoHelper$downloadSrtLyricMeta$1;

    invoke-direct {v2, v3, v11}, Lcom/snaptube/taskManager/task/video/MetaInfoHelper$downloadSrtLyricMeta$1;-><init>(Lcom/snaptube/extractor/pluginlib/youtube/subtitle/Subtitle;Lcom/snaptube/extractor/pluginlib/models/VideoInfo;)V

    new-instance v4, Lo/ls4;

    invoke-direct {v4, v2}, Lo/ls4;-><init>(Lo/dx2;)V

    invoke-virtual {v0, v4}, Lrx/c;->U(Lo/xw2;)Lrx/c;

    move-result-object v15

    new-instance v7, Lcom/snaptube/taskManager/task/video/MetaInfoHelper$downloadSrtLyricMeta$2;

    move-object v0, v7

    move-object/from16 v1, p3

    move-object/from16 v2, p0

    move-object/from16 v3, p4

    move-object v4, v13

    move-object v5, v14

    move-object/from16 v6, p1

    move-object v12, v7

    move-object/from16 v7, p2

    invoke-direct/range {v0 .. v9}, Lcom/snaptube/taskManager/task/video/MetaInfoHelper$downloadSrtLyricMeta$2;-><init>(Ljava/lang/String;Lcom/snaptube/taskManager/task/video/MetaInfoHelper;Lcom/snaptube/extractor/pluginlib/youtube/subtitle/Subtitle;Ljava/lang/String;Ljava/lang/String;Lcom/snaptube/taskManager/datasets/TaskInfo;Lcom/snaptube/extractor/pluginlib/models/VideoInfo;J)V

    new-instance v6, Lo/ms4;

    invoke-direct {v6, v12}, Lo/ms4;-><init>(Lo/dx2;)V

    new-instance v7, Lo/ns4;

    move-object v0, v7

    move-object v1, v13

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v4, v14

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lo/ns4;-><init>(Ljava/lang/String;Lcom/snaptube/taskManager/datasets/TaskInfo;Lcom/snaptube/extractor/pluginlib/models/VideoInfo;Ljava/lang/String;Lo/dx2;)V

    invoke-virtual {v15, v6, v7}, Lrx/c;->u0(Lo/l3;Lo/l3;)Lo/wu7;

    return-void

    :cond_1
    :goto_0
    sget-object v0, Lo/tf4;->a:Lo/tf4;

    const-string v1, "lyric_meta_empty_url"

    invoke-virtual {v0, v10, v11, v1, v14}, Lo/tf4;->j(Lcom/snaptube/taskManager/datasets/TaskInfo;Lcom/snaptube/extractor/pluginlib/models/VideoInfo;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "LyricMeta"

    const-string v1, "downloadSrtLyricMeta lyricUrl is null"

    invoke-static {v0, v1}, Lcom/snaptube/util/ProductionEnv;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final F(Landroid/support/v4/media/MediaMetadataCompat;)Lrx/c;
    .locals 3

    new-instance v0, Lo/gs4;

    invoke-direct {v0, p0, p1}, Lo/gs4;-><init>(Lcom/snaptube/taskManager/task/video/MetaInfoHelper;Landroid/support/v4/media/MediaMetadataCompat;)V

    invoke-static {v0}, Lrx/c;->M(Ljava/util/concurrent/Callable;)Lrx/c;

    move-result-object p1

    const-wide/16 v0, 0x5

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Lrx/c;->K0(JLjava/util/concurrent/TimeUnit;)Lrx/c;

    move-result-object p1

    sget-object v0, Lo/a58;->b:Lrx/d;

    invoke-virtual {p1, v0}, Lrx/c;->z0(Lrx/d;)Lrx/c;

    move-result-object p1

    return-object p1
.end method

.method public H()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final I(Lo/bx2;Lo/rx2;)V
    .locals 2

    invoke-interface {p1}, Lo/bx2;->invoke()Ljava/lang/Object;

    new-instance p1, Lo/hs4;

    invoke-direct {p1, p0}, Lo/hs4;-><init>(Lcom/snaptube/taskManager/task/video/MetaInfoHelper;)V

    invoke-static {p1}, Lrx/c;->M(Ljava/util/concurrent/Callable;)Lrx/c;

    move-result-object p1

    new-instance v0, Lcom/snaptube/taskManager/task/video/MetaInfoHelper$forceWriteMetaCover$2;

    invoke-direct {v0, p0}, Lcom/snaptube/taskManager/task/video/MetaInfoHelper$forceWriteMetaCover$2;-><init>(Lcom/snaptube/taskManager/task/video/MetaInfoHelper;)V

    new-instance v1, Lo/is4;

    invoke-direct {v1, v0}, Lo/is4;-><init>(Lo/dx2;)V

    invoke-virtual {p1, v1}, Lrx/c;->H(Lo/xw2;)Lrx/c;

    move-result-object p1

    new-instance v0, Lcom/snaptube/taskManager/task/video/MetaInfoHelper$forceWriteMetaCover$3;

    invoke-direct {v0, p2}, Lcom/snaptube/taskManager/task/video/MetaInfoHelper$forceWriteMetaCover$3;-><init>(Lo/rx2;)V

    new-instance v1, Lo/js4;

    invoke-direct {v1, v0}, Lo/js4;-><init>(Lo/dx2;)V

    new-instance v0, Lo/ks4;

    invoke-direct {v0, p0, p2}, Lo/ks4;-><init>(Lcom/snaptube/taskManager/task/video/MetaInfoHelper;Lo/rx2;)V

    invoke-virtual {p1, v1, v0}, Lrx/c;->u0(Lo/l3;Lo/l3;)Lo/wu7;

    return-void
.end method

.method public final N()Lo/yk;
    .locals 1

    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/MetaInfoHelper;->c:Lo/t14;

    invoke-interface {v0}, Lo/t14;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/yk;

    return-object v0
.end method

.method public final O(Lcom/snaptube/extractor/pluginlib/youtube/subtitle/Subtitle;)I
    .locals 1

    invoke-virtual {p1}, Lcom/snaptube/extractor/pluginlib/youtube/subtitle/Subtitle;->g()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/snaptube/extractor/pluginlib/youtube/subtitle/Subtitle;->j()Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "isAuto(...)"

    invoke-static {p1, v0}, Lo/or3;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x3

    :goto_0
    return p1
.end method

.method public final P()Lcom/snaptube/premium/api_service/response/MatchResponse;
    .locals 1

    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/MetaInfoHelper;->d:Lcom/snaptube/premium/api_service/response/MatchResponse;

    return-object v0
.end method

.method public final R()Lcom/snaptube/taskManager/datasets/TaskInfo;
    .locals 1

    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/MetaInfoHelper;->a:Lcom/snaptube/taskManager/datasets/TaskInfo;

    return-object v0
.end method

.method public final S()Lcom/snaptube/extractor/pluginlib/models/VideoInfo;
    .locals 1

    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/MetaInfoHelper;->b:Lcom/snaptube/extractor/pluginlib/models/VideoInfo;

    return-object v0
.end method

.method public final T(Ljava/lang/Throwable;Lo/rx2;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/snaptube/taskManager/task/video/MetaInfoHelper;->V(Ljava/lang/Throwable;)V

    instance-of v0, p1, Ljava/util/concurrent/TimeoutException;

    if-eqz v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Lo/rx2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p2, v0, p1}, Lo/rx2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public U(Landroid/support/v4/media/MediaMetadataCompat;Ljava/lang/String;)V
    .locals 1

    const-string v0, "metadata"

    invoke-static {p1, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filePath"

    invoke-static {p2, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lo/yn4;->B(Landroid/support/v4/media/MediaMetadataCompat;Ljava/lang/String;)V

    return-void
.end method

.method public final V(Ljava/lang/Throwable;)V
    .locals 3

    new-instance v0, Lcom/snaptube/premium/log/ReportPropertyBuilder;

    invoke-direct {v0}, Lcom/snaptube/premium/log/ReportPropertyBuilder;-><init>()V

    const-string v1, "Task"

    invoke-virtual {v0, v1}, Lcom/snaptube/premium/log/ReportPropertyBuilder;->setEventName(Ljava/lang/String;)Lo/ah3;

    move-result-object v0

    const-string v1, "fill_meta_fail"

    invoke-interface {v0, v1}, Lo/ah3;->setAction(Ljava/lang/String;)Lo/ah3;

    move-result-object v0

    iget-object v1, p0, Lcom/snaptube/taskManager/task/video/MetaInfoHelper;->b:Lcom/snaptube/extractor/pluginlib/models/VideoInfo;

    invoke-virtual {v1}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->getSource()Ljava/lang/String;

    move-result-object v1

    const-string v2, "content_url"

    invoke-interface {v0, v2, v1}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    move-result-object v0

    iget-object v1, p0, Lcom/snaptube/taskManager/task/video/MetaInfoHelper;->b:Lcom/snaptube/extractor/pluginlib/models/VideoInfo;

    invoke-virtual {v1}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->getSource()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lo/yj8;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "host"

    invoke-interface {v0, v2, v1}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    move-result-object v0

    iget-object v1, p0, Lcom/snaptube/taskManager/task/video/MetaInfoHelper;->a:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-object v1, v1, Lcom/snaptube/taskManager/datasets/TaskInfo;->B:Lcom/snaptube/taskManager/datasets/TaskInfo$ContentType;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "file_type"

    invoke-interface {v0, v2, v1}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    move-result-object v0

    iget-object v1, p0, Lcom/snaptube/taskManager/task/video/MetaInfoHelper;->a:Lcom/snaptube/taskManager/datasets/TaskInfo;

    invoke-virtual {v1}, Lcom/snaptube/taskManager/datasets/TaskInfo;->i()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lo/yj2;->C(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "file_extension"

    invoke-interface {v0, v2, v1}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "error_type"

    invoke-interface {v0, v2, v1}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    move-result-object v0

    const-string v1, "error"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    move-result-object v0

    const-string v1, "stack"

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    move-result-object p1

    invoke-interface {p1}, Lo/ah3;->reportEvent()V

    return-void
.end method

.method public final W(Lcom/snaptube/taskManager/datasets/TaskInfo;Lcom/snaptube/extractor/pluginlib/models/VideoInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    const-string v0, "videoInfo"

    invoke-static {p2, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoId"

    invoke-static {p3, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pos"

    invoke-static {p4, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    sget-object v0, Lo/tf4;->a:Lo/tf4;

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    invoke-static/range {v0 .. v6}, Lo/tf4;->g(Lo/tf4;Lcom/snaptube/taskManager/datasets/TaskInfo;Lcom/snaptube/extractor/pluginlib/models/VideoInfo;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    invoke-static {p3}, Lo/wu0;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, p4}, Lcom/snaptube/premium/lyric/LyricManager;->W(Ljava/util/List;ZLjava/lang/String;)Lrx/c;

    move-result-object v1

    new-instance v2, Lcom/snaptube/taskManager/task/video/MetaInfoHelper$requestLibraryLyricMeta$1;

    invoke-direct {v2, v0, p0}, Lcom/snaptube/taskManager/task/video/MetaInfoHelper$requestLibraryLyricMeta$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/snaptube/taskManager/task/video/MetaInfoHelper;)V

    new-instance v3, Lo/ps4;

    invoke-direct {v3, v2}, Lo/ps4;-><init>(Lo/dx2;)V

    invoke-virtual {v1, v3}, Lrx/c;->H(Lo/xw2;)Lrx/c;

    move-result-object v9

    new-instance v10, Lcom/snaptube/taskManager/task/video/MetaInfoHelper$requestLibraryLyricMeta$2;

    move-object v1, v10

    move-object v2, p3

    move-object v3, v0

    move-object v4, p4

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v8}, Lcom/snaptube/taskManager/task/video/MetaInfoHelper$requestLibraryLyricMeta$2;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;Lcom/snaptube/taskManager/datasets/TaskInfo;Lcom/snaptube/extractor/pluginlib/models/VideoInfo;J)V

    new-instance p3, Lo/qs4;

    invoke-direct {p3, v10}, Lo/qs4;-><init>(Lo/dx2;)V

    new-instance v1, Lo/rs4;

    invoke-direct {v1, v0, p1, p2, p4}, Lo/rs4;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/snaptube/taskManager/datasets/TaskInfo;Lcom/snaptube/extractor/pluginlib/models/VideoInfo;Ljava/lang/String;)V

    invoke-virtual {v9, p3, v1}, Lrx/c;->u0(Lo/l3;Lo/l3;)Lo/wu7;

    return-void
.end method

.method public final a0(Lo/bx2;Lo/rx2;)V
    .locals 5

    const-string v0, "onStart"

    invoke-static {p1, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onFinish"

    invoke-static {p2, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/snaptube/taskManager/task/video/MetaInfoHelper;->x()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/snaptube/taskManager/task/video/MetaInfoHelper;->H()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p2, p1, v1}, Lo/rx2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/snaptube/taskManager/task/video/MetaInfoHelper;->I(Lo/bx2;Lo/rx2;)V

    return-void

    :cond_1
    invoke-interface {p1}, Lo/bx2;->invoke()Ljava/lang/Object;

    new-instance p1, Landroid/support/v4/media/MediaMetadataCompat$Builder;

    invoke-direct {p1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;-><init>()V

    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/MetaInfoHelper;->d:Lcom/snaptube/premium/api_service/response/MatchResponse;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/snaptube/premium/api_service/response/MatchResponse;->getData()Lcom/snaptube/premium/api_service/response/MediaInfo;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/snaptube/premium/api_service/response/MediaInfo;->getArtists()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_3

    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v2, v4}, Lo/yu0;->r(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/snaptube/premium/api_service/response/Artists;

    invoke-virtual {v4}, Lcom/snaptube/premium/api_service/response/Artists;->getArtistName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const-string v2, ", "

    invoke-static {v2, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.media.metadata.ARTIST"

    invoke-virtual {p1, v3, v2}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    :cond_3
    invoke-virtual {v0}, Lcom/snaptube/premium/api_service/response/MediaInfo;->getSongName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    const-string v3, "android.media.metadata.TITLE"

    invoke-virtual {p1, v3, v2}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    iget-object v2, p0, Lcom/snaptube/taskManager/task/video/MetaInfoHelper;->a:Lcom/snaptube/taskManager/datasets/TaskInfo;

    sget-object v3, Lcom/snaptube/taskManager/datasets/TaskInfo$MetaSource;->SONG_LIBRARY:Lcom/snaptube/taskManager/datasets/TaskInfo$MetaSource;

    iput-object v3, v2, Lcom/snaptube/taskManager/datasets/TaskInfo;->K:Lcom/snaptube/taskManager/datasets/TaskInfo$MetaSource;

    :cond_4
    invoke-virtual {v0}, Lcom/snaptube/premium/api_service/response/MediaInfo;->getAlbum()Lcom/snaptube/premium/api_service/response/Album;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/snaptube/premium/api_service/response/Album;->getAlbumName()Ljava/lang/String;

    move-result-object v1

    :cond_5
    const-string v0, "android.media.metadata.ALBUM"

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    :cond_6
    invoke-virtual {p0}, Lcom/snaptube/taskManager/task/video/MetaInfoHelper;->v()Lcom/snaptube/taskManager/task/video/MetaInfoHelper$MetaExtraInfo;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-static {}, Lo/j23;->g()Lo/h23;

    move-result-object v1

    invoke-virtual {v1, v0}, Lo/h23;->x(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.snaptube.metadata.EXTRA_INFO"

    invoke-virtual {p1, v1, v0}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    :cond_7
    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/MetaInfoHelper;->b:Lcom/snaptube/extractor/pluginlib/models/VideoInfo;

    invoke-virtual {v0}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/snaptube/taskManager/task/video/MetaInfoHelper;->a:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-object v1, v1, Lcom/snaptube/taskManager/datasets/TaskInfo;->l:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/or3;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/MetaInfoHelper;->a:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-object v0, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->l:Ljava/lang/String;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_8

    goto :goto_1

    :cond_8
    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/MetaInfoHelper;->b:Lcom/snaptube/extractor/pluginlib/models/VideoInfo;

    invoke-virtual {v0}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->toJson()Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->fromJson(Lorg/json/JSONObject;)Lcom/snaptube/extractor/pluginlib/models/VideoInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/snaptube/taskManager/task/video/MetaInfoHelper;->a:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-object v1, v1, Lcom/snaptube/taskManager/datasets/TaskInfo;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->setThumbnailUrl(Ljava/lang/String;)V

    goto :goto_2

    :cond_9
    :goto_1
    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/MetaInfoHelper;->b:Lcom/snaptube/extractor/pluginlib/models/VideoInfo;

    :goto_2
    invoke-virtual {p0, p1}, Lcom/snaptube/taskManager/task/video/MetaInfoHelper;->u(Landroid/support/v4/media/MediaMetadataCompat$Builder;)V

    invoke-virtual {p1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->build()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object p1

    iget-object v1, p0, Lcom/snaptube/taskManager/task/video/MetaInfoHelper;->a:Lcom/snaptube/taskManager/datasets/TaskInfo;

    invoke-virtual {v1}, Lcom/snaptube/taskManager/datasets/TaskInfo;->p()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lo/wd9;->p(Landroid/support/v4/media/MediaMetadataCompat;Lcom/snaptube/extractor/pluginlib/models/VideoInfo;Ljava/lang/String;)Lrx/c;

    move-result-object p1

    new-instance v0, Lcom/snaptube/taskManager/task/video/MetaInfoHelper$saveMetaInfo$2;

    invoke-direct {v0, p0}, Lcom/snaptube/taskManager/task/video/MetaInfoHelper$saveMetaInfo$2;-><init>(Lcom/snaptube/taskManager/task/video/MetaInfoHelper;)V

    new-instance v1, Lo/ss4;

    invoke-direct {v1, v0}, Lo/ss4;-><init>(Lo/dx2;)V

    invoke-virtual {p1, v1}, Lrx/c;->H(Lo/xw2;)Lrx/c;

    move-result-object p1

    new-instance v0, Lcom/snaptube/taskManager/task/video/MetaInfoHelper$saveMetaInfo$3;

    invoke-direct {v0, p2}, Lcom/snaptube/taskManager/task/video/MetaInfoHelper$saveMetaInfo$3;-><init>(Lo/rx2;)V

    new-instance v1, Lo/ts4;

    invoke-direct {v1, v0}, Lo/ts4;-><init>(Lo/dx2;)V

    new-instance v0, Lo/us4;

    invoke-direct {v0, p0, p2}, Lo/us4;-><init>(Lcom/snaptube/taskManager/task/video/MetaInfoHelper;Lo/rx2;)V

    invoke-virtual {p1, v1, v0}, Lrx/c;->u0(Lo/l3;Lo/l3;)Lo/wu7;

    return-void
.end method

.method public final e0(Lcom/snaptube/premium/api_service/response/MatchResponse;)V
    .locals 0

    iput-object p1, p0, Lcom/snaptube/taskManager/task/video/MetaInfoHelper;->d:Lcom/snaptube/premium/api_service/response/MatchResponse;

    return-void
.end method

.method public final f0()V
    .locals 1

    invoke-virtual {p0}, Lcom/snaptube/taskManager/task/video/MetaInfoHelper;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/snaptube/taskManager/task/video/MetaInfoHelper;->g0()V

    :cond_0
    return-void
.end method

.method public final g0()V
    .locals 10

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Lcom/snaptube/premium/api_service/response/BatchInfoReq;

    iget-object v1, p0, Lcom/snaptube/taskManager/task/video/MetaInfoHelper;->a:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-wide v1, v1, Lcom/snaptube/taskManager/datasets/TaskInfo;->a:J

    long-to-int v3, v1

    iget-object v1, p0, Lcom/snaptube/taskManager/task/video/MetaInfoHelper;->b:Lcom/snaptube/extractor/pluginlib/models/VideoInfo;

    invoke-virtual {v1}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->getSource()Ljava/lang/String;

    move-result-object v5

    const-string v1, "getSource(...)"

    invoke-static {v5, v1}, Lo/or3;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v7, 0x15

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lcom/snaptube/premium/api_service/response/BatchInfoReq;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Long;ILo/pg1;)V

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/snaptube/taskManager/task/video/MetaInfoHelper;->N()Lo/yk;

    move-result-object v1

    invoke-interface {v1, v0}, Lo/yk;->c(Ljava/util/List;)Lrx/c;

    move-result-object v0

    invoke-static {}, Lo/ix6;->d()Lrx/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/c;->z0(Lrx/d;)Lrx/c;

    move-result-object v0

    new-instance v1, Lcom/snaptube/taskManager/task/video/MetaInfoHelper$updateMetaInfoFromNetwork$1;

    invoke-direct {v1, p0}, Lcom/snaptube/taskManager/task/video/MetaInfoHelper$updateMetaInfoFromNetwork$1;-><init>(Lcom/snaptube/taskManager/task/video/MetaInfoHelper;)V

    new-instance v2, Lo/vs4;

    invoke-direct {v2, v1}, Lo/vs4;-><init>(Lo/dx2;)V

    new-instance v1, Lo/ws4;

    invoke-direct {v1}, Lo/ws4;-><init>()V

    invoke-virtual {v0, v2, v1}, Lrx/c;->u0(Lo/l3;Lo/l3;)Lo/wu7;

    return-void
.end method

.method public final u(Landroid/support/v4/media/MediaMetadataCompat$Builder;)V
    .locals 22

    move-object/from16 v0, p0

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->isLyricMetaEnable()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Lcom/snaptube/taskManager/task/video/MetaInfoHelper;->b:Lcom/snaptube/extractor/pluginlib/models/VideoInfo;

    invoke-virtual {v1}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->getSource()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lo/if9;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {v1}, Lo/cu7;->B(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    sget-object v2, Lo/bg4;->a:Lo/bg4;

    invoke-static {v1}, Lo/or3;->c(Ljava/lang/Object;)V

    invoke-virtual {v2, v1}, Lo/bg4;->a(Ljava/lang/String;)Lo/ag4;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/snaptube/taskManager/task/video/MetaInfoHelper;->a:Lcom/snaptube/taskManager/datasets/TaskInfo;

    invoke-virtual {v0, v1}, Lcom/snaptube/taskManager/task/video/MetaInfoHelper;->A(Lcom/snaptube/taskManager/datasets/TaskInfo;)V

    sget-object v2, Lo/tf4;->a:Lo/tf4;

    iget-object v3, v0, Lcom/snaptube/taskManager/task/video/MetaInfoHelper;->a:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-object v4, v0, Lcom/snaptube/taskManager/task/video/MetaInfoHelper;->b:Lcom/snaptube/extractor/pluginlib/models/VideoInfo;

    const/16 v9, 0x20

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "cache lyricsMetaBean is null"

    const/4 v8, 0x0

    invoke-static/range {v2 .. v10}, Lo/tf4;->i(Lo/tf4;Lcom/snaptube/taskManager/datasets/TaskInfo;Lcom/snaptube/extractor/pluginlib/models/VideoInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    return-void

    :cond_2
    const-string v2, "common.media.metadata.lyrics"

    invoke-virtual {v1}, Lo/ag4;->c()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, p1

    invoke-virtual {v4, v2, v3}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    sget-object v4, Lo/tf4;->a:Lo/tf4;

    iget-object v5, v0, Lcom/snaptube/taskManager/task/video/MetaInfoHelper;->a:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-object v6, v0, Lcom/snaptube/taskManager/task/video/MetaInfoHelper;->b:Lcom/snaptube/extractor/pluginlib/models/VideoInfo;

    invoke-virtual {v1}, Lo/ag4;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Lo/ag4;->d()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1}, Lo/ag4;->e()Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x10

    const/4 v12, 0x0

    const/4 v9, 0x0

    invoke-static/range {v4 .. v12}, Lo/tf4;->i(Lo/tf4;Lcom/snaptube/taskManager/datasets/TaskInfo;Lcom/snaptube/extractor/pluginlib/models/VideoInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    return-void

    :cond_3
    :goto_0
    sget-object v13, Lo/tf4;->a:Lo/tf4;

    iget-object v14, v0, Lcom/snaptube/taskManager/task/video/MetaInfoHelper;->a:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-object v15, v0, Lcom/snaptube/taskManager/task/video/MetaInfoHelper;->b:Lcom/snaptube/extractor/pluginlib/models/VideoInfo;

    const/16 v20, 0x20

    const/16 v21, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-string v18, "ytbVideoId isNullOrBlank"

    const/16 v19, 0x0

    invoke-static/range {v13 .. v21}, Lo/tf4;->i(Lo/tf4;Lcom/snaptube/taskManager/datasets/TaskInfo;Lcom/snaptube/extractor/pluginlib/models/VideoInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public v()Lcom/snaptube/taskManager/task/video/MetaInfoHelper$MetaExtraInfo;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract w()Z
.end method

.method public abstract x()Z
.end method

.method public final y(Ljava/lang/String;)Lrx/c;
    .locals 2

    invoke-virtual {p0}, Lcom/snaptube/taskManager/task/video/MetaInfoHelper;->N()Lo/yk;

    move-result-object v0

    invoke-interface {v0, p1}, Lo/yk;->d(Ljava/lang/String;)Lrx/c;

    move-result-object p1

    sget-object v0, Lcom/snaptube/taskManager/task/video/MetaInfoHelper$downloadLibraryLyric$1;->INSTANCE:Lcom/snaptube/taskManager/task/video/MetaInfoHelper$downloadLibraryLyric$1;

    new-instance v1, Lo/os4;

    invoke-direct {v1, v0}, Lo/os4;-><init>(Lo/dx2;)V

    invoke-virtual {p1, v1}, Lrx/c;->U(Lo/xw2;)Lrx/c;

    move-result-object p1

    const-string v0, "map(...)"

    invoke-static {p1, v0}, Lo/or3;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
