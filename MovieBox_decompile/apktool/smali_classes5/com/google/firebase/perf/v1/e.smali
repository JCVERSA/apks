.class public final Lcom/google/firebase/perf/v1/e;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "source.java"

# interfaces
.implements Lcom/google/protobuf/t0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/perf/v1/e$b;
    }
.end annotation


# static fields
.field public static final CPU_CLOCK_RATE_KHZ_FIELD_NUMBER:I = 0x2

.field public static final CPU_PROCESSOR_COUNT_FIELD_NUMBER:I = 0x6

.field private static final DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/e;

.field public static final DEVICE_RAM_SIZE_KB_FIELD_NUMBER:I = 0x3

.field public static final MAX_APP_JAVA_HEAP_MEMORY_KB_FIELD_NUMBER:I = 0x4

.field public static final MAX_ENCOURAGED_APP_JAVA_HEAP_MEMORY_KB_FIELD_NUMBER:I = 0x5

.field private static volatile PARSER:Lcom/google/protobuf/b1; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/b1;"
        }
    .end annotation
.end field

.field public static final PROCESS_NAME_FIELD_NUMBER:I = 0x1


# instance fields
.field private bitField0_:I

.field private cpuClockRateKhz_:I

.field private cpuProcessorCount_:I

.field private deviceRamSizeKb_:I

.field private maxAppJavaHeapMemoryKb_:I

.field private maxEncouragedAppJavaHeapMemoryKb_:I

.field private processName_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/firebase/perf/v1/e;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/firebase/perf/v1/e;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/firebase/perf/v1/e;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/e;

    .line 7
    .line 8
    const-class v1, Lcom/google/firebase/perf/v1/e;

    .line 9
    .line 10
    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/google/firebase/perf/v1/e;->processName_:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method static synthetic d()Lcom/google/firebase/perf/v1/e;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/firebase/perf/v1/e;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/e;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic f(Lcom/google/firebase/perf/v1/e;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/firebase/perf/v1/e;->o(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic h(Lcom/google/firebase/perf/v1/e;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/firebase/perf/v1/e;->p(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic j(Lcom/google/firebase/perf/v1/e;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/firebase/perf/v1/e;->n(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static k()Lcom/google/firebase/perf/v1/e;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/firebase/perf/v1/e;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/e;

    .line 2
    .line 3
    return-object v0
.end method

.method public static m()Lcom/google/firebase/perf/v1/e$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/firebase/perf/v1/e;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/e;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/firebase/perf/v1/e$b;

    .line 8
    .line 9
    return-object v0
.end method

.method private n(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/firebase/perf/v1/e;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x8

    .line 4
    .line 5
    iput v0, p0, Lcom/google/firebase/perf/v1/e;->bitField0_:I

    .line 6
    .line 7
    iput p1, p0, Lcom/google/firebase/perf/v1/e;->deviceRamSizeKb_:I

    .line 8
    .line 9
    return-void
.end method

.method private o(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/firebase/perf/v1/e;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x10

    .line 4
    .line 5
    iput v0, p0, Lcom/google/firebase/perf/v1/e;->bitField0_:I

    .line 6
    .line 7
    iput p1, p0, Lcom/google/firebase/perf/v1/e;->maxAppJavaHeapMemoryKb_:I

    .line 8
    .line 9
    return-void
.end method

.method private p(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/firebase/perf/v1/e;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x20

    .line 4
    .line 5
    iput v0, p0, Lcom/google/firebase/perf/v1/e;->bitField0_:I

    .line 6
    .line 7
    iput p1, p0, Lcom/google/firebase/perf/v1/e;->maxEncouragedAppJavaHeapMemoryKb_:I

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
    sget-object p3, Lcom/google/firebase/perf/v1/e$a;->a:[I

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
    sget-object p1, Lcom/google/firebase/perf/v1/e;->PARSER:Lcom/google/protobuf/b1;

    .line 27
    .line 28
    if-nez p1, :cond_1

    .line 29
    .line 30
    const-class p2, Lcom/google/firebase/perf/v1/e;

    .line 31
    .line 32
    monitor-enter p2

    .line 33
    :try_start_0
    sget-object p1, Lcom/google/firebase/perf/v1/e;->PARSER:Lcom/google/protobuf/b1;

    .line 34
    .line 35
    if-nez p1, :cond_0

    .line 36
    .line 37
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$c;

    .line 38
    .line 39
    sget-object p3, Lcom/google/firebase/perf/v1/e;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/e;

    .line 40
    .line 41
    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$c;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 42
    .line 43
    .line 44
    sput-object p1, Lcom/google/firebase/perf/v1/e;->PARSER:Lcom/google/protobuf/b1;

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
    sget-object p1, Lcom/google/firebase/perf/v1/e;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/e;

    .line 55
    .line 56
    return-object p1

    .line 57
    :pswitch_4
    const/4 p1, 0x7

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
    const-string p3, "processName_"

    .line 66
    .line 67
    aput-object p3, p1, p2

    .line 68
    .line 69
    const-string p2, "cpuClockRateKhz_"

    .line 70
    .line 71
    const/4 p3, 0x2

    .line 72
    aput-object p2, p1, p3

    .line 73
    .line 74
    const-string p2, "deviceRamSizeKb_"

    .line 75
    .line 76
    const/4 p3, 0x3

    .line 77
    aput-object p2, p1, p3

    .line 78
    .line 79
    const-string p2, "maxAppJavaHeapMemoryKb_"

    .line 80
    .line 81
    const/4 p3, 0x4

    .line 82
    aput-object p2, p1, p3

    .line 83
    .line 84
    const-string p2, "maxEncouragedAppJavaHeapMemoryKb_"

    .line 85
    .line 86
    const/4 p3, 0x5

    .line 87
    aput-object p2, p1, p3

    .line 88
    .line 89
    const-string p2, "cpuProcessorCount_"

    .line 90
    .line 91
    const/4 p3, 0x6

    .line 92
    aput-object p2, p1, p3

    .line 93
    .line 94
    const-string p2, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001\u1008\u0000\u0002\u1004\u0001\u0003\u1004\u0003\u0004\u1004\u0004\u0005\u1004\u0005\u0006\u1004\u0002"

    .line 95
    .line 96
    sget-object p3, Lcom/google/firebase/perf/v1/e;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/e;

    .line 97
    .line 98
    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/s0;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    return-object p1

    .line 103
    :pswitch_5
    new-instance p1, Lcom/google/firebase/perf/v1/e$b;

    .line 104
    .line 105
    invoke-direct {p1, p3}, Lcom/google/firebase/perf/v1/e$b;-><init>(Lcom/google/firebase/perf/v1/e$a;)V

    .line 106
    .line 107
    .line 108
    return-object p1

    .line 109
    :pswitch_6
    new-instance p1, Lcom/google/firebase/perf/v1/e;

    .line 110
    .line 111
    invoke-direct {p1}, Lcom/google/firebase/perf/v1/e;-><init>()V

    .line 112
    .line 113
    .line 114
    return-object p1

    .line 115
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

.method public l()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/firebase/perf/v1/e;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x10

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method
