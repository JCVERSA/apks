.class public Lz7d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public volatile a:Lfkd;

.field public final b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz7d;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(JJ)Lfkd;
    .locals 7

    iget-object v0, p0, Lz7d;->a:Lfkd;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lz7d;->a:Lfkd;

    if-nez v0, :cond_0

    new-instance v0, Lijd;

    iget-object v2, p0, Lz7d;->b:Landroid/content/Context;

    move-object v1, v0

    move-wide v3, p1

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lijd;-><init>(Landroid/content/Context;JJ)V

    invoke-virtual {v0}, Lijd;->a()Lfkd;

    move-result-object p1

    iput-object p1, p0, Lz7d;->a:Lfkd;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_2
    iget-object p0, p0, Lz7d;->a:Lfkd;

    return-object p0
.end method
