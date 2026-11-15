.class public final Ls/d$a0;
.super Ls/d;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a0"
.end annotation


# static fields
.field public static final c:Ls/d$a0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ls/d$a0;

    .line 2
    .line 3
    invoke-direct {v0}, Ls/d$a0;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Ls/d$a0;->c:Ls/d$a0;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    invoke-direct {p0, v2, v2, v0, v1}, Ls/d;-><init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public a(Ls/e;Landroidx/compose/runtime/f;Landroidx/compose/runtime/m2;Landroidx/compose/runtime/a2;)V
    .locals 0

    .line 1
    invoke-virtual {p3}, Landroidx/compose/runtime/m2;->W0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
