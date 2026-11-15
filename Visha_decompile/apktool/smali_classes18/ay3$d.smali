.class public abstract Lay3$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lay3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "d"
.end annotation


# instance fields
.field public final a:I

.field public final b:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lay3$d;->a:I

    .line 4
    iput p2, p0, Lay3$d;->b:I

    return-void
.end method

.method public synthetic constructor <init>(IILay3$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lay3$d;-><init>(II)V

    return-void
.end method

.method public static a(Lay3$d;[Lkotlin/reflect/jvm/internal/impl/protobuf/f$a;)Lay3$d;
    .locals 1

    iget v0, p0, Lay3$d;->a:I

    iget p0, p0, Lay3$d;->b:I

    add-int/2addr v0, p0

    new-instance p0, Lay3$c;

    invoke-direct {p0, v0, p1}, Lay3$c;-><init>(I[Lkotlin/reflect/jvm/internal/impl/protobuf/f$a;)V

    return-object p0
.end method

.method public static b(Lay3$d;)Lay3$b;
    .locals 1

    iget v0, p0, Lay3$d;->a:I

    iget p0, p0, Lay3$d;->b:I

    add-int/2addr v0, p0

    new-instance p0, Lay3$b;

    invoke-direct {p0, v0}, Lay3$b;-><init>(I)V

    return-object p0
.end method

.method public static c()Lay3$b;
    .locals 2

    new-instance v0, Lay3$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lay3$b;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public abstract d(I)Ljava/lang/Object;
.end method

.method public abstract e(Ljava/lang/Object;)I
.end method
