.class public Lm02;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfy0;


# static fields
.field public static final a:Lm02;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lm02;

    invoke-direct {v0}, Lm02;-><init>()V

    sput-object v0, Lm02;->a:Lm02;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lfy0;
    .locals 1

    sget-object v0, Lm02;->a:Lm02;

    return-object v0
.end method


# virtual methods
.method public final currentTimeMillis()J
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public final elapsedRealtime()J
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public final nanoTime()J
    .locals 2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method
