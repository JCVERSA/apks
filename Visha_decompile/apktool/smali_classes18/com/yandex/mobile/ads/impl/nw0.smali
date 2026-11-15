.class public final Lcom/yandex/mobile/ads/impl/nw0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/ld;
.implements Lcom/yandex/mobile/ads/impl/ei1;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x1f
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/nw0$b;,
        Lcom/yandex/mobile/ads/impl/nw0$a;
    }
.end annotation


# instance fields
.field private A:Z

.field private final a:Landroid/content/Context;

.field private final b:Lcom/yandex/mobile/ads/impl/k00;

.field private final c:Landroid/media/metrics/PlaybackSession;

.field private final d:J

.field private final e:Lcom/yandex/mobile/ads/impl/i52$d;

.field private final f:Lcom/yandex/mobile/ads/impl/i52$b;

.field private final g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private j:Landroid/media/metrics/PlaybackMetrics$Builder;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private k:I

.field private l:I

.field private m:I

.field private n:Lcom/yandex/mobile/ads/impl/yh1;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private o:Lcom/yandex/mobile/ads/impl/nw0$b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private p:Lcom/yandex/mobile/ads/impl/nw0$b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private q:Lcom/yandex/mobile/ads/impl/nw0$b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private r:Lcom/yandex/mobile/ads/impl/jc0;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private s:Lcom/yandex/mobile/ads/impl/jc0;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private t:Lcom/yandex/mobile/ads/impl/jc0;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private u:Z

.field private v:I

.field private w:Z

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/media/metrics/PlaybackSession;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/nw0;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/nw0;->c:Landroid/media/metrics/PlaybackSession;

    new-instance p1, Lcom/yandex/mobile/ads/impl/i52$d;

    invoke-direct {p1}, Lcom/yandex/mobile/ads/impl/i52$d;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/nw0;->e:Lcom/yandex/mobile/ads/impl/i52$d;

    new-instance p1, Lcom/yandex/mobile/ads/impl/i52$b;

    invoke-direct {p1}, Lcom/yandex/mobile/ads/impl/i52$b;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/nw0;->f:Lcom/yandex/mobile/ads/impl/i52$b;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/nw0;->h:Ljava/util/HashMap;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/nw0;->g:Ljava/util/HashMap;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/yandex/mobile/ads/impl/nw0;->d:J

    const/4 p1, 0x0

    iput p1, p0, Lcom/yandex/mobile/ads/impl/nw0;->l:I

    iput p1, p0, Lcom/yandex/mobile/ads/impl/nw0;->m:I

    new-instance p1, Lcom/yandex/mobile/ads/impl/k00;

    invoke-direct {p1}, Lcom/yandex/mobile/ads/impl/k00;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/nw0;->b:Lcom/yandex/mobile/ads/impl/k00;

    invoke-virtual {p1, p0}, Lcom/yandex/mobile/ads/impl/k00;->a(Lcom/yandex/mobile/ads/impl/ei1;)V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/nw0;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    const-string v0, "media_metrics"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lli6;->a(Ljava/lang/Object;)Landroid/media/metrics/MediaMetricsManager;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v1, Lcom/yandex/mobile/ads/impl/nw0;

    invoke-static {v0}, Lmi6;->a(Landroid/media/metrics/MediaMetricsManager;)Landroid/media/metrics/PlaybackSession;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/yandex/mobile/ads/impl/nw0;-><init>(Landroid/content/Context;Landroid/media/metrics/PlaybackSession;)V

    move-object p0, v1

    :goto_0
    return-object p0
.end method

.method private a()V
    .locals 7

    .line 3
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/nw0;->j:Landroid/media/metrics/PlaybackMetrics$Builder;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-boolean v2, p0, Lcom/yandex/mobile/ads/impl/nw0;->A:Z

    if-eqz v2, :cond_3

    .line 4
    iget v2, p0, Lcom/yandex/mobile/ads/impl/nw0;->z:I

    invoke-static {v0, v2}, Lni6;->a(Landroid/media/metrics/PlaybackMetrics$Builder;I)Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 5
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/nw0;->j:Landroid/media/metrics/PlaybackMetrics$Builder;

    iget v2, p0, Lcom/yandex/mobile/ads/impl/nw0;->x:I

    invoke-static {v0, v2}, Loi6;->a(Landroid/media/metrics/PlaybackMetrics$Builder;I)Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 6
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/nw0;->j:Landroid/media/metrics/PlaybackMetrics$Builder;

    iget v2, p0, Lcom/yandex/mobile/ads/impl/nw0;->y:I

    invoke-static {v0, v2}, Lpi6;->a(Landroid/media/metrics/PlaybackMetrics$Builder;I)Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 7
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/nw0;->g:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/nw0;->i:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 8
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/nw0;->j:Landroid/media/metrics/PlaybackMetrics$Builder;

    const-wide/16 v3, 0x0

    if-nez v0, :cond_0

    move-wide v5, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    :goto_0
    invoke-static {v2, v5, v6}, Lqi6;->a(Landroid/media/metrics/PlaybackMetrics$Builder;J)Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 9
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/nw0;->h:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/nw0;->i:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 10
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/nw0;->j:Landroid/media/metrics/PlaybackMetrics$Builder;

    if-nez v0, :cond_1

    move-wide v5, v3

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    :goto_1
    invoke-static {v2, v5, v6}, Lsi6;->a(Landroid/media/metrics/PlaybackMetrics$Builder;J)Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 11
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/nw0;->j:Landroid/media/metrics/PlaybackMetrics$Builder;

    if-eqz v0, :cond_2

    .line 12
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v0, v5, v3

    if-lez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    move v0, v1

    .line 13
    :goto_2
    invoke-static {v2, v0}, Lti6;->a(Landroid/media/metrics/PlaybackMetrics$Builder;I)Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 14
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/nw0;->c:Landroid/media/metrics/PlaybackSession;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/nw0;->j:Landroid/media/metrics/PlaybackMetrics$Builder;

    invoke-static {v2}, Lui6;->a(Landroid/media/metrics/PlaybackMetrics$Builder;)Landroid/media/metrics/PlaybackMetrics;

    move-result-object v2

    invoke-static {v0, v2}, Lxh6;->a(Landroid/media/metrics/PlaybackSession;Landroid/media/metrics/PlaybackMetrics;)V

    :cond_3
    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/nw0;->j:Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 16
    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/nw0;->i:Ljava/lang/String;

    .line 17
    iput v1, p0, Lcom/yandex/mobile/ads/impl/nw0;->z:I

    .line 18
    iput v1, p0, Lcom/yandex/mobile/ads/impl/nw0;->x:I

    .line 19
    iput v1, p0, Lcom/yandex/mobile/ads/impl/nw0;->y:I

    .line 20
    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/nw0;->r:Lcom/yandex/mobile/ads/impl/jc0;

    .line 21
    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/nw0;->s:Lcom/yandex/mobile/ads/impl/jc0;

    .line 22
    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/nw0;->t:Lcom/yandex/mobile/ads/impl/jc0;

    .line 23
    iput-boolean v1, p0, Lcom/yandex/mobile/ads/impl/nw0;->A:Z

    return-void
.end method

.method private a(IJLcom/yandex/mobile/ads/impl/jc0;I)V
    .locals 3
    .param p4    # Lcom/yandex/mobile/ads/impl/jc0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 282
    invoke-static {p1}, Laj6;->a(I)Landroid/media/metrics/TrackChangeEvent$Builder;

    move-result-object p1

    iget-wide v0, p0, Lcom/yandex/mobile/ads/impl/nw0;->d:J

    sub-long/2addr p2, v0

    .line 283
    invoke-static {p1, p2, p3}, Lvh6;->a(Landroid/media/metrics/TrackChangeEvent$Builder;J)Landroid/media/metrics/TrackChangeEvent$Builder;

    move-result-object p1

    const/4 p2, 0x0

    const/4 p3, 0x1

    if-eqz p4, :cond_d

    .line 284
    invoke-static {p1, p3}, Lhj6;->a(Landroid/media/metrics/TrackChangeEvent$Builder;I)Landroid/media/metrics/TrackChangeEvent$Builder;

    const/4 v0, 0x2

    if-eq p5, p3, :cond_1

    const/4 v1, 0x3

    if-eq p5, v0, :cond_2

    if-eq p5, v1, :cond_0

    move v1, p3

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    goto :goto_0

    :cond_1
    move v1, v0

    .line 285
    :cond_2
    :goto_0
    invoke-static {p1, v1}, Ljj6;->a(Landroid/media/metrics/TrackChangeEvent$Builder;I)Landroid/media/metrics/TrackChangeEvent$Builder;

    .line 286
    iget-object p5, p4, Lcom/yandex/mobile/ads/impl/jc0;->l:Ljava/lang/String;

    if-eqz p5, :cond_3

    .line 287
    invoke-static {p1, p5}, Lkj6;->a(Landroid/media/metrics/TrackChangeEvent$Builder;Ljava/lang/String;)Landroid/media/metrics/TrackChangeEvent$Builder;

    .line 288
    :cond_3
    iget-object p5, p4, Lcom/yandex/mobile/ads/impl/jc0;->m:Ljava/lang/String;

    if-eqz p5, :cond_4

    .line 289
    invoke-static {p1, p5}, Llh6;->a(Landroid/media/metrics/TrackChangeEvent$Builder;Ljava/lang/String;)Landroid/media/metrics/TrackChangeEvent$Builder;

    .line 290
    :cond_4
    iget-object p5, p4, Lcom/yandex/mobile/ads/impl/jc0;->j:Ljava/lang/String;

    if-eqz p5, :cond_5

    .line 291
    invoke-static {p1, p5}, Lmh6;->a(Landroid/media/metrics/TrackChangeEvent$Builder;Ljava/lang/String;)Landroid/media/metrics/TrackChangeEvent$Builder;

    .line 292
    :cond_5
    iget p5, p4, Lcom/yandex/mobile/ads/impl/jc0;->i:I

    const/4 v1, -0x1

    if-eq p5, v1, :cond_6

    .line 293
    invoke-static {p1, p5}, Lnh6;->a(Landroid/media/metrics/TrackChangeEvent$Builder;I)Landroid/media/metrics/TrackChangeEvent$Builder;

    .line 294
    :cond_6
    iget p5, p4, Lcom/yandex/mobile/ads/impl/jc0;->r:I

    if-eq p5, v1, :cond_7

    .line 295
    invoke-static {p1, p5}, Loh6;->a(Landroid/media/metrics/TrackChangeEvent$Builder;I)Landroid/media/metrics/TrackChangeEvent$Builder;

    .line 296
    :cond_7
    iget p5, p4, Lcom/yandex/mobile/ads/impl/jc0;->s:I

    if-eq p5, v1, :cond_8

    .line 297
    invoke-static {p1, p5}, Lph6;->a(Landroid/media/metrics/TrackChangeEvent$Builder;I)Landroid/media/metrics/TrackChangeEvent$Builder;

    .line 298
    :cond_8
    iget p5, p4, Lcom/yandex/mobile/ads/impl/jc0;->z:I

    if-eq p5, v1, :cond_9

    .line 299
    invoke-static {p1, p5}, Lqh6;->a(Landroid/media/metrics/TrackChangeEvent$Builder;I)Landroid/media/metrics/TrackChangeEvent$Builder;

    .line 300
    :cond_9
    iget p5, p4, Lcom/yandex/mobile/ads/impl/jc0;->A:I

    if-eq p5, v1, :cond_a

    .line 301
    invoke-static {p1, p5}, Lgi6;->a(Landroid/media/metrics/TrackChangeEvent$Builder;I)Landroid/media/metrics/TrackChangeEvent$Builder;

    .line 302
    :cond_a
    iget-object p5, p4, Lcom/yandex/mobile/ads/impl/jc0;->d:Ljava/lang/String;

    if-eqz p5, :cond_c

    .line 303
    sget v2, Lcom/yandex/mobile/ads/impl/f92;->a:I

    .line 304
    const-string v2, "-"

    invoke-virtual {p5, v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p5

    .line 305
    aget-object p2, p5, p2

    array-length v1, p5

    if-lt v1, v0, :cond_b

    aget-object p5, p5, p3

    goto :goto_1

    :cond_b
    const/4 p5, 0x0

    :goto_1
    invoke-static {p2, p5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p2

    .line 306
    iget-object p5, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p5, Ljava/lang/String;

    invoke-static {p1, p5}, Lri6;->a(Landroid/media/metrics/TrackChangeEvent$Builder;Ljava/lang/String;)Landroid/media/metrics/TrackChangeEvent$Builder;

    .line 307
    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz p2, :cond_c

    .line 308
    check-cast p2, Ljava/lang/String;

    invoke-static {p1, p2}, Lcj6;->a(Landroid/media/metrics/TrackChangeEvent$Builder;Ljava/lang/String;)Landroid/media/metrics/TrackChangeEvent$Builder;

    .line 309
    :cond_c
    iget p2, p4, Lcom/yandex/mobile/ads/impl/jc0;->t:F

    const/high16 p4, -0x40800000    # -1.0f

    cmpl-float p4, p2, p4

    if-eqz p4, :cond_e

    .line 310
    invoke-static {p1, p2}, Lgj6;->a(Landroid/media/metrics/TrackChangeEvent$Builder;F)Landroid/media/metrics/TrackChangeEvent$Builder;

    goto :goto_2

    .line 311
    :cond_d
    invoke-static {p1, p2}, Lhj6;->a(Landroid/media/metrics/TrackChangeEvent$Builder;I)Landroid/media/metrics/TrackChangeEvent$Builder;

    .line 312
    :cond_e
    :goto_2
    iput-boolean p3, p0, Lcom/yandex/mobile/ads/impl/nw0;->A:Z

    .line 313
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/nw0;->c:Landroid/media/metrics/PlaybackSession;

    invoke-static {p1}, Lij6;->a(Landroid/media/metrics/TrackChangeEvent$Builder;)Landroid/media/metrics/TrackChangeEvent;

    move-result-object p1

    invoke-static {p0, p1}, Lyi6;->a(Landroid/media/metrics/PlaybackSession;Landroid/media/metrics/TrackChangeEvent;)V

    return-void
.end method

.method private a(Lcom/yandex/mobile/ads/impl/i52;Lcom/yandex/mobile/ads/impl/vw0$b;)V
    .locals 6
    .param p2    # Lcom/yandex/mobile/ads/impl/vw0$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 24
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/nw0;->j:Landroid/media/metrics/PlaybackMetrics$Builder;

    if-nez p2, :cond_0

    return-void

    .line 25
    :cond_0
    iget-object p2, p2, Lcom/yandex/mobile/ads/impl/rw0;->a:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Lcom/yandex/mobile/ads/impl/i52;->a(Ljava/lang/Object;)I

    move-result p2

    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    return-void

    .line 26
    :cond_1
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/nw0;->f:Lcom/yandex/mobile/ads/impl/i52$b;

    const/4 v2, 0x0

    .line 27
    invoke-virtual {p1, p2, v1, v2}, Lcom/yandex/mobile/ads/impl/i52;->a(ILcom/yandex/mobile/ads/impl/i52$b;Z)Lcom/yandex/mobile/ads/impl/i52$b;

    .line 28
    iget-object p2, p0, Lcom/yandex/mobile/ads/impl/nw0;->f:Lcom/yandex/mobile/ads/impl/i52$b;

    iget p2, p2, Lcom/yandex/mobile/ads/impl/i52$b;->d:I

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/nw0;->e:Lcom/yandex/mobile/ads/impl/i52$d;

    const-wide/16 v3, 0x0

    .line 29
    invoke-virtual {p1, p2, v1, v3, v4}, Lcom/yandex/mobile/ads/impl/i52;->a(ILcom/yandex/mobile/ads/impl/i52$d;J)Lcom/yandex/mobile/ads/impl/i52$d;

    .line 30
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/nw0;->e:Lcom/yandex/mobile/ads/impl/i52$d;

    iget-object p1, p1, Lcom/yandex/mobile/ads/impl/i52$d;->d:Lcom/yandex/mobile/ads/impl/jw0;

    .line 31
    iget-object p1, p1, Lcom/yandex/mobile/ads/impl/jw0;->c:Lcom/yandex/mobile/ads/impl/jw0$g;

    const/4 p2, 0x2

    const/4 v1, 0x1

    if-nez p1, :cond_2

    goto :goto_0

    .line 32
    :cond_2
    iget-object v2, p1, Lcom/yandex/mobile/ads/impl/jw0$f;->a:Landroid/net/Uri;

    iget-object p1, p1, Lcom/yandex/mobile/ads/impl/jw0$f;->b:Ljava/lang/String;

    .line 33
    invoke-static {v2, p1}, Lcom/yandex/mobile/ads/impl/f92;->a(Landroid/net/Uri;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_5

    if-eq p1, v1, :cond_4

    if-eq p1, p2, :cond_3

    move v2, v1

    goto :goto_0

    :cond_3
    const/4 v2, 0x4

    goto :goto_0

    :cond_4
    const/4 v2, 0x5

    goto :goto_0

    :cond_5
    const/4 v2, 0x3

    .line 34
    :goto_0
    invoke-static {v0, v2}, Lyh6;->a(Landroid/media/metrics/PlaybackMetrics$Builder;I)Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 35
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/nw0;->e:Lcom/yandex/mobile/ads/impl/i52$d;

    iget-wide v2, p1, Lcom/yandex/mobile/ads/impl/i52$d;->o:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v2, v4

    if-eqz v2, :cond_6

    iget-boolean v2, p1, Lcom/yandex/mobile/ads/impl/i52$d;->m:Z

    if-nez v2, :cond_6

    iget-boolean v2, p1, Lcom/yandex/mobile/ads/impl/i52$d;->j:Z

    if-nez v2, :cond_6

    .line 36
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/i52$d;->a()Z

    move-result p1

    if-nez p1, :cond_6

    .line 37
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/nw0;->e:Lcom/yandex/mobile/ads/impl/i52$d;

    .line 38
    iget-wide v2, p1, Lcom/yandex/mobile/ads/impl/i52$d;->o:J

    .line 39
    invoke-static {v2, v3}, Lcom/yandex/mobile/ads/impl/f92;->b(J)J

    move-result-wide v2

    .line 40
    invoke-static {v0, v2, v3}, Lzh6;->a(Landroid/media/metrics/PlaybackMetrics$Builder;J)Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 41
    :cond_6
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/nw0;->e:Lcom/yandex/mobile/ads/impl/i52$d;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/i52$d;->a()Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_1

    :cond_7
    move p2, v1

    .line 42
    :goto_1
    invoke-static {v0, p2}, Lai6;->a(Landroid/media/metrics/PlaybackMetrics$Builder;I)Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 43
    iput-boolean v1, p0, Lcom/yandex/mobile/ads/impl/nw0;->A:Z

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 264
    iput-boolean v0, p0, Lcom/yandex/mobile/ads/impl/nw0;->u:Z

    .line 265
    :cond_0
    iput p1, p0, Lcom/yandex/mobile/ads/impl/nw0;->k:I

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/cg2;)V
    .locals 4

    .line 275
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/nw0;->o:Lcom/yandex/mobile/ads/impl/nw0$b;

    if-eqz v0, :cond_0

    .line 276
    iget-object v1, v0, Lcom/yandex/mobile/ads/impl/nw0$b;->a:Lcom/yandex/mobile/ads/impl/jc0;

    iget v2, v1, Lcom/yandex/mobile/ads/impl/jc0;->s:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 277
    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/jc0;->a()Lcom/yandex/mobile/ads/impl/jc0$a;

    move-result-object v1

    iget v2, p1, Lcom/yandex/mobile/ads/impl/cg2;->b:I

    .line 278
    invoke-virtual {v1, v2}, Lcom/yandex/mobile/ads/impl/jc0$a;->o(I)Lcom/yandex/mobile/ads/impl/jc0$a;

    move-result-object v1

    iget p1, p1, Lcom/yandex/mobile/ads/impl/cg2;->c:I

    .line 279
    invoke-virtual {v1, p1}, Lcom/yandex/mobile/ads/impl/jc0$a;->f(I)Lcom/yandex/mobile/ads/impl/jc0$a;

    move-result-object p1

    .line 280
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/jc0$a;->a()Lcom/yandex/mobile/ads/impl/jc0;

    move-result-object p1

    .line 281
    new-instance v1, Lcom/yandex/mobile/ads/impl/nw0$b;

    iget v2, v0, Lcom/yandex/mobile/ads/impl/nw0$b;->b:I

    iget-object v0, v0, Lcom/yandex/mobile/ads/impl/nw0$b;->c:Ljava/lang/String;

    invoke-direct {v1, p1, v2, v0}, Lcom/yandex/mobile/ads/impl/nw0$b;-><init>(Lcom/yandex/mobile/ads/impl/jc0;ILjava/lang/String;)V

    iput-object v1, p0, Lcom/yandex/mobile/ads/impl/nw0;->o:Lcom/yandex/mobile/ads/impl/nw0$b;

    :cond_0
    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/hi1;Lcom/yandex/mobile/ads/impl/ld$b;)V
    .locals 24

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    const/4 v10, 0x1

    .line 65
    invoke-virtual/range {p2 .. p2}, Lcom/yandex/mobile/ads/impl/ld$b;->a()I

    move-result v5

    if-nez v5, :cond_0

    return-void

    :cond_0
    const/4 v11, 0x0

    move v5, v11

    .line 66
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lcom/yandex/mobile/ads/impl/ld$b;->a()I

    move-result v12

    const/16 v13, 0xb

    if-ge v5, v12, :cond_3

    .line 67
    invoke-virtual {v7, v5}, Lcom/yandex/mobile/ads/impl/ld$b;->b(I)I

    move-result v12

    .line 68
    invoke-virtual {v7, v12}, Lcom/yandex/mobile/ads/impl/ld$b;->c(I)Lcom/yandex/mobile/ads/impl/ld$a;

    move-result-object v14

    if-nez v12, :cond_1

    .line 69
    iget-object v12, v6, Lcom/yandex/mobile/ads/impl/nw0;->b:Lcom/yandex/mobile/ads/impl/k00;

    invoke-virtual {v12, v14}, Lcom/yandex/mobile/ads/impl/k00;->d(Lcom/yandex/mobile/ads/impl/ld$a;)V

    goto :goto_1

    :cond_1
    if-ne v12, v13, :cond_2

    .line 70
    iget-object v12, v6, Lcom/yandex/mobile/ads/impl/nw0;->b:Lcom/yandex/mobile/ads/impl/k00;

    iget v13, v6, Lcom/yandex/mobile/ads/impl/nw0;->k:I

    invoke-virtual {v12, v14, v13}, Lcom/yandex/mobile/ads/impl/k00;->a(Lcom/yandex/mobile/ads/impl/ld$a;I)V

    goto :goto_1

    .line 71
    :cond_2
    iget-object v12, v6, Lcom/yandex/mobile/ads/impl/nw0;->b:Lcom/yandex/mobile/ads/impl/k00;

    invoke-virtual {v12, v14}, Lcom/yandex/mobile/ads/impl/k00;->c(Lcom/yandex/mobile/ads/impl/ld$a;)V

    :goto_1
    add-int/2addr v5, v10

    goto :goto_0

    .line 72
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    .line 73
    invoke-virtual {v7, v11}, Lcom/yandex/mobile/ads/impl/ld$b;->a(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 74
    invoke-virtual {v7, v11}, Lcom/yandex/mobile/ads/impl/ld$b;->c(I)Lcom/yandex/mobile/ads/impl/ld$a;

    move-result-object v5

    .line 75
    iget-object v12, v6, Lcom/yandex/mobile/ads/impl/nw0;->j:Landroid/media/metrics/PlaybackMetrics$Builder;

    if-eqz v12, :cond_4

    .line 76
    iget-object v12, v5, Lcom/yandex/mobile/ads/impl/ld$a;->b:Lcom/yandex/mobile/ads/impl/i52;

    iget-object v5, v5, Lcom/yandex/mobile/ads/impl/ld$a;->d:Lcom/yandex/mobile/ads/impl/vw0$b;

    invoke-direct {v6, v12, v5}, Lcom/yandex/mobile/ads/impl/nw0;->a(Lcom/yandex/mobile/ads/impl/i52;Lcom/yandex/mobile/ads/impl/vw0$b;)V

    :cond_4
    const/4 v12, 0x2

    .line 77
    invoke-virtual {v7, v12}, Lcom/yandex/mobile/ads/impl/ld$b;->a(I)Z

    move-result v5

    if-eqz v5, :cond_c

    iget-object v5, v6, Lcom/yandex/mobile/ads/impl/nw0;->j:Landroid/media/metrics/PlaybackMetrics$Builder;

    if-eqz v5, :cond_c

    .line 78
    invoke-interface/range {p1 .. p1}, Lcom/yandex/mobile/ads/impl/hi1;->getCurrentTracks()Lcom/yandex/mobile/ads/impl/b72;

    move-result-object v5

    invoke-virtual {v5}, Lcom/yandex/mobile/ads/impl/b72;->a()Lcom/yandex/mobile/ads/impl/kk0;

    move-result-object v5

    .line 79
    invoke-virtual {v5, v11}, Lcom/yandex/mobile/ads/impl/kk0;->a(I)Lcom/yandex/mobile/ads/impl/j82;

    move-result-object v5

    .line 80
    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v1, v16

    check-cast v1, Lcom/yandex/mobile/ads/impl/b72$a;

    move v2, v11

    .line 81
    :goto_2
    iget v3, v1, Lcom/yandex/mobile/ads/impl/b72$a;->b:I

    if-ge v2, v3, :cond_5

    .line 82
    invoke-virtual {v1, v2}, Lcom/yandex/mobile/ads/impl/b72$a;->b(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 83
    invoke-virtual {v1, v2}, Lcom/yandex/mobile/ads/impl/b72$a;->a(I)Lcom/yandex/mobile/ads/impl/jc0;

    move-result-object v3

    iget-object v3, v3, Lcom/yandex/mobile/ads/impl/jc0;->p:Lcom/yandex/mobile/ads/impl/f40;

    if-eqz v3, :cond_6

    goto :goto_3

    :cond_6
    add-int/2addr v2, v10

    goto :goto_2

    :cond_7
    const/4 v3, 0x0

    :goto_3
    if-eqz v3, :cond_c

    .line 84
    iget-object v1, v6, Lcom/yandex/mobile/ads/impl/nw0;->j:Landroid/media/metrics/PlaybackMetrics$Builder;

    sget v2, Lcom/yandex/mobile/ads/impl/f92;->a:I

    move v2, v11

    .line 85
    :goto_4
    iget v5, v3, Lcom/yandex/mobile/ads/impl/f40;->e:I

    if-ge v2, v5, :cond_b

    .line 86
    invoke-virtual {v3, v2}, Lcom/yandex/mobile/ads/impl/f40;->a(I)Lcom/yandex/mobile/ads/impl/f40$b;

    move-result-object v5

    iget-object v5, v5, Lcom/yandex/mobile/ads/impl/f40$b;->c:Ljava/util/UUID;

    .line 87
    sget-object v8, Lcom/yandex/mobile/ads/impl/rm;->d:Ljava/util/UUID;

    invoke-virtual {v5, v8}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    const/4 v2, 0x3

    goto :goto_5

    .line 88
    :cond_8
    sget-object v8, Lcom/yandex/mobile/ads/impl/rm;->e:Ljava/util/UUID;

    invoke-virtual {v5, v8}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    move v2, v12

    goto :goto_5

    .line 89
    :cond_9
    sget-object v8, Lcom/yandex/mobile/ads/impl/rm;->c:Ljava/util/UUID;

    invoke-virtual {v5, v8}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    const/4 v2, 0x6

    goto :goto_5

    :cond_a
    add-int/2addr v2, v10

    goto :goto_4

    :cond_b
    move v2, v10

    .line 90
    :goto_5
    invoke-static {v1, v2}, Lci6;->a(Landroid/media/metrics/PlaybackMetrics$Builder;I)Landroid/media/metrics/PlaybackMetrics$Builder;

    :cond_c
    const/16 v1, 0x3f3

    .line 91
    invoke-virtual {v7, v1}, Lcom/yandex/mobile/ads/impl/ld$b;->a(I)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 92
    iget v1, v6, Lcom/yandex/mobile/ads/impl/nw0;->z:I

    add-int/2addr v1, v10

    iput v1, v6, Lcom/yandex/mobile/ads/impl/nw0;->z:I

    .line 93
    :cond_d
    iget-object v1, v6, Lcom/yandex/mobile/ads/impl/nw0;->n:Lcom/yandex/mobile/ads/impl/yh1;

    const/4 v5, 0x5

    const/4 v9, 0x4

    if-nez v1, :cond_e

    move v0, v10

    const/16 v2, 0x8

    const/4 v10, 0x7

    const/4 v13, 0x6

    const/16 v20, 0x9

    goto/16 :goto_19

    .line 94
    :cond_e
    iget-object v13, v6, Lcom/yandex/mobile/ads/impl/nw0;->a:Landroid/content/Context;

    iget v4, v6, Lcom/yandex/mobile/ads/impl/nw0;->v:I

    if-ne v4, v9, :cond_f

    move v4, v10

    goto :goto_6

    :cond_f
    move v4, v11

    .line 95
    :goto_6
    iget v8, v1, Lcom/yandex/mobile/ads/impl/yh1;->b:I

    const/16 v2, 0x3e9

    if-ne v8, v2, :cond_10

    .line 96
    new-instance v2, Lcom/yandex/mobile/ads/impl/nw0$a;

    const/16 v4, 0x14

    invoke-direct {v2, v4, v11}, Lcom/yandex/mobile/ads/impl/nw0$a;-><init>(II)V

    :goto_7
    move-object v0, v2

    :goto_8
    const/16 v2, 0x8

    const/16 v8, 0xd

    const/4 v10, 0x7

    const/4 v13, 0x6

    const/16 v20, 0x9

    goto/16 :goto_18

    .line 97
    :cond_10
    instance-of v2, v1, Lcom/yandex/mobile/ads/impl/m60;

    if-eqz v2, :cond_12

    .line 98
    move-object v2, v1

    check-cast v2, Lcom/yandex/mobile/ads/impl/m60;

    .line 99
    iget v8, v2, Lcom/yandex/mobile/ads/impl/m60;->d:I

    if-ne v8, v10, :cond_11

    move v8, v10

    goto :goto_9

    :cond_11
    move v8, v11

    .line 100
    :goto_9
    iget v2, v2, Lcom/yandex/mobile/ads/impl/m60;->h:I

    goto :goto_a

    :cond_12
    move v2, v11

    move v8, v2

    .line 101
    :goto_a
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v10

    .line 102
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 103
    instance-of v3, v10, Ljava/io/IOException;

    const/16 v21, 0x1774

    const/16 v22, 0x1772

    const/16 v23, 0x1776

    const/16 v0, 0x1b

    if-eqz v3, :cond_2a

    .line 104
    instance-of v2, v10, Lcom/yandex/mobile/ads/impl/th0;

    if-eqz v2, :cond_13

    .line 105
    check-cast v10, Lcom/yandex/mobile/ads/impl/th0;

    iget v0, v10, Lcom/yandex/mobile/ads/impl/th0;->e:I

    .line 106
    new-instance v2, Lcom/yandex/mobile/ads/impl/nw0$a;

    invoke-direct {v2, v5, v0}, Lcom/yandex/mobile/ads/impl/nw0$a;-><init>(II)V

    goto :goto_7

    .line 107
    :cond_13
    instance-of v2, v10, Lcom/yandex/mobile/ads/impl/sh0;

    if-nez v2, :cond_14

    instance-of v2, v10, Lcom/yandex/mobile/ads/impl/eg1;

    if-eqz v2, :cond_15

    :cond_14
    const/16 v0, 0x9

    const/4 v13, 0x6

    goto/16 :goto_13

    .line 108
    :cond_15
    instance-of v2, v10, Lcom/yandex/mobile/ads/impl/rh0;

    if-nez v2, :cond_16

    instance-of v3, v10, Lcom/yandex/mobile/ads/impl/z72$a;

    if-eqz v3, :cond_17

    :cond_16
    const/16 v0, 0x9

    goto/16 :goto_e

    .line 109
    :cond_17
    iget v2, v1, Lcom/yandex/mobile/ads/impl/yh1;->b:I

    const/16 v3, 0x3ea

    const/16 v4, 0x15

    if-ne v2, v3, :cond_18

    .line 110
    new-instance v2, Lcom/yandex/mobile/ads/impl/nw0$a;

    invoke-direct {v2, v4, v11}, Lcom/yandex/mobile/ads/impl/nw0$a;-><init>(II)V

    goto :goto_7

    .line 111
    :cond_18
    instance-of v2, v10, Lcom/yandex/mobile/ads/impl/g40$a;

    if-eqz v2, :cond_22

    .line 112
    invoke-virtual {v10}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    .line 113
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 114
    sget v3, Lcom/yandex/mobile/ads/impl/f92;->a:I

    if-lt v3, v4, :cond_1c

    instance-of v4, v2, Landroid/media/MediaDrm$MediaDrmStateException;

    if-eqz v4, :cond_1c

    .line 115
    check-cast v2, Landroid/media/MediaDrm$MediaDrmStateException;

    invoke-virtual {v2}, Landroid/media/MediaDrm$MediaDrmStateException;->getDiagnosticInfo()Ljava/lang/String;

    move-result-object v2

    .line 116
    invoke-static {v2}, Lcom/yandex/mobile/ads/impl/f92;->a(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v12, :cond_1b

    if-eq v2, v9, :cond_1b

    const/16 v3, 0xa

    if-eq v2, v3, :cond_1a

    const/4 v3, 0x7

    if-eq v2, v3, :cond_1b

    const/16 v3, 0x8

    if-eq v2, v3, :cond_19

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    move/from16 v3, v23

    goto :goto_b

    :pswitch_0
    move/from16 v3, v22

    goto :goto_b

    :cond_19
    :pswitch_1
    const/16 v3, 0x1773

    goto :goto_b

    :cond_1a
    :pswitch_2
    move/from16 v3, v21

    goto :goto_b

    :cond_1b
    :pswitch_3
    const/16 v3, 0x1775

    :goto_b
    packed-switch v3, :pswitch_data_2

    goto :goto_c

    :pswitch_4
    const/16 v0, 0x1a

    goto :goto_c

    :pswitch_5
    const/16 v0, 0x19

    goto :goto_c

    :pswitch_6
    const/16 v0, 0x1c

    goto :goto_c

    :pswitch_7
    const/16 v0, 0x18

    .line 117
    :goto_c
    new-instance v3, Lcom/yandex/mobile/ads/impl/nw0$a;

    invoke-direct {v3, v0, v2}, Lcom/yandex/mobile/ads/impl/nw0$a;-><init>(II)V

    move-object v0, v3

    goto/16 :goto_8

    :cond_1c
    const/16 v4, 0x17

    if-lt v3, v4, :cond_1d

    .line 118
    instance-of v4, v2, Landroid/media/MediaDrmResetException;

    if-eqz v4, :cond_1d

    .line 119
    new-instance v2, Lcom/yandex/mobile/ads/impl/nw0$a;

    invoke-direct {v2, v0, v11}, Lcom/yandex/mobile/ads/impl/nw0$a;-><init>(II)V

    goto/16 :goto_7

    :cond_1d
    const/16 v0, 0x12

    if-lt v3, v0, :cond_1e

    .line 120
    instance-of v4, v2, Landroid/media/NotProvisionedException;

    if-eqz v4, :cond_1e

    .line 121
    new-instance v2, Lcom/yandex/mobile/ads/impl/nw0$a;

    const/16 v3, 0x18

    invoke-direct {v2, v3, v11}, Lcom/yandex/mobile/ads/impl/nw0$a;-><init>(II)V

    goto/16 :goto_7

    :cond_1e
    if-lt v3, v0, :cond_1f

    .line 122
    instance-of v0, v2, Landroid/media/DeniedByServerException;

    if-eqz v0, :cond_1f

    .line 123
    new-instance v2, Lcom/yandex/mobile/ads/impl/nw0$a;

    const/16 v0, 0x1d

    invoke-direct {v2, v0, v11}, Lcom/yandex/mobile/ads/impl/nw0$a;-><init>(II)V

    goto/16 :goto_7

    .line 124
    :cond_1f
    instance-of v0, v2, Lcom/yandex/mobile/ads/impl/l82;

    if-eqz v0, :cond_20

    .line 125
    new-instance v2, Lcom/yandex/mobile/ads/impl/nw0$a;

    const/16 v0, 0x17

    invoke-direct {v2, v0, v11}, Lcom/yandex/mobile/ads/impl/nw0$a;-><init>(II)V

    goto/16 :goto_7

    .line 126
    :cond_20
    instance-of v0, v2, Lcom/yandex/mobile/ads/impl/sz$d;

    if-eqz v0, :cond_21

    .line 127
    new-instance v2, Lcom/yandex/mobile/ads/impl/nw0$a;

    const/16 v4, 0x1c

    invoke-direct {v2, v4, v11}, Lcom/yandex/mobile/ads/impl/nw0$a;-><init>(II)V

    goto/16 :goto_7

    .line 128
    :cond_21
    new-instance v2, Lcom/yandex/mobile/ads/impl/nw0$a;

    const/16 v0, 0x1e

    invoke-direct {v2, v0, v11}, Lcom/yandex/mobile/ads/impl/nw0$a;-><init>(II)V

    goto/16 :goto_7

    .line 129
    :cond_22
    instance-of v0, v10, Lcom/yandex/mobile/ads/impl/hb0$c;

    if-eqz v0, :cond_24

    .line 130
    invoke-virtual {v10}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ljava/io/FileNotFoundException;

    if-eqz v0, :cond_24

    .line 131
    invoke-virtual {v10}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 132
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 133
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 134
    sget v2, Lcom/yandex/mobile/ads/impl/f92;->a:I

    if-lt v2, v4, :cond_23

    instance-of v2, v0, Landroid/system/ErrnoException;

    if-eqz v2, :cond_23

    check-cast v0, Landroid/system/ErrnoException;

    iget v0, v0, Landroid/system/ErrnoException;->errno:I

    sget v2, Landroid/system/OsConstants;->EACCES:I

    if-ne v0, v2, :cond_23

    .line 135
    new-instance v2, Lcom/yandex/mobile/ads/impl/nw0$a;

    const/16 v0, 0x20

    invoke-direct {v2, v0, v11}, Lcom/yandex/mobile/ads/impl/nw0$a;-><init>(II)V

    goto/16 :goto_7

    .line 136
    :cond_23
    new-instance v2, Lcom/yandex/mobile/ads/impl/nw0$a;

    const/16 v0, 0x1f

    invoke-direct {v2, v0, v11}, Lcom/yandex/mobile/ads/impl/nw0$a;-><init>(II)V

    goto/16 :goto_7

    .line 137
    :cond_24
    new-instance v2, Lcom/yandex/mobile/ads/impl/nw0$a;

    const/16 v0, 0x9

    invoke-direct {v2, v0, v11}, Lcom/yandex/mobile/ads/impl/nw0$a;-><init>(II)V

    :goto_d
    move/from16 v20, v0

    move-object v0, v2

    const/16 v2, 0x8

    const/16 v8, 0xd

    const/4 v10, 0x7

    const/4 v13, 0x6

    goto/16 :goto_18

    .line 138
    :goto_e
    invoke-static {v13}, Lcom/yandex/mobile/ads/impl/ed1;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/ed1;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/ed1;->a()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_25

    .line 139
    new-instance v2, Lcom/yandex/mobile/ads/impl/nw0$a;

    const/4 v3, 0x3

    invoke-direct {v2, v3, v11}, Lcom/yandex/mobile/ads/impl/nw0$a;-><init>(II)V

    goto :goto_d

    .line 140
    :cond_25
    invoke-virtual {v10}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    .line 141
    instance-of v4, v3, Ljava/net/UnknownHostException;

    if-eqz v4, :cond_26

    .line 142
    new-instance v2, Lcom/yandex/mobile/ads/impl/nw0$a;

    const/4 v13, 0x6

    invoke-direct {v2, v13, v11}, Lcom/yandex/mobile/ads/impl/nw0$a;-><init>(II)V

    :goto_f
    move/from16 v20, v0

    :goto_10
    move-object v0, v2

    const/16 v2, 0x8

    :goto_11
    const/16 v8, 0xd

    :goto_12
    const/4 v10, 0x7

    goto/16 :goto_18

    :cond_26
    const/4 v13, 0x6

    .line 143
    instance-of v3, v3, Ljava/net/SocketTimeoutException;

    if-eqz v3, :cond_27

    .line 144
    new-instance v2, Lcom/yandex/mobile/ads/impl/nw0$a;

    const/4 v3, 0x7

    invoke-direct {v2, v3, v11}, Lcom/yandex/mobile/ads/impl/nw0$a;-><init>(II)V

    move/from16 v20, v0

    move-object v0, v2

    move v10, v3

    const/16 v2, 0x8

    const/16 v8, 0xd

    goto/16 :goto_18

    :cond_27
    if-eqz v2, :cond_28

    .line 145
    check-cast v10, Lcom/yandex/mobile/ads/impl/rh0;

    iget v2, v10, Lcom/yandex/mobile/ads/impl/rh0;->d:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_28

    .line 146
    new-instance v2, Lcom/yandex/mobile/ads/impl/nw0$a;

    invoke-direct {v2, v9, v11}, Lcom/yandex/mobile/ads/impl/nw0$a;-><init>(II)V

    goto :goto_f

    .line 147
    :cond_28
    new-instance v2, Lcom/yandex/mobile/ads/impl/nw0$a;

    const/16 v3, 0x8

    invoke-direct {v2, v3, v11}, Lcom/yandex/mobile/ads/impl/nw0$a;-><init>(II)V

    move/from16 v20, v0

    move-object v0, v2

    move v2, v3

    goto :goto_11

    .line 148
    :goto_13
    new-instance v2, Lcom/yandex/mobile/ads/impl/nw0$a;

    if-eqz v4, :cond_29

    const/16 v3, 0xa

    goto :goto_14

    :cond_29
    const/16 v3, 0xb

    .line 149
    :goto_14
    invoke-direct {v2, v3, v11}, Lcom/yandex/mobile/ads/impl/nw0$a;-><init>(II)V

    goto :goto_f

    :cond_2a
    const/16 v3, 0x18

    const/16 v4, 0x1c

    const/4 v13, 0x6

    const/16 v20, 0x9

    if-eqz v8, :cond_2c

    if-eqz v2, :cond_2b

    const/4 v0, 0x1

    if-ne v2, v0, :cond_2c

    .line 150
    :cond_2b
    new-instance v2, Lcom/yandex/mobile/ads/impl/nw0$a;

    const/16 v0, 0x23

    invoke-direct {v2, v0, v11}, Lcom/yandex/mobile/ads/impl/nw0$a;-><init>(II)V

    goto :goto_10

    :cond_2c
    if-eqz v8, :cond_2d

    const/4 v0, 0x3

    if-ne v2, v0, :cond_2d

    .line 151
    new-instance v2, Lcom/yandex/mobile/ads/impl/nw0$a;

    const/16 v0, 0xf

    invoke-direct {v2, v0, v11}, Lcom/yandex/mobile/ads/impl/nw0$a;-><init>(II)V

    goto :goto_10

    :cond_2d
    if-eqz v8, :cond_2e

    if-ne v2, v12, :cond_2e

    .line 152
    new-instance v2, Lcom/yandex/mobile/ads/impl/nw0$a;

    const/16 v0, 0x17

    invoke-direct {v2, v0, v11}, Lcom/yandex/mobile/ads/impl/nw0$a;-><init>(II)V

    goto :goto_10

    .line 153
    :cond_2e
    instance-of v0, v10, Lcom/yandex/mobile/ads/impl/mv0$b;

    if-eqz v0, :cond_2f

    .line 154
    check-cast v10, Lcom/yandex/mobile/ads/impl/mv0$b;

    iget-object v0, v10, Lcom/yandex/mobile/ads/impl/mv0$b;->e:Ljava/lang/String;

    .line 155
    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/f92;->a(Ljava/lang/String;)I

    move-result v0

    .line 156
    new-instance v2, Lcom/yandex/mobile/ads/impl/nw0$a;

    const/16 v8, 0xd

    invoke-direct {v2, v8, v0}, Lcom/yandex/mobile/ads/impl/nw0$a;-><init>(II)V

    :goto_15
    move-object v0, v2

    const/16 v2, 0x8

    goto/16 :goto_12

    :cond_2f
    const/16 v8, 0xd

    .line 157
    instance-of v0, v10, Lcom/yandex/mobile/ads/impl/jv0;

    if-eqz v0, :cond_30

    .line 158
    check-cast v10, Lcom/yandex/mobile/ads/impl/jv0;

    iget-object v0, v10, Lcom/yandex/mobile/ads/impl/jv0;->b:Ljava/lang/String;

    .line 159
    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/f92;->a(Ljava/lang/String;)I

    move-result v0

    .line 160
    new-instance v2, Lcom/yandex/mobile/ads/impl/nw0$a;

    const/16 v3, 0xe

    invoke-direct {v2, v3, v0}, Lcom/yandex/mobile/ads/impl/nw0$a;-><init>(II)V

    goto :goto_15

    :cond_30
    const/16 v0, 0xe

    .line 161
    instance-of v2, v10, Ljava/lang/OutOfMemoryError;

    if-eqz v2, :cond_31

    .line 162
    new-instance v2, Lcom/yandex/mobile/ads/impl/nw0$a;

    invoke-direct {v2, v0, v11}, Lcom/yandex/mobile/ads/impl/nw0$a;-><init>(II)V

    goto :goto_15

    .line 163
    :cond_31
    instance-of v0, v10, Lcom/yandex/mobile/ads/impl/wh$b;

    if-eqz v0, :cond_32

    .line 164
    check-cast v10, Lcom/yandex/mobile/ads/impl/wh$b;

    iget v0, v10, Lcom/yandex/mobile/ads/impl/wh$b;->b:I

    .line 165
    new-instance v2, Lcom/yandex/mobile/ads/impl/nw0$a;

    const/16 v3, 0x11

    invoke-direct {v2, v3, v0}, Lcom/yandex/mobile/ads/impl/nw0$a;-><init>(II)V

    goto :goto_15

    .line 166
    :cond_32
    instance-of v0, v10, Lcom/yandex/mobile/ads/impl/wh$e;

    if-eqz v0, :cond_33

    .line 167
    check-cast v10, Lcom/yandex/mobile/ads/impl/wh$e;

    iget v0, v10, Lcom/yandex/mobile/ads/impl/wh$e;->b:I

    .line 168
    new-instance v2, Lcom/yandex/mobile/ads/impl/nw0$a;

    const/16 v3, 0x12

    invoke-direct {v2, v3, v0}, Lcom/yandex/mobile/ads/impl/nw0$a;-><init>(II)V

    goto :goto_15

    .line 169
    :cond_33
    sget v0, Lcom/yandex/mobile/ads/impl/f92;->a:I

    const/16 v2, 0x10

    if-lt v0, v2, :cond_38

    instance-of v0, v10, Landroid/media/MediaCodec$CryptoException;

    if-eqz v0, :cond_38

    .line 170
    check-cast v10, Landroid/media/MediaCodec$CryptoException;

    invoke-virtual {v10}, Landroid/media/MediaCodec$CryptoException;->getErrorCode()I

    move-result v0

    if-eq v0, v12, :cond_36

    if-eq v0, v9, :cond_36

    const/16 v2, 0xa

    if-eq v0, v2, :cond_35

    const/4 v10, 0x7

    const/16 v2, 0x8

    if-eq v0, v10, :cond_37

    if-eq v0, v2, :cond_34

    packed-switch v0, :pswitch_data_3

    packed-switch v0, :pswitch_data_4

    move/from16 v21, v23

    goto :goto_16

    :pswitch_8
    move/from16 v21, v22

    goto :goto_16

    :cond_34
    :pswitch_9
    const/16 v21, 0x1773

    goto :goto_16

    :cond_35
    const/16 v2, 0x8

    const/4 v10, 0x7

    goto :goto_16

    :cond_36
    const/16 v2, 0x8

    const/4 v10, 0x7

    :cond_37
    :pswitch_a
    const/16 v21, 0x1775

    :goto_16
    :pswitch_b
    packed-switch v21, :pswitch_data_5

    const/16 v3, 0x1b

    goto :goto_17

    :pswitch_c
    const/16 v3, 0x1a

    goto :goto_17

    :pswitch_d
    const/16 v3, 0x19

    goto :goto_17

    :pswitch_e
    move v3, v4

    .line 171
    :goto_17
    :pswitch_f
    new-instance v4, Lcom/yandex/mobile/ads/impl/nw0$a;

    invoke-direct {v4, v3, v0}, Lcom/yandex/mobile/ads/impl/nw0$a;-><init>(II)V

    move-object v0, v4

    goto :goto_18

    :cond_38
    const/16 v2, 0x8

    const/4 v10, 0x7

    .line 172
    new-instance v0, Lcom/yandex/mobile/ads/impl/nw0$a;

    const/16 v3, 0x16

    invoke-direct {v0, v3, v11}, Lcom/yandex/mobile/ads/impl/nw0$a;-><init>(II)V

    .line 173
    :goto_18
    iget-object v3, v6, Lcom/yandex/mobile/ads/impl/nw0;->c:Landroid/media/metrics/PlaybackSession;

    invoke-static {}, Lej6;->a()Landroid/media/metrics/PlaybackErrorEvent$Builder;

    move-result-object v4

    iget-wide v8, v6, Lcom/yandex/mobile/ads/impl/nw0;->d:J

    sub-long v8, v14, v8

    .line 174
    invoke-static {v4, v8, v9}, Lfi6;->a(Landroid/media/metrics/PlaybackErrorEvent$Builder;J)Landroid/media/metrics/PlaybackErrorEvent$Builder;

    move-result-object v4

    iget v8, v0, Lcom/yandex/mobile/ads/impl/nw0$a;->a:I

    .line 175
    invoke-static {v4, v8}, Lhi6;->a(Landroid/media/metrics/PlaybackErrorEvent$Builder;I)Landroid/media/metrics/PlaybackErrorEvent$Builder;

    move-result-object v4

    iget v0, v0, Lcom/yandex/mobile/ads/impl/nw0$a;->b:I

    .line 176
    invoke-static {v4, v0}, Lii6;->a(Landroid/media/metrics/PlaybackErrorEvent$Builder;I)Landroid/media/metrics/PlaybackErrorEvent$Builder;

    move-result-object v0

    .line 177
    invoke-static {v0, v1}, Lji6;->a(Landroid/media/metrics/PlaybackErrorEvent$Builder;Ljava/lang/Exception;)Landroid/media/metrics/PlaybackErrorEvent$Builder;

    move-result-object v0

    .line 178
    invoke-static {v0}, Lki6;->a(Landroid/media/metrics/PlaybackErrorEvent$Builder;)Landroid/media/metrics/PlaybackErrorEvent;

    move-result-object v0

    .line 179
    invoke-static {v3, v0}, Lrh6;->a(Landroid/media/metrics/PlaybackSession;Landroid/media/metrics/PlaybackErrorEvent;)V

    const/4 v0, 0x1

    .line 180
    iput-boolean v0, v6, Lcom/yandex/mobile/ads/impl/nw0;->A:Z

    const/4 v1, 0x0

    .line 181
    iput-object v1, v6, Lcom/yandex/mobile/ads/impl/nw0;->n:Lcom/yandex/mobile/ads/impl/yh1;

    .line 182
    :goto_19
    invoke-virtual {v7, v12}, Lcom/yandex/mobile/ads/impl/ld$b;->a(I)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 183
    invoke-interface/range {p1 .. p1}, Lcom/yandex/mobile/ads/impl/hi1;->getCurrentTracks()Lcom/yandex/mobile/ads/impl/b72;

    move-result-object v1

    .line 184
    invoke-virtual {v1, v12}, Lcom/yandex/mobile/ads/impl/b72;->a(I)Z

    move-result v3

    .line 185
    invoke-virtual {v1, v0}, Lcom/yandex/mobile/ads/impl/b72;->a(I)Z

    move-result v8

    const/4 v4, 0x3

    .line 186
    invoke-virtual {v1, v4}, Lcom/yandex/mobile/ads/impl/b72;->a(I)Z

    move-result v9

    if-nez v3, :cond_3a

    if-nez v8, :cond_3a

    if-eqz v9, :cond_39

    goto :goto_1a

    :cond_39
    move/from16 v17, v2

    move v13, v4

    move/from16 v19, v5

    move/from16 v18, v10

    const/16 v10, 0xa

    goto/16 :goto_20

    :cond_3a
    :goto_1a
    if-nez v3, :cond_3b

    .line 187
    iget-object v0, v6, Lcom/yandex/mobile/ads/impl/nw0;->r:Lcom/yandex/mobile/ads/impl/jc0;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/yandex/mobile/ads/impl/f92;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    :cond_3b
    move/from16 v17, v2

    move v13, v4

    move/from16 v19, v5

    move/from16 v18, v10

    const/16 v10, 0xa

    goto :goto_1c

    .line 188
    :cond_3c
    iget-object v0, v6, Lcom/yandex/mobile/ads/impl/nw0;->r:Lcom/yandex/mobile/ads/impl/jc0;

    if-nez v0, :cond_3d

    const/16 v16, 0x1

    goto :goto_1b

    :cond_3d
    move/from16 v16, v11

    .line 189
    :goto_1b
    iput-object v3, v6, Lcom/yandex/mobile/ads/impl/nw0;->r:Lcom/yandex/mobile/ads/impl/jc0;

    const/4 v1, 0x1

    const/16 v10, 0xa

    move-object/from16 v0, p0

    move/from16 v17, v2

    move-object/from16 v19, v3

    const/16 v18, 0x7

    move-wide v2, v14

    move v13, v4

    move-object/from16 v4, v19

    move/from16 v19, v5

    move/from16 v5, v16

    .line 190
    invoke-direct/range {v0 .. v5}, Lcom/yandex/mobile/ads/impl/nw0;->a(IJLcom/yandex/mobile/ads/impl/jc0;I)V

    :goto_1c
    if-nez v8, :cond_40

    .line 191
    iget-object v0, v6, Lcom/yandex/mobile/ads/impl/nw0;->s:Lcom/yandex/mobile/ads/impl/jc0;

    const/4 v4, 0x0

    invoke-static {v0, v4}, Lcom/yandex/mobile/ads/impl/f92;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    goto :goto_1e

    .line 192
    :cond_3e
    iget-object v0, v6, Lcom/yandex/mobile/ads/impl/nw0;->s:Lcom/yandex/mobile/ads/impl/jc0;

    if-nez v0, :cond_3f

    const/4 v5, 0x1

    goto :goto_1d

    :cond_3f
    move v5, v11

    .line 193
    :goto_1d
    iput-object v4, v6, Lcom/yandex/mobile/ads/impl/nw0;->s:Lcom/yandex/mobile/ads/impl/jc0;

    const/4 v1, 0x0

    move-object/from16 v0, p0

    move-wide v2, v14

    .line 194
    invoke-direct/range {v0 .. v5}, Lcom/yandex/mobile/ads/impl/nw0;->a(IJLcom/yandex/mobile/ads/impl/jc0;I)V

    :cond_40
    :goto_1e
    if-nez v9, :cond_44

    .line 195
    iget-object v0, v6, Lcom/yandex/mobile/ads/impl/nw0;->t:Lcom/yandex/mobile/ads/impl/jc0;

    const/4 v4, 0x0

    invoke-static {v0, v4}, Lcom/yandex/mobile/ads/impl/f92;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    goto :goto_20

    .line 196
    :cond_41
    iget-object v0, v6, Lcom/yandex/mobile/ads/impl/nw0;->t:Lcom/yandex/mobile/ads/impl/jc0;

    if-nez v0, :cond_42

    const/4 v5, 0x1

    goto :goto_1f

    :cond_42
    move v5, v11

    .line 197
    :goto_1f
    iput-object v4, v6, Lcom/yandex/mobile/ads/impl/nw0;->t:Lcom/yandex/mobile/ads/impl/jc0;

    const/4 v1, 0x2

    move-object/from16 v0, p0

    move-wide v2, v14

    .line 198
    invoke-direct/range {v0 .. v5}, Lcom/yandex/mobile/ads/impl/nw0;->a(IJLcom/yandex/mobile/ads/impl/jc0;I)V

    goto :goto_20

    :cond_43
    move/from16 v17, v2

    move/from16 v19, v5

    move/from16 v18, v10

    const/16 v10, 0xa

    const/4 v13, 0x3

    .line 199
    :cond_44
    :goto_20
    iget-object v0, v6, Lcom/yandex/mobile/ads/impl/nw0;->o:Lcom/yandex/mobile/ads/impl/nw0$b;

    if-eqz v0, :cond_47

    .line 200
    iget-object v0, v0, Lcom/yandex/mobile/ads/impl/nw0$b;->c:Ljava/lang/String;

    iget-object v1, v6, Lcom/yandex/mobile/ads/impl/nw0;->b:Lcom/yandex/mobile/ads/impl/k00;

    .line 201
    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/k00;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 202
    iget-object v0, v6, Lcom/yandex/mobile/ads/impl/nw0;->o:Lcom/yandex/mobile/ads/impl/nw0$b;

    iget-object v4, v0, Lcom/yandex/mobile/ads/impl/nw0$b;->a:Lcom/yandex/mobile/ads/impl/jc0;

    iget v1, v4, Lcom/yandex/mobile/ads/impl/jc0;->s:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_47

    .line 203
    iget v0, v0, Lcom/yandex/mobile/ads/impl/nw0$b;->b:I

    .line 204
    iget-object v1, v6, Lcom/yandex/mobile/ads/impl/nw0;->r:Lcom/yandex/mobile/ads/impl/jc0;

    invoke-static {v1, v4}, Lcom/yandex/mobile/ads/impl/f92;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_45

    :goto_21
    const/4 v0, 0x0

    goto :goto_23

    .line 205
    :cond_45
    iget-object v1, v6, Lcom/yandex/mobile/ads/impl/nw0;->r:Lcom/yandex/mobile/ads/impl/jc0;

    if-nez v1, :cond_46

    if-nez v0, :cond_46

    const/4 v5, 0x1

    goto :goto_22

    :cond_46
    move v5, v0

    .line 206
    :goto_22
    iput-object v4, v6, Lcom/yandex/mobile/ads/impl/nw0;->r:Lcom/yandex/mobile/ads/impl/jc0;

    const/4 v1, 0x1

    move-object/from16 v0, p0

    move-wide v2, v14

    .line 207
    invoke-direct/range {v0 .. v5}, Lcom/yandex/mobile/ads/impl/nw0;->a(IJLcom/yandex/mobile/ads/impl/jc0;I)V

    goto :goto_21

    .line 208
    :goto_23
    iput-object v0, v6, Lcom/yandex/mobile/ads/impl/nw0;->o:Lcom/yandex/mobile/ads/impl/nw0$b;

    .line 209
    :cond_47
    iget-object v0, v6, Lcom/yandex/mobile/ads/impl/nw0;->p:Lcom/yandex/mobile/ads/impl/nw0$b;

    if-eqz v0, :cond_4a

    .line 210
    iget-object v0, v0, Lcom/yandex/mobile/ads/impl/nw0$b;->c:Ljava/lang/String;

    iget-object v1, v6, Lcom/yandex/mobile/ads/impl/nw0;->b:Lcom/yandex/mobile/ads/impl/k00;

    .line 211
    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/k00;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 212
    iget-object v0, v6, Lcom/yandex/mobile/ads/impl/nw0;->p:Lcom/yandex/mobile/ads/impl/nw0$b;

    iget-object v4, v0, Lcom/yandex/mobile/ads/impl/nw0$b;->a:Lcom/yandex/mobile/ads/impl/jc0;

    iget v0, v0, Lcom/yandex/mobile/ads/impl/nw0$b;->b:I

    .line 213
    iget-object v1, v6, Lcom/yandex/mobile/ads/impl/nw0;->s:Lcom/yandex/mobile/ads/impl/jc0;

    invoke-static {v1, v4}, Lcom/yandex/mobile/ads/impl/f92;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_48

    :goto_24
    const/4 v0, 0x0

    goto :goto_26

    .line 214
    :cond_48
    iget-object v1, v6, Lcom/yandex/mobile/ads/impl/nw0;->s:Lcom/yandex/mobile/ads/impl/jc0;

    if-nez v1, :cond_49

    if-nez v0, :cond_49

    const/4 v5, 0x1

    goto :goto_25

    :cond_49
    move v5, v0

    .line 215
    :goto_25
    iput-object v4, v6, Lcom/yandex/mobile/ads/impl/nw0;->s:Lcom/yandex/mobile/ads/impl/jc0;

    const/4 v1, 0x0

    move-object/from16 v0, p0

    move-wide v2, v14

    .line 216
    invoke-direct/range {v0 .. v5}, Lcom/yandex/mobile/ads/impl/nw0;->a(IJLcom/yandex/mobile/ads/impl/jc0;I)V

    goto :goto_24

    .line 217
    :goto_26
    iput-object v0, v6, Lcom/yandex/mobile/ads/impl/nw0;->p:Lcom/yandex/mobile/ads/impl/nw0$b;

    .line 218
    :cond_4a
    iget-object v0, v6, Lcom/yandex/mobile/ads/impl/nw0;->q:Lcom/yandex/mobile/ads/impl/nw0$b;

    if-eqz v0, :cond_4d

    .line 219
    iget-object v0, v0, Lcom/yandex/mobile/ads/impl/nw0$b;->c:Ljava/lang/String;

    iget-object v1, v6, Lcom/yandex/mobile/ads/impl/nw0;->b:Lcom/yandex/mobile/ads/impl/k00;

    .line 220
    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/k00;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 221
    iget-object v0, v6, Lcom/yandex/mobile/ads/impl/nw0;->q:Lcom/yandex/mobile/ads/impl/nw0$b;

    iget-object v4, v0, Lcom/yandex/mobile/ads/impl/nw0$b;->a:Lcom/yandex/mobile/ads/impl/jc0;

    iget v0, v0, Lcom/yandex/mobile/ads/impl/nw0$b;->b:I

    .line 222
    iget-object v1, v6, Lcom/yandex/mobile/ads/impl/nw0;->t:Lcom/yandex/mobile/ads/impl/jc0;

    invoke-static {v1, v4}, Lcom/yandex/mobile/ads/impl/f92;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4b

    :goto_27
    const/4 v0, 0x0

    goto :goto_29

    .line 223
    :cond_4b
    iget-object v1, v6, Lcom/yandex/mobile/ads/impl/nw0;->t:Lcom/yandex/mobile/ads/impl/jc0;

    if-nez v1, :cond_4c

    if-nez v0, :cond_4c

    const/4 v5, 0x1

    goto :goto_28

    :cond_4c
    move v5, v0

    .line 224
    :goto_28
    iput-object v4, v6, Lcom/yandex/mobile/ads/impl/nw0;->t:Lcom/yandex/mobile/ads/impl/jc0;

    const/4 v1, 0x2

    move-object/from16 v0, p0

    move-wide v2, v14

    .line 225
    invoke-direct/range {v0 .. v5}, Lcom/yandex/mobile/ads/impl/nw0;->a(IJLcom/yandex/mobile/ads/impl/jc0;I)V

    goto :goto_27

    .line 226
    :goto_29
    iput-object v0, v6, Lcom/yandex/mobile/ads/impl/nw0;->q:Lcom/yandex/mobile/ads/impl/nw0$b;

    .line 227
    :cond_4d
    iget-object v0, v6, Lcom/yandex/mobile/ads/impl/nw0;->a:Landroid/content/Context;

    .line 228
    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/ed1;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/ed1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ed1;->a()I

    move-result v0

    packed-switch v0, :pswitch_data_6

    :pswitch_10
    const/4 v4, 0x1

    goto :goto_2a

    :pswitch_11
    move/from16 v4, v18

    goto :goto_2a

    :pswitch_12
    move/from16 v4, v17

    goto :goto_2a

    :pswitch_13
    move v4, v13

    goto :goto_2a

    :pswitch_14
    const/4 v4, 0x6

    goto :goto_2a

    :pswitch_15
    move/from16 v4, v19

    goto :goto_2a

    :pswitch_16
    const/4 v4, 0x4

    goto :goto_2a

    :pswitch_17
    move v4, v12

    goto :goto_2a

    :pswitch_18
    move/from16 v4, v20

    goto :goto_2a

    :pswitch_19
    move v4, v11

    .line 229
    :goto_2a
    iget v0, v6, Lcom/yandex/mobile/ads/impl/nw0;->m:I

    if-eq v4, v0, :cond_4e

    .line 230
    iput v4, v6, Lcom/yandex/mobile/ads/impl/nw0;->m:I

    .line 231
    iget-object v0, v6, Lcom/yandex/mobile/ads/impl/nw0;->c:Landroid/media/metrics/PlaybackSession;

    invoke-static {}, Lbj6;->a()Landroid/media/metrics/NetworkEvent$Builder;

    move-result-object v1

    .line 232
    invoke-static {v1, v4}, Lth6;->a(Landroid/media/metrics/NetworkEvent$Builder;I)Landroid/media/metrics/NetworkEvent$Builder;

    move-result-object v1

    iget-wide v2, v6, Lcom/yandex/mobile/ads/impl/nw0;->d:J

    sub-long v2, v14, v2

    .line 233
    invoke-static {v1, v2, v3}, Luh6;->a(Landroid/media/metrics/NetworkEvent$Builder;J)Landroid/media/metrics/NetworkEvent$Builder;

    move-result-object v1

    .line 234
    invoke-static {v1}, Lwh6;->a(Landroid/media/metrics/NetworkEvent$Builder;)Landroid/media/metrics/NetworkEvent;

    move-result-object v1

    .line 235
    invoke-static {v0, v1}, Lkh6;->a(Landroid/media/metrics/PlaybackSession;Landroid/media/metrics/NetworkEvent;)V

    .line 236
    :cond_4e
    invoke-interface/range {p1 .. p1}, Lcom/yandex/mobile/ads/impl/hi1;->getPlaybackState()I

    move-result v0

    if-eq v0, v12, :cond_4f

    .line 237
    iput-boolean v11, v6, Lcom/yandex/mobile/ads/impl/nw0;->u:Z

    .line 238
    :cond_4f
    invoke-interface/range {p1 .. p1}, Lcom/yandex/mobile/ads/impl/hi1;->a()Lcom/yandex/mobile/ads/impl/m60;

    move-result-object v0

    if-nez v0, :cond_50

    .line 239
    iput-boolean v11, v6, Lcom/yandex/mobile/ads/impl/nw0;->w:Z

    goto :goto_2b

    .line 240
    :cond_50
    invoke-virtual {v7, v10}, Lcom/yandex/mobile/ads/impl/ld$b;->a(I)Z

    move-result v0

    if-eqz v0, :cond_51

    const/4 v0, 0x1

    .line 241
    iput-boolean v0, v6, Lcom/yandex/mobile/ads/impl/nw0;->w:Z

    .line 242
    :cond_51
    :goto_2b
    invoke-interface/range {p1 .. p1}, Lcom/yandex/mobile/ads/impl/hi1;->getPlaybackState()I

    move-result v0

    .line 243
    iget-boolean v1, v6, Lcom/yandex/mobile/ads/impl/nw0;->u:Z

    if-eqz v1, :cond_52

    move/from16 v9, v19

    goto :goto_2d

    .line 244
    :cond_52
    iget-boolean v1, v6, Lcom/yandex/mobile/ads/impl/nw0;->w:Z

    if-eqz v1, :cond_53

    const/16 v9, 0xd

    goto :goto_2d

    :cond_53
    const/4 v1, 0x4

    if-ne v0, v1, :cond_54

    const/16 v9, 0xb

    goto :goto_2d

    :cond_54
    if-ne v0, v12, :cond_59

    .line 245
    iget v0, v6, Lcom/yandex/mobile/ads/impl/nw0;->l:I

    if-eqz v0, :cond_58

    if-ne v0, v12, :cond_55

    goto :goto_2c

    .line 246
    :cond_55
    invoke-interface/range {p1 .. p1}, Lcom/yandex/mobile/ads/impl/hi1;->getPlayWhenReady()Z

    move-result v0

    if-nez v0, :cond_56

    move/from16 v9, v18

    goto :goto_2d

    .line 247
    :cond_56
    invoke-interface/range {p1 .. p1}, Lcom/yandex/mobile/ads/impl/hi1;->getPlaybackSuppressionReason()I

    move-result v0

    if-eqz v0, :cond_57

    move v9, v10

    goto :goto_2d

    :cond_57
    const/4 v9, 0x6

    goto :goto_2d

    :cond_58
    :goto_2c
    move v9, v12

    goto :goto_2d

    :cond_59
    if-ne v0, v13, :cond_5c

    .line 248
    invoke-interface/range {p1 .. p1}, Lcom/yandex/mobile/ads/impl/hi1;->getPlayWhenReady()Z

    move-result v0

    if-nez v0, :cond_5a

    move v9, v1

    goto :goto_2d

    .line 249
    :cond_5a
    invoke-interface/range {p1 .. p1}, Lcom/yandex/mobile/ads/impl/hi1;->getPlaybackSuppressionReason()I

    move-result v0

    if-eqz v0, :cond_5b

    move/from16 v9, v20

    goto :goto_2d

    :cond_5b
    move v9, v13

    goto :goto_2d

    :cond_5c
    const/4 v1, 0x1

    if-ne v0, v1, :cond_5d

    .line 250
    iget v0, v6, Lcom/yandex/mobile/ads/impl/nw0;->l:I

    if-eqz v0, :cond_5d

    const/16 v9, 0xc

    goto :goto_2d

    .line 251
    :cond_5d
    iget v9, v6, Lcom/yandex/mobile/ads/impl/nw0;->l:I

    .line 252
    :goto_2d
    iget v0, v6, Lcom/yandex/mobile/ads/impl/nw0;->l:I

    if-eq v0, v9, :cond_5e

    .line 253
    iput v9, v6, Lcom/yandex/mobile/ads/impl/nw0;->l:I

    const/4 v0, 0x1

    .line 254
    iput-boolean v0, v6, Lcom/yandex/mobile/ads/impl/nw0;->A:Z

    .line 255
    iget-object v0, v6, Lcom/yandex/mobile/ads/impl/nw0;->c:Landroid/media/metrics/PlaybackSession;

    invoke-static {}, Lfj6;->a()Landroid/media/metrics/PlaybackStateEvent$Builder;

    move-result-object v1

    iget v2, v6, Lcom/yandex/mobile/ads/impl/nw0;->l:I

    .line 256
    invoke-static {v1, v2}, Lvi6;->a(Landroid/media/metrics/PlaybackStateEvent$Builder;I)Landroid/media/metrics/PlaybackStateEvent$Builder;

    move-result-object v1

    iget-wide v2, v6, Lcom/yandex/mobile/ads/impl/nw0;->d:J

    sub-long/2addr v14, v2

    .line 257
    invoke-static {v1, v14, v15}, Lwi6;->a(Landroid/media/metrics/PlaybackStateEvent$Builder;J)Landroid/media/metrics/PlaybackStateEvent$Builder;

    move-result-object v1

    .line 258
    invoke-static {v1}, Lxi6;->a(Landroid/media/metrics/PlaybackStateEvent$Builder;)Landroid/media/metrics/PlaybackStateEvent;

    move-result-object v1

    .line 259
    invoke-static {v0, v1}, Lsh6;->a(Landroid/media/metrics/PlaybackSession;Landroid/media/metrics/PlaybackStateEvent;)V

    :cond_5e
    const/16 v0, 0x404

    .line 260
    invoke-virtual {v7, v0}, Lcom/yandex/mobile/ads/impl/ld$b;->a(I)Z

    move-result v1

    if-eqz v1, :cond_5f

    .line 261
    iget-object v1, v6, Lcom/yandex/mobile/ads/impl/nw0;->b:Lcom/yandex/mobile/ads/impl/k00;

    invoke-virtual {v7, v0}, Lcom/yandex/mobile/ads/impl/ld$b;->c(I)Lcom/yandex/mobile/ads/impl/ld$a;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yandex/mobile/ads/impl/k00;->a(Lcom/yandex/mobile/ads/impl/ld$a;)V

    :cond_5f
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x18
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1772
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0xf
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_a
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x18
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x1772
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_10
        :pswitch_13
        :pswitch_10
        :pswitch_12
        :pswitch_11
    .end packed-switch
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/ld$a;IJ)V
    .locals 7

    .line 44
    iget-object v0, p1, Lcom/yandex/mobile/ads/impl/ld$a;->d:Lcom/yandex/mobile/ads/impl/vw0$b;

    if-eqz v0, :cond_2

    .line 45
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/nw0;->b:Lcom/yandex/mobile/ads/impl/k00;

    iget-object p1, p1, Lcom/yandex/mobile/ads/impl/ld$a;->b:Lcom/yandex/mobile/ads/impl/i52;

    .line 46
    invoke-virtual {v1, p1, v0}, Lcom/yandex/mobile/ads/impl/k00;->a(Lcom/yandex/mobile/ads/impl/i52;Lcom/yandex/mobile/ads/impl/vw0$b;)Ljava/lang/String;

    move-result-object p1

    .line 47
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/nw0;->h:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 48
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/nw0;->g:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 49
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/nw0;->h:Ljava/util/HashMap;

    const-wide/16 v3, 0x0

    if-nez v0, :cond_0

    move-wide v5, v3

    goto :goto_0

    .line 50
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    :goto_0
    add-long/2addr v5, p3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    .line 51
    invoke-virtual {v2, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/nw0;->g:Ljava/util/HashMap;

    if-nez v1, :cond_1

    goto :goto_1

    .line 53
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    :goto_1
    int-to-long p2, p2

    add-long/2addr v3, p2

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    .line 54
    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/ld$a;Lcom/yandex/mobile/ads/impl/lw0;)V
    .locals 5

    .line 55
    iget-object v0, p1, Lcom/yandex/mobile/ads/impl/ld$a;->d:Lcom/yandex/mobile/ads/impl/vw0$b;

    if-nez v0, :cond_0

    return-void

    .line 56
    :cond_0
    new-instance v0, Lcom/yandex/mobile/ads/impl/nw0$b;

    iget-object v1, p2, Lcom/yandex/mobile/ads/impl/lw0;->c:Lcom/yandex/mobile/ads/impl/jc0;

    .line 57
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    iget v2, p2, Lcom/yandex/mobile/ads/impl/lw0;->d:I

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/nw0;->b:Lcom/yandex/mobile/ads/impl/k00;

    iget-object v4, p1, Lcom/yandex/mobile/ads/impl/ld$a;->b:Lcom/yandex/mobile/ads/impl/i52;

    iget-object p1, p1, Lcom/yandex/mobile/ads/impl/ld$a;->d:Lcom/yandex/mobile/ads/impl/vw0$b;

    .line 59
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    invoke-virtual {v3, v4, p1}, Lcom/yandex/mobile/ads/impl/k00;->a(Lcom/yandex/mobile/ads/impl/i52;Lcom/yandex/mobile/ads/impl/vw0$b;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lcom/yandex/mobile/ads/impl/nw0$b;-><init>(Lcom/yandex/mobile/ads/impl/jc0;ILjava/lang/String;)V

    .line 61
    iget p1, p2, Lcom/yandex/mobile/ads/impl/lw0;->b:I

    if-eqz p1, :cond_3

    const/4 p2, 0x1

    if-eq p1, p2, :cond_2

    const/4 p2, 0x2

    if-eq p1, p2, :cond_3

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1

    goto :goto_0

    .line 62
    :cond_1
    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/nw0;->q:Lcom/yandex/mobile/ads/impl/nw0$b;

    goto :goto_0

    .line 63
    :cond_2
    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/nw0;->p:Lcom/yandex/mobile/ads/impl/nw0$b;

    goto :goto_0

    .line 64
    :cond_3
    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/nw0;->o:Lcom/yandex/mobile/ads/impl/nw0$b;

    :goto_0
    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/ld$a;Ljava/lang/String;)V
    .locals 1

    .line 266
    iget-object v0, p1, Lcom/yandex/mobile/ads/impl/ld$a;->d:Lcom/yandex/mobile/ads/impl/vw0$b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/rw0;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 267
    :cond_0
    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/nw0;->a()V

    .line 268
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/nw0;->i:Ljava/lang/String;

    .line 269
    invoke-static {}, Ldj6;->a()Landroid/media/metrics/PlaybackMetrics$Builder;

    move-result-object p2

    .line 270
    const-string v0, "ExoPlayerLib"

    invoke-static {p2, v0}, Ldi6;->a(Landroid/media/metrics/PlaybackMetrics$Builder;Ljava/lang/String;)Landroid/media/metrics/PlaybackMetrics$Builder;

    move-result-object p2

    .line 271
    const-string v0, "2.18.1"

    invoke-static {p2, v0}, Lei6;->a(Landroid/media/metrics/PlaybackMetrics$Builder;Ljava/lang/String;)Landroid/media/metrics/PlaybackMetrics$Builder;

    move-result-object p2

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/nw0;->j:Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 272
    iget-object p2, p1, Lcom/yandex/mobile/ads/impl/ld$a;->b:Lcom/yandex/mobile/ads/impl/i52;

    iget-object p1, p1, Lcom/yandex/mobile/ads/impl/ld$a;->d:Lcom/yandex/mobile/ads/impl/vw0$b;

    invoke-direct {p0, p2, p1}, Lcom/yandex/mobile/ads/impl/nw0;->a(Lcom/yandex/mobile/ads/impl/i52;Lcom/yandex/mobile/ads/impl/vw0$b;)V

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/lw0;)V
    .locals 0

    .line 262
    iget p1, p1, Lcom/yandex/mobile/ads/impl/lw0;->a:I

    iput p1, p0, Lcom/yandex/mobile/ads/impl/nw0;->v:I

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/py;)V
    .locals 2

    .line 273
    iget v0, p0, Lcom/yandex/mobile/ads/impl/nw0;->x:I

    iget v1, p1, Lcom/yandex/mobile/ads/impl/py;->g:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/yandex/mobile/ads/impl/nw0;->x:I

    .line 274
    iget v0, p0, Lcom/yandex/mobile/ads/impl/nw0;->y:I

    iget p1, p1, Lcom/yandex/mobile/ads/impl/py;->e:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/yandex/mobile/ads/impl/nw0;->y:I

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/yh1;)V
    .locals 0

    .line 263
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/nw0;->n:Lcom/yandex/mobile/ads/impl/yh1;

    return-void
.end method

.method public final b()Landroid/media/metrics/LogSessionId;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/nw0;->c:Landroid/media/metrics/PlaybackSession;

    invoke-static {p0}, Lzi6;->a(Landroid/media/metrics/PlaybackSession;)Landroid/media/metrics/LogSessionId;

    move-result-object p0

    return-object p0
.end method

.method public final b(Lcom/yandex/mobile/ads/impl/ld$a;Ljava/lang/String;)V
    .locals 0

    .line 2
    iget-object p1, p1, Lcom/yandex/mobile/ads/impl/ld$a;->d:Lcom/yandex/mobile/ads/impl/vw0$b;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/rw0;->a()Z

    move-result p1

    if-nez p1, :cond_2

    :cond_0
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/nw0;->i:Ljava/lang/String;

    .line 3
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/nw0;->a()V

    .line 5
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/nw0;->g:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/nw0;->h:Ljava/util/HashMap;

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
