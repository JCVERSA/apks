.class public abstract Ltp3;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltp3$a;,
        Ltp3$b;,
        Ltp3$c;,
        Ltp3$d;,
        Ltp3$e;
    }
.end annotation


# static fields
.field public static final c:Ltp3$a;


# instance fields
.field public final a:I

.field public final b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ltp3$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ltp3$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Ltp3;->c:Ltp3$a;

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Ltp3;->a:I

    .line 4
    iput-boolean p2, p0, Ltp3;->b:Z

    return-void
.end method

.method public synthetic constructor <init>(IZLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ltp3;-><init>(IZ)V

    return-void
.end method
