.class public abstract Landroidx/compose/ui/graphics/j1;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/graphics/j1$a;
    }
.end annotation


# static fields
.field public static final b:Landroidx/compose/ui/graphics/j1$a;


# instance fields
.field private final a:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/compose/ui/graphics/j1$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroidx/compose/ui/graphics/j1$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/compose/ui/graphics/j1;->b:Landroidx/compose/ui/graphics/j1$a;

    .line 8
    .line 9
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    sget-object v0, Ly/m;->b:Ly/m$a;

    invoke-virtual {v0}, Ly/m$a;->a()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/ui/graphics/j1;->a:J

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/compose/ui/graphics/j1;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(JLandroidx/compose/ui/graphics/m4;F)V
.end method
