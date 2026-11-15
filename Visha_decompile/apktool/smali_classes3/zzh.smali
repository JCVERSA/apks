.class public final Lzzh;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static b:Lzzh;


# instance fields
.field public final a:Lvzh;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lvzh;->b(Landroid/content/Context;)Lvzh;

    move-result-object v0

    iput-object v0, p0, Lzzh;->a:Lvzh;

    invoke-static {p1}, Luzh;->a(Landroid/content/Context;)Luzh;

    return-void
.end method

.method public static final a(Landroid/content/Context;)Lzzh;
    .locals 2

    const-class v0, Lzzh;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lzzh;->b:Lzzh;

    if-nez v1, :cond_0

    new-instance v1, Lzzh;

    invoke-direct {v1, p0}, Lzzh;-><init>(Landroid/content/Context;)V

    sput-object v1, Lzzh;->b:Lzzh;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Lzzh;->b:Lzzh;

    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public final b(Ltzh;)V
    .locals 1

    const-class p1, Lzzh;

    monitor-enter p1

    :try_start_0
    iget-object p0, p0, Lzzh;->a:Lvzh;

    const-string v0, "vendor_scoped_gpid_v2_id"

    invoke-virtual {p0, v0}, Lvzh;->e(Ljava/lang/String;)V

    const-string v0, "vendor_scoped_gpid_v2_creation_time"

    invoke-virtual {p0, v0}, Lvzh;->e(Ljava/lang/String;)V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
