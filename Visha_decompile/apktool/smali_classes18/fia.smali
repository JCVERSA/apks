.class public final Lfia;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lfia;

.field public static final b:Ljava/lang/ThreadLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lfia;

    invoke-direct {v0}, Lfia;-><init>()V

    sput-object v0, Lfia;->a:Lfia;

    new-instance v0, Ly7a;

    const-string v1, "ThreadLocalEventLoop"

    invoke-direct {v0, v1}, Ly7a;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lhia;->a(Ly7a;)Ljava/lang/ThreadLocal;

    move-result-object v0

    sput-object v0, Lfia;->b:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lyd3;
    .locals 0

    sget-object p0, Lfia;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyd3;

    return-object p0
.end method

.method public final b()Lyd3;
    .locals 1

    sget-object p0, Lfia;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyd3;

    if-nez v0, :cond_0

    invoke-static {}, Lzd3;->a()Lyd3;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public final c()V
    .locals 1

    sget-object p0, Lfia;->b:Ljava/lang/ThreadLocal;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final d(Lyd3;)V
    .locals 0

    sget-object p0, Lfia;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {p0, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method
