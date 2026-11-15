.class public final Landroidx/compose/runtime/s$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/runtime/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field static final synthetic a:Landroidx/compose/runtime/s$a;

.field private static final b:Landroidx/compose/runtime/s;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/runtime/s$a;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/compose/runtime/s$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/compose/runtime/s$a;->a:Landroidx/compose/runtime/s$a;

    .line 7
    .line 8
    invoke-static {}, Landroidx/compose/runtime/internal/e;->a()Landroidx/compose/runtime/internal/d;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sput-object v0, Landroidx/compose/runtime/s$a;->b:Landroidx/compose/runtime/s;

    .line 13
    .line 14
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
.method public final a()Landroidx/compose/runtime/s;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/runtime/s$a;->b:Landroidx/compose/runtime/s;

    .line 2
    .line 3
    return-object v0
.end method
