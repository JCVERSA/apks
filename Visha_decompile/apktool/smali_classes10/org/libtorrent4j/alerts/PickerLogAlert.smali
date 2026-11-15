.class public final Lorg/libtorrent4j/alerts/PickerLogAlert;
.super Lorg/libtorrent4j/alerts/PeerAlert;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/libtorrent4j/alerts/PeerAlert<",
        "Lorg/libtorrent4j/swig/picker_log_alert;",
        ">;"
    }
.end annotation


# static fields
.field public static final BACKUP1:Lorg/libtorrent4j/swig/picker_flags_t;

.field public static final BACKUP2:Lorg/libtorrent4j/swig/picker_flags_t;

.field public static final END_GAME:Lorg/libtorrent4j/swig/picker_flags_t;

.field public static final EXTENT_AFFINITY:Lorg/libtorrent4j/swig/picker_flags_t;

.field public static final PARTIAL_RATIO:Lorg/libtorrent4j/swig/picker_flags_t;

.field public static final PREFER_CONTIGUOUS:Lorg/libtorrent4j/swig/picker_flags_t;

.field public static final PRIORITIZE_PARTIALS:Lorg/libtorrent4j/swig/picker_flags_t;

.field public static final PRIO_SEQUENTIAL_PIECES:Lorg/libtorrent4j/swig/picker_flags_t;

.field public static final RANDOM_PIECES:Lorg/libtorrent4j/swig/picker_flags_t;

.field public static final RAREST_FIRST:Lorg/libtorrent4j/swig/picker_flags_t;

.field public static final RAREST_FIRST_PARTIALS:Lorg/libtorrent4j/swig/picker_flags_t;

.field public static final REVERSE_PIECES:Lorg/libtorrent4j/swig/picker_flags_t;

.field public static final REVERSE_RAREST_FIRST:Lorg/libtorrent4j/swig/picker_flags_t;

.field public static final REVERSE_SEQUENTIAL:Lorg/libtorrent4j/swig/picker_flags_t;

.field public static final SEQUENTIAL_PIECES:Lorg/libtorrent4j/swig/picker_flags_t;

.field public static final SUGGESTED_PIECES:Lorg/libtorrent4j/swig/picker_flags_t;

.field public static final TIME_CRITICAL:Lorg/libtorrent4j/swig/picker_flags_t;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/libtorrent4j/swig/picker_log_alert;->partial_ratio:Lorg/libtorrent4j/swig/picker_flags_t;

    sput-object v0, Lorg/libtorrent4j/alerts/PickerLogAlert;->PARTIAL_RATIO:Lorg/libtorrent4j/swig/picker_flags_t;

    sget-object v0, Lorg/libtorrent4j/swig/picker_log_alert;->prioritize_partials:Lorg/libtorrent4j/swig/picker_flags_t;

    sput-object v0, Lorg/libtorrent4j/alerts/PickerLogAlert;->PRIORITIZE_PARTIALS:Lorg/libtorrent4j/swig/picker_flags_t;

    sget-object v0, Lorg/libtorrent4j/swig/picker_log_alert;->rarest_first_partials:Lorg/libtorrent4j/swig/picker_flags_t;

    sput-object v0, Lorg/libtorrent4j/alerts/PickerLogAlert;->RAREST_FIRST_PARTIALS:Lorg/libtorrent4j/swig/picker_flags_t;

    sget-object v0, Lorg/libtorrent4j/swig/picker_log_alert;->rarest_first:Lorg/libtorrent4j/swig/picker_flags_t;

    sput-object v0, Lorg/libtorrent4j/alerts/PickerLogAlert;->RAREST_FIRST:Lorg/libtorrent4j/swig/picker_flags_t;

    sget-object v0, Lorg/libtorrent4j/swig/picker_log_alert;->reverse_rarest_first:Lorg/libtorrent4j/swig/picker_flags_t;

    sput-object v0, Lorg/libtorrent4j/alerts/PickerLogAlert;->REVERSE_RAREST_FIRST:Lorg/libtorrent4j/swig/picker_flags_t;

    sget-object v0, Lorg/libtorrent4j/swig/picker_log_alert;->suggested_pieces:Lorg/libtorrent4j/swig/picker_flags_t;

    sput-object v0, Lorg/libtorrent4j/alerts/PickerLogAlert;->SUGGESTED_PIECES:Lorg/libtorrent4j/swig/picker_flags_t;

    sget-object v0, Lorg/libtorrent4j/swig/picker_log_alert;->prio_sequential_pieces:Lorg/libtorrent4j/swig/picker_flags_t;

    sput-object v0, Lorg/libtorrent4j/alerts/PickerLogAlert;->PRIO_SEQUENTIAL_PIECES:Lorg/libtorrent4j/swig/picker_flags_t;

    sget-object v0, Lorg/libtorrent4j/swig/picker_log_alert;->sequential_pieces:Lorg/libtorrent4j/swig/picker_flags_t;

    sput-object v0, Lorg/libtorrent4j/alerts/PickerLogAlert;->SEQUENTIAL_PIECES:Lorg/libtorrent4j/swig/picker_flags_t;

    sget-object v0, Lorg/libtorrent4j/swig/picker_log_alert;->time_critical:Lorg/libtorrent4j/swig/picker_flags_t;

    sput-object v0, Lorg/libtorrent4j/alerts/PickerLogAlert;->REVERSE_PIECES:Lorg/libtorrent4j/swig/picker_flags_t;

    sput-object v0, Lorg/libtorrent4j/alerts/PickerLogAlert;->TIME_CRITICAL:Lorg/libtorrent4j/swig/picker_flags_t;

    sget-object v0, Lorg/libtorrent4j/swig/picker_log_alert;->random_pieces:Lorg/libtorrent4j/swig/picker_flags_t;

    sput-object v0, Lorg/libtorrent4j/alerts/PickerLogAlert;->RANDOM_PIECES:Lorg/libtorrent4j/swig/picker_flags_t;

    sget-object v0, Lorg/libtorrent4j/swig/picker_log_alert;->prefer_contiguous:Lorg/libtorrent4j/swig/picker_flags_t;

    sput-object v0, Lorg/libtorrent4j/alerts/PickerLogAlert;->PREFER_CONTIGUOUS:Lorg/libtorrent4j/swig/picker_flags_t;

    sget-object v0, Lorg/libtorrent4j/swig/picker_log_alert;->reverse_sequential:Lorg/libtorrent4j/swig/picker_flags_t;

    sput-object v0, Lorg/libtorrent4j/alerts/PickerLogAlert;->REVERSE_SEQUENTIAL:Lorg/libtorrent4j/swig/picker_flags_t;

    sget-object v0, Lorg/libtorrent4j/swig/picker_log_alert;->backup1:Lorg/libtorrent4j/swig/picker_flags_t;

    sput-object v0, Lorg/libtorrent4j/alerts/PickerLogAlert;->BACKUP1:Lorg/libtorrent4j/swig/picker_flags_t;

    sget-object v0, Lorg/libtorrent4j/swig/picker_log_alert;->backup2:Lorg/libtorrent4j/swig/picker_flags_t;

    sput-object v0, Lorg/libtorrent4j/alerts/PickerLogAlert;->BACKUP2:Lorg/libtorrent4j/swig/picker_flags_t;

    sget-object v0, Lorg/libtorrent4j/swig/picker_log_alert;->end_game:Lorg/libtorrent4j/swig/picker_flags_t;

    sput-object v0, Lorg/libtorrent4j/alerts/PickerLogAlert;->END_GAME:Lorg/libtorrent4j/swig/picker_flags_t;

    sget-object v0, Lorg/libtorrent4j/swig/picker_log_alert;->extent_affinity:Lorg/libtorrent4j/swig/picker_flags_t;

    sput-object v0, Lorg/libtorrent4j/alerts/PickerLogAlert;->EXTENT_AFFINITY:Lorg/libtorrent4j/swig/picker_flags_t;

    return-void
.end method

.method public constructor <init>(Lorg/libtorrent4j/swig/picker_log_alert;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/libtorrent4j/alerts/PeerAlert;-><init>(Lorg/libtorrent4j/swig/peer_alert;)V

    return-void
.end method


# virtual methods
.method public pickerFlags()Lorg/libtorrent4j/swig/picker_flags_t;
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/alerts/AbstractAlert;->alert:Lorg/libtorrent4j/swig/alert;

    check-cast p0, Lorg/libtorrent4j/swig/picker_log_alert;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/picker_log_alert;->getPicker_flags()Lorg/libtorrent4j/swig/picker_flags_t;

    move-result-object p0

    return-object p0
.end method
