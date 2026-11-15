.class public final Lorg/libtorrent4j/swig/settings_pack$string_types;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/libtorrent4j/swig/settings_pack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "string_types"
.end annotation


# static fields
.field public static final announce_ip:Lorg/libtorrent4j/swig/settings_pack$string_types;

.field public static final dht_bootstrap_nodes:Lorg/libtorrent4j/swig/settings_pack$string_types;

.field public static final handshake_client_version:Lorg/libtorrent4j/swig/settings_pack$string_types;

.field public static final i2p_hostname:Lorg/libtorrent4j/swig/settings_pack$string_types;

.field public static final listen_interfaces:Lorg/libtorrent4j/swig/settings_pack$string_types;

.field public static final max_string_setting_internal:Lorg/libtorrent4j/swig/settings_pack$string_types;

.field public static final outgoing_interfaces:Lorg/libtorrent4j/swig/settings_pack$string_types;

.field public static final peer_fingerprint:Lorg/libtorrent4j/swig/settings_pack$string_types;

.field public static final proxy_hostname:Lorg/libtorrent4j/swig/settings_pack$string_types;

.field public static final proxy_password:Lorg/libtorrent4j/swig/settings_pack$string_types;

.field public static final proxy_username:Lorg/libtorrent4j/swig/settings_pack$string_types;

.field private static swigNext:I

.field private static swigValues:[Lorg/libtorrent4j/swig/settings_pack$string_types;

.field public static final user_agent:Lorg/libtorrent4j/swig/settings_pack$string_types;

.field public static final webtorrent_stun_server:Lorg/libtorrent4j/swig/settings_pack$string_types;


# instance fields
.field private final swigName:Ljava/lang/String;

.field private final swigValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    new-instance v0, Lorg/libtorrent4j/swig/settings_pack$string_types;

    const-string v1, "user_agent"

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->settings_pack_user_agent_get()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/libtorrent4j/swig/settings_pack$string_types;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/libtorrent4j/swig/settings_pack$string_types;->user_agent:Lorg/libtorrent4j/swig/settings_pack$string_types;

    new-instance v1, Lorg/libtorrent4j/swig/settings_pack$string_types;

    const-string v2, "announce_ip"

    invoke-direct {v1, v2}, Lorg/libtorrent4j/swig/settings_pack$string_types;-><init>(Ljava/lang/String;)V

    sput-object v1, Lorg/libtorrent4j/swig/settings_pack$string_types;->announce_ip:Lorg/libtorrent4j/swig/settings_pack$string_types;

    new-instance v2, Lorg/libtorrent4j/swig/settings_pack$string_types;

    const-string v3, "handshake_client_version"

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->settings_pack_handshake_client_version_get()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lorg/libtorrent4j/swig/settings_pack$string_types;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/libtorrent4j/swig/settings_pack$string_types;->handshake_client_version:Lorg/libtorrent4j/swig/settings_pack$string_types;

    new-instance v3, Lorg/libtorrent4j/swig/settings_pack$string_types;

    const-string v4, "outgoing_interfaces"

    invoke-direct {v3, v4}, Lorg/libtorrent4j/swig/settings_pack$string_types;-><init>(Ljava/lang/String;)V

    sput-object v3, Lorg/libtorrent4j/swig/settings_pack$string_types;->outgoing_interfaces:Lorg/libtorrent4j/swig/settings_pack$string_types;

    new-instance v4, Lorg/libtorrent4j/swig/settings_pack$string_types;

    const-string v5, "listen_interfaces"

    invoke-direct {v4, v5}, Lorg/libtorrent4j/swig/settings_pack$string_types;-><init>(Ljava/lang/String;)V

    sput-object v4, Lorg/libtorrent4j/swig/settings_pack$string_types;->listen_interfaces:Lorg/libtorrent4j/swig/settings_pack$string_types;

    new-instance v5, Lorg/libtorrent4j/swig/settings_pack$string_types;

    const-string v6, "proxy_hostname"

    invoke-direct {v5, v6}, Lorg/libtorrent4j/swig/settings_pack$string_types;-><init>(Ljava/lang/String;)V

    sput-object v5, Lorg/libtorrent4j/swig/settings_pack$string_types;->proxy_hostname:Lorg/libtorrent4j/swig/settings_pack$string_types;

    new-instance v6, Lorg/libtorrent4j/swig/settings_pack$string_types;

    const-string v7, "proxy_username"

    invoke-direct {v6, v7}, Lorg/libtorrent4j/swig/settings_pack$string_types;-><init>(Ljava/lang/String;)V

    sput-object v6, Lorg/libtorrent4j/swig/settings_pack$string_types;->proxy_username:Lorg/libtorrent4j/swig/settings_pack$string_types;

    new-instance v7, Lorg/libtorrent4j/swig/settings_pack$string_types;

    const-string v8, "proxy_password"

    invoke-direct {v7, v8}, Lorg/libtorrent4j/swig/settings_pack$string_types;-><init>(Ljava/lang/String;)V

    sput-object v7, Lorg/libtorrent4j/swig/settings_pack$string_types;->proxy_password:Lorg/libtorrent4j/swig/settings_pack$string_types;

    new-instance v8, Lorg/libtorrent4j/swig/settings_pack$string_types;

    const-string v9, "i2p_hostname"

    invoke-direct {v8, v9}, Lorg/libtorrent4j/swig/settings_pack$string_types;-><init>(Ljava/lang/String;)V

    sput-object v8, Lorg/libtorrent4j/swig/settings_pack$string_types;->i2p_hostname:Lorg/libtorrent4j/swig/settings_pack$string_types;

    new-instance v9, Lorg/libtorrent4j/swig/settings_pack$string_types;

    const-string v10, "peer_fingerprint"

    invoke-direct {v9, v10}, Lorg/libtorrent4j/swig/settings_pack$string_types;-><init>(Ljava/lang/String;)V

    sput-object v9, Lorg/libtorrent4j/swig/settings_pack$string_types;->peer_fingerprint:Lorg/libtorrent4j/swig/settings_pack$string_types;

    new-instance v10, Lorg/libtorrent4j/swig/settings_pack$string_types;

    const-string v11, "dht_bootstrap_nodes"

    invoke-direct {v10, v11}, Lorg/libtorrent4j/swig/settings_pack$string_types;-><init>(Ljava/lang/String;)V

    sput-object v10, Lorg/libtorrent4j/swig/settings_pack$string_types;->dht_bootstrap_nodes:Lorg/libtorrent4j/swig/settings_pack$string_types;

    new-instance v11, Lorg/libtorrent4j/swig/settings_pack$string_types;

    const-string v12, "webtorrent_stun_server"

    invoke-direct {v11, v12}, Lorg/libtorrent4j/swig/settings_pack$string_types;-><init>(Ljava/lang/String;)V

    sput-object v11, Lorg/libtorrent4j/swig/settings_pack$string_types;->webtorrent_stun_server:Lorg/libtorrent4j/swig/settings_pack$string_types;

    new-instance v12, Lorg/libtorrent4j/swig/settings_pack$string_types;

    const-string v13, "max_string_setting_internal"

    invoke-direct {v12, v13}, Lorg/libtorrent4j/swig/settings_pack$string_types;-><init>(Ljava/lang/String;)V

    sput-object v12, Lorg/libtorrent4j/swig/settings_pack$string_types;->max_string_setting_internal:Lorg/libtorrent4j/swig/settings_pack$string_types;

    filled-new-array/range {v0 .. v12}, [Lorg/libtorrent4j/swig/settings_pack$string_types;

    move-result-object v0

    sput-object v0, Lorg/libtorrent4j/swig/settings_pack$string_types;->swigValues:[Lorg/libtorrent4j/swig/settings_pack$string_types;

    const/4 v0, 0x0

    sput v0, Lorg/libtorrent4j/swig/settings_pack$string_types;->swigNext:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/libtorrent4j/swig/settings_pack$string_types;->swigName:Ljava/lang/String;

    .line 3
    sget p1, Lorg/libtorrent4j/swig/settings_pack$string_types;->swigNext:I

    add-int/lit8 v0, p1, 0x1

    sput v0, Lorg/libtorrent4j/swig/settings_pack$string_types;->swigNext:I

    iput p1, p0, Lorg/libtorrent4j/swig/settings_pack$string_types;->swigValue:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lorg/libtorrent4j/swig/settings_pack$string_types;->swigName:Ljava/lang/String;

    .line 6
    iput p2, p0, Lorg/libtorrent4j/swig/settings_pack$string_types;->swigValue:I

    add-int/lit8 p2, p2, 0x1

    .line 7
    sput p2, Lorg/libtorrent4j/swig/settings_pack$string_types;->swigNext:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lorg/libtorrent4j/swig/settings_pack$string_types;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lorg/libtorrent4j/swig/settings_pack$string_types;->swigName:Ljava/lang/String;

    .line 10
    iget p1, p2, Lorg/libtorrent4j/swig/settings_pack$string_types;->swigValue:I

    iput p1, p0, Lorg/libtorrent4j/swig/settings_pack$string_types;->swigValue:I

    add-int/lit8 p1, p1, 0x1

    .line 11
    sput p1, Lorg/libtorrent4j/swig/settings_pack$string_types;->swigNext:I

    return-void
.end method

.method public static swigToEnum(I)Lorg/libtorrent4j/swig/settings_pack$string_types;
    .locals 3

    sget-object v0, Lorg/libtorrent4j/swig/settings_pack$string_types;->swigValues:[Lorg/libtorrent4j/swig/settings_pack$string_types;

    array-length v1, v0

    if-ge p0, v1, :cond_0

    if-ltz p0, :cond_0

    aget-object v0, v0, p0

    iget v1, v0, Lorg/libtorrent4j/swig/settings_pack$string_types;->swigValue:I

    if-ne v1, p0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lorg/libtorrent4j/swig/settings_pack$string_types;->swigValues:[Lorg/libtorrent4j/swig/settings_pack$string_types;

    array-length v2, v1

    if-ge v0, v2, :cond_2

    aget-object v1, v1, v0

    iget v2, v1, Lorg/libtorrent4j/swig/settings_pack$string_types;->swigValue:I

    if-ne v2, p0, :cond_1

    return-object v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No enum "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Lorg/libtorrent4j/swig/settings_pack$string_types;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " with value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final swigValue()I
    .locals 0

    iget p0, p0, Lorg/libtorrent4j/swig/settings_pack$string_types;->swigValue:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/swig/settings_pack$string_types;->swigName:Ljava/lang/String;

    return-object p0
.end method
