.class public final Lcom/yandex/mobile/ads/impl/o0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/o0$a;
    }
.end annotation


# static fields
.field static final synthetic m:[Laf5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Laf5;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/o3;

.field private final b:Lcom/yandex/mobile/ads/impl/o8;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/o8<",
            "*>;"
        }
    .end annotation
.end field

.field private final c:Lcom/yandex/mobile/ads/impl/m80;

.field private final d:Lcom/yandex/mobile/ads/impl/c8;

.field private final e:Lcom/yandex/mobile/ads/impl/sp1;

.field private final f:Lcom/yandex/mobile/ads/impl/t80;

.field private final g:Lcom/yandex/mobile/ads/impl/p80;

.field private final h:Z

.field private final i:Lcom/yandex/mobile/ads/impl/go1;

.field private j:Lcom/yandex/mobile/ads/impl/o0$a;

.field private k:Lcom/yandex/mobile/ads/impl/x71;

.field private l:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "getActivityInteractionEventListener()Lcom/monetization/ads/base/tracker/interaction/ActivityInteractionEventListener;"

    const/4 v1, 0x0

    const-class v2, Lcom/yandex/mobile/ads/impl/o0;

    const-string v3, "activityInteractionEventListener"

    invoke-static {v2, v3, v0, v1}, Lcom/yandex/mobile/ads/impl/ta;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Lcf5;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Laf5;

    aput-object v0, v2, v1

    sput-object v2, Lcom/yandex/mobile/ads/impl/o0;->m:[Laf5;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/n0;Lcom/yandex/mobile/ads/impl/m80;)V
    .locals 11

    move-object v1, p1

    move-object/from16 v5, p5

    .line 1
    new-instance v6, Lcom/yandex/mobile/ads/impl/c8;

    invoke-direct {v6}, Lcom/yandex/mobile/ads/impl/c8;-><init>()V

    .line 2
    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/o3;->q()Lcom/yandex/mobile/ads/impl/bv1;

    move-result-object v0

    invoke-interface {v0}, Lcom/yandex/mobile/ads/impl/bv1;->f()V

    sget-object v0, Lcom/yandex/mobile/ads/impl/jn2;->a:Lcom/yandex/mobile/ads/impl/jn2;

    .line 3
    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/o3;->q()Lcom/yandex/mobile/ads/impl/bv1;

    move-result-object v2

    invoke-interface {v2}, Lcom/yandex/mobile/ads/impl/bv1;->b()Lcom/yandex/mobile/ads/impl/ol2;

    move-result-object v2

    .line 4
    invoke-static {p1, v0, v2}, Lcom/yandex/mobile/ads/impl/nd;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/t92;Lcom/yandex/mobile/ads/impl/ie;)Lcom/yandex/mobile/ads/impl/s01;

    move-result-object v7

    if-eqz v5, :cond_0

    .line 5
    new-instance v0, Lcom/yandex/mobile/ads/impl/t80;

    move-object v2, p2

    invoke-direct {v0, p1, p2, v5}, Lcom/yandex/mobile/ads/impl/t80;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/m80;)V

    :goto_0
    move-object v8, v0

    goto :goto_1

    :cond_0
    move-object v2, p2

    const/4 v0, 0x0

    goto :goto_0

    .line 6
    :goto_1
    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/p80$a;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/p80;

    move-result-object v9

    .line 7
    sget v0, Lcom/yandex/mobile/ads/impl/pw1;->l:I

    invoke-static {}, Lcom/yandex/mobile/ads/impl/pw1$a;->a()Lcom/yandex/mobile/ads/impl/pw1;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/impl/pw1;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/ju1;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ju1;->r0()Z

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    move v10, v3

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    move v10, v0

    :goto_2
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    .line 9
    invoke-direct/range {v0 .. v10}, Lcom/yandex/mobile/ads/impl/o0;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/n0;Lcom/yandex/mobile/ads/impl/m80;Lcom/yandex/mobile/ads/impl/c8;Lcom/yandex/mobile/ads/impl/sp1;Lcom/yandex/mobile/ads/impl/t80;Lcom/yandex/mobile/ads/impl/p80;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/n0;Lcom/yandex/mobile/ads/impl/m80;Lcom/yandex/mobile/ads/impl/c8;Lcom/yandex/mobile/ads/impl/sp1;Lcom/yandex/mobile/ads/impl/t80;Lcom/yandex/mobile/ads/impl/p80;Z)V
    .locals 1

    .line 10
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adConfiguration"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "activityInteractionEventListener"

    invoke-static {p4, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adRequestReportDataProvider"

    invoke-static {p6, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "metricaReporter"

    invoke-static {p7, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "falseClickDataStorage"

    invoke-static {p9, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/o0;->a:Lcom/yandex/mobile/ads/impl/o3;

    .line 13
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/o0;->b:Lcom/yandex/mobile/ads/impl/o8;

    .line 14
    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/o0;->c:Lcom/yandex/mobile/ads/impl/m80;

    .line 15
    iput-object p6, p0, Lcom/yandex/mobile/ads/impl/o0;->d:Lcom/yandex/mobile/ads/impl/c8;

    .line 16
    iput-object p7, p0, Lcom/yandex/mobile/ads/impl/o0;->e:Lcom/yandex/mobile/ads/impl/sp1;

    .line 17
    iput-object p8, p0, Lcom/yandex/mobile/ads/impl/o0;->f:Lcom/yandex/mobile/ads/impl/t80;

    .line 18
    iput-object p9, p0, Lcom/yandex/mobile/ads/impl/o0;->g:Lcom/yandex/mobile/ads/impl/p80;

    .line 19
    iput-boolean p10, p0, Lcom/yandex/mobile/ads/impl/o0;->h:Z

    .line 20
    invoke-static {p4}, Lcom/yandex/mobile/ads/impl/ho1;->a(Ljava/lang/Object;)Lcom/yandex/mobile/ads/impl/go1;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/o0;->i:Lcom/yandex/mobile/ads/impl/go1;

    return-void
.end method

.method private final a(Lcom/yandex/mobile/ads/impl/o0$a;Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/op1;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/o0;->d:Lcom/yandex/mobile/ads/impl/c8;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/o0;->a:Lcom/yandex/mobile/ads/impl/o3;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/o3;->a()Lcom/yandex/mobile/ads/impl/v7;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/c8;->a(Lcom/yandex/mobile/ads/impl/v7;)Lcom/yandex/mobile/ads/impl/pp1;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/o0$a;->a()Ljava/lang/String;

    move-result-object p1

    const-string v1, "type"

    invoke-virtual {v0, p1, v1}, Lcom/yandex/mobile/ads/impl/pp1;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/o0;->a:Lcom/yandex/mobile/ads/impl/o3;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/o3;->b()Lcom/yandex/mobile/ads/impl/ts;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/ts;->a()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ad_type"

    invoke-virtual {v0, p1, v1}, Lcom/yandex/mobile/ads/impl/pp1;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/o0;->a:Lcom/yandex/mobile/ads/impl/o3;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/o3;->c()Ljava/lang/String;

    move-result-object p1

    const-string v1, "block_id"

    invoke-virtual {v0, p1, v1}, Lcom/yandex/mobile/ads/impl/pp1;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/o0;->a:Lcom/yandex/mobile/ads/impl/o3;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/o3;->c()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ad_unit_id"

    invoke-virtual {v0, p1, v1}, Lcom/yandex/mobile/ads/impl/pp1;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    const-string p1, "interval"

    invoke-virtual {v0, p2, p1}, Lcom/yandex/mobile/ads/impl/pp1;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/o0;->k:Lcom/yandex/mobile/ads/impl/x71;

    if-eqz p1, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/x71;->a()Lcom/yandex/mobile/ads/impl/pp1;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/yandex/mobile/ads/impl/qp1;->a(Lcom/yandex/mobile/ads/impl/pp1;Lcom/yandex/mobile/ads/impl/pp1;)Lcom/yandex/mobile/ads/impl/pp1;

    move-result-object v0

    .line 9
    :cond_0
    new-instance p1, Lcom/yandex/mobile/ads/impl/op1;

    .line 10
    sget-object p2, Lcom/yandex/mobile/ads/impl/op1$b;->M:Lcom/yandex/mobile/ads/impl/op1$b;

    .line 11
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/pp1;->b()Ljava/util/Map;

    move-result-object v0

    .line 12
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/o0;->b:Lcom/yandex/mobile/ads/impl/o8;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/o8;->a()Lcom/yandex/mobile/ads/impl/f;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 13
    :goto_0
    const-string v1, "reportType"

    invoke-static {p2, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "reportData"

    invoke-static {v0, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/op1$b;->a()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0}, Lkotlin/collections/a;->C(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-direct {p1, p2, v0, p0}, Lcom/yandex/mobile/ads/impl/op1;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/yandex/mobile/ads/impl/f;)V

    return-object p1
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/o0$a;)V
    .locals 8

    .line 15
    const-string v0, "type"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v2}, Lcom/yandex/mobile/ads/impl/sp0;->a([Ljava/lang/Object;)V

    .line 17
    iget-wide v2, p0, Lcom/yandex/mobile/ads/impl/o0;->l:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/o0;->j:Lcom/yandex/mobile/ads/impl/o0$a;

    if-ne v2, p1, :cond_2

    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 19
    iget-wide v6, p0, Lcom/yandex/mobile/ads/impl/o0;->l:J

    sub-long/2addr v2, v6

    .line 20
    invoke-static {v2, v3}, Lcom/yandex/mobile/ads/impl/gq0;->a(J)Ljava/lang/String;

    move-result-object v6

    .line 21
    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "interval"

    invoke-static {v6, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0, p1, v6}, Lcom/yandex/mobile/ads/impl/o0;->a(Lcom/yandex/mobile/ads/impl/o0$a;Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/op1;

    move-result-object v0

    .line 23
    iget-object v7, p0, Lcom/yandex/mobile/ads/impl/o0;->e:Lcom/yandex/mobile/ads/impl/sp1;

    invoke-interface {v7, v0}, Lcom/yandex/mobile/ads/impl/sp1;->a(Lcom/yandex/mobile/ads/impl/op1;)V

    .line 24
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/o0$a;->a()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1, v6}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/sp0;->d([Ljava/lang/Object;)V

    .line 25
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/o0;->i:Lcom/yandex/mobile/ads/impl/go1;

    sget-object v0, Lcom/yandex/mobile/ads/impl/o0;->m:[Laf5;

    aget-object v0, v0, v1

    invoke-virtual {p1, p0, v0}, Lcom/yandex/mobile/ads/impl/go1;->getValue(Ljava/lang/Object;Laf5;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yandex/mobile/ads/impl/n0;

    if-eqz p1, :cond_0

    .line 26
    invoke-interface {p1}, Lcom/yandex/mobile/ads/impl/n0;->onReturnedToApplication()V

    .line 27
    :cond_0
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/o0;->f:Lcom/yandex/mobile/ads/impl/t80;

    if-eqz p1, :cond_1

    .line 28
    invoke-virtual {p1, v2, v3}, Lcom/yandex/mobile/ads/impl/t80;->a(J)V

    .line 29
    iget-boolean p1, p0, Lcom/yandex/mobile/ads/impl/o0;->h:Z

    if-eqz p1, :cond_1

    .line 30
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/o0;->g:Lcom/yandex/mobile/ads/impl/p80;

    iget-wide v0, p0, Lcom/yandex/mobile/ads/impl/o0;->l:J

    invoke-virtual {p1, v0, v1}, Lcom/yandex/mobile/ads/impl/p80;->a(J)V

    .line 31
    :cond_1
    iput-wide v4, p0, Lcom/yandex/mobile/ads/impl/o0;->l:J

    const/4 p1, 0x0

    .line 32
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/o0;->j:Lcom/yandex/mobile/ads/impl/o0$a;

    :cond_2
    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/x71;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/o0;->k:Lcom/yandex/mobile/ads/impl/x71;

    return-void
.end method

.method public final b(Lcom/yandex/mobile/ads/impl/o0$a;)V
    .locals 10

    const-string v0, "type"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/sp0;->a([Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yandex/mobile/ads/impl/o0;->l:J

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/o0;->j:Lcom/yandex/mobile/ads/impl/o0$a;

    sget-object v0, Lcom/yandex/mobile/ads/impl/o0$a;->c:Lcom/yandex/mobile/ads/impl/o0$a;

    if-ne p1, v0, :cond_1

    iget-boolean v0, p0, Lcom/yandex/mobile/ads/impl/o0;->h:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/yandex/mobile/ads/impl/o0;->a(Lcom/yandex/mobile/ads/impl/o0$a;Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/op1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/op1;->b()Ljava/util/Map;

    move-result-object v8

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/o0;->b:Lcom/yandex/mobile/ads/impl/o8;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/o8;->a()Lcom/yandex/mobile/ads/impl/f;

    move-result-object v0

    :cond_0
    move-object v9, v0

    new-instance v0, Lcom/yandex/mobile/ads/impl/n80;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/o0;->a:Lcom/yandex/mobile/ads/impl/o3;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/o3;->b()Lcom/yandex/mobile/ads/impl/ts;

    move-result-object v3

    iget-wide v4, p0, Lcom/yandex/mobile/ads/impl/o0;->l:J

    iget-object v7, p0, Lcom/yandex/mobile/ads/impl/o0;->c:Lcom/yandex/mobile/ads/impl/m80;

    move-object v2, v0

    move-object v6, p1

    invoke-direct/range {v2 .. v9}, Lcom/yandex/mobile/ads/impl/n80;-><init>(Lcom/yandex/mobile/ads/impl/ts;JLcom/yandex/mobile/ads/impl/o0$a;Lcom/yandex/mobile/ads/impl/m80;Ljava/util/Map;Lcom/yandex/mobile/ads/impl/f;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/o0;->g:Lcom/yandex/mobile/ads/impl/p80;

    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/impl/p80;->a(Lcom/yandex/mobile/ads/impl/n80;)V

    :cond_1
    return-void
.end method
