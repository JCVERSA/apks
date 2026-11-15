.class final Lrf/c$b;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrf/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# static fields
.field public static final a:Lrf/c$b;

.field private static final b:Lrf/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lrf/c$b;

    .line 2
    .line 3
    invoke-direct {v0}, Lrf/c$b;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lrf/c$b;->a:Lrf/c$b;

    .line 7
    .line 8
    new-instance v0, Lrf/c;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-direct {v0, v1}, Lrf/c;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lrf/c$b;->b:Lrf/c;

    .line 15
    .line 16
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final a()Lrf/c;
    .locals 1

    .line 1
    sget-object v0, Lrf/c$b;->b:Lrf/c;

    .line 2
    .line 3
    return-object v0
.end method
