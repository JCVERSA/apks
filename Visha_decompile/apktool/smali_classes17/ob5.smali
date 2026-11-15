.class public abstract Lob5;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lpnb;

.field public static final b:Lpnb;

.field public static final c:Lhm5;

.field public static final d:Le74;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkb5;

    invoke-direct {v0}, Lkb5;-><init>()V

    sput-object v0, Lob5;->a:Lpnb;

    new-instance v0, Llb5;

    invoke-direct {v0}, Llb5;-><init>()V

    sput-object v0, Lob5;->b:Lpnb;

    new-instance v0, Lmb5;

    invoke-direct {v0}, Lmb5;-><init>()V

    sput-object v0, Lob5;->c:Lhm5;

    new-instance v0, Lnb5;

    invoke-direct {v0}, Lnb5;-><init>()V

    sput-object v0, Lob5;->d:Le74;

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lob5;->h(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Lob5;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Ljava/util/List;)Z
    .locals 0

    invoke-static {p0}, Lob5;->i(Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method public static synthetic d(Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0}, Lob5;->g(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static e()Lpnb;
    .locals 1

    sget-object v0, Lob5;->a:Lpnb;

    return-object v0
.end method

.method public static f()Le74;
    .locals 1

    sget-object v0, Lob5;->d:Le74;

    return-object v0
.end method

.method public static synthetic g(Ljava/lang/Object;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic h(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic i(Ljava/util/List;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic j(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    return-object p0
.end method
