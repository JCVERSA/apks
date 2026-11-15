.class public final Lcom/tn/lib/thread/c$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tn/lib/thread/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/tn/lib/thread/c$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Lpg/a;
    .locals 3

    .line 1
    new-instance v0, Lpg/a;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-direct {v0, p1, v1, v2}, Lpg/a;-><init>(IILjava/util/concurrent/ExecutorService;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method
