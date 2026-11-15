.class public final synthetic Lhm/b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic a:Lhm/c;

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lhm/c;III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lhm/b;->a:Lhm/c;

    .line 5
    .line 6
    iput p2, p0, Lhm/b;->b:I

    .line 7
    .line 8
    iput p3, p0, Lhm/b;->c:I

    .line 9
    .line 10
    iput p4, p0, Lhm/b;->d:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, Lhm/b;->a:Lhm/c;

    .line 2
    .line 3
    iget v1, p0, Lhm/b;->b:I

    .line 4
    .line 5
    iget v2, p0, Lhm/b;->c:I

    .line 6
    .line 7
    iget v3, p0, Lhm/b;->d:I

    .line 8
    .line 9
    move-object v4, p1

    .line 10
    check-cast v4, Landroidx/compose/runtime/i;

    .line 11
    .line 12
    check-cast p2, Ljava/lang/Integer;

    .line 13
    .line 14
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 15
    .line 16
    .line 17
    move-result v5

    .line 18
    invoke-static/range {v0 .. v5}, Lhm/c;->b(Lhm/c;IIILandroidx/compose/runtime/i;I)Lkotlin/Unit;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1
.end method
