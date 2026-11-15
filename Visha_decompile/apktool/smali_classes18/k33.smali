.class public final Lk33;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpc9;
.implements Lo33;


# instance fields
.field public final a:Lpc9;

.field public final b:I


# direct methods
.method public constructor <init>(Lpc9;I)V
    .locals 1

    const-string v0, "sequence"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk33;->a:Lpc9;

    iput p2, p0, Lk33;->b:I

    if-ltz p2, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "count must be non-negative, but was "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x2e

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final synthetic b(Lk33;)I
    .locals 0

    iget p0, p0, Lk33;->b:I

    return p0
.end method

.method public static final synthetic c(Lk33;)Lpc9;
    .locals 0

    iget-object p0, p0, Lk33;->a:Lpc9;

    return-object p0
.end method


# virtual methods
.method public a(I)Lpc9;
    .locals 1

    iget v0, p0, Lk33;->b:I

    add-int/2addr v0, p1

    if-gez v0, :cond_0

    new-instance v0, Lk33;

    invoke-direct {v0, p0, p1}, Lk33;-><init>(Lpc9;I)V

    goto :goto_0

    :cond_0
    new-instance p1, Lk33;

    iget-object p0, p0, Lk33;->a:Lpc9;

    invoke-direct {p1, p0, v0}, Lk33;-><init>(Lpc9;I)V

    move-object v0, p1

    :goto_0
    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lk33$a;

    invoke-direct {v0, p0}, Lk33$a;-><init>(Lk33;)V

    return-object v0
.end method
