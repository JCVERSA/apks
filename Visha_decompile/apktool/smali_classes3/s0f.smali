.class public abstract Ls0f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ls8f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    new-instance v0, Lsye;

    invoke-direct {v0}, Lsye;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    new-instance v0, Lnze;

    invoke-direct {v0}, Lnze;-><init>()V

    :goto_0
    sput-object v0, Ls0f;->a:Ls8f;

    return-void
.end method

.method public static a()Ls8f;
    .locals 1

    sget-object v0, Ls0f;->a:Ls8f;

    return-object v0
.end method
