.class public final Lby2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:J

.field public b:Ljava/lang/String;

.field public final c:J

.field public d:J

.field public e:J

.field public f:J


# direct methods
.method public constructor <init>(JLjava/lang/String;JJJJ)V
    .locals 1

    const-string v0, "taskId"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lby2;->a:J

    .line 3
    iput-object p3, p0, Lby2;->b:Ljava/lang/String;

    .line 4
    iput-wide p4, p0, Lby2;->c:J

    .line 5
    iput-wide p6, p0, Lby2;->d:J

    .line 6
    iput-wide p8, p0, Lby2;->e:J

    .line 7
    iput-wide p10, p0, Lby2;->f:J

    return-void
.end method

.method public synthetic constructor <init>(JLjava/lang/String;JJJJILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 15

    and-int/lit8 v0, p12, 0x1

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    move-wide v4, v1

    goto :goto_0

    :cond_0
    move-wide/from16 v4, p1

    :goto_0
    and-int/lit8 v0, p12, 0x8

    if-eqz v0, :cond_1

    move-wide v9, v1

    goto :goto_1

    :cond_1
    move-wide/from16 v9, p6

    :goto_1
    and-int/lit8 v0, p12, 0x10

    if-eqz v0, :cond_2

    move-wide v11, v1

    goto :goto_2

    :cond_2
    move-wide/from16 v11, p8

    :goto_2
    and-int/lit8 v0, p12, 0x20

    if-eqz v0, :cond_3

    move-wide v13, v1

    goto :goto_3

    :cond_3
    move-wide/from16 v13, p10

    :goto_3
    move-object v3, p0

    move-object/from16 v6, p3

    move-wide/from16 v7, p4

    .line 8
    invoke-direct/range {v3 .. v14}, Lby2;-><init>(JLjava/lang/String;JJJJ)V

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    iget-wide v0, p0, Lby2;->c:J

    return-wide v0
.end method

.method public final b()J
    .locals 2

    iget-wide v0, p0, Lby2;->f:J

    return-wide v0
.end method

.method public final c()J
    .locals 2

    iget-wide v0, p0, Lby2;->a:J

    return-wide v0
.end method

.method public final d()J
    .locals 2

    iget-wide v0, p0, Lby2;->d:J

    return-wide v0
.end method

.method public final e()J
    .locals 2

    iget-wide v0, p0, Lby2;->e:J

    return-wide v0
.end method

.method public final f()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lby2;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final g(J)V
    .locals 0

    iput-wide p1, p0, Lby2;->a:J

    return-void
.end method

.method public final h(J)V
    .locals 0

    iput-wide p1, p0, Lby2;->d:J

    return-void
.end method
