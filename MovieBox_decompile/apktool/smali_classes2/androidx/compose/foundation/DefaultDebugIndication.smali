.class final Landroidx/compose/foundation/DefaultDebugIndication;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroidx/compose/foundation/b0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance;
    }
.end annotation


# static fields
.field public static final a:Landroidx/compose/foundation/DefaultDebugIndication;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/foundation/DefaultDebugIndication;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/compose/foundation/DefaultDebugIndication;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/compose/foundation/DefaultDebugIndication;->a:Landroidx/compose/foundation/DefaultDebugIndication;

    .line 7
    .line 8
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
.method public synthetic a(Lp/g;Landroidx/compose/runtime/i;I)Landroidx/compose/foundation/y;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/foundation/w;->a(Landroidx/compose/foundation/x;Lp/g;Landroidx/compose/runtime/i;I)Landroidx/compose/foundation/y;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public b(Lp/g;)Landroidx/compose/ui/node/f;
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance;-><init>(Lp/g;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    if-ne p1, p0, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const/4 p1, 0x0

    .line 6
    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    return v0
.end method
