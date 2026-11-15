.class public Lrt6;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile c:Lrt6;


# instance fields
.field public a:Z

.field public b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "music_fade_open"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lw6c;->c(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lrt6;->a:Z

    const-string v0, "music_fade_time"

    const/16 v1, 0x1f4

    invoke-static {p1, v0, v1}, Lw6c;->d(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lrt6;->b:I

    return-void
.end method

.method public static b(Landroid/content/Context;)Lrt6;
    .locals 2

    sget-object v0, Lrt6;->c:Lrt6;

    if-nez v0, :cond_1

    const-class v0, Lrt6;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lrt6;->c:Lrt6;

    if-nez v1, :cond_0

    new-instance v1, Lrt6;

    invoke-direct {v1, p0}, Lrt6;-><init>(Landroid/content/Context;)V

    sput-object v1, Lrt6;->c:Lrt6;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    sget-object p0, Lrt6;->c:Lrt6;

    return-object p0
.end method


# virtual methods
.method public a()I
    .locals 0

    iget p0, p0, Lrt6;->b:I

    return p0
.end method

.method public c()Z
    .locals 0

    iget-boolean p0, p0, Lrt6;->a:Z

    return p0
.end method

.method public d(Landroid/content/Context;)V
    .locals 2

    const-string v0, "music_fade_open"

    iget-boolean v1, p0, Lrt6;->a:Z

    invoke-static {p1, v0, v1}, Lw6c;->r(Landroid/content/Context;Ljava/lang/String;Z)V

    const-string v0, "music_fade_time"

    iget p0, p0, Lrt6;->b:I

    invoke-static {p1, v0, p0}, Lw6c;->t(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public e(I)V
    .locals 0

    iput p1, p0, Lrt6;->b:I

    return-void
.end method

.method public f(Z)V
    .locals 0

    iput-boolean p1, p0, Lrt6;->a:Z

    return-void
.end method
