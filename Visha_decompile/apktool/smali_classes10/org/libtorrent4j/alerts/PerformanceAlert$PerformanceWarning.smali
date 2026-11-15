.class public final enum Lorg/libtorrent4j/alerts/PerformanceAlert$PerformanceWarning;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/libtorrent4j/alerts/PerformanceAlert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PerformanceWarning"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/libtorrent4j/alerts/PerformanceAlert$PerformanceWarning;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/libtorrent4j/alerts/PerformanceAlert$PerformanceWarning;

.field public static final enum DOWNLOAD_LIMIT_TOO_LOW:Lorg/libtorrent4j/alerts/PerformanceAlert$PerformanceWarning;

.field public static final enum NUM_WARNINGS:Lorg/libtorrent4j/alerts/PerformanceAlert$PerformanceWarning;

.field public static final enum OUTSTANDING_DISK_BUFFER_LIMIT_REACHED:Lorg/libtorrent4j/alerts/PerformanceAlert$PerformanceWarning;

.field public static final enum OUTSTANDING_REQUEST_LIMIT_REACHED:Lorg/libtorrent4j/alerts/PerformanceAlert$PerformanceWarning;

.field public static final enum SEND_BUFFER_WATERMARK_TOO_LOW:Lorg/libtorrent4j/alerts/PerformanceAlert$PerformanceWarning;

.field public static final enum TOO_FEW_FILE_DESCRIPTORS:Lorg/libtorrent4j/alerts/PerformanceAlert$PerformanceWarning;

.field public static final enum TOO_FEW_OUTGOING_PORTS:Lorg/libtorrent4j/alerts/PerformanceAlert$PerformanceWarning;

.field public static final enum TOO_HIGH_DISK_QUEUE_LIMIT:Lorg/libtorrent4j/alerts/PerformanceAlert$PerformanceWarning;

.field public static final enum TOO_MANY_OPTIMISTIC_UNCHOKE_SLOTS:Lorg/libtorrent4j/alerts/PerformanceAlert$PerformanceWarning;

.field public static final enum UNKNOWN:Lorg/libtorrent4j/alerts/PerformanceAlert$PerformanceWarning;

.field public static final enum UPLOAD_LIMIT_TOO_LOW:Lorg/libtorrent4j/alerts/PerformanceAlert$PerformanceWarning;


# instance fields
.field private final swigValue:I


# direct methods
.method private static synthetic $values()[Lorg/libtorrent4j/alerts/PerformanceAlert$PerformanceWarning;
    .locals 11

    sget-object v0, Lorg/libtorrent4j/alerts/PerformanceAlert$PerformanceWarning;->OUTSTANDING_DISK_BUFFER_LIMIT_REACHED:Lorg/libtorrent4j/alerts/PerformanceAlert$PerformanceWarning;

    sget-object v1, Lorg/libtorrent4j/alerts/PerformanceAlert$PerformanceWarning;->OUTSTANDING_REQUEST_LIMIT_REACHED:Lorg/libtorrent4j/alerts/PerformanceAlert$PerformanceWarning;

    sget-object v2, Lorg/libtorrent4j/alerts/PerformanceAlert$PerformanceWarning;->UPLOAD_LIMIT_TOO_LOW:Lorg/libtorrent4j/alerts/PerformanceAlert$PerformanceWarning;

    sget-object v3, Lorg/libtorrent4j/alerts/PerformanceAlert$PerformanceWarning;->DOWNLOAD_LIMIT_TOO_LOW:Lorg/libtorrent4j/alerts/PerformanceAlert$PerformanceWarning;

    sget-object v4, Lorg/libtorrent4j/alerts/PerformanceAlert$PerformanceWarning;->SEND_BUFFER_WATERMARK_TOO_LOW:Lorg/libtorrent4j/alerts/PerformanceAlert$PerformanceWarning;

    sget-object v5, Lorg/libtorrent4j/alerts/PerformanceAlert$PerformanceWarning;->TOO_MANY_OPTIMISTIC_UNCHOKE_SLOTS:Lorg/libtorrent4j/alerts/PerformanceAlert$PerformanceWarning;

    sget-object v6, Lorg/libtorrent4j/alerts/PerformanceAlert$PerformanceWarning;->TOO_HIGH_DISK_QUEUE_LIMIT:Lorg/libtorrent4j/alerts/PerformanceAlert$PerformanceWarning;

    sget-object v7, Lorg/libtorrent4j/alerts/PerformanceAlert$PerformanceWarning;->TOO_FEW_OUTGOING_PORTS:Lorg/libtorrent4j/alerts/PerformanceAlert$PerformanceWarning;

    sget-object v8, Lorg/libtorrent4j/alerts/PerformanceAlert$PerformanceWarning;->TOO_FEW_FILE_DESCRIPTORS:Lorg/libtorrent4j/alerts/PerformanceAlert$PerformanceWarning;

    sget-object v9, Lorg/libtorrent4j/alerts/PerformanceAlert$PerformanceWarning;->NUM_WARNINGS:Lorg/libtorrent4j/alerts/PerformanceAlert$PerformanceWarning;

    sget-object v10, Lorg/libtorrent4j/alerts/PerformanceAlert$PerformanceWarning;->UNKNOWN:Lorg/libtorrent4j/alerts/PerformanceAlert$PerformanceWarning;

    filled-new-array/range {v0 .. v10}, [Lorg/libtorrent4j/alerts/PerformanceAlert$PerformanceWarning;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/libtorrent4j/alerts/PerformanceAlert$PerformanceWarning;

    sget-object v1, Lorg/libtorrent4j/swig/performance_alert$performance_warning_t;->outstanding_disk_buffer_limit_reached:Lorg/libtorrent4j/swig/performance_alert$performance_warning_t;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/performance_alert$performance_warning_t;->swigValue()I

    move-result v1

    const-string v2, "OUTSTANDING_DISK_BUFFER_LIMIT_REACHED"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lorg/libtorrent4j/alerts/PerformanceAlert$PerformanceWarning;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/alerts/PerformanceAlert$PerformanceWarning;->OUTSTANDING_DISK_BUFFER_LIMIT_REACHED:Lorg/libtorrent4j/alerts/PerformanceAlert$PerformanceWarning;

    new-instance v0, Lorg/libtorrent4j/alerts/PerformanceAlert$PerformanceWarning;

    sget-object v1, Lorg/libtorrent4j/swig/performance_alert$performance_warning_t;->outstanding_request_limit_reached:Lorg/libtorrent4j/swig/performance_alert$performance_warning_t;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/performance_alert$performance_warning_t;->swigValue()I

    move-result v1

    const-string v2, "OUTSTANDING_REQUEST_LIMIT_REACHED"

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Lorg/libtorrent4j/alerts/PerformanceAlert$PerformanceWarning;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/alerts/PerformanceAlert$PerformanceWarning;->OUTSTANDING_REQUEST_LIMIT_REACHED:Lorg/libtorrent4j/alerts/PerformanceAlert$PerformanceWarning;

    new-instance v0, Lorg/libtorrent4j/alerts/PerformanceAlert$PerformanceWarning;

    sget-object v1, Lorg/libtorrent4j/swig/performance_alert$performance_warning_t;->upload_limit_too_low:Lorg/libtorrent4j/swig/performance_alert$performance_warning_t;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/performance_alert$performance_warning_t;->swigValue()I

    move-result v1

    const-string v2, "UPLOAD_LIMIT_TOO_LOW"

    const/4 v3, 0x2

    invoke-direct {v0, v2, v3, v1}, Lorg/libtorrent4j/alerts/PerformanceAlert$PerformanceWarning;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/alerts/PerformanceAlert$PerformanceWarning;->UPLOAD_LIMIT_TOO_LOW:Lorg/libtorrent4j/alerts/PerformanceAlert$PerformanceWarning;

    new-instance v0, Lorg/libtorrent4j/alerts/PerformanceAlert$PerformanceWarning;

    sget-object v1, Lorg/libtorrent4j/swig/performance_alert$performance_warning_t;->download_limit_too_low:Lorg/libtorrent4j/swig/performance_alert$performance_warning_t;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/performance_alert$performance_warning_t;->swigValue()I

    move-result v1

    const-string v2, "DOWNLOAD_LIMIT_TOO_LOW"

    const/4 v3, 0x3

    invoke-direct {v0, v2, v3, v1}, Lorg/libtorrent4j/alerts/PerformanceAlert$PerformanceWarning;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/alerts/PerformanceAlert$PerformanceWarning;->DOWNLOAD_LIMIT_TOO_LOW:Lorg/libtorrent4j/alerts/PerformanceAlert$PerformanceWarning;

    new-instance v0, Lorg/libtorrent4j/alerts/PerformanceAlert$PerformanceWarning;

    sget-object v1, Lorg/libtorrent4j/swig/performance_alert$performance_warning_t;->send_buffer_watermark_too_low:Lorg/libtorrent4j/swig/performance_alert$performance_warning_t;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/performance_alert$performance_warning_t;->swigValue()I

    move-result v1

    const-string v2, "SEND_BUFFER_WATERMARK_TOO_LOW"

    const/4 v3, 0x4

    invoke-direct {v0, v2, v3, v1}, Lorg/libtorrent4j/alerts/PerformanceAlert$PerformanceWarning;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/alerts/PerformanceAlert$PerformanceWarning;->SEND_BUFFER_WATERMARK_TOO_LOW:Lorg/libtorrent4j/alerts/PerformanceAlert$PerformanceWarning;

    new-instance v0, Lorg/libtorrent4j/alerts/PerformanceAlert$PerformanceWarning;

    sget-object v1, Lorg/libtorrent4j/swig/performance_alert$performance_warning_t;->too_many_optimistic_unchoke_slots:Lorg/libtorrent4j/swig/performance_alert$performance_warning_t;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/performance_alert$performance_warning_t;->swigValue()I

    move-result v1

    const-string v2, "TOO_MANY_OPTIMISTIC_UNCHOKE_SLOTS"

    const/4 v3, 0x5

    invoke-direct {v0, v2, v3, v1}, Lorg/libtorrent4j/alerts/PerformanceAlert$PerformanceWarning;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/alerts/PerformanceAlert$PerformanceWarning;->TOO_MANY_OPTIMISTIC_UNCHOKE_SLOTS:Lorg/libtorrent4j/alerts/PerformanceAlert$PerformanceWarning;

    new-instance v0, Lorg/libtorrent4j/alerts/PerformanceAlert$PerformanceWarning;

    sget-object v1, Lorg/libtorrent4j/swig/performance_alert$performance_warning_t;->too_high_disk_queue_limit:Lorg/libtorrent4j/swig/performance_alert$performance_warning_t;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/performance_alert$performance_warning_t;->swigValue()I

    move-result v1

    const-string v2, "TOO_HIGH_DISK_QUEUE_LIMIT"

    const/4 v3, 0x6

    invoke-direct {v0, v2, v3, v1}, Lorg/libtorrent4j/alerts/PerformanceAlert$PerformanceWarning;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/alerts/PerformanceAlert$PerformanceWarning;->TOO_HIGH_DISK_QUEUE_LIMIT:Lorg/libtorrent4j/alerts/PerformanceAlert$PerformanceWarning;

    new-instance v0, Lorg/libtorrent4j/alerts/PerformanceAlert$PerformanceWarning;

    sget-object v1, Lorg/libtorrent4j/swig/performance_alert$performance_warning_t;->too_few_outgoing_ports:Lorg/libtorrent4j/swig/performance_alert$performance_warning_t;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/performance_alert$performance_warning_t;->swigValue()I

    move-result v1

    const-string v2, "TOO_FEW_OUTGOING_PORTS"

    const/4 v3, 0x7

    invoke-direct {v0, v2, v3, v1}, Lorg/libtorrent4j/alerts/PerformanceAlert$PerformanceWarning;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/alerts/PerformanceAlert$PerformanceWarning;->TOO_FEW_OUTGOING_PORTS:Lorg/libtorrent4j/alerts/PerformanceAlert$PerformanceWarning;

    new-instance v0, Lorg/libtorrent4j/alerts/PerformanceAlert$PerformanceWarning;

    sget-object v1, Lorg/libtorrent4j/swig/performance_alert$performance_warning_t;->too_few_file_descriptors:Lorg/libtorrent4j/swig/performance_alert$performance_warning_t;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/performance_alert$performance_warning_t;->swigValue()I

    move-result v1

    const-string v2, "TOO_FEW_FILE_DESCRIPTORS"

    const/16 v3, 0x8

    invoke-direct {v0, v2, v3, v1}, Lorg/libtorrent4j/alerts/PerformanceAlert$PerformanceWarning;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/alerts/PerformanceAlert$PerformanceWarning;->TOO_FEW_FILE_DESCRIPTORS:Lorg/libtorrent4j/alerts/PerformanceAlert$PerformanceWarning;

    new-instance v0, Lorg/libtorrent4j/alerts/PerformanceAlert$PerformanceWarning;

    sget-object v1, Lorg/libtorrent4j/swig/performance_alert$performance_warning_t;->num_warnings:Lorg/libtorrent4j/swig/performance_alert$performance_warning_t;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/performance_alert$performance_warning_t;->swigValue()I

    move-result v1

    const-string v2, "NUM_WARNINGS"

    const/16 v3, 0x9

    invoke-direct {v0, v2, v3, v1}, Lorg/libtorrent4j/alerts/PerformanceAlert$PerformanceWarning;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/alerts/PerformanceAlert$PerformanceWarning;->NUM_WARNINGS:Lorg/libtorrent4j/alerts/PerformanceAlert$PerformanceWarning;

    new-instance v0, Lorg/libtorrent4j/alerts/PerformanceAlert$PerformanceWarning;

    const/16 v1, 0xa

    const/4 v2, -0x1

    const-string v3, "UNKNOWN"

    invoke-direct {v0, v3, v1, v2}, Lorg/libtorrent4j/alerts/PerformanceAlert$PerformanceWarning;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/alerts/PerformanceAlert$PerformanceWarning;->UNKNOWN:Lorg/libtorrent4j/alerts/PerformanceAlert$PerformanceWarning;

    invoke-static {}, Lorg/libtorrent4j/alerts/PerformanceAlert$PerformanceWarning;->$values()[Lorg/libtorrent4j/alerts/PerformanceAlert$PerformanceWarning;

    move-result-object v0

    sput-object v0, Lorg/libtorrent4j/alerts/PerformanceAlert$PerformanceWarning;->$VALUES:[Lorg/libtorrent4j/alerts/PerformanceAlert$PerformanceWarning;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/libtorrent4j/alerts/PerformanceAlert$PerformanceWarning;->swigValue:I

    return-void
.end method

.method public static fromSwig(I)Lorg/libtorrent4j/alerts/PerformanceAlert$PerformanceWarning;
    .locals 5

    const-class v0, Lorg/libtorrent4j/alerts/PerformanceAlert$PerformanceWarning;

    invoke-virtual {v0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/libtorrent4j/alerts/PerformanceAlert$PerformanceWarning;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lorg/libtorrent4j/alerts/PerformanceAlert$PerformanceWarning;->getSwig()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lorg/libtorrent4j/alerts/PerformanceAlert$PerformanceWarning;->UNKNOWN:Lorg/libtorrent4j/alerts/PerformanceAlert$PerformanceWarning;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/libtorrent4j/alerts/PerformanceAlert$PerformanceWarning;
    .locals 1

    const-class v0, Lorg/libtorrent4j/alerts/PerformanceAlert$PerformanceWarning;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/libtorrent4j/alerts/PerformanceAlert$PerformanceWarning;

    return-object p0
.end method

.method public static values()[Lorg/libtorrent4j/alerts/PerformanceAlert$PerformanceWarning;
    .locals 1

    sget-object v0, Lorg/libtorrent4j/alerts/PerformanceAlert$PerformanceWarning;->$VALUES:[Lorg/libtorrent4j/alerts/PerformanceAlert$PerformanceWarning;

    invoke-virtual {v0}, [Lorg/libtorrent4j/alerts/PerformanceAlert$PerformanceWarning;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/libtorrent4j/alerts/PerformanceAlert$PerformanceWarning;

    return-object v0
.end method


# virtual methods
.method public getSwig()I
    .locals 0

    iget p0, p0, Lorg/libtorrent4j/alerts/PerformanceAlert$PerformanceWarning;->swigValue:I

    return p0
.end method
