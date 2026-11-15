.class public final Lev0$f;
.super Lev0$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lev0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation


# static fields
.field public static final c:Lev0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lev0$f;

    invoke-direct {v0}, Lev0$f;-><init>()V

    sput-object v0, Lev0$f;->c:Lev0;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "CharMatcher.none()"

    invoke-direct {p0, v0}, Lev0$e;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public e(Ljava/lang/CharSequence;I)I
    .locals 0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p0

    invoke-static {p2, p0}, Lxd8;->r(II)I

    const/4 p0, -0x1

    return p0
.end method

.method public g(C)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public h(Ljava/lang/CharSequence;)Z
    .locals 0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
