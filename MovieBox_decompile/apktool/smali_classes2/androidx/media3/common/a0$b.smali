.class public final Landroidx/media3/common/a0$b;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/common/a0$b$a;
    }
.end annotation


# static fields
.field public static final b:Landroidx/media3/common/a0$b;

.field private static final c:Ljava/lang/String;


# instance fields
.field private final a:Landroidx/media3/common/p;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/media3/common/a0$b$a;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/media3/common/a0$b$a;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Landroidx/media3/common/a0$b$a;->e()Landroidx/media3/common/a0$b;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sput-object v0, Landroidx/media3/common/a0$b;->b:Landroidx/media3/common/a0$b;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-static {v0}, Landroidx/media3/common/util/a1;->C0(I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Landroidx/media3/common/a0$b;->c:Ljava/lang/String;

    .line 18
    .line 19
    return-void
.end method

.method private constructor <init>(Landroidx/media3/common/p;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Landroidx/media3/common/a0$b;->a:Landroidx/media3/common/p;

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/common/p;Landroidx/media3/common/a0$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/media3/common/a0$b;-><init>(Landroidx/media3/common/p;)V

    return-void
.end method

.method static synthetic a(Landroidx/media3/common/a0$b;)Landroidx/media3/common/p;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/common/a0$b;->a:Landroidx/media3/common/p;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public b(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/common/a0$b;->a:Landroidx/media3/common/p;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/media3/common/p;->a(I)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    return p1

    .line 5
    :cond_0
    instance-of v0, p1, Landroidx/media3/common/a0$b;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    return p1

    .line 11
    :cond_1
    check-cast p1, Landroidx/media3/common/a0$b;

    .line 12
    .line 13
    iget-object v0, p0, Landroidx/media3/common/a0$b;->a:Landroidx/media3/common/p;

    .line 14
    .line 15
    iget-object p1, p1, Landroidx/media3/common/a0$b;->a:Landroidx/media3/common/p;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Landroidx/media3/common/p;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/common/a0$b;->a:Landroidx/media3/common/p;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/media3/common/p;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method
