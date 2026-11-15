.class public final Lrf/c$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrf/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lrf/c$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lrf/c;
    .locals 1

    .line 1
    sget-object v0, Lrf/c$b;->a:Lrf/c$b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lrf/c$b;->a()Lrf/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
