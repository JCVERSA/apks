.class public final Lvlb;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:J

.field public static final c:Ljava/util/regex/Pattern;

.field public static d:Lvlb;


# instance fields
.field public final a:Lgy0;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    sput-wide v0, Lvlb;->b:J

    const-string v0, "\\AA[\\w-]{38}\\z"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lvlb;->c:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lgy0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvlb;->a:Lgy0;

    return-void
.end method

.method public static c()Lvlb;
    .locals 1

    invoke-static {}, Lk9a;->a()Lk9a;

    move-result-object v0

    invoke-static {v0}, Lvlb;->d(Lgy0;)Lvlb;

    move-result-object v0

    return-object v0
.end method

.method public static d(Lgy0;)Lvlb;
    .locals 1

    sget-object v0, Lvlb;->d:Lvlb;

    if-nez v0, :cond_0

    new-instance v0, Lvlb;

    invoke-direct {v0, p0}, Lvlb;-><init>(Lgy0;)V

    sput-object v0, Lvlb;->d:Lvlb;

    :cond_0
    sget-object p0, Lvlb;->d:Lvlb;

    return-object p0
.end method

.method public static g(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lvlb;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method

.method public static h(Ljava/lang/String;)Z
    .locals 1

    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public a()J
    .locals 2

    iget-object p0, p0, Lvlb;->a:Lgy0;

    invoke-interface {p0}, Lgy0;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public b()J
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0}, Lvlb;->a()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public e()J
    .locals 4

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v2

    double-to-long v0, v0

    return-wide v0
.end method

.method public f(Lcom/google/firebase/installations/local/b;)Z
    .locals 6

    invoke-virtual {p1}, Lcom/google/firebase/installations/local/b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Lcom/google/firebase/installations/local/b;->h()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/google/firebase/installations/local/b;->c()J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-virtual {p0}, Lvlb;->b()J

    move-result-wide p0

    sget-wide v4, Lvlb;->b:J

    add-long/2addr p0, v4

    cmp-long p0, v2, p0

    if-gez p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
