.class public final Landroidx/compose/runtime/c2;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private a:Landroidx/compose/runtime/b2;

.field private b:Landroidx/compose/runtime/c;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Landroidx/compose/runtime/b2;Landroidx/compose/runtime/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/runtime/c2;->a:Landroidx/compose/runtime/b2;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/runtime/c2;->b:Landroidx/compose/runtime/c;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()Landroidx/compose/runtime/c;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/c2;->b:Landroidx/compose/runtime/c;

    .line 2
    .line 3
    return-object v0
.end method

.method public final b()Landroidx/compose/runtime/b2;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/c2;->a:Landroidx/compose/runtime/b2;

    .line 2
    .line 3
    return-object v0
.end method
