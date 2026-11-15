.class public final Lohf;
.super Lmne;
.source "SourceFile"


# static fields
.field public static final c:Lohf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lohf;

    invoke-direct {v0}, Lohf;-><init>()V

    sput-object v0, Lohf;->c:Lohf;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmne;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/String;[BLjava/lang/String;)Lqne;
    .locals 0

    const-string p0, "moov"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lsne;

    invoke-direct {p0}, Lsne;-><init>()V

    return-object p0

    :cond_0
    const-string p0, "mvhd"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Ltne;

    invoke-direct {p0}, Ltne;-><init>()V

    return-object p0

    :cond_1
    new-instance p0, Lxne;

    invoke-direct {p0, p1}, Lxne;-><init>(Ljava/lang/String;)V

    return-object p0
.end method
