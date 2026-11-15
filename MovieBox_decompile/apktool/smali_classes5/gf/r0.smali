.class public final Lgf/r0;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private a:Lgf/d;

.field private b:Lgf/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final a(Lgf/d;)V
    .locals 1

    .line 1
    const-string v0, "task"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lgf/r0;->a:Lgf/d;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iput-object p1, p0, Lgf/r0;->a:Lgf/d;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lgf/r0;->b:Lgf/d;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iput-object p1, v0, Lgf/d;->c:Lgf/e;

    .line 17
    .line 18
    :cond_1
    iput-object p1, p0, Lgf/r0;->b:Lgf/d;

    .line 19
    .line 20
    return-void
.end method

.method public final b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgf/r0;->a:Lgf/d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lgf/e;->request()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
