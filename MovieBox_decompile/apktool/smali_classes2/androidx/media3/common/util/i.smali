.class public interface abstract Landroidx/media3/common/util/i;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Landroidx/media3/common/util/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/media3/common/util/m0;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/media3/common/util/m0;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/media3/common/util/i;->a:Landroidx/media3/common/util/i;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public abstract createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroidx/media3/common/util/p;
.end method

.method public abstract currentTimeMillis()J
.end method

.method public abstract elapsedRealtime()J
.end method

.method public abstract nanoTime()J
.end method

.method public abstract uptimeMillis()J
.end method
