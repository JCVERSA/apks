.class public final Landroidx/media3/common/t$e;
.super Landroidx/media3/common/t$d;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# static fields
.field public static final p:Landroidx/media3/common/t$e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/media3/common/t$d$a;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/media3/common/t$d$a;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Landroidx/media3/common/t$d$a;->g()Landroidx/media3/common/t$e;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sput-object v0, Landroidx/media3/common/t$e;->p:Landroidx/media3/common/t$e;

    .line 11
    .line 12
    return-void
.end method

.method private constructor <init>(Landroidx/media3/common/t$d$a;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Landroidx/media3/common/t$d;-><init>(Landroidx/media3/common/t$d$a;Landroidx/media3/common/t$a;)V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/common/t$d$a;Landroidx/media3/common/t$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/media3/common/t$e;-><init>(Landroidx/media3/common/t$d$a;)V

    return-void
.end method
