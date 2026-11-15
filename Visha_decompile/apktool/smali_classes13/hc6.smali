.class public final Lhc6;
.super Lem5;
.source "SourceFile"


# static fields
.field public static final a:Lhc6;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lhc6;

    invoke-direct {v0}, Lhc6;-><init>()V

    sput-object v0, Lhc6;->a:Lhc6;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lem5;-><init>()V

    return-void
.end method

.method public static r()Lhc6;
    .locals 1

    sget-object v0, Lhc6;->a:Lhc6;

    return-object v0
.end method


# virtual methods
.method public f(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const-string p0, "conferences"

    return-object p0
.end method

.method public i(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "https://media.ccc.de/b/conferences"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "https://media.ccc.de/public/conferences"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "https://api.media.ccc.de/public/conferences"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public p(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const-string p0, "https://media.ccc.de/public/conferences"

    return-object p0
.end method
