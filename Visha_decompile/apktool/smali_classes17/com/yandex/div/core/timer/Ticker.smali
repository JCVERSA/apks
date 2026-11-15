.class public final Lcom/yandex/div/core/timer/Ticker;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div/core/timer/Ticker$a;,
        Lcom/yandex/div/core/timer/Ticker$State;,
        Lcom/yandex/div/core/timer/Ticker$b;
    }
.end annotation


# static fields
.field public static final p:Lcom/yandex/div/core/timer/Ticker$a;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Le74;

.field public final c:Le74;

.field public final d:Le74;

.field public final e:Le74;

.field public final f:Lwc3;

.field public g:Ljava/lang/Long;

.field public h:Ljava/lang/Long;

.field public i:Ljava/lang/Long;

.field public j:Ljava/lang/Long;

.field public k:Lcom/yandex/div/core/timer/Ticker$State;

.field public l:J

.field public m:J

.field public n:J

.field public final o:Lyi5;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/yandex/div/core/timer/Ticker$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/div/core/timer/Ticker$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/yandex/div/core/timer/Ticker;->p:Lcom/yandex/div/core/timer/Ticker$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Le74;Le74;Le74;Le74;Lwc3;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onInterrupt"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onStart"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onEnd"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onTick"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/core/timer/Ticker;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/yandex/div/core/timer/Ticker;->b:Le74;

    iput-object p3, p0, Lcom/yandex/div/core/timer/Ticker;->c:Le74;

    iput-object p4, p0, Lcom/yandex/div/core/timer/Ticker;->d:Le74;

    iput-object p5, p0, Lcom/yandex/div/core/timer/Ticker;->e:Le74;

    iput-object p6, p0, Lcom/yandex/div/core/timer/Ticker;->f:Lwc3;

    sget-object p1, Lcom/yandex/div/core/timer/Ticker$State;->STOPPED:Lcom/yandex/div/core/timer/Ticker$State;

    iput-object p1, p0, Lcom/yandex/div/core/timer/Ticker;->k:Lcom/yandex/div/core/timer/Ticker$State;

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lcom/yandex/div/core/timer/Ticker;->m:J

    iput-wide p1, p0, Lcom/yandex/div/core/timer/Ticker;->n:J

    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    sget-object p2, Lcom/yandex/div/core/timer/Ticker$timer$2;->INSTANCE:Lcom/yandex/div/core/timer/Ticker$timer$2;

    invoke-static {p1, p2}, Lkotlin/b;->b(Lkotlin/LazyThreadSafetyMode;Lc74;)Lyi5;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/div/core/timer/Ticker;->o:Lyi5;

    return-void
.end method

.method public static synthetic A(Lcom/yandex/div/core/timer/Ticker;JJLc74;ILjava/lang/Object;)V
    .locals 6

    and-int/lit8 p6, p6, 0x2

    if-eqz p6, :cond_0

    move-wide v3, p1

    goto :goto_0

    :cond_0
    move-wide v3, p3

    :goto_0
    move-object v0, p0

    move-wide v1, p1

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/yandex/div/core/timer/Ticker;->z(JJLc74;)V

    return-void
.end method

.method public static final synthetic a(Lcom/yandex/div/core/timer/Ticker;)V
    .locals 0

    invoke-virtual {p0}, Lcom/yandex/div/core/timer/Ticker;->i()V

    return-void
.end method

.method public static final synthetic b(Lcom/yandex/div/core/timer/Ticker;)V
    .locals 0

    invoke-virtual {p0}, Lcom/yandex/div/core/timer/Ticker;->j()V

    return-void
.end method

.method public static final synthetic c(Lcom/yandex/div/core/timer/Ticker;)Le74;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/timer/Ticker;->d:Le74;

    return-object p0
.end method

.method public static final synthetic d(Lcom/yandex/div/core/timer/Ticker;)Le74;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/timer/Ticker;->e:Le74;

    return-object p0
.end method

.method public static final synthetic e(Lcom/yandex/div/core/timer/Ticker;)J
    .locals 2

    invoke-virtual {p0}, Lcom/yandex/div/core/timer/Ticker;->m()J

    move-result-wide v0

    return-wide v0
.end method

.method public static final synthetic f(Lcom/yandex/div/core/timer/Ticker;)V
    .locals 0

    invoke-virtual {p0}, Lcom/yandex/div/core/timer/Ticker;->r()V

    return-void
.end method

.method public static final synthetic g(Lcom/yandex/div/core/timer/Ticker;Lcom/yandex/div/core/timer/Ticker$State;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/core/timer/Ticker;->k:Lcom/yandex/div/core/timer/Ticker$State;

    return-void
.end method


# virtual methods
.method public final B()V
    .locals 3

    iget-object v0, p0, Lcom/yandex/div/core/timer/Ticker;->k:Lcom/yandex/div/core/timer/Ticker$State;

    sget-object v1, Lcom/yandex/div/core/timer/Ticker$b;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    const-string v2, "The timer \'"

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yandex/div/core/timer/Ticker;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' paused!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yandex/div/core/timer/Ticker;->o(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yandex/div/core/timer/Ticker;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' already working!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yandex/div/core/timer/Ticker;->o(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/yandex/div/core/timer/Ticker;->i()V

    iget-object v0, p0, Lcom/yandex/div/core/timer/Ticker;->g:Ljava/lang/Long;

    iput-object v0, p0, Lcom/yandex/div/core/timer/Ticker;->i:Ljava/lang/Long;

    iget-object v0, p0, Lcom/yandex/div/core/timer/Ticker;->h:Ljava/lang/Long;

    iput-object v0, p0, Lcom/yandex/div/core/timer/Ticker;->j:Ljava/lang/Long;

    sget-object v0, Lcom/yandex/div/core/timer/Ticker$State;->WORKING:Lcom/yandex/div/core/timer/Ticker$State;

    iput-object v0, p0, Lcom/yandex/div/core/timer/Ticker;->k:Lcom/yandex/div/core/timer/Ticker$State;

    iget-object v0, p0, Lcom/yandex/div/core/timer/Ticker;->c:Le74;

    invoke-virtual {p0}, Lcom/yandex/div/core/timer/Ticker;->m()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/yandex/div/core/timer/Ticker;->x()V

    :goto_0
    return-void
.end method

.method public final C()V
    .locals 3

    iget-object v0, p0, Lcom/yandex/div/core/timer/Ticker;->k:Lcom/yandex/div/core/timer/Ticker$State;

    sget-object v1, Lcom/yandex/div/core/timer/Ticker$b;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/yandex/div/core/timer/Ticker$State;->STOPPED:Lcom/yandex/div/core/timer/Ticker$State;

    iput-object v0, p0, Lcom/yandex/div/core/timer/Ticker;->k:Lcom/yandex/div/core/timer/Ticker$State;

    iget-object v0, p0, Lcom/yandex/div/core/timer/Ticker;->d:Le74;

    invoke-virtual {p0}, Lcom/yandex/div/core/timer/Ticker;->m()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/yandex/div/core/timer/Ticker;->i()V

    invoke-virtual {p0}, Lcom/yandex/div/core/timer/Ticker;->r()V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The timer \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yandex/div/core/timer/Ticker;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' already stopped!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yandex/div/core/timer/Ticker;->o(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final D(JLjava/lang/Long;)V
    .locals 2

    iput-object p3, p0, Lcom/yandex/div/core/timer/Ticker;->h:Ljava/lang/Long;

    const-wide/16 v0, 0x0

    cmp-long p3, p1, v0

    if-nez p3, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/yandex/div/core/timer/Ticker;->g:Ljava/lang/Long;

    return-void
.end method

.method public final h()V
    .locals 3

    iget-object v0, p0, Lcom/yandex/div/core/timer/Ticker;->k:Lcom/yandex/div/core/timer/Ticker$State;

    sget-object v1, Lcom/yandex/div/core/timer/Ticker$b;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/yandex/div/core/timer/Ticker$State;->STOPPED:Lcom/yandex/div/core/timer/Ticker$State;

    iput-object v0, p0, Lcom/yandex/div/core/timer/Ticker;->k:Lcom/yandex/div/core/timer/Ticker$State;

    invoke-virtual {p0}, Lcom/yandex/div/core/timer/Ticker;->i()V

    iget-object v0, p0, Lcom/yandex/div/core/timer/Ticker;->b:Le74;

    invoke-virtual {p0}, Lcom/yandex/div/core/timer/Ticker;->m()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/yandex/div/core/timer/Ticker;->r()V

    :goto_0
    return-void
.end method

.method public final i()V
    .locals 0

    invoke-virtual {p0}, Lcom/yandex/div/core/timer/Ticker;->l()Lcom/yandex/div/core/timer/FixedRateScheduler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yandex/div/core/timer/FixedRateScheduler;->b()V

    return-void
.end method

.method public final j()V
    .locals 6

    iget-object v0, p0, Lcom/yandex/div/core/timer/Ticker;->g:Ljava/lang/Long;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/yandex/div/core/timer/Ticker;->e:Le74;

    invoke-virtual {p0}, Lcom/yandex/div/core/timer/Ticker;->m()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lwn8;->h(JJ)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {v1, p0}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/yandex/div/core/timer/Ticker;->e:Le74;

    invoke-virtual {p0}, Lcom/yandex/div/core/timer/Ticker;->m()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {v0, p0}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public final k()J
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public final l()Lcom/yandex/div/core/timer/FixedRateScheduler;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/timer/Ticker;->o:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div/core/timer/FixedRateScheduler;

    return-object p0
.end method

.method public final m()J
    .locals 4

    invoke-virtual {p0}, Lcom/yandex/div/core/timer/Ticker;->n()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/yandex/div/core/timer/Ticker;->l:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final n()J
    .locals 4

    iget-wide v0, p0, Lcom/yandex/div/core/timer/Ticker;->m:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/yandex/div/core/timer/Ticker;->k()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/yandex/div/core/timer/Ticker;->m:J

    sub-long/2addr v0, v2

    :goto_0
    return-wide v0
.end method

.method public final o(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/yandex/div/core/timer/Ticker;->f:Lwc3;

    if-eqz p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lwc3;->e(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public final p()V
    .locals 3

    iget-object v0, p0, Lcom/yandex/div/core/timer/Ticker;->k:Lcom/yandex/div/core/timer/Ticker$State;

    sget-object v1, Lcom/yandex/div/core/timer/Ticker$b;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    const-string v2, "The timer \'"

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yandex/div/core/timer/Ticker;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' already paused!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yandex/div/core/timer/Ticker;->o(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/yandex/div/core/timer/Ticker$State;->PAUSED:Lcom/yandex/div/core/timer/Ticker$State;

    iput-object v0, p0, Lcom/yandex/div/core/timer/Ticker;->k:Lcom/yandex/div/core/timer/Ticker$State;

    iget-object v0, p0, Lcom/yandex/div/core/timer/Ticker;->b:Le74;

    invoke-virtual {p0}, Lcom/yandex/div/core/timer/Ticker;->m()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/yandex/div/core/timer/Ticker;->y()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/yandex/div/core/timer/Ticker;->m:J

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yandex/div/core/timer/Ticker;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' already stopped!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yandex/div/core/timer/Ticker;->o(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final q()V
    .locals 0

    invoke-virtual {p0}, Lcom/yandex/div/core/timer/Ticker;->h()V

    invoke-virtual {p0}, Lcom/yandex/div/core/timer/Ticker;->B()V

    return-void
.end method

.method public final r()V
    .locals 2

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/yandex/div/core/timer/Ticker;->m:J

    iput-wide v0, p0, Lcom/yandex/div/core/timer/Ticker;->n:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/yandex/div/core/timer/Ticker;->l:J

    return-void
.end method

.method public final s(Z)V
    .locals 2

    if-nez p1, :cond_0

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/yandex/div/core/timer/Ticker;->n:J

    :cond_0
    invoke-virtual {p0}, Lcom/yandex/div/core/timer/Ticker;->x()V

    return-void
.end method

.method public final t()V
    .locals 3

    iget-object v0, p0, Lcom/yandex/div/core/timer/Ticker;->k:Lcom/yandex/div/core/timer/Ticker$State;

    sget-object v1, Lcom/yandex/div/core/timer/Ticker$b;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    const-string v2, "The timer \'"

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/yandex/div/core/timer/Ticker$State;->WORKING:Lcom/yandex/div/core/timer/Ticker$State;

    iput-object v0, p0, Lcom/yandex/div/core/timer/Ticker;->k:Lcom/yandex/div/core/timer/Ticker$State;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/yandex/div/core/timer/Ticker;->s(Z)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yandex/div/core/timer/Ticker;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' already working!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yandex/div/core/timer/Ticker;->o(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yandex/div/core/timer/Ticker;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' is stopped!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yandex/div/core/timer/Ticker;->o(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final u(J)V
    .locals 10

    invoke-virtual {p0}, Lcom/yandex/div/core/timer/Ticker;->m()J

    move-result-wide v0

    sub-long v3, p1, v0

    const-wide/16 v0, 0x0

    cmp-long v0, v3, v0

    if-ltz v0, :cond_0

    new-instance v7, Lcom/yandex/div/core/timer/Ticker$runCountDownTimer$1;

    invoke-direct {v7, p0, p1, p2}, Lcom/yandex/div/core/timer/Ticker$runCountDownTimer$1;-><init>(Lcom/yandex/div/core/timer/Ticker;J)V

    const/4 v8, 0x2

    const/4 v9, 0x0

    const-wide/16 v5, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v9}, Lcom/yandex/div/core/timer/Ticker;->A(Lcom/yandex/div/core/timer/Ticker;JJLc74;ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/yandex/div/core/timer/Ticker;->d:Le74;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/yandex/div/core/timer/Ticker;->r()V

    :goto_0
    return-void
.end method

.method public final v(J)V
    .locals 8

    invoke-virtual {p0}, Lcom/yandex/div/core/timer/Ticker;->m()J

    move-result-wide v0

    rem-long/2addr v0, p1

    sub-long v5, p1, v0

    new-instance v7, Lcom/yandex/div/core/timer/Ticker$runEndlessTimer$1;

    invoke-direct {v7, p0}, Lcom/yandex/div/core/timer/Ticker$runEndlessTimer$1;-><init>(Lcom/yandex/div/core/timer/Ticker;)V

    move-object v2, p0

    move-wide v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/yandex/div/core/timer/Ticker;->z(JJLc74;)V

    return-void
.end method

.method public final w(JJ)V
    .locals 12

    move-wide v1, p1

    invoke-virtual {p0}, Lcom/yandex/div/core/timer/Ticker;->m()J

    move-result-wide v3

    rem-long/2addr v3, p3

    sub-long v8, p3, v3

    new-instance v4, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v4}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    div-long v5, v1, p3

    invoke-virtual {p0}, Lcom/yandex/div/core/timer/Ticker;->m()J

    move-result-wide v10

    div-long/2addr v10, p3

    sub-long/2addr v5, v10

    iput-wide v5, v4, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    new-instance v7, Lcom/yandex/div/core/timer/Ticker$runTickTimer$processTick$1;

    move-object v10, p0

    invoke-direct {v7, v4, p0, p1, p2}, Lcom/yandex/div/core/timer/Ticker$runTickTimer$processTick$1;-><init>(Lkotlin/jvm/internal/Ref$LongRef;Lcom/yandex/div/core/timer/Ticker;J)V

    new-instance v11, Lcom/yandex/div/core/timer/Ticker$runTickTimer$1;

    move-object v0, v11

    move-object v3, p0

    move-wide v5, p3

    invoke-direct/range {v0 .. v7}, Lcom/yandex/div/core/timer/Ticker$runTickTimer$1;-><init>(JLcom/yandex/div/core/timer/Ticker;Lkotlin/jvm/internal/Ref$LongRef;JLc74;)V

    move-object v0, p0

    move-wide v1, p3

    move-wide v3, v8

    move-object v5, v11

    invoke-virtual/range {v0 .. v5}, Lcom/yandex/div/core/timer/Ticker;->z(JJLc74;)V

    return-void
.end method

.method public final x()V
    .locals 6

    iget-object v0, p0, Lcom/yandex/div/core/timer/Ticker;->j:Ljava/lang/Long;

    iget-object v1, p0, Lcom/yandex/div/core/timer/Ticker;->i:Ljava/lang/Long;

    if-eqz v0, :cond_0

    iget-wide v2, p0, Lcom/yandex/div/core/timer/Ticker;->n:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/yandex/div/core/timer/Ticker;->k()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/yandex/div/core/timer/Ticker;->n:J

    sub-long/2addr v2, v4

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    invoke-virtual {p0}, Lcom/yandex/div/core/timer/Ticker;->j()V

    :cond_0
    if-nez v0, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/yandex/div/core/timer/Ticker;->u(J)V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/yandex/div/core/timer/Ticker;->w(JJ)V

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    if-nez v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/yandex/div/core/timer/Ticker;->v(J)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final y()V
    .locals 6

    iget-wide v0, p0, Lcom/yandex/div/core/timer/Ticker;->m:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/yandex/div/core/timer/Ticker;->k()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/yandex/div/core/timer/Ticker;->m:J

    sub-long/2addr v0, v4

    iget-wide v4, p0, Lcom/yandex/div/core/timer/Ticker;->l:J

    add-long/2addr v4, v0

    iput-wide v4, p0, Lcom/yandex/div/core/timer/Ticker;->l:J

    invoke-virtual {p0}, Lcom/yandex/div/core/timer/Ticker;->k()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yandex/div/core/timer/Ticker;->n:J

    iput-wide v2, p0, Lcom/yandex/div/core/timer/Ticker;->m:J

    :cond_0
    invoke-virtual {p0}, Lcom/yandex/div/core/timer/Ticker;->i()V

    return-void
.end method

.method public final z(JJLc74;)V
    .locals 8

    invoke-virtual {p0}, Lcom/yandex/div/core/timer/Ticker;->k()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yandex/div/core/timer/Ticker;->m:J

    invoke-virtual {p0}, Lcom/yandex/div/core/timer/Ticker;->l()Lcom/yandex/div/core/timer/FixedRateScheduler;

    move-result-object v2

    move-wide v3, p3

    move-wide v5, p1

    move-object v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/yandex/div/core/timer/FixedRateScheduler;->c(JJLc74;)V

    return-void
.end method
