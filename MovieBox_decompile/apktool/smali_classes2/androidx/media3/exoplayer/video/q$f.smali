.class final Landroidx/media3/exoplayer/video/q$f;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroidx/media3/common/c0$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/video/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "f"
.end annotation


# instance fields
.field private final a:Landroidx/media3/common/k0$a;


# direct methods
.method public constructor <init>(Landroidx/media3/common/k0$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/exoplayer/video/q$f;->a:Landroidx/media3/common/k0$a;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public b(Landroid/content/Context;Landroidx/media3/common/i;Landroidx/media3/common/l;Landroidx/media3/common/l0;Ljava/util/concurrent/Executor;Landroidx/media3/common/j0;Ljava/util/List;J)Landroidx/media3/common/c0;
    .locals 14

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    :try_start_0
    const-string v2, "androidx.media3.effect.PreviewingSingleInputVideoGraph$Factory"

    .line 4
    .line 5
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    new-array v3, v1, [Ljava/lang/Class;

    .line 10
    .line 11
    const-class v4, Landroidx/media3/common/k0$a;

    .line 12
    .line 13
    aput-object v4, v3, v0

    .line 14
    .line 15
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 16
    .line 17
    .line 18
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 19
    move-object v3, p0

    .line 20
    :try_start_1
    iget-object v4, v3, Landroidx/media3/exoplayer/video/q$f;->a:Landroidx/media3/common/k0$a;

    .line 21
    .line 22
    new-array v1, v1, [Ljava/lang/Object;

    .line 23
    .line 24
    aput-object v4, v1, v0

    .line 25
    .line 26
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    move-object v4, v0

    .line 31
    check-cast v4, Landroidx/media3/common/c0$a;

    .line 32
    .line 33
    move-object v5, p1

    .line 34
    move-object/from16 v6, p2

    .line 35
    .line 36
    move-object/from16 v7, p3

    .line 37
    .line 38
    move-object/from16 v8, p4

    .line 39
    .line 40
    move-object/from16 v9, p5

    .line 41
    .line 42
    move-object/from16 v10, p6

    .line 43
    .line 44
    move-object/from16 v11, p7

    .line 45
    .line 46
    move-wide/from16 v12, p8

    .line 47
    .line 48
    invoke-interface/range {v4 .. v13}, Landroidx/media3/common/c0$a;->b(Landroid/content/Context;Landroidx/media3/common/i;Landroidx/media3/common/l;Landroidx/media3/common/l0;Ljava/util/concurrent/Executor;Landroidx/media3/common/j0;Ljava/util/List;J)Landroidx/media3/common/c0;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 49
    .line 50
    .line 51
    const/4 v0, 0x0

    .line 52
    return-object v0

    .line 53
    :catch_0
    move-exception v0

    .line 54
    goto :goto_0

    .line 55
    :catch_1
    move-exception v0

    .line 56
    move-object v3, p0

    .line 57
    :goto_0
    invoke-static {v0}, Landroidx/media3/common/VideoFrameProcessingException;->from(Ljava/lang/Exception;)Landroidx/media3/common/VideoFrameProcessingException;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    throw v0
.end method
