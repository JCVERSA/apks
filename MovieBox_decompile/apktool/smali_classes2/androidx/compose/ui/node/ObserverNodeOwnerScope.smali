.class public final Landroidx/compose/ui/node/ObserverNodeOwnerScope;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroidx/compose/ui/node/z0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/node/ObserverNodeOwnerScope$a;
    }
.end annotation


# static fields
.field public static final b:Landroidx/compose/ui/node/ObserverNodeOwnerScope$a;

.field public static final c:I

.field private static final d:Lkotlin/jvm/functions/Function1;


# instance fields
.field private final a:Landroidx/compose/ui/node/u0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/compose/ui/node/ObserverNodeOwnerScope$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroidx/compose/ui/node/ObserverNodeOwnerScope$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/compose/ui/node/ObserverNodeOwnerScope;->b:Landroidx/compose/ui/node/ObserverNodeOwnerScope$a;

    .line 8
    .line 9
    const/16 v0, 0x8

    .line 10
    .line 11
    sput v0, Landroidx/compose/ui/node/ObserverNodeOwnerScope;->c:I

    .line 12
    .line 13
    sget-object v0, Landroidx/compose/ui/node/ObserverNodeOwnerScope$Companion$OnObserveReadsChanged$1;->INSTANCE:Landroidx/compose/ui/node/ObserverNodeOwnerScope$Companion$OnObserveReadsChanged$1;

    .line 14
    .line 15
    sput-object v0, Landroidx/compose/ui/node/ObserverNodeOwnerScope;->d:Lkotlin/jvm/functions/Function1;

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/node/u0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/ui/node/ObserverNodeOwnerScope;->a:Landroidx/compose/ui/node/u0;

    .line 5
    .line 6
    return-void
.end method

.method public static final synthetic a()Lkotlin/jvm/functions/Function1;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/ui/node/ObserverNodeOwnerScope;->d:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public final b()Landroidx/compose/ui/node/u0;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/ObserverNodeOwnerScope;->a:Landroidx/compose/ui/node/u0;

    .line 2
    .line 3
    return-object v0
.end method

.method public isValidOwnerScope()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/ObserverNodeOwnerScope;->a:Landroidx/compose/ui/node/u0;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/compose/ui/node/f;->getNode()Landroidx/compose/ui/f$c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroidx/compose/ui/f$c;->j1()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method
