.class public abstract Lcom/transsion/ad/db/MbAdDatabase;
.super Landroidx/room/RoomDatabase;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/ad/db/MbAdDatabase$m;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\'\u0018\u0000 \u00162\u00020\u0001:\u0001\u0017B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H&\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u000f\u0010\u0008\u001a\u00020\u0007H&\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH&\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000f\u0010\u000e\u001a\u00020\rH&\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u000f\u0010\u0011\u001a\u00020\u0010H&\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u000f\u0010\u0014\u001a\u00020\u0013H&\u00a2\u0006\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/transsion/ad/db/MbAdDatabase;",
        "Landroidx/room/RoomDatabase;",
        "<init>",
        "()V",
        "Luh/a;",
        "y0",
        "()Luh/a;",
        "Lth/a;",
        "x0",
        "()Lth/a;",
        "Lvh/l;",
        "z0",
        "()Lvh/l;",
        "Lcom/transsion/ad/db/pslink/a;",
        "w0",
        "()Lcom/transsion/ad/db/pslink/a;",
        "Lvh/a;",
        "v0",
        "()Lvh/a;",
        "Lcom/transsion/ad/db/scene/AdSceneLimitDao;",
        "u0",
        "()Lcom/transsion/ad/db/scene/AdSceneLimitDao;",
        "p",
        "m",
        "lib_ad_gpRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final A:Lcom/transsion/ad/db/MbAdDatabase$a;

.field private static final B:Lcom/transsion/ad/db/MbAdDatabase$b;

.field private static final C:Lcom/transsion/ad/db/MbAdDatabase$c;

.field public static final p:Lcom/transsion/ad/db/MbAdDatabase$m;

.field private static volatile q:Lcom/transsion/ad/db/MbAdDatabase;

.field private static final r:Lcom/transsion/ad/db/MbAdDatabase$d;

.field private static final s:Lcom/transsion/ad/db/MbAdDatabase$e;

.field private static final t:Lcom/transsion/ad/db/MbAdDatabase$f;

.field private static final u:Lcom/transsion/ad/db/MbAdDatabase$g;

.field private static final v:Lcom/transsion/ad/db/MbAdDatabase$h;

.field private static final w:Lcom/transsion/ad/db/MbAdDatabase$i;

.field private static final x:Lcom/transsion/ad/db/MbAdDatabase$j;

.field private static final y:Lcom/transsion/ad/db/MbAdDatabase$k;

.field private static final z:Lcom/transsion/ad/db/MbAdDatabase$l;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/ad/db/MbAdDatabase$m;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/ad/db/MbAdDatabase$m;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/ad/db/MbAdDatabase;->p:Lcom/transsion/ad/db/MbAdDatabase$m;

    .line 8
    .line 9
    new-instance v0, Lcom/transsion/ad/db/MbAdDatabase$d;

    .line 10
    .line 11
    invoke-direct {v0}, Lcom/transsion/ad/db/MbAdDatabase$d;-><init>()V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lcom/transsion/ad/db/MbAdDatabase;->r:Lcom/transsion/ad/db/MbAdDatabase$d;

    .line 15
    .line 16
    new-instance v0, Lcom/transsion/ad/db/MbAdDatabase$e;

    .line 17
    .line 18
    invoke-direct {v0}, Lcom/transsion/ad/db/MbAdDatabase$e;-><init>()V

    .line 19
    .line 20
    .line 21
    sput-object v0, Lcom/transsion/ad/db/MbAdDatabase;->s:Lcom/transsion/ad/db/MbAdDatabase$e;

    .line 22
    .line 23
    new-instance v0, Lcom/transsion/ad/db/MbAdDatabase$f;

    .line 24
    .line 25
    invoke-direct {v0}, Lcom/transsion/ad/db/MbAdDatabase$f;-><init>()V

    .line 26
    .line 27
    .line 28
    sput-object v0, Lcom/transsion/ad/db/MbAdDatabase;->t:Lcom/transsion/ad/db/MbAdDatabase$f;

    .line 29
    .line 30
    new-instance v0, Lcom/transsion/ad/db/MbAdDatabase$g;

    .line 31
    .line 32
    invoke-direct {v0}, Lcom/transsion/ad/db/MbAdDatabase$g;-><init>()V

    .line 33
    .line 34
    .line 35
    sput-object v0, Lcom/transsion/ad/db/MbAdDatabase;->u:Lcom/transsion/ad/db/MbAdDatabase$g;

    .line 36
    .line 37
    new-instance v0, Lcom/transsion/ad/db/MbAdDatabase$h;

    .line 38
    .line 39
    invoke-direct {v0}, Lcom/transsion/ad/db/MbAdDatabase$h;-><init>()V

    .line 40
    .line 41
    .line 42
    sput-object v0, Lcom/transsion/ad/db/MbAdDatabase;->v:Lcom/transsion/ad/db/MbAdDatabase$h;

    .line 43
    .line 44
    new-instance v0, Lcom/transsion/ad/db/MbAdDatabase$i;

    .line 45
    .line 46
    invoke-direct {v0}, Lcom/transsion/ad/db/MbAdDatabase$i;-><init>()V

    .line 47
    .line 48
    .line 49
    sput-object v0, Lcom/transsion/ad/db/MbAdDatabase;->w:Lcom/transsion/ad/db/MbAdDatabase$i;

    .line 50
    .line 51
    new-instance v0, Lcom/transsion/ad/db/MbAdDatabase$j;

    .line 52
    .line 53
    invoke-direct {v0}, Lcom/transsion/ad/db/MbAdDatabase$j;-><init>()V

    .line 54
    .line 55
    .line 56
    sput-object v0, Lcom/transsion/ad/db/MbAdDatabase;->x:Lcom/transsion/ad/db/MbAdDatabase$j;

    .line 57
    .line 58
    new-instance v0, Lcom/transsion/ad/db/MbAdDatabase$k;

    .line 59
    .line 60
    invoke-direct {v0}, Lcom/transsion/ad/db/MbAdDatabase$k;-><init>()V

    .line 61
    .line 62
    .line 63
    sput-object v0, Lcom/transsion/ad/db/MbAdDatabase;->y:Lcom/transsion/ad/db/MbAdDatabase$k;

    .line 64
    .line 65
    new-instance v0, Lcom/transsion/ad/db/MbAdDatabase$l;

    .line 66
    .line 67
    invoke-direct {v0}, Lcom/transsion/ad/db/MbAdDatabase$l;-><init>()V

    .line 68
    .line 69
    .line 70
    sput-object v0, Lcom/transsion/ad/db/MbAdDatabase;->z:Lcom/transsion/ad/db/MbAdDatabase$l;

    .line 71
    .line 72
    new-instance v0, Lcom/transsion/ad/db/MbAdDatabase$a;

    .line 73
    .line 74
    invoke-direct {v0}, Lcom/transsion/ad/db/MbAdDatabase$a;-><init>()V

    .line 75
    .line 76
    .line 77
    sput-object v0, Lcom/transsion/ad/db/MbAdDatabase;->A:Lcom/transsion/ad/db/MbAdDatabase$a;

    .line 78
    .line 79
    new-instance v0, Lcom/transsion/ad/db/MbAdDatabase$b;

    .line 80
    .line 81
    invoke-direct {v0}, Lcom/transsion/ad/db/MbAdDatabase$b;-><init>()V

    .line 82
    .line 83
    .line 84
    sput-object v0, Lcom/transsion/ad/db/MbAdDatabase;->B:Lcom/transsion/ad/db/MbAdDatabase$b;

    .line 85
    .line 86
    new-instance v0, Lcom/transsion/ad/db/MbAdDatabase$c;

    .line 87
    .line 88
    invoke-direct {v0}, Lcom/transsion/ad/db/MbAdDatabase$c;-><init>()V

    .line 89
    .line 90
    .line 91
    sput-object v0, Lcom/transsion/ad/db/MbAdDatabase;->C:Lcom/transsion/ad/db/MbAdDatabase$c;

    .line 92
    .line 93
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/room/RoomDatabase;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic g0()Lcom/transsion/ad/db/MbAdDatabase;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/ad/db/MbAdDatabase;->q:Lcom/transsion/ad/db/MbAdDatabase;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic h0()Lcom/transsion/ad/db/MbAdDatabase$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/ad/db/MbAdDatabase;->A:Lcom/transsion/ad/db/MbAdDatabase$a;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic i0()Lcom/transsion/ad/db/MbAdDatabase$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/ad/db/MbAdDatabase;->B:Lcom/transsion/ad/db/MbAdDatabase$b;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic j0()Lcom/transsion/ad/db/MbAdDatabase$c;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/ad/db/MbAdDatabase;->C:Lcom/transsion/ad/db/MbAdDatabase$c;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic k0()Lcom/transsion/ad/db/MbAdDatabase$d;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/ad/db/MbAdDatabase;->r:Lcom/transsion/ad/db/MbAdDatabase$d;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic l0()Lcom/transsion/ad/db/MbAdDatabase$e;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/ad/db/MbAdDatabase;->s:Lcom/transsion/ad/db/MbAdDatabase$e;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic m0()Lcom/transsion/ad/db/MbAdDatabase$f;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/ad/db/MbAdDatabase;->t:Lcom/transsion/ad/db/MbAdDatabase$f;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic n0()Lcom/transsion/ad/db/MbAdDatabase$g;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/ad/db/MbAdDatabase;->u:Lcom/transsion/ad/db/MbAdDatabase$g;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic o0()Lcom/transsion/ad/db/MbAdDatabase$h;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/ad/db/MbAdDatabase;->v:Lcom/transsion/ad/db/MbAdDatabase$h;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic p0()Lcom/transsion/ad/db/MbAdDatabase$i;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/ad/db/MbAdDatabase;->w:Lcom/transsion/ad/db/MbAdDatabase$i;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic q0()Lcom/transsion/ad/db/MbAdDatabase$j;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/ad/db/MbAdDatabase;->x:Lcom/transsion/ad/db/MbAdDatabase$j;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic r0()Lcom/transsion/ad/db/MbAdDatabase$k;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/ad/db/MbAdDatabase;->y:Lcom/transsion/ad/db/MbAdDatabase$k;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic s0()Lcom/transsion/ad/db/MbAdDatabase$l;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/ad/db/MbAdDatabase;->z:Lcom/transsion/ad/db/MbAdDatabase$l;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic t0(Lcom/transsion/ad/db/MbAdDatabase;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/transsion/ad/db/MbAdDatabase;->q:Lcom/transsion/ad/db/MbAdDatabase;

    .line 2
    .line 3
    return-void
.end method


# virtual methods
.method public abstract u0()Lcom/transsion/ad/db/scene/AdSceneLimitDao;
.end method

.method public abstract v0()Lvh/a;
.end method

.method public abstract w0()Lcom/transsion/ad/db/pslink/a;
.end method

.method public abstract x0()Lth/a;
.end method

.method public abstract y0()Luh/a;
.end method

.method public abstract z0()Lvh/l;
.end method
