.class public final Lvmj;
.super Lw4f;
.source "SourceFile"


# instance fields
.field public final b:Lcme;


# direct methods
.method public constructor <init>(Lcme;)V
    .locals 0

    invoke-direct {p0}, Lw4f;-><init>()V

    iput-object p1, p0, Lvmj;->b:Lcme;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)I
    .locals 0

    sget-object p0, Lumj;->e:Ljava/lang/Object;

    if-ne p1, p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public final b()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final c()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final d(ILy2f;Z)Ly2f;
    .locals 10

    const/4 p0, 0x0

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    move-object v1, p1

    goto :goto_0

    :cond_0
    move-object v1, p0

    :goto_0
    if-eqz p3, :cond_1

    sget-object p0, Lumj;->e:Ljava/lang/Object;

    :cond_1
    move-object v2, p0

    sget-object v8, Lewe;->e:Lewe;

    const/4 v9, 0x1

    const/4 v3, 0x0

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v6, 0x0

    move-object v0, p2

    invoke-virtual/range {v0 .. v9}, Ly2f;->i(Ljava/lang/Object;Ljava/lang/Object;IJJLewe;Z)Ly2f;

    return-object p2
.end method

.method public final e(ILe4f;J)Le4f;
    .locals 21

    move-object/from16 v15, p2

    move-object/from16 v0, p2

    sget-object v1, Le4f;->o:Ljava/lang/Object;

    move-object/from16 v2, p0

    iget-object v2, v2, Lvmj;->b:Lcme;

    const/16 v18, 0x0

    const-wide/16 v19, 0x0

    const/4 v3, 0x0

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    move-wide v4, v8

    move-wide v6, v8

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    move-wide/from16 v15, v16

    const/16 v17, 0x0

    invoke-virtual/range {v0 .. v20}, Le4f;->a(Ljava/lang/Object;Lcme;Ljava/lang/Object;JJJZZLwfe;JJIIJ)Le4f;

    const/4 v0, 0x1

    move-object/from16 v1, p2

    iput-boolean v0, v1, Le4f;->j:Z

    return-object v1
.end method

.method public final f(I)Ljava/lang/Object;
    .locals 0

    sget-object p0, Lumj;->e:Ljava/lang/Object;

    return-object p0
.end method
