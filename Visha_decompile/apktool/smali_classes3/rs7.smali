.class public Lrs7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpj8;


# static fields
.field public static final c:Lc72;

.field public static final d:Lpj8;


# instance fields
.field public a:Lc72;

.field public volatile b:Lpj8;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lps7;

    invoke-direct {v0}, Lps7;-><init>()V

    sput-object v0, Lrs7;->c:Lc72;

    new-instance v0, Lqs7;

    invoke-direct {v0}, Lqs7;-><init>()V

    sput-object v0, Lrs7;->d:Lpj8;

    return-void
.end method

.method public constructor <init>(Lc72;Lpj8;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrs7;->a:Lc72;

    iput-object p2, p0, Lrs7;->b:Lpj8;

    return-void
.end method

.method public static synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lrs7;->e()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic b(Lpj8;)V
    .locals 0

    invoke-static {p0}, Lrs7;->d(Lpj8;)V

    return-void
.end method

.method public static c()Lrs7;
    .locals 3

    new-instance v0, Lrs7;

    sget-object v1, Lrs7;->c:Lc72;

    sget-object v2, Lrs7;->d:Lpj8;

    invoke-direct {v0, v1, v2}, Lrs7;-><init>(Lc72;Lpj8;)V

    return-object v0
.end method

.method public static synthetic d(Lpj8;)V
    .locals 0

    return-void
.end method

.method public static synthetic e()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public f(Lpj8;)V
    .locals 2

    iget-object v0, p0, Lrs7;->b:Lpj8;

    sget-object v1, Lrs7;->d:Lpj8;

    if-ne v0, v1, :cond_0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lrs7;->a:Lc72;

    const/4 v1, 0x0

    iput-object v1, p0, Lrs7;->a:Lc72;

    iput-object p1, p0, Lrs7;->b:Lpj8;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0, p1}, Lc72;->a(Lpj8;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "provide() can be called only once."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lrs7;->b:Lpj8;

    invoke-interface {p0}, Lpj8;->get()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
