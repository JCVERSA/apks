.class public Lgj4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcv4;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const-string p0, "-json"

    filled-new-array {p0, p1}, [Ljava/lang/String;

    move-result-object p0

    const-class p1, Lcom/geecko/fpcalc/FpCalc;

    monitor-enter p1

    :try_start_0
    invoke-static {p0}, Lcom/geecko/fpcalc/FpCalc;->fpCalc([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    monitor-exit p1

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
