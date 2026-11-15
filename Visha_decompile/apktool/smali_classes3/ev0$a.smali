.class public final Lev0$a;
.super Lev0$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lev0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final c:Lev0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lev0$a;

    invoke-direct {v0}, Lev0$a;-><init>()V

    sput-object v0, Lev0$a;->c:Lev0;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "CharMatcher.ascii()"

    invoke-direct {p0, v0}, Lev0$e;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public g(C)Z
    .locals 0

    const/16 p0, 0x7f

    if-gt p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
