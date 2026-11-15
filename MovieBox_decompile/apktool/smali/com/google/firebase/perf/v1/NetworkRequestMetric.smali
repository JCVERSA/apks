.class public final Lcom/google/firebase/perf/v1/NetworkRequestMetric;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "source.java"

# interfaces
.implements Lcom/google/protobuf/t0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/perf/v1/NetworkRequestMetric$NetworkClientErrorReason;,
        Lcom/google/firebase/perf/v1/NetworkRequestMetric$HttpMethod;,
        Lcom/google/firebase/perf/v1/NetworkRequestMetric$b;,
        Lcom/google/firebase/perf/v1/NetworkRequestMetric$c;
    }
.end annotation


# static fields
.field public static final CLIENT_START_TIME_US_FIELD_NUMBER:I = 0x7

.field public static final CUSTOM_ATTRIBUTES_FIELD_NUMBER:I = 0xc

.field private static final DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/NetworkRequestMetric;

.field public static final HTTP_METHOD_FIELD_NUMBER:I = 0x2

.field public static final HTTP_RESPONSE_CODE_FIELD_NUMBER:I = 0x5

.field public static final NETWORK_CLIENT_ERROR_REASON_FIELD_NUMBER:I = 0xb

.field private static volatile PARSER:Lcom/google/protobuf/b1; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/b1;"
        }
    .end annotation
.end field

.field public static final PERF_SESSIONS_FIELD_NUMBER:I = 0xd

.field public static final REQUEST_PAYLOAD_BYTES_FIELD_NUMBER:I = 0x3

.field public static final RESPONSE_CONTENT_TYPE_FIELD_NUMBER:I = 0x6

.field public static final RESPONSE_PAYLOAD_BYTES_FIELD_NUMBER:I = 0x4

.field public static final TIME_TO_REQUEST_COMPLETED_US_FIELD_NUMBER:I = 0x8

.field public static final TIME_TO_RESPONSE_COMPLETED_US_FIELD_NUMBER:I = 0xa

.field public static final TIME_TO_RESPONSE_INITIATED_US_FIELD_NUMBER:I = 0x9

.field public static final URL_FIELD_NUMBER:I = 0x1


# instance fields
.field private bitField0_:I

.field private clientStartTimeUs_:J

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

.field private httpMethod_:I

.field private httpResponseCode_:I

.field private networkClientErrorReason_:I

.field private perfSessions_:Lcom/google/protobuf/y$j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/y$j;"
        }
    .end annotation
.end field

.field private requestPayloadBytes_:J

.field private responseContentType_:Ljava/lang/String;

.field private responsePayloadBytes_:J

.field private timeToRequestCompletedUs_:J

.field private timeToResponseCompletedUs_:J

.field private timeToResponseInitiatedUs_:J

.field private url_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    .line 7
    .line 8
    const-class v1, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

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
    iput-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->customAttributes_:Lcom/google/protobuf/MapFieldLite;

    .line 9
    .line 10
    const-string v0, ""

    .line 11
    .line 12
    iput-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->url_:Ljava/lang/String;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->responseContentType_:Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/y$j;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->perfSessions_:Lcom/google/protobuf/y$j;

    .line 21
    .line 22
    return-void
.end method

.method public static R()Lcom/google/firebase/perf/v1/NetworkRequestMetric$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$b;

    .line 8
    .line 9
    return-object v0
.end method

.method private S(J)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->bitField0_:I

    .line 2
    .line 3
    or-int/lit16 v0, v0, 0x80

    .line 4
    .line 5
    iput v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->bitField0_:I

    .line 6
    .line 7
    iput-wide p1, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->clientStartTimeUs_:J

    .line 8
    .line 9
    return-void
.end method

.method private T(Lcom/google/firebase/perf/v1/NetworkRequestMetric$HttpMethod;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/google/firebase/perf/v1/NetworkRequestMetric$HttpMethod;->getNumber()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iput p1, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->httpMethod_:I

    .line 6
    .line 7
    iget p1, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->bitField0_:I

    .line 8
    .line 9
    or-int/lit8 p1, p1, 0x2

    .line 10
    .line 11
    iput p1, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->bitField0_:I

    .line 12
    .line 13
    return-void
.end method

.method private U(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x20

    .line 4
    .line 5
    iput v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->bitField0_:I

    .line 6
    .line 7
    iput p1, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->httpResponseCode_:I

    .line 8
    .line 9
    return-void
.end method

.method private V(Lcom/google/firebase/perf/v1/NetworkRequestMetric$NetworkClientErrorReason;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/google/firebase/perf/v1/NetworkRequestMetric$NetworkClientErrorReason;->getNumber()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iput p1, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->networkClientErrorReason_:I

    .line 6
    .line 7
    iget p1, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->bitField0_:I

    .line 8
    .line 9
    or-int/lit8 p1, p1, 0x10

    .line 10
    .line 11
    iput p1, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->bitField0_:I

    .line 12
    .line 13
    return-void
.end method

.method private W(J)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x4

    .line 4
    .line 5
    iput v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->bitField0_:I

    .line 6
    .line 7
    iput-wide p1, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->requestPayloadBytes_:J

    .line 8
    .line 9
    return-void
.end method

.method private X(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->bitField0_:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x40

    .line 7
    .line 8
    iput v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->bitField0_:I

    .line 9
    .line 10
    iput-object p1, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->responseContentType_:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method

.method private Y(J)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x8

    .line 4
    .line 5
    iput v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->bitField0_:I

    .line 6
    .line 7
    iput-wide p1, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->responsePayloadBytes_:J

    .line 8
    .line 9
    return-void
.end method

.method private Z(J)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->bitField0_:I

    .line 2
    .line 3
    or-int/lit16 v0, v0, 0x100

    .line 4
    .line 5
    iput v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->bitField0_:I

    .line 6
    .line 7
    iput-wide p1, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->timeToRequestCompletedUs_:J

    .line 8
    .line 9
    return-void
.end method

.method private a0(J)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->bitField0_:I

    .line 2
    .line 3
    or-int/lit16 v0, v0, 0x400

    .line 4
    .line 5
    iput v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->bitField0_:I

    .line 6
    .line 7
    iput-wide p1, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->timeToResponseCompletedUs_:J

    .line 8
    .line 9
    return-void
.end method

.method private b0(J)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->bitField0_:I

    .line 2
    .line 3
    or-int/lit16 v0, v0, 0x200

    .line 4
    .line 5
    iput v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->bitField0_:I

    .line 6
    .line 7
    iput-wide p1, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->timeToResponseInitiatedUs_:J

    .line 8
    .line 9
    return-void
.end method

.method private c0(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->bitField0_:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x1

    .line 7
    .line 8
    iput v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->bitField0_:I

    .line 9
    .line 10
    iput-object p1, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->url_:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method

.method static synthetic d()Lcom/google/firebase/perf/v1/NetworkRequestMetric;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic f(Lcom/google/firebase/perf/v1/NetworkRequestMetric;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->c0(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic h(Lcom/google/firebase/perf/v1/NetworkRequestMetric;Lcom/google/firebase/perf/v1/NetworkRequestMetric$NetworkClientErrorReason;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->V(Lcom/google/firebase/perf/v1/NetworkRequestMetric$NetworkClientErrorReason;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic j(Lcom/google/firebase/perf/v1/NetworkRequestMetric;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->U(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic k(Lcom/google/firebase/perf/v1/NetworkRequestMetric;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->X(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic l(Lcom/google/firebase/perf/v1/NetworkRequestMetric;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->v()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic m(Lcom/google/firebase/perf/v1/NetworkRequestMetric;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->S(J)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic n(Lcom/google/firebase/perf/v1/NetworkRequestMetric;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->Z(J)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic o(Lcom/google/firebase/perf/v1/NetworkRequestMetric;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->b0(J)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic p(Lcom/google/firebase/perf/v1/NetworkRequestMetric;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->a0(J)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic q(Lcom/google/firebase/perf/v1/NetworkRequestMetric;Ljava/lang/Iterable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->u(Ljava/lang/Iterable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic r(Lcom/google/firebase/perf/v1/NetworkRequestMetric;Lcom/google/firebase/perf/v1/NetworkRequestMetric$HttpMethod;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->T(Lcom/google/firebase/perf/v1/NetworkRequestMetric$HttpMethod;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic s(Lcom/google/firebase/perf/v1/NetworkRequestMetric;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->W(J)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic t(Lcom/google/firebase/perf/v1/NetworkRequestMetric;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->Y(J)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private u(Ljava/lang/Iterable;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->w()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->perfSessions_:Lcom/google/protobuf/y$j;

    .line 5
    .line 6
    invoke-static {p1, v0}, Lcom/google/protobuf/a;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private v()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x41

    .line 4
    .line 5
    iput v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->bitField0_:I

    .line 6
    .line 7
    invoke-static {}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->y()Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->D()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->responseContentType_:Ljava/lang/String;

    .line 16
    .line 17
    return-void
.end method

.method private w()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->perfSessions_:Lcom/google/protobuf/y$j;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/google/protobuf/y$j;->isModifiable()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/y$j;)Lcom/google/protobuf/y$j;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->perfSessions_:Lcom/google/protobuf/y$j;

    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public static y()Lcom/google/firebase/perf/v1/NetworkRequestMetric;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public A()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->httpResponseCode_:I

    .line 2
    .line 3
    return v0
.end method

.method public B()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->perfSessions_:Lcom/google/protobuf/y$j;

    .line 2
    .line 3
    return-object v0
.end method

.method public C()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->requestPayloadBytes_:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public D()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->responseContentType_:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public E()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->responsePayloadBytes_:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public F()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->timeToRequestCompletedUs_:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public G()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->timeToResponseCompletedUs_:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public H()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->timeToResponseInitiatedUs_:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public I()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->url_:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public J()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->bitField0_:I

    .line 2
    .line 3
    and-int/lit16 v0, v0, 0x80

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

.method public K()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->bitField0_:I

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

.method public L()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x20

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

.method public M()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->bitField0_:I

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

.method public N()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->bitField0_:I

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

.method public O()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->bitField0_:I

    .line 2
    .line 3
    and-int/lit16 v0, v0, 0x100

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

.method public P()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->bitField0_:I

    .line 2
    .line 3
    and-int/lit16 v0, v0, 0x400

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

.method public Q()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->bitField0_:I

    .line 2
    .line 3
    and-int/lit16 v0, v0, 0x200

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

.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    const/4 p2, 0x1

    .line 2
    sget-object p3, Lcom/google/firebase/perf/v1/NetworkRequestMetric$a;->a:[I

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
    sget-object p1, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->PARSER:Lcom/google/protobuf/b1;

    .line 27
    .line 28
    if-nez p1, :cond_1

    .line 29
    .line 30
    const-class p2, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    .line 31
    .line 32
    monitor-enter p2

    .line 33
    :try_start_0
    sget-object p1, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->PARSER:Lcom/google/protobuf/b1;

    .line 34
    .line 35
    if-nez p1, :cond_0

    .line 36
    .line 37
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$c;

    .line 38
    .line 39
    sget-object p3, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    .line 40
    .line 41
    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$c;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 42
    .line 43
    .line 44
    sput-object p1, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->PARSER:Lcom/google/protobuf/b1;

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
    sget-object p1, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    .line 55
    .line 56
    return-object p1

    .line 57
    :pswitch_4
    invoke-static {}, Lcom/google/firebase/perf/v1/NetworkRequestMetric$HttpMethod;->internalGetVerifier()Lcom/google/protobuf/y$e;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-static {}, Lcom/google/firebase/perf/v1/NetworkRequestMetric$NetworkClientErrorReason;->internalGetVerifier()Lcom/google/protobuf/y$e;

    .line 62
    .line 63
    .line 64
    move-result-object p3

    .line 65
    const/16 v0, 0x12

    .line 66
    .line 67
    new-array v0, v0, [Ljava/lang/Object;

    .line 68
    .line 69
    const-string v1, "bitField0_"

    .line 70
    .line 71
    const/4 v2, 0x0

    .line 72
    aput-object v1, v0, v2

    .line 73
    .line 74
    const-string v1, "url_"

    .line 75
    .line 76
    aput-object v1, v0, p2

    .line 77
    .line 78
    const-string p2, "httpMethod_"

    .line 79
    .line 80
    const/4 v1, 0x2

    .line 81
    aput-object p2, v0, v1

    .line 82
    .line 83
    const/4 p2, 0x3

    .line 84
    aput-object p1, v0, p2

    .line 85
    .line 86
    const-string p1, "requestPayloadBytes_"

    .line 87
    .line 88
    const/4 p2, 0x4

    .line 89
    aput-object p1, v0, p2

    .line 90
    .line 91
    const-string p1, "responsePayloadBytes_"

    .line 92
    .line 93
    const/4 p2, 0x5

    .line 94
    aput-object p1, v0, p2

    .line 95
    .line 96
    const-string p1, "httpResponseCode_"

    .line 97
    .line 98
    const/4 p2, 0x6

    .line 99
    aput-object p1, v0, p2

    .line 100
    .line 101
    const-string p1, "responseContentType_"

    .line 102
    .line 103
    const/4 p2, 0x7

    .line 104
    aput-object p1, v0, p2

    .line 105
    .line 106
    const-string p1, "clientStartTimeUs_"

    .line 107
    .line 108
    const/16 p2, 0x8

    .line 109
    .line 110
    aput-object p1, v0, p2

    .line 111
    .line 112
    const-string p1, "timeToRequestCompletedUs_"

    .line 113
    .line 114
    const/16 p2, 0x9

    .line 115
    .line 116
    aput-object p1, v0, p2

    .line 117
    .line 118
    const-string p1, "timeToResponseInitiatedUs_"

    .line 119
    .line 120
    const/16 p2, 0xa

    .line 121
    .line 122
    aput-object p1, v0, p2

    .line 123
    .line 124
    const-string p1, "timeToResponseCompletedUs_"

    .line 125
    .line 126
    const/16 p2, 0xb

    .line 127
    .line 128
    aput-object p1, v0, p2

    .line 129
    .line 130
    const-string p1, "networkClientErrorReason_"

    .line 131
    .line 132
    const/16 p2, 0xc

    .line 133
    .line 134
    aput-object p1, v0, p2

    .line 135
    .line 136
    const/16 p1, 0xd

    .line 137
    .line 138
    aput-object p3, v0, p1

    .line 139
    .line 140
    const-string p1, "customAttributes_"

    .line 141
    .line 142
    const/16 p2, 0xe

    .line 143
    .line 144
    aput-object p1, v0, p2

    .line 145
    .line 146
    sget-object p1, Lcom/google/firebase/perf/v1/NetworkRequestMetric$c;->a:Lcom/google/protobuf/m0;

    .line 147
    .line 148
    const/16 p2, 0xf

    .line 149
    .line 150
    aput-object p1, v0, p2

    .line 151
    .line 152
    const-string p1, "perfSessions_"

    .line 153
    .line 154
    const/16 p2, 0x10

    .line 155
    .line 156
    aput-object p1, v0, p2

    .line 157
    .line 158
    const-class p1, Lcom/google/firebase/perf/v1/h;

    .line 159
    .line 160
    const/16 p2, 0x11

    .line 161
    .line 162
    aput-object p1, v0, p2

    .line 163
    .line 164
    const-string p1, "\u0001\r\u0000\u0001\u0001\r\r\u0001\u0001\u0000\u0001\u1008\u0000\u0002\u180c\u0001\u0003\u1002\u0002\u0004\u1002\u0003\u0005\u1004\u0005\u0006\u1008\u0006\u0007\u1002\u0007\u0008\u1002\u0008\t\u1002\t\n\u1002\n\u000b\u180c\u0004\u000c2\r\u001b"

    .line 165
    .line 166
    sget-object p2, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    .line 167
    .line 168
    invoke-static {p2, p1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/s0;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    return-object p1

    .line 173
    :pswitch_5
    new-instance p1, Lcom/google/firebase/perf/v1/NetworkRequestMetric$b;

    .line 174
    .line 175
    invoke-direct {p1, p3}, Lcom/google/firebase/perf/v1/NetworkRequestMetric$b;-><init>(Lcom/google/firebase/perf/v1/NetworkRequestMetric$a;)V

    .line 176
    .line 177
    .line 178
    return-object p1

    .line 179
    :pswitch_6
    new-instance p1, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    .line 180
    .line 181
    invoke-direct {p1}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;-><init>()V

    .line 182
    .line 183
    .line 184
    return-object p1

    .line 185
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

.method public x()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->clientStartTimeUs_:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public z()Lcom/google/firebase/perf/v1/NetworkRequestMetric$HttpMethod;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->httpMethod_:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric$HttpMethod;->forNumber(I)Lcom/google/firebase/perf/v1/NetworkRequestMetric$HttpMethod;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$HttpMethod;->HTTP_METHOD_UNKNOWN:Lcom/google/firebase/perf/v1/NetworkRequestMetric$HttpMethod;

    .line 10
    .line 11
    :cond_0
    return-object v0
.end method
