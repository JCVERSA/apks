.class public abstract Les6;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final e:Ljava/nio/charset/Charset;

.field public static final f:[Ljava/lang/String;


# instance fields
.field public a:B

.field public b:I

.field public c:Z

.field public d:Lbud;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    sput-object v0, Les6;->e:Ljava/nio/charset/Charset;

    const-string v14, "PINGRESP"

    const-string v15, "DISCONNECT"

    const-string v1, "reserved"

    const-string v2, "CONNECT"

    const-string v3, "CONNACK"

    const-string v4, "PUBLISH"

    const-string v5, "PUBACK"

    const-string v6, "PUBREC"

    const-string v7, "PUBREL"

    const-string v8, "PUBCOMP"

    const-string v9, "SUBSCRIBE"

    const-string v10, "SUBACK"

    const-string v11, "UNSUBSCRIBE"

    const-string v12, "UNSUBACK"

    const-string v13, "PINGREQ"

    filled-new-array/range {v1 .. v15}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Les6;->f:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Les6;->c:Z

    iput-byte p1, p0, Les6;->a:B

    iput v0, p0, Les6;->b:I

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Les6;->b()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public b()I
    .locals 0

    iget p0, p0, Les6;->b:I

    return p0
.end method

.method public c(Lbud;)V
    .locals 0

    iput-object p1, p0, Les6;->d:Lbud;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    sget-object v0, Les6;->f:[Ljava/lang/String;

    iget-byte p0, p0, Les6;->a:B

    aget-object p0, v0, p0

    return-object p0
.end method
