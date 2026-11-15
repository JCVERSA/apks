.class public abstract Lj7g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/Object;

.field public static final b:Ljava/util/concurrent/atomic/AtomicReference;

.field public static final c:Lr9g;

.field public static final d:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lj7g;->a:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lj7g;->b:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Lr9g;

    sget-object v1, Lcyf;->a:Lcyf;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lr9g;-><init>(Lcyf;[B)V

    sput-object v0, Lj7g;->c:Lr9g;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lj7g;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public static a()V
    .locals 1

    sget-object v0, Lj7g;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void
.end method
