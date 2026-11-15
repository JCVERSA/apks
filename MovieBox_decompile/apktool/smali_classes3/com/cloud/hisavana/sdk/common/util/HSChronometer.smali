.class public final Lcom/cloud/hisavana/sdk/common/util/HSChronometer;
.super Landroid/widget/Chronometer;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/hisavana/sdk/common/util/HSChronometer$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\t\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u001c\u0018\u00002\u00020\u0001:\u0001%B\'\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0017\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0017\u0010\u0010\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u0001H\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0013J\u0017\u0010\u0015\u001a\u00020\u000c2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0001\u00a2\u0006\u0004\u0008\u0015\u0010\u0011J\u0015\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u001f\u0010\u001b\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\u00062\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0019\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u001f\u0010\u001d\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\n2\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0019\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\r\u0010\u001f\u001a\u00020\n\u00a2\u0006\u0004\u0008\u001f\u0010 J\u0015\u0010!\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008!\u0010\u000eJ\r\u0010#\u001a\u00020\"\u00a2\u0006\u0004\u0008#\u0010$R\u0014\u0010\'\u001a\u00020\u00168\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008%\u0010&R\u0016\u0010)\u001a\u00020\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010(R\u0016\u0010*\u001a\u00020\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\r\u0010(R\u0016\u0010-\u001a\u00020\"8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008+\u0010,R\u0016\u0010#\u001a\u00020\"8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010,R$\u00102\u001a\u0004\u0018\u00010\u00168\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0014\u0010&\u001a\u0004\u0008.\u0010/\"\u0004\u00080\u00101R$\u00106\u001a\u0004\u0018\u00010\u00168\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00083\u0010&\u001a\u0004\u00084\u0010/\"\u0004\u00085\u00101R$\u0010=\u001a\u0004\u0018\u00010\u00198\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00087\u00108\u001a\u0004\u00089\u0010:\"\u0004\u0008;\u0010<\u00a8\u0006>"
    }
    d2 = {
        "Lcom/cloud/hisavana/sdk/common/util/HSChronometer;",
        "Landroid/widget/Chronometer;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "",
        "defStyleAttr",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "",
        "duration",
        "",
        "c",
        "(J)V",
        "chronometer",
        "b",
        "(Landroid/widget/Chronometer;)V",
        "e",
        "()V",
        "f",
        "tickComplete",
        "",
        "countdownText",
        "(J)Ljava/lang/String;",
        "Lcom/cloud/hisavana/sdk/common/util/HSChronometer$a;",
        "listener",
        "startCountDown",
        "(ILcom/cloud/hisavana/sdk/common/util/HSChronometer$a;)V",
        "startCountdown",
        "(JLcom/cloud/hisavana/sdk/common/util/HSChronometer$a;)V",
        "pauseCountdown",
        "()J",
        "resumeCountdown",
        "",
        "isTimeUp",
        "()Z",
        "a",
        "Ljava/lang/String;",
        "tag",
        "J",
        "countdownDuration",
        "remainingDuration",
        "d",
        "Z",
        "isRunning",
        "getTickStringFormat",
        "()Ljava/lang/String;",
        "setTickStringFormat",
        "(Ljava/lang/String;)V",
        "tickStringFormat",
        "g",
        "getFinishedString",
        "setFinishedString",
        "finishedString",
        "h",
        "Lcom/cloud/hisavana/sdk/common/util/HSChronometer$a;",
        "getTickListener",
        "()Lcom/cloud/hisavana/sdk/common/util/HSChronometer$a;",
        "setTickListener",
        "(Lcom/cloud/hisavana/sdk/common/util/HSChronometer$a;)V",
        "tickListener",
        "api_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private b:J

.field private c:J

.field private d:Z

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Lcom/cloud/hisavana/sdk/common/util/HSChronometer$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 2
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Chronometer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 5
    const-string p1, "HiChronometer"

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->a:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 3
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static synthetic a(Lcom/cloud/hisavana/sdk/common/util/HSChronometer;Landroid/widget/Chronometer;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->d(Lcom/cloud/hisavana/sdk/common/util/HSChronometer;Landroid/widget/Chronometer;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final b(Landroid/widget/Chronometer;)V
    .locals 6

    .line 1
    iget-wide v0, p0, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->b:J

    .line 2
    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 4
    .line 5
    .line 6
    move-result-wide v2

    .line 7
    invoke-virtual {p0}, Landroid/widget/Chronometer;->getBase()J

    .line 8
    .line 9
    .line 10
    move-result-wide v4

    .line 11
    sub-long/2addr v2, v4

    .line 12
    sub-long/2addr v0, v2

    .line 13
    iput-wide v0, p0, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->c:J

    .line 14
    .line 15
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->c()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->a:Ljava/lang/String;

    .line 26
    .line 27
    new-instance v2, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    const-string v3, "-----> onChronometerTick "

    .line 33
    .line 34
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    iget-wide v3, p0, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->c:J

    .line 38
    .line 39
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    :cond_0
    iget-wide v0, p0, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->c:J

    .line 50
    .line 51
    const-wide/16 v2, 0x0

    .line 52
    .line 53
    cmp-long v0, v0, v2

    .line 54
    .line 55
    if-gtz v0, :cond_3

    .line 56
    .line 57
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->e()V

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->g:Ljava/lang/String;

    .line 61
    .line 62
    if-eqz v0, :cond_1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    const-string v0, ""

    .line 66
    .line 67
    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    .line 69
    .line 70
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->h:Lcom/cloud/hisavana/sdk/common/util/HSChronometer$a;

    .line 71
    .line 72
    if-eqz p1, :cond_2

    .line 73
    .line 74
    iget-wide v0, p0, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->c:J

    .line 75
    .line 76
    invoke-interface {p1, v0, v1}, Lcom/cloud/hisavana/sdk/common/util/HSChronometer$a;->onTick(J)V

    .line 77
    .line 78
    .line 79
    :cond_2
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->h:Lcom/cloud/hisavana/sdk/common/util/HSChronometer$a;

    .line 80
    .line 81
    if-eqz p1, :cond_4

    .line 82
    .line 83
    invoke-interface {p1}, Lcom/cloud/hisavana/sdk/common/util/HSChronometer$a;->onFinish()V

    .line 84
    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_3
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->f()V

    .line 88
    .line 89
    .line 90
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->h:Lcom/cloud/hisavana/sdk/common/util/HSChronometer$a;

    .line 91
    .line 92
    if-eqz p1, :cond_4

    .line 93
    .line 94
    iget-wide v0, p0, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->c:J

    .line 95
    .line 96
    invoke-interface {p1, v0, v1}, Lcom/cloud/hisavana/sdk/common/util/HSChronometer$a;->onTick(J)V

    .line 97
    .line 98
    .line 99
    :cond_4
    :goto_1
    return-void
.end method

.method private final c(J)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->d:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-wide/16 v0, 0x0

    .line 6
    .line 7
    cmp-long v0, p1, v0

    .line 8
    .line 9
    if-gtz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iput-wide p1, p0, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->b:J

    .line 13
    .line 14
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 15
    .line 16
    .line 17
    move-result-wide p1

    .line 18
    invoke-virtual {p0, p1, p2}, Landroid/widget/Chronometer;->setBase(J)V

    .line 19
    .line 20
    .line 21
    new-instance p1, Lcom/cloud/hisavana/sdk/common/util/o;

    .line 22
    .line 23
    invoke-direct {p1, p0}, Lcom/cloud/hisavana/sdk/common/util/o;-><init>(Lcom/cloud/hisavana/sdk/common/util/HSChronometer;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, p1}, Landroid/widget/Chronometer;->setOnChronometerTickListener(Landroid/widget/Chronometer$OnChronometerTickListener;)V

    .line 27
    .line 28
    .line 29
    const/4 p1, 0x1

    .line 30
    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->d:Z

    .line 31
    .line 32
    invoke-virtual {p0}, Landroid/widget/Chronometer;->start()V

    .line 33
    .line 34
    .line 35
    :cond_1
    :goto_0
    return-void
.end method

.method private static final d(Lcom/cloud/hisavana/sdk/common/util/HSChronometer;Landroid/widget/Chronometer;)V
    .locals 1

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->b(Landroid/widget/Chronometer;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private final e()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/Chronometer;->stop()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->e:Z

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->d:Z

    .line 9
    .line 10
    const-wide/16 v0, 0x0

    .line 11
    .line 12
    iput-wide v0, p0, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->c:J

    .line 13
    .line 14
    return-void
.end method

.method private final f()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->f:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-wide v0, p0, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->c:J

    .line 6
    .line 7
    invoke-virtual {p0, v0, v1}, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->countdownText(J)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method


# virtual methods
.method public final countdownText(J)Ljava/lang/String;
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-wide p1, p0, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->c:J

    .line 3
    .line 4
    long-to-double p1, p1

    .line 5
    const/16 v1, 0x3e8

    .line 6
    .line 7
    int-to-double v1, v1

    .line 8
    div-double/2addr p1, v1

    .line 9
    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    .line 10
    .line 11
    .line 12
    move-result-wide p1

    .line 13
    double-to-int p1, p1

    .line 14
    sget-object p2, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    .line 15
    .line 16
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->f:Ljava/lang/String;

    .line 21
    .line 22
    if-nez v1, :cond_0

    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    sget v2, Lcom/cloud/hisavana/sdk/R$string;->reward_before_tip:I

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    const-string v2, "getString(...)"

    .line 35
    .line 36
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    new-array v2, v0, [Ljava/lang/Object;

    .line 44
    .line 45
    const/4 v3, 0x0

    .line 46
    aput-object p1, v2, v3

    .line 47
    .line 48
    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-static {p2, v1, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    const-string p2, "format(...)"

    .line 57
    .line 58
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    return-object p1
.end method

.method public final getFinishedString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->g:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTickListener()Lcom/cloud/hisavana/sdk/common/util/HSChronometer$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->h:Lcom/cloud/hisavana/sdk/common/util/HSChronometer$a;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTickStringFormat()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->f:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final isTimeUp()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->e:Z

    .line 2
    .line 3
    return v0
.end method

.method public final pauseCountdown()J
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->d:Z

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/widget/Chronometer;->stop()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->d:Z

    .line 10
    .line 11
    iget-wide v0, p0, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->b:J

    .line 12
    .line 13
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 14
    .line 15
    .line 16
    move-result-wide v2

    .line 17
    invoke-virtual {p0}, Landroid/widget/Chronometer;->getBase()J

    .line 18
    .line 19
    .line 20
    move-result-wide v4

    .line 21
    sub-long/2addr v2, v4

    .line 22
    sub-long/2addr v0, v2

    .line 23
    iput-wide v0, p0, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->c:J

    .line 24
    .line 25
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->c()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->a:Ljava/lang/String;

    .line 36
    .line 37
    new-instance v2, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    const-string v3, "pauseCountdown -----> remain countdownDuration: "

    .line 43
    .line 44
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    iget-wide v3, p0, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->c:J

    .line 48
    .line 49
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    :cond_0
    iget-wide v0, p0, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->c:J

    .line 60
    .line 61
    const-wide/16 v2, 0x0

    .line 62
    .line 63
    cmp-long v0, v0, v2

    .line 64
    .line 65
    if-gtz v0, :cond_3

    .line 66
    .line 67
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->e()V

    .line 68
    .line 69
    .line 70
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->g:Ljava/lang/String;

    .line 71
    .line 72
    if-eqz v0, :cond_1

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_1
    const-string v0, ""

    .line 76
    .line 77
    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    .line 79
    .line 80
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->h:Lcom/cloud/hisavana/sdk/common/util/HSChronometer$a;

    .line 81
    .line 82
    if-eqz v0, :cond_2

    .line 83
    .line 84
    iget-wide v1, p0, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->c:J

    .line 85
    .line 86
    invoke-interface {v0, v1, v2}, Lcom/cloud/hisavana/sdk/common/util/HSChronometer$a;->onTick(J)V

    .line 87
    .line 88
    .line 89
    :cond_2
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->h:Lcom/cloud/hisavana/sdk/common/util/HSChronometer$a;

    .line 90
    .line 91
    if-eqz v0, :cond_4

    .line 92
    .line 93
    invoke-interface {v0}, Lcom/cloud/hisavana/sdk/common/util/HSChronometer$a;->onFinish()V

    .line 94
    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_3
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->f()V

    .line 98
    .line 99
    .line 100
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->h:Lcom/cloud/hisavana/sdk/common/util/HSChronometer$a;

    .line 101
    .line 102
    if-eqz v0, :cond_4

    .line 103
    .line 104
    iget-wide v1, p0, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->c:J

    .line 105
    .line 106
    invoke-interface {v0, v1, v2}, Lcom/cloud/hisavana/sdk/common/util/HSChronometer$a;->onTick(J)V

    .line 107
    .line 108
    .line 109
    :cond_4
    :goto_1
    iget-wide v0, p0, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->c:J

    .line 110
    .line 111
    return-wide v0
.end method

.method public final resumeCountdown(J)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->d:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-wide/16 v0, 0x0

    .line 6
    .line 7
    cmp-long v0, p1, v0

    .line 8
    .line 9
    if-lez v0, :cond_1

    .line 10
    .line 11
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->c()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->a:Ljava/lang/String;

    .line 22
    .line 23
    new-instance v2, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string v3, "resumeCountdown -----> resume countdownDuration: "

    .line 29
    .line 30
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    iget-wide v3, p0, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->c:J

    .line 34
    .line 35
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->c(J)V

    .line 46
    .line 47
    .line 48
    :cond_1
    return-void
.end method

.method public final setFinishedString(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->g:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setTickListener(Lcom/cloud/hisavana/sdk/common/util/HSChronometer$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->h:Lcom/cloud/hisavana/sdk/common/util/HSChronometer$a;

    .line 2
    .line 3
    return-void
.end method

.method public final setTickStringFormat(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->f:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final startCountDown(ILcom/cloud/hisavana/sdk/common/util/HSChronometer$a;)V
    .locals 4

    .line 1
    int-to-long v0, p1

    .line 2
    const-wide/16 v2, 0x3e8

    .line 3
    .line 4
    mul-long/2addr v0, v2

    .line 5
    invoke-virtual {p0, v0, v1, p2}, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->startCountdown(JLcom/cloud/hisavana/sdk/common/util/HSChronometer$a;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final startCountdown(JLcom/cloud/hisavana/sdk/common/util/HSChronometer$a;)V
    .locals 3

    .line 1
    iput-object p3, p0, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->h:Lcom/cloud/hisavana/sdk/common/util/HSChronometer$a;

    .line 2
    .line 3
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->c()Z

    .line 4
    .line 5
    .line 6
    move-result p3

    .line 7
    if-eqz p3, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 10
    .line 11
    .line 12
    move-result-object p3

    .line 13
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->a:Ljava/lang/String;

    .line 14
    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v2, "startCountDown: "

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {p3, v0, v1}, Lcom/cloud/sdk/commonutil/util/c;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->c(J)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public final tickComplete(Landroid/widget/Chronometer;)V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    :try_start_0
    iput-wide v0, p0, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->c:J

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->e()V

    .line 6
    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->g:Ljava/lang/String;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    const-string v0, ""

    .line 17
    .line 18
    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    .line 20
    .line 21
    :goto_1
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->h:Lcom/cloud/hisavana/sdk/common/util/HSChronometer$a;

    .line 22
    .line 23
    if-eqz p1, :cond_2

    .line 24
    .line 25
    iget-wide v0, p0, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->c:J

    .line 26
    .line 27
    invoke-interface {p1, v0, v1}, Lcom/cloud/hisavana/sdk/common/util/HSChronometer$a;->onTick(J)V

    .line 28
    .line 29
    .line 30
    :cond_2
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->h:Lcom/cloud/hisavana/sdk/common/util/HSChronometer$a;

    .line 31
    .line 32
    if-eqz p1, :cond_3

    .line 33
    .line 34
    invoke-interface {p1}, Lcom/cloud/hisavana/sdk/common/util/HSChronometer$a;->onFinish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    .line 36
    .line 37
    :catchall_0
    :cond_3
    return-void
.end method
