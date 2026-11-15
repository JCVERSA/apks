.class public Lam9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lffa;


# instance fields
.field public final b:Ljava/util/Date;

.field public final c:I


# direct methods
.method public constructor <init>(Ljava/sql/Date;)V
    .locals 1

    const/4 v0, 0x2

    .line 1
    invoke-direct {p0, p1, v0}, Lam9;-><init>(Ljava/util/Date;I)V

    return-void
.end method

.method public constructor <init>(Ljava/sql/Time;)V
    .locals 1

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p1, v0}, Lam9;-><init>(Ljava/util/Date;I)V

    return-void
.end method

.method public constructor <init>(Ljava/sql/Timestamp;)V
    .locals 1

    const/4 v0, 0x3

    .line 3
    invoke-direct {p0, p1, v0}, Lam9;-><init>(Ljava/util/Date;I)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Date;I)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 5
    iput-object p1, p0, Lam9;->b:Ljava/util/Date;

    .line 6
    iput p2, p0, Lam9;->c:I

    return-void

    .line 7
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "date == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public f()Ljava/util/Date;
    .locals 0

    iget-object p0, p0, Lam9;->b:Ljava/util/Date;

    return-object p0
.end method

.method public j()I
    .locals 0

    iget p0, p0, Lam9;->c:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lam9;->b:Ljava/util/Date;

    invoke-virtual {p0}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
