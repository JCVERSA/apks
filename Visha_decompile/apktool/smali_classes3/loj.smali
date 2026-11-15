.class public final Lloj;
.super Lpmj;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lpoj;Lw4f;)V
    .locals 0

    invoke-direct {p0, p2}, Lpmj;-><init>(Lw4f;)V

    return-void
.end method


# virtual methods
.method public final d(ILy2f;Z)Ly2f;
    .locals 0

    iget-object p0, p0, Lpmj;->b:Lw4f;

    invoke-virtual {p0, p1, p2, p3}, Lw4f;->d(ILy2f;Z)Ly2f;

    const/4 p0, 0x1

    iput-boolean p0, p2, Ly2f;->f:Z

    return-object p2
.end method

.method public final e(ILe4f;J)Le4f;
    .locals 0

    iget-object p0, p0, Lpmj;->b:Lw4f;

    invoke-virtual {p0, p1, p2, p3, p4}, Lw4f;->e(ILe4f;J)Le4f;

    const/4 p0, 0x1

    iput-boolean p0, p2, Le4f;->j:Z

    return-object p2
.end method
