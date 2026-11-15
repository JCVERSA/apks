.class public final Lcom/yandex/mobile/ads/impl/jd2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/md2$a;
.implements Lcom/yandex/mobile/ads/impl/bd2$a;


# static fields
.field static final synthetic k:[Laf5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Laf5;"
        }
    .end annotation
.end field

.field private static final l:J


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/g5;

.field private final b:Lcom/yandex/mobile/ads/impl/mg2;

.field private final c:Lcom/yandex/mobile/ads/impl/mg1;

.field private final d:Lcom/yandex/mobile/ads/impl/md2;

.field private final e:Lcom/yandex/mobile/ads/impl/bd2;

.field private final f:Lcom/yandex/mobile/ads/impl/ld2;

.field private final g:Lcom/yandex/mobile/ads/impl/ff2;

.field private h:Z

.field private final i:Lcom/yandex/mobile/ads/impl/hd2;

.field private final j:Lcom/yandex/mobile/ads/impl/id2;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-class v1, Lcom/yandex/mobile/ads/impl/jd2;

    const-string v2, "adParameterManager"

    const-string v3, "getAdParameterManager()Lcom/monetization/ads/video/render/report/VideoAdRenderingResultReporter$ResponseReportParameterManager;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v0}, Lxq8;->f(Lkotlin/jvm/internal/MutablePropertyReference1;)Lxe5;

    move-result-object v0

    new-instance v2, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v3, "requestParameterManager"

    const-string v5, "getRequestParameterManager()Lcom/monetization/ads/video/render/report/VideoAdRenderingResultReporter$RequestReportParameterManager;"

    invoke-direct {v2, v1, v3, v5, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lxq8;->f(Lkotlin/jvm/internal/MutablePropertyReference1;)Lxe5;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Laf5;

    aput-object v0, v2, v4

    const/4 v0, 0x1

    aput-object v1, v2, v0

    sput-object v2, Lcom/yandex/mobile/ads/impl/jd2;->k:[Laf5;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/yandex/mobile/ads/impl/jd2;->l:J

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/zb2;Lcom/yandex/mobile/ads/impl/g5;Lcom/yandex/mobile/ads/impl/qd2;Lcom/yandex/mobile/ads/impl/sg2;Lcom/yandex/mobile/ads/impl/uf2;Lcom/yandex/mobile/ads/impl/ng2;)V
    .locals 12

    .line 1
    sget v0, Lcom/yandex/mobile/ads/impl/mg1;->a:I

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/mg1$a;->a(Z)Lcom/yandex/mobile/ads/impl/mg1;

    move-result-object v11

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    .line 2
    invoke-direct/range {v1 .. v11}, Lcom/yandex/mobile/ads/impl/jd2;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/zb2;Lcom/yandex/mobile/ads/impl/g5;Lcom/yandex/mobile/ads/impl/qd2;Lcom/yandex/mobile/ads/impl/sg2;Lcom/yandex/mobile/ads/impl/uf2;Lcom/yandex/mobile/ads/impl/ng2;Lcom/yandex/mobile/ads/impl/mg1;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/zb2;Lcom/yandex/mobile/ads/impl/g5;Lcom/yandex/mobile/ads/impl/qd2;Lcom/yandex/mobile/ads/impl/sg2;Lcom/yandex/mobile/ads/impl/uf2;Lcom/yandex/mobile/ads/impl/ng2;Lcom/yandex/mobile/ads/impl/mg1;)V
    .locals 1

    .line 3
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adConfiguration"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoAdInfo"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adLoadingPhasesManager"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoAdStatusController"

    invoke-static {p6, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoViewProvider"

    invoke-static {p7, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "renderValidator"

    invoke-static {p8, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoTracker"

    invoke-static {p9, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pausableTimer"

    invoke-static {p10, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/jd2;->a:Lcom/yandex/mobile/ads/impl/g5;

    .line 6
    iput-object p9, p0, Lcom/yandex/mobile/ads/impl/jd2;->b:Lcom/yandex/mobile/ads/impl/mg2;

    .line 7
    iput-object p10, p0, Lcom/yandex/mobile/ads/impl/jd2;->c:Lcom/yandex/mobile/ads/impl/mg1;

    .line 8
    new-instance p9, Lcom/yandex/mobile/ads/impl/md2;

    invoke-direct {p9, p8, p0}, Lcom/yandex/mobile/ads/impl/md2;-><init>(Lcom/yandex/mobile/ads/impl/uf2;Lcom/yandex/mobile/ads/impl/md2$a;)V

    iput-object p9, p0, Lcom/yandex/mobile/ads/impl/jd2;->d:Lcom/yandex/mobile/ads/impl/md2;

    .line 9
    new-instance p8, Lcom/yandex/mobile/ads/impl/bd2;

    invoke-direct {p8, p6, p0}, Lcom/yandex/mobile/ads/impl/bd2;-><init>(Lcom/yandex/mobile/ads/impl/qd2;Lcom/yandex/mobile/ads/impl/bd2$a;)V

    iput-object p8, p0, Lcom/yandex/mobile/ads/impl/jd2;->e:Lcom/yandex/mobile/ads/impl/bd2;

    .line 10
    new-instance p6, Lcom/yandex/mobile/ads/impl/ld2;

    invoke-direct {p6, p1, p2, p3, p5}, Lcom/yandex/mobile/ads/impl/ld2;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/g5;)V

    iput-object p6, p0, Lcom/yandex/mobile/ads/impl/jd2;->f:Lcom/yandex/mobile/ads/impl/ld2;

    .line 11
    new-instance p1, Lcom/yandex/mobile/ads/impl/ff2;

    invoke-direct {p1, p4, p7}, Lcom/yandex/mobile/ads/impl/ff2;-><init>(Lcom/yandex/mobile/ads/impl/zb2;Lcom/yandex/mobile/ads/impl/sg2;)V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/jd2;->g:Lcom/yandex/mobile/ads/impl/ff2;

    .line 12
    sget-object p1, Ll72;->a:Ll72;

    .line 13
    new-instance p1, Lcom/yandex/mobile/ads/impl/hd2;

    invoke-direct {p1, p0}, Lcom/yandex/mobile/ads/impl/hd2;-><init>(Lcom/yandex/mobile/ads/impl/jd2;)V

    .line 14
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/jd2;->i:Lcom/yandex/mobile/ads/impl/hd2;

    .line 15
    new-instance p1, Lcom/yandex/mobile/ads/impl/id2;

    invoke-direct {p1, p0}, Lcom/yandex/mobile/ads/impl/id2;-><init>(Lcom/yandex/mobile/ads/impl/jd2;)V

    .line 16
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/jd2;->j:Lcom/yandex/mobile/ads/impl/id2;

    return-void
.end method

.method public static final synthetic a(Lcom/yandex/mobile/ads/impl/jd2;)Lcom/yandex/mobile/ads/impl/ld2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/jd2;->f:Lcom/yandex/mobile/ads/impl/ld2;

    return-object p0
.end method

.method private static final b(Lcom/yandex/mobile/ads/impl/jd2;)V
    .locals 3

    .line 1
    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/yandex/mobile/ads/impl/v00;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/v00;-><init>()V

    .line 3
    new-instance v1, Lcom/yandex/mobile/ads/impl/xc2;

    sget-object v2, Lcom/yandex/mobile/ads/impl/xc2$a;->i:Lcom/yandex/mobile/ads/impl/xc2$a;

    invoke-direct {v1, v2, v0}, Lcom/yandex/mobile/ads/impl/xc2;-><init>(Lcom/yandex/mobile/ads/impl/xc2$a;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1}, Lcom/yandex/mobile/ads/impl/jd2;->a(Lcom/yandex/mobile/ads/impl/xc2;)V

    return-void
.end method

.method public static synthetic c(Lcom/yandex/mobile/ads/impl/jd2;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/jd2;->b(Lcom/yandex/mobile/ads/impl/jd2;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 11
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/jd2;->d:Lcom/yandex/mobile/ads/impl/md2;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/md2;->b()V

    .line 12
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/jd2;->a:Lcom/yandex/mobile/ads/impl/g5;

    sget-object v1, Lcom/yandex/mobile/ads/impl/f5;->w:Lcom/yandex/mobile/ads/impl/f5;

    .line 13
    const-string v2, "adLoadingPhaseType"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v1, v3}, Lcom/yandex/mobile/ads/impl/bk;->a(Lcom/yandex/mobile/ads/impl/g5;Lcom/yandex/mobile/ads/impl/f5;Ljava/lang/String;Lcom/yandex/mobile/ads/impl/f5;Lcom/yandex/mobile/ads/impl/ha2;)V

    .line 14
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/jd2;->b:Lcom/yandex/mobile/ads/impl/mg2;

    invoke-interface {v0}, Lcom/yandex/mobile/ads/impl/mg2;->i()V

    .line 15
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/jd2;->e:Lcom/yandex/mobile/ads/impl/bd2;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/bd2;->a()V

    .line 16
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/jd2;->c:Lcom/yandex/mobile/ads/impl/mg1;

    sget-wide v1, Lcom/yandex/mobile/ads/impl/jd2;->l:J

    new-instance v3, Llkd;

    invoke-direct {v3, p0}, Llkd;-><init>(Lcom/yandex/mobile/ads/impl/jd2;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/yandex/mobile/ads/impl/mg1;->a(JLcom/yandex/mobile/ads/impl/og1;)V

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/ld2$a;)V
    .locals 3

    .line 18
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/jd2;->j:Lcom/yandex/mobile/ads/impl/id2;

    sget-object v1, Lcom/yandex/mobile/ads/impl/jd2;->k:[Laf5;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1, p1}, Lfd7;->setValue(Ljava/lang/Object;Laf5;Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/ld2$b;)V
    .locals 3

    .line 17
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/jd2;->i:Lcom/yandex/mobile/ads/impl/hd2;

    sget-object v1, Lcom/yandex/mobile/ads/impl/jd2;->k:[Laf5;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1, p1}, Lfd7;->setValue(Ljava/lang/Object;Laf5;Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/xc2;)V
    .locals 2

    .line 2
    const-string v0, "error"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/jd2;->d:Lcom/yandex/mobile/ads/impl/md2;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/md2;->b()V

    .line 4
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/jd2;->e:Lcom/yandex/mobile/ads/impl/bd2;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/bd2;->b()V

    .line 5
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/jd2;->c:Lcom/yandex/mobile/ads/impl/mg1;

    invoke-interface {v0}, Lcom/yandex/mobile/ads/impl/mg1;->stop()V

    .line 6
    iget-boolean v0, p0, Lcom/yandex/mobile/ads/impl/jd2;->h:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/yandex/mobile/ads/impl/jd2;->h:Z

    .line 8
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/xc2;->a()Lcom/yandex/mobile/ads/impl/xc2$a;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "toLowerCase(...)"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/xc2;->b()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, ""

    .line 10
    :cond_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/jd2;->f:Lcom/yandex/mobile/ads/impl/ld2;

    invoke-virtual {p0, v0, p1}, Lcom/yandex/mobile/ads/impl/ld2;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final b()V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/jd2;->f:Lcom/yandex/mobile/ads/impl/ld2;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/jd2;->g:Lcom/yandex/mobile/ads/impl/ff2;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/ff2;->a()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/ld2;->b(Ljava/util/Map;)V

    .line 5
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/jd2;->a:Lcom/yandex/mobile/ads/impl/g5;

    sget-object v1, Lcom/yandex/mobile/ads/impl/f5;->w:Lcom/yandex/mobile/ads/impl/f5;

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/g5;->a(Lcom/yandex/mobile/ads/impl/f5;)V

    .line 6
    iget-boolean v0, p0, Lcom/yandex/mobile/ads/impl/jd2;->h:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/yandex/mobile/ads/impl/jd2;->h:Z

    .line 8
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/jd2;->f:Lcom/yandex/mobile/ads/impl/ld2;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ld2;->a()V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/jd2;->d:Lcom/yandex/mobile/ads/impl/md2;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/md2;->b()V

    .line 3
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/jd2;->e:Lcom/yandex/mobile/ads/impl/bd2;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/bd2;->b()V

    .line 4
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/jd2;->c:Lcom/yandex/mobile/ads/impl/mg1;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/mg1;->stop()V

    return-void
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/jd2;->d:Lcom/yandex/mobile/ads/impl/md2;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/md2;->b()V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/jd2;->e:Lcom/yandex/mobile/ads/impl/bd2;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/bd2;->b()V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/jd2;->c:Lcom/yandex/mobile/ads/impl/mg1;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/mg1;->stop()V

    return-void
.end method

.method public final e()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yandex/mobile/ads/impl/jd2;->h:Z

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/jd2;->f:Lcom/yandex/mobile/ads/impl/ld2;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/ld2;->b(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/jd2;->d:Lcom/yandex/mobile/ads/impl/md2;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/md2;->b()V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/jd2;->e:Lcom/yandex/mobile/ads/impl/bd2;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/bd2;->b()V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/jd2;->c:Lcom/yandex/mobile/ads/impl/mg1;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/mg1;->stop()V

    return-void
.end method

.method public final f()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/jd2;->d:Lcom/yandex/mobile/ads/impl/md2;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/md2;->a()V

    return-void
.end method
