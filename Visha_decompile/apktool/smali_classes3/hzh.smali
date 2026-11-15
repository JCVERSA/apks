.class public abstract Lhzh;
.super La2i;
.source "SourceFile"


# instance fields
.field public b:I


# direct methods
.method public synthetic constructor <init>([BIIZLf1i;)V
    .locals 0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, La2i;-><init>(Lf1i;)V

    const p1, 0x7fffffff

    iput p1, p0, Lhzh;->b:I

    return-void
.end method


# virtual methods
.method public final c(I)I
    .locals 1

    iget p1, p0, Lhzh;->b:I

    const/4 v0, 0x0

    iput v0, p0, Lhzh;->b:I

    return p1
.end method
