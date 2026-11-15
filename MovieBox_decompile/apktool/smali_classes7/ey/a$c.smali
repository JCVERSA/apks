.class final Ley/a$c;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lyx/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ley/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a()Lio/reactivex/rxjava3/core/Scheduler;
    .locals 1

    .line 1
    sget-object v0, Ley/a$d;->a:Lio/reactivex/rxjava3/core/Scheduler;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ley/a$c;->a()Lio/reactivex/rxjava3/core/Scheduler;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
