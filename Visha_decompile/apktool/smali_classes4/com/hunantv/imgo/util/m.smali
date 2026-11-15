.class public Lcom/hunantv/imgo/util/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/hunantv/imgo/util/m;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/hunantv/imgo/util/m;
    .locals 1

    sget-object v0, Lcom/hunantv/imgo/util/m;->a:Lcom/hunantv/imgo/util/m;

    if-nez v0, :cond_0

    new-instance v0, Lcom/hunantv/imgo/util/m;

    invoke-direct {v0}, Lcom/hunantv/imgo/util/m;-><init>()V

    sput-object v0, Lcom/hunantv/imgo/util/m;->a:Lcom/hunantv/imgo/util/m;

    :cond_0
    sget-object v0, Lcom/hunantv/imgo/util/m;->a:Lcom/hunantv/imgo/util/m;

    return-object v0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    const-string p0, "PREF_GPS_MSG"

    const-string v0, ""

    invoke-static {p0, v0}, Lcom/hunantv/imgo/util/PreferencesUtil;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
