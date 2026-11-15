.class public final Llii;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Llii;

.field public static final c:Ljii;


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Llii;

    invoke-direct {v0}, Llii;-><init>()V

    sput-object v0, Llii;->b:Llii;

    new-instance v0, Ljii;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljii;-><init>(Lkii;)V

    sput-object v0, Llii;->c:Ljii;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Llii;->a:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public static b()Llii;
    .locals 1

    sget-object v0, Llii;->b:Llii;

    return-object v0
.end method


# virtual methods
.method public final a()Lzhi;
    .locals 0

    iget-object p0, p0, Llii;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lzhi;

    if-nez p0, :cond_0

    sget-object p0, Llii;->c:Ljii;

    :cond_0
    return-object p0
.end method
