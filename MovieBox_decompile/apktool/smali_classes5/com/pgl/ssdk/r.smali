.class public Lcom/pgl/ssdk/r;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private final a:J

.field private final b:J

.field private final c:I

.field private final d:J

.field private final e:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(JJIJLjava/nio/ByteBuffer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lcom/pgl/ssdk/r;->a:J

    .line 5
    .line 6
    iput-wide p3, p0, Lcom/pgl/ssdk/r;->b:J

    .line 7
    .line 8
    iput p5, p0, Lcom/pgl/ssdk/r;->c:I

    .line 9
    .line 10
    iput-wide p6, p0, Lcom/pgl/ssdk/r;->d:J

    .line 11
    .line 12
    iput-object p8, p0, Lcom/pgl/ssdk/r;->e:Ljava/nio/ByteBuffer;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/pgl/ssdk/r;->a:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/pgl/ssdk/r;->c:I

    .line 2
    .line 3
    return v0
.end method

.method public c()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/pgl/ssdk/r;->b:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public d()Ljava/nio/ByteBuffer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/pgl/ssdk/r;->e:Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    return-object v0
.end method

.method public e()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/pgl/ssdk/r;->d:J

    .line 2
    .line 3
    return-wide v0
.end method
