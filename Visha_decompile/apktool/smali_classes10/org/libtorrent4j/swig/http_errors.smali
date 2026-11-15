.class public final Lorg/libtorrent4j/swig/http_errors;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final accepted:Lorg/libtorrent4j/swig/http_errors;

.field public static final bad_gateway:Lorg/libtorrent4j/swig/http_errors;

.field public static final bad_request:Lorg/libtorrent4j/swig/http_errors;

.field public static final cont:Lorg/libtorrent4j/swig/http_errors;

.field public static final created:Lorg/libtorrent4j/swig/http_errors;

.field public static final forbidden:Lorg/libtorrent4j/swig/http_errors;

.field public static final internal_server_error:Lorg/libtorrent4j/swig/http_errors;

.field public static final moved_permanently:Lorg/libtorrent4j/swig/http_errors;

.field public static final moved_temporarily:Lorg/libtorrent4j/swig/http_errors;

.field public static final multiple_choices:Lorg/libtorrent4j/swig/http_errors;

.field public static final no_content:Lorg/libtorrent4j/swig/http_errors;

.field public static final not_found:Lorg/libtorrent4j/swig/http_errors;

.field public static final not_implemented:Lorg/libtorrent4j/swig/http_errors;

.field public static final not_modified:Lorg/libtorrent4j/swig/http_errors;

.field public static final ok:Lorg/libtorrent4j/swig/http_errors;

.field public static final service_unavailable:Lorg/libtorrent4j/swig/http_errors;

.field private static swigNext:I

.field private static swigValues:[Lorg/libtorrent4j/swig/http_errors;

.field public static final unauthorized:Lorg/libtorrent4j/swig/http_errors;


# instance fields
.field private final swigName:Ljava/lang/String;

.field private final swigValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 20

    new-instance v1, Lorg/libtorrent4j/swig/http_errors;

    move-object v0, v1

    const-string v2, "cont"

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->cont_get()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lorg/libtorrent4j/swig/http_errors;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/libtorrent4j/swig/http_errors;->cont:Lorg/libtorrent4j/swig/http_errors;

    new-instance v2, Lorg/libtorrent4j/swig/http_errors;

    move-object v1, v2

    const-string v3, "ok"

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->ok_get()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lorg/libtorrent4j/swig/http_errors;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/libtorrent4j/swig/http_errors;->ok:Lorg/libtorrent4j/swig/http_errors;

    new-instance v3, Lorg/libtorrent4j/swig/http_errors;

    move-object v2, v3

    const-string v4, "created"

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->created_get()I

    move-result v5

    invoke-direct {v3, v4, v5}, Lorg/libtorrent4j/swig/http_errors;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/libtorrent4j/swig/http_errors;->created:Lorg/libtorrent4j/swig/http_errors;

    new-instance v4, Lorg/libtorrent4j/swig/http_errors;

    move-object v3, v4

    const-string v5, "accepted"

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->accepted_get()I

    move-result v6

    invoke-direct {v4, v5, v6}, Lorg/libtorrent4j/swig/http_errors;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/libtorrent4j/swig/http_errors;->accepted:Lorg/libtorrent4j/swig/http_errors;

    new-instance v5, Lorg/libtorrent4j/swig/http_errors;

    move-object v4, v5

    const-string v6, "no_content"

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->no_content_get()I

    move-result v7

    invoke-direct {v5, v6, v7}, Lorg/libtorrent4j/swig/http_errors;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/libtorrent4j/swig/http_errors;->no_content:Lorg/libtorrent4j/swig/http_errors;

    new-instance v6, Lorg/libtorrent4j/swig/http_errors;

    move-object v5, v6

    const-string v7, "multiple_choices"

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->multiple_choices_get()I

    move-result v8

    invoke-direct {v6, v7, v8}, Lorg/libtorrent4j/swig/http_errors;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lorg/libtorrent4j/swig/http_errors;->multiple_choices:Lorg/libtorrent4j/swig/http_errors;

    new-instance v7, Lorg/libtorrent4j/swig/http_errors;

    move-object v6, v7

    const-string v8, "moved_permanently"

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->moved_permanently_get()I

    move-result v9

    invoke-direct {v7, v8, v9}, Lorg/libtorrent4j/swig/http_errors;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lorg/libtorrent4j/swig/http_errors;->moved_permanently:Lorg/libtorrent4j/swig/http_errors;

    new-instance v8, Lorg/libtorrent4j/swig/http_errors;

    move-object v7, v8

    const-string v9, "moved_temporarily"

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->moved_temporarily_get()I

    move-result v10

    invoke-direct {v8, v9, v10}, Lorg/libtorrent4j/swig/http_errors;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lorg/libtorrent4j/swig/http_errors;->moved_temporarily:Lorg/libtorrent4j/swig/http_errors;

    new-instance v9, Lorg/libtorrent4j/swig/http_errors;

    move-object v8, v9

    const-string v10, "not_modified"

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->not_modified_get()I

    move-result v11

    invoke-direct {v9, v10, v11}, Lorg/libtorrent4j/swig/http_errors;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lorg/libtorrent4j/swig/http_errors;->not_modified:Lorg/libtorrent4j/swig/http_errors;

    new-instance v10, Lorg/libtorrent4j/swig/http_errors;

    move-object v9, v10

    const-string v11, "bad_request"

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->bad_request_get()I

    move-result v12

    invoke-direct {v10, v11, v12}, Lorg/libtorrent4j/swig/http_errors;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lorg/libtorrent4j/swig/http_errors;->bad_request:Lorg/libtorrent4j/swig/http_errors;

    new-instance v11, Lorg/libtorrent4j/swig/http_errors;

    move-object v10, v11

    const-string v12, "unauthorized"

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->unauthorized_get()I

    move-result v13

    invoke-direct {v11, v12, v13}, Lorg/libtorrent4j/swig/http_errors;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lorg/libtorrent4j/swig/http_errors;->unauthorized:Lorg/libtorrent4j/swig/http_errors;

    new-instance v12, Lorg/libtorrent4j/swig/http_errors;

    move-object v11, v12

    const-string v13, "forbidden"

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->forbidden_get()I

    move-result v14

    invoke-direct {v12, v13, v14}, Lorg/libtorrent4j/swig/http_errors;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lorg/libtorrent4j/swig/http_errors;->forbidden:Lorg/libtorrent4j/swig/http_errors;

    new-instance v13, Lorg/libtorrent4j/swig/http_errors;

    move-object v12, v13

    const-string v14, "not_found"

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->not_found_get()I

    move-result v15

    invoke-direct {v13, v14, v15}, Lorg/libtorrent4j/swig/http_errors;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lorg/libtorrent4j/swig/http_errors;->not_found:Lorg/libtorrent4j/swig/http_errors;

    new-instance v14, Lorg/libtorrent4j/swig/http_errors;

    move-object v13, v14

    const-string v15, "internal_server_error"

    move-object/from16 v17, v0

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->internal_server_error_get()I

    move-result v0

    invoke-direct {v14, v15, v0}, Lorg/libtorrent4j/swig/http_errors;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lorg/libtorrent4j/swig/http_errors;->internal_server_error:Lorg/libtorrent4j/swig/http_errors;

    new-instance v0, Lorg/libtorrent4j/swig/http_errors;

    move-object v14, v0

    const-string v15, "not_implemented"

    move-object/from16 v18, v1

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->not_implemented_get()I

    move-result v1

    invoke-direct {v0, v15, v1}, Lorg/libtorrent4j/swig/http_errors;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/libtorrent4j/swig/http_errors;->not_implemented:Lorg/libtorrent4j/swig/http_errors;

    new-instance v0, Lorg/libtorrent4j/swig/http_errors;

    move-object v15, v0

    const-string v1, "bad_gateway"

    move-object/from16 v19, v2

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->bad_gateway_get()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/libtorrent4j/swig/http_errors;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/libtorrent4j/swig/http_errors;->bad_gateway:Lorg/libtorrent4j/swig/http_errors;

    new-instance v0, Lorg/libtorrent4j/swig/http_errors;

    move-object/from16 v16, v0

    const-string v1, "service_unavailable"

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->service_unavailable_get()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/libtorrent4j/swig/http_errors;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/libtorrent4j/swig/http_errors;->service_unavailable:Lorg/libtorrent4j/swig/http_errors;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    filled-new-array/range {v0 .. v16}, [Lorg/libtorrent4j/swig/http_errors;

    move-result-object v0

    sput-object v0, Lorg/libtorrent4j/swig/http_errors;->swigValues:[Lorg/libtorrent4j/swig/http_errors;

    const/4 v0, 0x0

    sput v0, Lorg/libtorrent4j/swig/http_errors;->swigNext:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/libtorrent4j/swig/http_errors;->swigName:Ljava/lang/String;

    .line 3
    sget p1, Lorg/libtorrent4j/swig/http_errors;->swigNext:I

    add-int/lit8 v0, p1, 0x1

    sput v0, Lorg/libtorrent4j/swig/http_errors;->swigNext:I

    iput p1, p0, Lorg/libtorrent4j/swig/http_errors;->swigValue:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lorg/libtorrent4j/swig/http_errors;->swigName:Ljava/lang/String;

    .line 6
    iput p2, p0, Lorg/libtorrent4j/swig/http_errors;->swigValue:I

    add-int/lit8 p2, p2, 0x1

    .line 7
    sput p2, Lorg/libtorrent4j/swig/http_errors;->swigNext:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lorg/libtorrent4j/swig/http_errors;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lorg/libtorrent4j/swig/http_errors;->swigName:Ljava/lang/String;

    .line 10
    iget p1, p2, Lorg/libtorrent4j/swig/http_errors;->swigValue:I

    iput p1, p0, Lorg/libtorrent4j/swig/http_errors;->swigValue:I

    add-int/lit8 p1, p1, 0x1

    .line 11
    sput p1, Lorg/libtorrent4j/swig/http_errors;->swigNext:I

    return-void
.end method

.method public static swigToEnum(I)Lorg/libtorrent4j/swig/http_errors;
    .locals 3

    sget-object v0, Lorg/libtorrent4j/swig/http_errors;->swigValues:[Lorg/libtorrent4j/swig/http_errors;

    array-length v1, v0

    if-ge p0, v1, :cond_0

    if-ltz p0, :cond_0

    aget-object v0, v0, p0

    iget v1, v0, Lorg/libtorrent4j/swig/http_errors;->swigValue:I

    if-ne v1, p0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lorg/libtorrent4j/swig/http_errors;->swigValues:[Lorg/libtorrent4j/swig/http_errors;

    array-length v2, v1

    if-ge v0, v2, :cond_2

    aget-object v1, v1, v0

    iget v2, v1, Lorg/libtorrent4j/swig/http_errors;->swigValue:I

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

    const-class v2, Lorg/libtorrent4j/swig/http_errors;

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

    iget p0, p0, Lorg/libtorrent4j/swig/http_errors;->swigValue:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/swig/http_errors;->swigName:Ljava/lang/String;

    return-object p0
.end method
