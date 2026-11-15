.class public final Ls21$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls21;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ls21$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ls21;
    .locals 1

    invoke-static {}, Ls21;->a()Ls21;

    move-result-object v0

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    invoke-static {}, Ls21;->a()Ls21;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ls21;

    invoke-direct {v0}, Ls21;-><init>()V

    invoke-static {v0}, Ls21;->b(Ls21;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0

    throw v0

    :cond_1
    :goto_2
    return-object v0
.end method

.method public final b(Ljava/util/List;)V
    .locals 0

    const-string p0, "<set-?>"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ls21;->c(Ljava/util/List;)V

    return-void
.end method

.method public final c(Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;)V
    .locals 0

    invoke-static {p1}, Ls21;->d(Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;)V

    return-void
.end method

.method public final d(Ljava/util/List;)V
    .locals 0

    const-string p0, "<set-?>"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ls21;->e(Ljava/util/List;)V

    return-void
.end method

.method public final e(Ljava/util/List;)V
    .locals 0

    const-string p0, "<set-?>"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ls21;->f(Ljava/util/List;)V

    return-void
.end method
