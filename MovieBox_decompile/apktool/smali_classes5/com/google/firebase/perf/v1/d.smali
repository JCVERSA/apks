.class public final Lcom/google/firebase/perf/v1/d;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "source.java"

# interfaces
.implements Lcom/google/protobuf/t0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/perf/v1/d$b;
    }
.end annotation


# static fields
.field public static final CLIENT_TIME_US_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/d;

.field private static volatile PARSER:Lcom/google/protobuf/b1; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/b1;"
        }
    .end annotation
.end field

.field public static final SYSTEM_TIME_US_FIELD_NUMBER:I = 0x3

.field public static final USER_TIME_US_FIELD_NUMBER:I = 0x2


# instance fields
.field private bitField0_:I

.field private clientTimeUs_:J

.field private systemTimeUs_:J

.field private userTimeUs_:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/firebase/perf/v1/d;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/firebase/perf/v1/d;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/firebase/perf/v1/d;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/d;

    .line 7
    .line 8
    const-class v1, Lcom/google/firebase/perf/v1/d;

    .line 9
    .line 10
    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic d()Lcom/google/firebase/perf/v1/d;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/firebase/perf/v1/d;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/d;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic f(Lcom/google/firebase/perf/v1/d;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/perf/v1/d;->l(J)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic h(Lcom/google/firebase/perf/v1/d;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/perf/v1/d;->n(J)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic j(Lcom/google/firebase/perf/v1/d;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/perf/v1/d;->m(J)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static k()Lcom/google/firebase/perf/v1/d$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/firebase/perf/v1/d;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/d;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/firebase/perf/v1/d$b;

    .line 8
    .line 9
    return-object v0
.end method

.method private l(J)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/firebase/perf/v1/d;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lcom/google/firebase/perf/v1/d;->bitField0_:I

    .line 6
    .line 7
    iput-wide p1, p0, Lcom/google/firebase/perf/v1/d;->clientTimeUs_:J

    .line 8
    .line 9
    return-void
.end method

.method private m(J)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/firebase/perf/v1/d;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x4

    .line 4
    .line 5
    iput v0, p0, Lcom/google/firebase/perf/v1/d;->bitField0_:I

    .line 6
    .line 7
    iput-wide p1, p0, Lcom/google/firebase/perf/v1/d;->systemTimeUs_:J

    .line 8
    .line 9
    return-void
.end method

.method private n(J)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/firebase/perf/v1/d;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x2

    .line 4
    .line 5
    iput v0, p0, Lcom/google/firebase/perf/v1/d;->bitField0_:I

    .line 6
    .line 7
    iput-wide p1, p0, Lcom/google/firebase/perf/v1/d;->userTimeUs_:J

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    const/4 p2, 0x1

    .line 2
    sget-object p3, Lcom/google/firebase/perf/v1/d$a;->a:[I

    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    aget p1, p3, p1

    .line 9
    .line 10
    const/4 p3, 0x0

    .line 11
    packed-switch p1, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 15
    .line 16
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 17
    .line 18
    .line 19
    throw p1

    .line 20
    :pswitch_0
    return-object p3

    .line 21
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    return-object p1

    .line 26
    :pswitch_2
    sget-object p1, Lcom/google/firebase/perf/v1/d;->PARSER:Lcom/google/protobuf/b1;

    .line 27
    .line 28
    if-nez p1, :cond_1

    .line 29
    .line 30
    const-class p2, Lcom/google/firebase/perf/v1/d;

    .line 31
    .line 32
    monitor-enter p2

    .line 33
    :try_start_0
    sget-object p1, Lcom/google/firebase/perf/v1/d;->PARSER:Lcom/google/protobuf/b1;

    .line 34
    .line 35
    if-nez p1, :cond_0

    .line 36
    .line 37
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$c;

    .line 38
    .line 39
    sget-object p3, Lcom/google/firebase/perf/v1/d;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/d;

    .line 40
    .line 41
    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$c;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 42
    .line 43
    .line 44
    sput-object p1, Lcom/google/firebase/perf/v1/d;->PARSER:Lcom/google/protobuf/b1;

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :catchall_0
    move-exception p1

    .line 48
    goto :goto_1

    .line 49
    :cond_0
    :goto_0
    monitor-exit p2

    .line 50
    goto :goto_2

    .line 51
    :goto_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    throw p1

    .line 53
    :cond_1
    :goto_2
    return-object p1

    .line 54
    :pswitch_3
    sget-object p1, Lcom/google/firebase/perf/v1/d;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/d;

    .line 55
    .line 56
    return-object p1

    .line 57
    :pswitch_4
    const/4 p1, 0x4

    .line 58
    new-array p1, p1, [Ljava/lang/Object;

    .line 59
    .line 60
    const-string p3, "bitField0_"

    .line 61
    .line 62
    const/4 v0, 0x0

    .line 63
    aput-object p3, p1, v0

    .line 64
    .line 65
    const-string p3, "clientTimeUs_"

    .line 66
    .line 67
    aput-object p3, p1, p2

    .line 68
    .line 69
    const-string p2, "userTimeUs_"

    .line 70
    .line 71
    const/4 p3, 0x2

    .line 72
    aput-object p2, p1, p3

    .line 73
    .line 74
    const-string p2, "systemTimeUs_"

    .line 75
    .line 76
    const/4 p3, 0x3

    .line 77
    aput-object p2, p1, p3

    .line 78
    .line 79
    const-string p2, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u1002\u0000\u0002\u1002\u0001\u0003\u1002\u0002"

    .line 80
    .line 81
    sget-object p3, Lcom/google/firebase/perf/v1/d;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/d;

    .line 82
    .line 83
    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/s0;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    return-object p1

    .line 88
    :pswitch_5
    new-instance p1, Lcom/google/firebase/perf/v1/d$b;

    .line 89
    .line 90
    invoke-direct {p1, p3}, Lcom/google/firebase/perf/v1/d$b;-><init>(Lcom/google/firebase/perf/v1/d$a;)V

    .line 91
    .line 92
    .line 93
    return-object p1

    .line 94
    :pswitch_6
    new-instance p1, Lcom/google/firebase/perf/v1/d;

    .line 95
    .line 96
    invoke-direct {p1}, Lcom/google/firebase/perf/v1/d;-><init>()V

    .line 97
    .line 98
    .line 99
    return-object p1

    .line 100
    nop

    .line 101
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
