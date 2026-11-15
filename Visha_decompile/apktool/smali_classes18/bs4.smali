.class public Lbs4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpga;


# static fields
.field public static final b:[C

.field public static final c:[C

.field public static final d:[C

.field public static final e:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "&lt;"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lbs4;->b:[C

    const-string v0, "&gt;"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lbs4;->c:[C

    const-string v0, "&amp;"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lbs4;->d:[C

    const-string v0, "&quot;"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lbs4;->e:[C

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic b()[C
    .locals 1

    sget-object v0, Lbs4;->b:[C

    return-object v0
.end method

.method public static synthetic c()[C
    .locals 1

    sget-object v0, Lbs4;->c:[C

    return-object v0
.end method

.method public static synthetic e()[C
    .locals 1

    sget-object v0, Lbs4;->d:[C

    return-object v0
.end method

.method public static synthetic l()[C
    .locals 1

    sget-object v0, Lbs4;->e:[C

    return-object v0
.end method


# virtual methods
.method public h(Ljava/io/Writer;Ljava/util/Map;)Ljava/io/Writer;
    .locals 0

    new-instance p2, Las4;

    invoke-direct {p2, p0, p1}, Las4;-><init>(Lbs4;Ljava/io/Writer;)V

    return-object p2
.end method
