.class public abstract Lcom/google/common/util/concurrent/b;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static final a:Lcom/google/common/util/concurrent/ListenerCallQueue$a;

.field private static final b:Lcom/google/common/util/concurrent/ListenerCallQueue$a;

.field private static final c:Lcom/google/common/util/concurrent/ListenerCallQueue$a;

.field private static final d:Lcom/google/common/util/concurrent/ListenerCallQueue$a;

.field private static final e:Lcom/google/common/util/concurrent/ListenerCallQueue$a;

.field private static final f:Lcom/google/common/util/concurrent/ListenerCallQueue$a;

.field private static final g:Lcom/google/common/util/concurrent/ListenerCallQueue$a;

.field private static final h:Lcom/google/common/util/concurrent/ListenerCallQueue$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/common/util/concurrent/b$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/common/util/concurrent/b$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/common/util/concurrent/b;->a:Lcom/google/common/util/concurrent/ListenerCallQueue$a;

    .line 7
    .line 8
    new-instance v0, Lcom/google/common/util/concurrent/b$b;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/google/common/util/concurrent/b$b;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/google/common/util/concurrent/b;->b:Lcom/google/common/util/concurrent/ListenerCallQueue$a;

    .line 14
    .line 15
    sget-object v0, Lcom/google/common/util/concurrent/Service$State;->STARTING:Lcom/google/common/util/concurrent/Service$State;

    .line 16
    .line 17
    invoke-static {v0}, Lcom/google/common/util/concurrent/b;->a(Lcom/google/common/util/concurrent/Service$State;)Lcom/google/common/util/concurrent/ListenerCallQueue$a;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    sput-object v1, Lcom/google/common/util/concurrent/b;->c:Lcom/google/common/util/concurrent/ListenerCallQueue$a;

    .line 22
    .line 23
    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->RUNNING:Lcom/google/common/util/concurrent/Service$State;

    .line 24
    .line 25
    invoke-static {v1}, Lcom/google/common/util/concurrent/b;->a(Lcom/google/common/util/concurrent/Service$State;)Lcom/google/common/util/concurrent/ListenerCallQueue$a;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    sput-object v2, Lcom/google/common/util/concurrent/b;->d:Lcom/google/common/util/concurrent/ListenerCallQueue$a;

    .line 30
    .line 31
    sget-object v2, Lcom/google/common/util/concurrent/Service$State;->NEW:Lcom/google/common/util/concurrent/Service$State;

    .line 32
    .line 33
    invoke-static {v2}, Lcom/google/common/util/concurrent/b;->b(Lcom/google/common/util/concurrent/Service$State;)Lcom/google/common/util/concurrent/ListenerCallQueue$a;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    sput-object v2, Lcom/google/common/util/concurrent/b;->e:Lcom/google/common/util/concurrent/ListenerCallQueue$a;

    .line 38
    .line 39
    invoke-static {v0}, Lcom/google/common/util/concurrent/b;->b(Lcom/google/common/util/concurrent/Service$State;)Lcom/google/common/util/concurrent/ListenerCallQueue$a;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    sput-object v0, Lcom/google/common/util/concurrent/b;->f:Lcom/google/common/util/concurrent/ListenerCallQueue$a;

    .line 44
    .line 45
    invoke-static {v1}, Lcom/google/common/util/concurrent/b;->b(Lcom/google/common/util/concurrent/Service$State;)Lcom/google/common/util/concurrent/ListenerCallQueue$a;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    sput-object v0, Lcom/google/common/util/concurrent/b;->g:Lcom/google/common/util/concurrent/ListenerCallQueue$a;

    .line 50
    .line 51
    sget-object v0, Lcom/google/common/util/concurrent/Service$State;->STOPPING:Lcom/google/common/util/concurrent/Service$State;

    .line 52
    .line 53
    invoke-static {v0}, Lcom/google/common/util/concurrent/b;->b(Lcom/google/common/util/concurrent/Service$State;)Lcom/google/common/util/concurrent/ListenerCallQueue$a;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    sput-object v0, Lcom/google/common/util/concurrent/b;->h:Lcom/google/common/util/concurrent/ListenerCallQueue$a;

    .line 58
    .line 59
    return-void
.end method

.method private static a(Lcom/google/common/util/concurrent/Service$State;)Lcom/google/common/util/concurrent/ListenerCallQueue$a;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/common/util/concurrent/b$d;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/b$d;-><init>(Lcom/google/common/util/concurrent/Service$State;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private static b(Lcom/google/common/util/concurrent/Service$State;)Lcom/google/common/util/concurrent/ListenerCallQueue$a;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/common/util/concurrent/b$c;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/b$c;-><init>(Lcom/google/common/util/concurrent/Service$State;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
