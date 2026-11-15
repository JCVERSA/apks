.class public final Lpq/b;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpq/b$a;,
        Lpq/b$b;,
        Lpq/b$c;,
        Lpq/b$d;
    }
.end annotation


# static fields
.field public static final e:Lpq/b$b;

.field private static final f:Lpq/b;


# instance fields
.field private final a:Z

.field private final b:Z

.field private final c:Z

.field private final d:Lpq/b$d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lpq/b$b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lpq/b$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lpq/b;->e:Lpq/b$b;

    .line 8
    .line 9
    new-instance v0, Lpq/b$a;

    .line 10
    .line 11
    invoke-direct {v0}, Lpq/b$a;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lpq/b$a;->a()Lpq/b;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    sput-object v0, Lpq/b;->f:Lpq/b;

    .line 19
    .line 20
    return-void
.end method

.method private constructor <init>(Lpq/b$a;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Lpq/b$a;->c()Z

    move-result v0

    iput-boolean v0, p0, Lpq/b;->a:Z

    .line 4
    invoke-virtual {p1}, Lpq/b$a;->d()Z

    move-result v0

    iput-boolean v0, p0, Lpq/b;->b:Z

    .line 5
    invoke-virtual {p1}, Lpq/b$a;->b()Z

    move-result v0

    iput-boolean v0, p0, Lpq/b;->c:Z

    .line 6
    invoke-virtual {p1}, Lpq/b$a;->e()Lpq/b$d;

    move-result-object p1

    iput-object p1, p0, Lpq/b;->d:Lpq/b$d;

    return-void
.end method

.method public synthetic constructor <init>(Lpq/b$a;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lpq/b;-><init>(Lpq/b$a;)V

    return-void
.end method

.method public static final synthetic a()Lpq/b;
    .locals 1

    .line 1
    sget-object v0, Lpq/b;->f:Lpq/b;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public final b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lpq/b;->c:Z

    .line 2
    .line 3
    return v0
.end method

.method public final c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lpq/b;->a:Z

    .line 2
    .line 3
    return v0
.end method

.method public final d()Lpq/b$d;
    .locals 1

    .line 1
    iget-object v0, p0, Lpq/b;->d:Lpq/b$d;

    .line 2
    .line 3
    return-object v0
.end method
