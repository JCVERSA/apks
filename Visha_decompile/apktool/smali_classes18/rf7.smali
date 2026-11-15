.class public final Lrf7;
.super Lah;
.source "SourceFile"


# instance fields
.field public final b:Ljava/lang/Object;

.field public final c:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lah;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lrf7;->b:Ljava/lang/Object;

    iput p2, p0, Lrf7;->c:I

    return-void
.end method


# virtual methods
.method public b()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public c(ILjava/lang/Object;)V
    .locals 0

    const-string p0, "value"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public final f()I
    .locals 0

    iget p0, p0, Lrf7;->c:I

    return p0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lrf7;->c:I

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lrf7;->b:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lrf7$a;

    invoke-direct {v0, p0}, Lrf7$a;-><init>(Lrf7;)V

    return-object v0
.end method

.method public final k()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lrf7;->b:Ljava/lang/Object;

    return-object p0
.end method
