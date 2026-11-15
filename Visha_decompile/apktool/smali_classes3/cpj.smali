.class public final Lcpj;
.super Lw4f;
.source "SourceFile"


# static fields
.field public static final g:Ljava/lang/Object;


# instance fields
.field public final b:J

.field public final c:J

.field public final d:Z

.field public final e:Lcme;

.field public final f:Lwfe;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcpj;->g:Ljava/lang/Object;

    new-instance v0, Lv8e;

    invoke-direct {v0}, Lv8e;-><init>()V

    const-string v1, "SinglePeriodTimeline"

    invoke-virtual {v0, v1}, Lv8e;->a(Ljava/lang/String;)Lv8e;

    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lv8e;->b(Landroid/net/Uri;)Lv8e;

    invoke-virtual {v0}, Lv8e;->c()Lcme;

    return-void
.end method

.method public constructor <init>(JJJJJJJZZZLjava/lang/Object;Lcme;Lwfe;)V
    .locals 3

    move-object v0, p0

    invoke-direct {p0}, Lw4f;-><init>()V

    move-wide v1, p7

    iput-wide v1, v0, Lcpj;->b:J

    move-wide v1, p9

    iput-wide v1, v0, Lcpj;->c:J

    move/from16 v1, p15

    iput-boolean v1, v0, Lcpj;->d:Z

    invoke-virtual/range {p19 .. p19}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v1, p19

    iput-object v1, v0, Lcpj;->e:Lcme;

    move-object/from16 v1, p20

    iput-object v1, v0, Lcpj;->f:Lwfe;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)I
    .locals 0

    sget-object p0, Lcpj;->g:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

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

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Ln7g;->a(III)I

    if-eqz p3, :cond_0

    sget-object p1, Lcpj;->g:Ljava/lang/Object;

    :goto_0
    move-object v2, p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :goto_1
    iget-wide v4, p0, Lcpj;->b:J

    sget-object v8, Lewe;->e:Lewe;

    const/4 v9, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const-wide/16 v6, 0x0

    move-object v0, p2

    invoke-virtual/range {v0 .. v9}, Ly2f;->i(Ljava/lang/Object;Ljava/lang/Object;IJJLewe;Z)Ly2f;

    return-object p2
.end method

.method public final e(ILe4f;J)Le4f;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const/4 v2, 0x0

    const/4 v3, 0x1

    move/from16 v4, p1

    invoke-static {v4, v2, v3}, Ln7g;->a(III)I

    sget-object v2, Le4f;->o:Ljava/lang/Object;

    iget-object v3, v0, Lcpj;->e:Lcme;

    iget-wide v4, v0, Lcpj;->c:J

    move-wide/from16 v16, v4

    iget-object v13, v0, Lcpj;->f:Lwfe;

    iget-boolean v11, v0, Lcpj;->d:Z

    const/16 v19, 0x0

    const-wide/16 v20, 0x0

    const/4 v4, 0x0

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    move-wide v7, v9

    move-wide v5, v9

    const/4 v12, 0x0

    const-wide/16 v14, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v1 .. v21}, Le4f;->a(Ljava/lang/Object;Lcme;Ljava/lang/Object;JJJZZLwfe;JJIIJ)Le4f;

    return-object p2
.end method

.method public final f(I)Ljava/lang/Object;
    .locals 1

    const/4 p0, 0x0

    const/4 v0, 0x1

    invoke-static {p1, p0, v0}, Ln7g;->a(III)I

    sget-object p0, Lcpj;->g:Ljava/lang/Object;

    return-object p0
.end method
