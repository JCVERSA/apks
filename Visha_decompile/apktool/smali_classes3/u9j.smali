.class public final Lu9j;
.super Lpmj;
.source "SourceFile"


# instance fields
.field public final c:Le4f;


# direct methods
.method public constructor <init>(Lv9j;Lw4f;)V
    .locals 0

    invoke-direct {p0, p2}, Lpmj;-><init>(Lw4f;)V

    new-instance p1, Le4f;

    invoke-direct {p1}, Le4f;-><init>()V

    iput-object p1, p0, Lu9j;->c:Le4f;

    return-void
.end method


# virtual methods
.method public final d(ILy2f;Z)Ly2f;
    .locals 11

    iget-object v0, p0, Lpmj;->b:Lw4f;

    invoke-virtual {v0, p1, p2, p3}, Lw4f;->d(ILy2f;Z)Ly2f;

    move-result-object p1

    iget p3, p1, Ly2f;->c:I

    iget-object p0, p0, Lu9j;->c:Le4f;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p3, p0, v1, v2}, Lw4f;->e(ILe4f;J)Le4f;

    move-result-object p0

    invoke-virtual {p0}, Le4f;->b()Z

    move-result p0

    if-eqz p0, :cond_0

    iget-object v2, p2, Ly2f;->a:Ljava/lang/Object;

    iget-object v3, p2, Ly2f;->b:Ljava/lang/Object;

    iget v4, p2, Ly2f;->c:I

    iget-wide v5, p2, Ly2f;->d:J

    sget-object v9, Lewe;->e:Lewe;

    const/4 v10, 0x1

    const-wide/16 v7, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v10}, Ly2f;->i(Ljava/lang/Object;Ljava/lang/Object;IJJLewe;Z)Ly2f;

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    iput-boolean p0, p1, Ly2f;->f:Z

    :goto_0
    return-object p1
.end method
