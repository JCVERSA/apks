.class public Lcom/transsion/athena/config/data/model/ehanat;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static A:Ljava/lang/String; = ""

.field private static B:Z = false

.field public static C:Z = false

.field public static D:Z = false

.field public static E:Z = false

.field public static F:Z = false

.field public static G:Z = true

.field public static H:Z = true

.field public static I:Z = true

.field public static J:Z = true

.field public static K:Z = false

.field private static L:Lorg/json/JSONObject; = null

.field private static M:Lorg/json/JSONObject; = null

.field private static N:Lorg/json/JSONObject; = null

.field private static O:Lorg/json/JSONObject; = null

.field private static P:Lorg/json/JSONObject; = null

.field private static final Q:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static R:Z = false

.field private static a:Ljava/lang/String; = null

.field private static b:Ljava/lang/String; = null

.field private static c:Ljava/lang/String; = null

.field private static d:Ljava/lang/String; = null

.field private static e:Ljava/lang/String; = null

.field private static f:Ljava/lang/String; = null

.field private static g:Ljava/lang/String; = null

.field public static h:Ljava/lang/String; = null

.field public static i:Ljava/lang/String; = null

.field public static j:Ljava/lang/String; = null

.field public static k:Ljava/lang/String; = null

.field public static l:Ljava/lang/String; = null

.field public static m:[B = null

.field public static n:[B = null

.field public static o:[B = null

.field private static p:Z = false

.field private static q:Ljava/lang/String; = "online"

.field private static r:J = 0x7530L

.field private static s:Ljava/lang/String; = ""

.field private static t:Ljava/lang/String; = ""

.field private static u:Z = true

.field private static v:Z = true

.field private static w:Z = false

.field private static x:I = 0xa00000

.field private static y:I

.field private static z:S


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/transsion/athena/config/data/model/ehanat;->L:Lorg/json/JSONObject;

    .line 7
    .line 8
    new-instance v0, Lorg/json/JSONObject;

    .line 9
    .line 10
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/transsion/athena/config/data/model/ehanat;->M:Lorg/json/JSONObject;

    .line 14
    .line 15
    new-instance v0, Lorg/json/JSONObject;

    .line 16
    .line 17
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lcom/transsion/athena/config/data/model/ehanat;->N:Lorg/json/JSONObject;

    .line 21
    .line 22
    new-instance v0, Lorg/json/JSONObject;

    .line 23
    .line 24
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 25
    .line 26
    .line 27
    sput-object v0, Lcom/transsion/athena/config/data/model/ehanat;->O:Lorg/json/JSONObject;

    .line 28
    .line 29
    new-instance v0, Lorg/json/JSONObject;

    .line 30
    .line 31
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 32
    .line 33
    .line 34
    sput-object v0, Lcom/transsion/athena/config/data/model/ehanat;->P:Lorg/json/JSONObject;

    .line 35
    .line 36
    new-instance v0, Landroid/util/ArrayMap;

    .line 37
    .line 38
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 39
    .line 40
    .line 41
    sput-object v0, Lcom/transsion/athena/config/data/model/ehanat;->Q:Landroid/util/ArrayMap;

    .line 42
    .line 43
    const/4 v0, 0x1

    .line 44
    sput-boolean v0, Lcom/transsion/athena/config/data/model/ehanat;->R:Z

    .line 45
    .line 46
    return-void
.end method

.method public static a(I)Ljava/lang/String;
    .locals 2

    .line 24
    sget-object v0, Lcom/transsion/athena/config/data/model/ehanat;->Q:Landroid/util/ArrayMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 25
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 13
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/transsion/athena/config/data/model/ehanat;->f:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 15
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/transsion/athena/config/data/model/ehanat;->a(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/transsion/athena/config/data/model/ehanat;->f:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Z)Ljava/lang/String;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/transsion/athena/config/data/model/ehanat;->q:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x3c5549ad

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v2, :cond_2

    const v2, 0x18415

    if-eq v1, v2, :cond_1

    const v2, 0x364492

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "test"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v4

    goto :goto_1

    :cond_1
    const-string v1, "dev"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v3

    goto :goto_1

    :cond_2
    const-string v1, "online"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_7

    if-eq v0, v4, :cond_5

    if-eqz p0, :cond_4

    .line 2
    sget-object v0, Lcom/transsion/athena/config/data/model/ehanat;->d:Ljava/lang/String;

    goto :goto_2

    :cond_4
    sget-object v0, Lcom/transsion/athena/config/data/model/ehanat;->e:Ljava/lang/String;

    goto :goto_2

    :cond_5
    if-eqz p0, :cond_6

    .line 3
    sget-object v0, Lcom/transsion/athena/config/data/model/ehanat;->b:Ljava/lang/String;

    goto :goto_2

    :cond_6
    sget-object v0, Lcom/transsion/athena/config/data/model/ehanat;->c:Ljava/lang/String;

    goto :goto_2

    .line 4
    :cond_7
    sget-object v0, Lcom/transsion/athena/config/data/model/ehanat;->a:Ljava/lang/String;

    .line 5
    :goto_2
    :try_start_0
    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->J()Landroid/content/Context;

    move-result-object v1

    const-string v2, "debug.athena.test_mode"

    invoke-static {v1, v2, v3}, Lcom/transsion/athena/config/data/model/anehat;->a(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_9

    if-eqz p0, :cond_8

    .line 6
    sget-object p0, Lcom/transsion/athena/config/data/model/ehanat;->b:Ljava/lang/String;

    :goto_3
    move-object v0, p0

    goto :goto_5

    :catch_0
    move-exception p0

    goto :goto_4

    :cond_8
    sget-object p0, Lcom/transsion/athena/config/data/model/ehanat;->c:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 7
    :goto_4
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 8
    :cond_9
    :goto_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a()V
    .locals 1

    const/4 v0, 0x1

    .line 16
    sput-boolean v0, Lcom/transsion/athena/config/data/model/ehanat;->w:Z

    return-void
.end method

.method public static a(ILjava/lang/String;)V
    .locals 1

    .line 23
    sget-object v0, Lcom/transsion/athena/config/data/model/ehanat;->Q:Landroid/util/ArrayMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a(J)V
    .locals 3

    const-wide/16 v0, 0x7530

    cmp-long v2, p0, v0

    if-gez v2, :cond_0

    move-wide p0, v0

    .line 9
    :cond_0
    sput-wide p0, Lcom/transsion/athena/config/data/model/ehanat;->r:J

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 19
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 20
    :try_start_0
    invoke-static {p1}, Lcom/transsion/athena/config/data/model/ehanat;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21
    sget-object v0, Lcom/transsion/athena/config/data/model/ehanat;->M:Lorg/json/JSONObject;

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 22
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static a(Ljava/lang/String;Z)V
    .locals 1

    .line 10
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 11
    :cond_0
    sget-object v0, Lcom/transsion/athena/config/data/model/ehanat;->s:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_2

    .line 12
    :cond_1
    sput-object p0, Lcom/transsion/athena/config/data/model/ehanat;->s:Ljava/lang/String;

    :cond_2
    return-void
.end method

.method public static a(SLjava/lang/String;)V
    .locals 0

    .line 17
    sput-short p0, Lcom/transsion/athena/config/data/model/ehanat;->z:S

    .line 18
    sput-object p1, Lcom/transsion/athena/config/data/model/ehanat;->A:Ljava/lang/String;

    return-void
.end method

.method private static a(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 26
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    array-length p0, p0

    const/16 v2, 0x7d0

    if-le p0, v2, :cond_0

    .line 27
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v0

    const-string p0, "custom param is too long,limit is 2000 bytes(now is %d bytes)"

    invoke-static {v2, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 28
    invoke-static {p0}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;)V

    return v0

    :cond_0
    return v1
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    .line 4
    sget-object v0, Lcom/transsion/athena/config/data/model/ehanat;->A:Ljava/lang/String;

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/transsion/athena/config/data/model/ehanat;->i:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(I)V
    .locals 1

    if-gez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0xc8

    if-le p0, v0, :cond_1

    move p0, v0

    .line 2
    :cond_1
    :goto_0
    sput p0, Lcom/transsion/athena/config/data/model/ehanat;->y:I

    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 5
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    :try_start_0
    invoke-static {p1}, Lcom/transsion/athena/config/data/model/ehanat;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    sget-object v0, Lcom/transsion/athena/config/data/model/ehanat;->P:Lorg/json/JSONObject;

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 8
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static b(Z)V
    .locals 0

    .line 3
    sput-boolean p0, Lcom/transsion/athena/config/data/model/ehanat;->v:Z

    return-void
.end method

.method public static c()S
    .locals 1

    .line 34
    sget-short v0, Lcom/transsion/athena/config/data/model/ehanat;->z:S

    return v0
.end method

.method public static c(I)V
    .locals 1

    const/high16 v0, 0x200000

    if-ge p0, v0, :cond_0

    .line 32
    sput v0, Lcom/transsion/athena/config/data/model/ehanat;->x:I

    .line 33
    :cond_0
    sput p0, Lcom/transsion/athena/config/data/model/ehanat;->x:I

    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    const-string v0, "athena_ea"

    const-string v1, "athena_def"

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "d"

    .line 3
    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/transsion/athena/config/data/model/ehanat;->a:Ljava/lang/String;

    const-string p0, "tu"

    .line 4
    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/transsion/athena/config/data/model/ehanat;->b:Ljava/lang/String;

    const-string p0, "tc"

    .line 5
    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/transsion/athena/config/data/model/ehanat;->c:Ljava/lang/String;

    const-string p0, "ou"

    .line 6
    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/transsion/athena/config/data/model/ehanat;->d:Ljava/lang/String;

    const-string p0, "oc"

    .line 7
    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/transsion/athena/config/data/model/ehanat;->e:Ljava/lang/String;

    const-string p0, "c"

    .line 8
    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v3, "v6"

    const-string v4, "v7"

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/transsion/athena/config/data/model/ehanat;->f:Ljava/lang/String;

    .line 9
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "g"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "v2"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/transsion/athena/config/data/model/ehanat;->g:Ljava/lang/String;

    const-string p0, "u"

    .line 10
    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/transsion/athena/config/data/model/ehanat;->h:Ljava/lang/String;

    const-string v4, "v3"

    .line 11
    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/transsion/athena/config/data/model/ehanat;->i:Ljava/lang/String;

    const-string p0, "fc"

    .line 12
    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/transsion/athena/config/data/model/ehanat;->j:Ljava/lang/String;

    const-string p0, "fd"

    .line 13
    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/transsion/athena/config/data/model/ehanat;->k:Ljava/lang/String;

    const-string p0, "fe"

    .line 14
    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/transsion/athena/config/data/model/ehanat;->l:Ljava/lang/String;

    const-string p0, "w"

    .line 15
    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    sput-object p0, Lcom/transsion/athena/config/data/model/ehanat;->n:[B

    const-string p0, "iv"

    .line 16
    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    sput-object p0, Lcom/transsion/athena/config/data/model/ehanat;->o:[B

    .line 17
    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->J()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lm4/a;->a(Landroid/content/Context;)Lm4/a;

    move-result-object p0

    .line 18
    :try_start_0
    invoke-virtual {p0, v1}, Lm4/a;->e(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    .line 19
    invoke-virtual {p0, v0}, Lm4/a;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 20
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v2, "AES"

    .line 21
    invoke-static {v2}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v2

    const/16 v3, 0x80

    .line 22
    invoke-virtual {v2, v3}, Ljavax/crypto/KeyGenerator;->init(I)V

    .line 23
    invoke-virtual {v2}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v2

    .line 24
    invoke-interface {v2}, Ljava/security/Key;->getEncoded()[B

    move-result-object v2

    .line 25
    invoke-static {v2}, Lcom/transsion/athena/config/data/model/anehat;->c([B)Ljava/lang/String;

    move-result-object v2

    .line 26
    invoke-virtual {p0, v0, v2}, Lm4/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    :cond_0
    invoke-static {v2}, Lcom/transsion/athena/config/data/model/anehat;->a(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/transsion/athena/config/data/model/ehanat;->m:[B

    goto :goto_0

    .line 28
    :cond_1
    sget-object v0, Lcom/transsion/athena/config/data/model/ehanat;->n:[B

    sput-object v0, Lcom/transsion/athena/config/data/model/ehanat;->m:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x1

    .line 29
    invoke-virtual {p0, v1, v0}, Lm4/a;->b(Ljava/lang/String;I)V

    .line 30
    sget-object p0, Lcom/transsion/athena/config/data/model/ehanat;->n:[B

    sput-object p0, Lcom/transsion/athena/config/data/model/ehanat;->m:[B

    :cond_2
    :goto_0
    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 35
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 36
    :try_start_0
    invoke-static {p1}, Lcom/transsion/athena/config/data/model/ehanat;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    sget-object v0, Lcom/transsion/athena/config/data/model/ehanat;->O:Lorg/json/JSONObject;

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 38
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static c(Z)V
    .locals 0

    .line 31
    sput-boolean p0, Lcom/transsion/athena/config/data/model/ehanat;->p:Z

    return-void
.end method

.method public static d()Lorg/json/JSONObject;
    .locals 1

    .line 8
    sget-object v0, Lcom/transsion/athena/config/data/model/ehanat;->M:Lorg/json/JSONObject;

    return-object v0
.end method

.method public static d(Ljava/lang/String;)V
    .locals 0

    .line 3
    sput-object p0, Lcom/transsion/athena/config/data/model/ehanat;->t:Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized d(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    const-class v0, Lcom/transsion/athena/config/data/model/ehanat;

    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 5
    :try_start_1
    invoke-static {p1}, Lcom/transsion/athena/config/data/model/ehanat;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    sget-object v1, Lcom/transsion/athena/config/data/model/ehanat;->L:Lorg/json/JSONObject;

    invoke-virtual {v1, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 7
    :try_start_2
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public static d(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setEnable isEnable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/athena/taaneh/aethna;->c(Ljava/lang/String;)V

    .line 2
    sput-boolean p0, Lcom/transsion/athena/config/data/model/ehanat;->u:Z

    return-void
.end method

.method public static e()Lorg/json/JSONObject;
    .locals 1

    .line 6
    sget-object v0, Lcom/transsion/athena/config/data/model/ehanat;->P:Lorg/json/JSONObject;

    return-object v0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    :try_start_0
    invoke-static {p1}, Lcom/transsion/athena/config/data/model/ehanat;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    sget-object v0, Lcom/transsion/athena/config/data/model/ehanat;->N:Lorg/json/JSONObject;

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 5
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static e(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/transsion/athena/config/data/model/ehanat;->B:Z

    return-void
.end method

.method public static f()Lorg/json/JSONObject;
    .locals 1

    .line 2
    sget-object v0, Lcom/transsion/athena/config/data/model/ehanat;->O:Lorg/json/JSONObject;

    return-object v0
.end method

.method public static f(Z)V
    .locals 0

    if-eqz p0, :cond_0

    const-string p0, "test"

    goto :goto_0

    :cond_0
    const-string p0, "online"

    .line 1
    :goto_0
    sput-object p0, Lcom/transsion/athena/config/data/model/ehanat;->q:Ljava/lang/String;

    return-void
.end method

.method public static g()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/athena/config/data/model/ehanat;->s:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static declared-synchronized h()Lorg/json/JSONObject;
    .locals 2

    .line 1
    const-class v0, Lcom/transsion/athena/config/data/model/ehanat;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/transsion/athena/config/data/model/ehanat;->L:Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return-object v1

    .line 8
    :catchall_0
    move-exception v1

    .line 9
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    throw v1
.end method

.method public static i()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-static {v1}, Lcom/transsion/athena/config/data/model/ehanat;->a(Z)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    sget-object v1, Lcom/transsion/athena/config/data/model/ehanat;->g:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    return-object v0
.end method

.method public static j()I
    .locals 1

    .line 1
    sget v0, Lcom/transsion/athena/config/data/model/ehanat;->y:I

    .line 2
    .line 3
    return v0
.end method

.method public static k()I
    .locals 1

    .line 1
    sget v0, Lcom/transsion/athena/config/data/model/ehanat;->x:I

    .line 2
    .line 3
    return v0
.end method

.method public static l()Lorg/json/JSONObject;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/athena/config/data/model/ehanat;->N:Lorg/json/JSONObject;

    .line 2
    .line 3
    return-object v0
.end method

.method public static m()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/athena/config/data/model/ehanat;->t:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static n()J
    .locals 2

    .line 1
    sget-wide v0, Lcom/transsion/athena/config/data/model/ehanat;->r:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static o()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-static {v1}, Lcom/transsion/athena/config/data/model/ehanat;->a(Z)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    sget-object v1, Lcom/transsion/athena/config/data/model/ehanat;->i:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    return-object v0
.end method

.method public static p()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/transsion/athena/config/data/model/ehanat;->v:Z

    .line 2
    .line 3
    return v0
.end method

.method public static q()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/transsion/athena/config/data/model/ehanat;->p:Z

    .line 2
    .line 3
    return v0
.end method

.method public static r()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/transsion/athena/config/data/model/ehanat;->u:Z

    .line 2
    .line 3
    return v0
.end method

.method public static s()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/transsion/athena/config/data/model/ehanat;->B:Z

    .line 2
    .line 3
    return v0
.end method

.method public static t()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/transsion/athena/config/data/model/ehanat;->q:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "online"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public static u()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/transsion/athena/config/data/model/ehanat;->w:Z

    .line 2
    .line 3
    return v0
.end method

.method public static v()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/transsion/athena/config/data/model/ehanat;->q:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "test"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method
