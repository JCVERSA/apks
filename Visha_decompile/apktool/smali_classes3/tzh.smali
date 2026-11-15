.class public final Ltzh;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ltzh;->a:Ljava/lang/String;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ltzh;->b:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltzh;->a:Ljava/lang/String;

    iput-wide p2, p0, Ltzh;->b:J

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    iget-wide v0, p0, Ltzh;->b:J

    return-wide v0
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ltzh;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final c()Z
    .locals 4

    iget-object v0, p0, Ltzh;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Ltzh;->b:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
