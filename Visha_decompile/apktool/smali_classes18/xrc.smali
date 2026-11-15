.class public Lxrc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpga;


# static fields
.field public static final b:[C

.field public static final c:[C

.field public static final d:[C

.field public static final e:[C

.field public static final f:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "&lt;"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lxrc;->b:[C

    const-string v0, "&gt;"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lxrc;->c:[C

    const-string v0, "&amp;"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lxrc;->d:[C

    const-string v0, "&quot;"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lxrc;->e:[C

    const-string v0, "&apos;"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lxrc;->f:[C

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic b()[C
    .locals 1

    sget-object v0, Lxrc;->b:[C

    return-object v0
.end method

.method public static synthetic c()[C
    .locals 1

    sget-object v0, Lxrc;->c:[C

    return-object v0
.end method

.method public static synthetic e()[C
    .locals 1

    sget-object v0, Lxrc;->d:[C

    return-object v0
.end method

.method public static synthetic l()[C
    .locals 1

    sget-object v0, Lxrc;->e:[C

    return-object v0
.end method

.method public static synthetic m()[C
    .locals 1

    sget-object v0, Lxrc;->f:[C

    return-object v0
.end method


# virtual methods
.method public h(Ljava/io/Writer;Ljava/util/Map;)Ljava/io/Writer;
    .locals 0

    new-instance p2, Lwrc;

    invoke-direct {p2, p0, p1}, Lwrc;-><init>(Lxrc;Ljava/io/Writer;)V

    return-object p2
.end method
