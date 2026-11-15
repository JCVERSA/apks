.class public final Lcom/google/firebase/perf/v1/c;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "source.java"

# interfaces
.implements Lcom/google/protobuf/t0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/perf/v1/c$b;,
        Lcom/google/firebase/perf/v1/c$c;
    }
.end annotation


# static fields
.field public static final ANDROID_APP_INFO_FIELD_NUMBER:I = 0x3

.field public static final APPLICATION_PROCESS_STATE_FIELD_NUMBER:I = 0x5

.field public static final APP_INSTANCE_ID_FIELD_NUMBER:I = 0x2

.field public static final CUSTOM_ATTRIBUTES_FIELD_NUMBER:I = 0x6

.field private static final DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/c;

.field public static final GOOGLE_APP_ID_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/b1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/b1;"
        }
    .end annotation
.end field


# instance fields
.field private androidAppInfo_:Lcom/google/firebase/perf/v1/a;

.field private appInstanceId_:Ljava/lang/String;

.field private applicationProcessState_:I

.field private bitField0_:I

.field private customAttributes_:Lcom/google/protobuf/MapFieldLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/MapFieldLite<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private googleAppId_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/firebase/perf/v1/c;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/firebase/perf/v1/c;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/firebase/perf/v1/c;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/c;

    .line 7
    .line 8
    const-class v1, Lcom/google/firebase/perf/v1/c;

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
    invoke-static {}, Lcom/google/protobuf/MapFieldLite;->emptyMapField()Lcom/google/protobuf/MapFieldLite;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/google/firebase/perf/v1/c;->customAttributes_:Lcom/google/protobuf/MapFieldLite;

    .line 9
    .line 10
    const-string v0, ""

    .line 11
    .line 12
    iput-object v0, p0, Lcom/google/firebase/perf/v1/c;->googleAppId_:Ljava/lang/String;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/google/firebase/perf/v1/c;->appInstanceId_:Ljava/lang/String;

    .line 15
    .line 16
    return-void
.end method

.method static synthetic d()Lcom/google/firebase/perf/v1/c;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/firebase/perf/v1/c;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/c;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic f(Lcom/google/firebase/perf/v1/c;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/firebase/perf/v1/c;->y(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic h(Lcom/google/firebase/perf/v1/c;Lcom/google/firebase/perf/v1/ApplicationProcessState;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/firebase/perf/v1/c;->x(Lcom/google/firebase/perf/v1/ApplicationProcessState;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic j(Lcom/google/firebase/perf/v1/c;)Ljava/util/Map;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/perf/v1/c;->o()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic k(Lcom/google/firebase/perf/v1/c;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/firebase/perf/v1/c;->w(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic l(Lcom/google/firebase/perf/v1/c;Lcom/google/firebase/perf/v1/a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/firebase/perf/v1/c;->v(Lcom/google/firebase/perf/v1/a;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static n()Lcom/google/firebase/perf/v1/c;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/firebase/perf/v1/c;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/c;

    .line 2
    .line 3
    return-object v0
.end method

.method private o()Ljava/util/Map;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/perf/v1/c;->t()Lcom/google/protobuf/MapFieldLite;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private t()Lcom/google/protobuf/MapFieldLite;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/perf/v1/c;->customAttributes_:Lcom/google/protobuf/MapFieldLite;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/protobuf/MapFieldLite;->isMutable()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/firebase/perf/v1/c;->customAttributes_:Lcom/google/protobuf/MapFieldLite;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/google/protobuf/MapFieldLite;->mutableCopy()Lcom/google/protobuf/MapFieldLite;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/google/firebase/perf/v1/c;->customAttributes_:Lcom/google/protobuf/MapFieldLite;

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/perf/v1/c;->customAttributes_:Lcom/google/protobuf/MapFieldLite;

    .line 18
    .line 19
    return-object v0
.end method

.method public static u()Lcom/google/firebase/perf/v1/c$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/firebase/perf/v1/c;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/firebase/perf/v1/c$b;

    .line 8
    .line 9
    return-object v0
.end method

.method private v(Lcom/google/firebase/perf/v1/a;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/firebase/perf/v1/c;->androidAppInfo_:Lcom/google/firebase/perf/v1/a;

    .line 5
    .line 6
    iget p1, p0, Lcom/google/firebase/perf/v1/c;->bitField0_:I

    .line 7
    .line 8
    or-int/lit8 p1, p1, 0x4

    .line 9
    .line 10
    iput p1, p0, Lcom/google/firebase/perf/v1/c;->bitField0_:I

    .line 11
    .line 12
    return-void
.end method

.method private w(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/google/firebase/perf/v1/c;->bitField0_:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x2

    .line 7
    .line 8
    iput v0, p0, Lcom/google/firebase/perf/v1/c;->bitField0_:I

    .line 9
    .line 10
    iput-object p1, p0, Lcom/google/firebase/perf/v1/c;->appInstanceId_:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method

.method private x(Lcom/google/firebase/perf/v1/ApplicationProcessState;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/google/firebase/perf/v1/ApplicationProcessState;->getNumber()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iput p1, p0, Lcom/google/firebase/perf/v1/c;->applicationProcessState_:I

    .line 6
    .line 7
    iget p1, p0, Lcom/google/firebase/perf/v1/c;->bitField0_:I

    .line 8
    .line 9
    or-int/lit8 p1, p1, 0x8

    .line 10
    .line 11
    iput p1, p0, Lcom/google/firebase/perf/v1/c;->bitField0_:I

    .line 12
    .line 13
    return-void
.end method

.method private y(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/google/firebase/perf/v1/c;->bitField0_:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x1

    .line 7
    .line 8
    iput v0, p0, Lcom/google/firebase/perf/v1/c;->bitField0_:I

    .line 9
    .line 10
    iput-object p1, p0, Lcom/google/firebase/perf/v1/c;->googleAppId_:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    const/4 p2, 0x1

    .line 2
    sget-object p3, Lcom/google/firebase/perf/v1/c$a;->a:[I

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
    sget-object p1, Lcom/google/firebase/perf/v1/c;->PARSER:Lcom/google/protobuf/b1;

    .line 27
    .line 28
    if-nez p1, :cond_1

    .line 29
    .line 30
    const-class p2, Lcom/google/firebase/perf/v1/c;

    .line 31
    .line 32
    monitor-enter p2

    .line 33
    :try_start_0
    sget-object p1, Lcom/google/firebase/perf/v1/c;->PARSER:Lcom/google/protobuf/b1;

    .line 34
    .line 35
    if-nez p1, :cond_0

    .line 36
    .line 37
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$c;

    .line 38
    .line 39
    sget-object p3, Lcom/google/firebase/perf/v1/c;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/c;

    .line 40
    .line 41
    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$c;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 42
    .line 43
    .line 44
    sput-object p1, Lcom/google/firebase/perf/v1/c;->PARSER:Lcom/google/protobuf/b1;

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
    sget-object p1, Lcom/google/firebase/perf/v1/c;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/c;

    .line 55
    .line 56
    return-object p1

    .line 57
    :pswitch_4
    invoke-static {}, Lcom/google/firebase/perf/v1/ApplicationProcessState;->internalGetVerifier()Lcom/google/protobuf/y$e;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    const/16 p3, 0x8

    .line 62
    .line 63
    new-array p3, p3, [Ljava/lang/Object;

    .line 64
    .line 65
    const-string v0, "bitField0_"

    .line 66
    .line 67
    const/4 v1, 0x0

    .line 68
    aput-object v0, p3, v1

    .line 69
    .line 70
    const-string v0, "googleAppId_"

    .line 71
    .line 72
    aput-object v0, p3, p2

    .line 73
    .line 74
    const-string p2, "appInstanceId_"

    .line 75
    .line 76
    const/4 v0, 0x2

    .line 77
    aput-object p2, p3, v0

    .line 78
    .line 79
    const-string p2, "androidAppInfo_"

    .line 80
    .line 81
    const/4 v0, 0x3

    .line 82
    aput-object p2, p3, v0

    .line 83
    .line 84
    const-string p2, "applicationProcessState_"

    .line 85
    .line 86
    const/4 v0, 0x4

    .line 87
    aput-object p2, p3, v0

    .line 88
    .line 89
    const/4 p2, 0x5

    .line 90
    aput-object p1, p3, p2

    .line 91
    .line 92
    const-string p1, "customAttributes_"

    .line 93
    .line 94
    const/4 p2, 0x6

    .line 95
    aput-object p1, p3, p2

    .line 96
    .line 97
    sget-object p1, Lcom/google/firebase/perf/v1/c$c;->a:Lcom/google/protobuf/m0;

    .line 98
    .line 99
    const/4 p2, 0x7

    .line 100
    aput-object p1, p3, p2

    .line 101
    .line 102
    const-string p1, "\u0001\u0005\u0000\u0001\u0001\u0006\u0005\u0001\u0000\u0000\u0001\u1008\u0000\u0002\u1008\u0001\u0003\u1009\u0002\u0005\u180c\u0003\u00062"

    .line 103
    .line 104
    sget-object p2, Lcom/google/firebase/perf/v1/c;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/c;

    .line 105
    .line 106
    invoke-static {p2, p1, p3}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/s0;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    return-object p1

    .line 111
    :pswitch_5
    new-instance p1, Lcom/google/firebase/perf/v1/c$b;

    .line 112
    .line 113
    invoke-direct {p1, p3}, Lcom/google/firebase/perf/v1/c$b;-><init>(Lcom/google/firebase/perf/v1/c$a;)V

    .line 114
    .line 115
    .line 116
    return-object p1

    .line 117
    :pswitch_6
    new-instance p1, Lcom/google/firebase/perf/v1/c;

    .line 118
    .line 119
    invoke-direct {p1}, Lcom/google/firebase/perf/v1/c;-><init>()V

    .line 120
    .line 121
    .line 122
    return-object p1

    .line 123
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

.method public m()Lcom/google/firebase/perf/v1/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/perf/v1/c;->androidAppInfo_:Lcom/google/firebase/perf/v1/a;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/google/firebase/perf/v1/a;->k()Lcom/google/firebase/perf/v1/a;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public p()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/firebase/perf/v1/c;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x4

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

.method public q()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/firebase/perf/v1/c;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x2

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

.method public r()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/firebase/perf/v1/c;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x8

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

.method public s()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/firebase/perf/v1/c;->bitField0_:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    and-int/2addr v0, v1

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v1, 0x0

    .line 9
    :goto_0
    return v1
.end method
