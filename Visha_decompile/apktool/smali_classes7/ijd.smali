.class public Lijd;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:J

.field public final b:J


# direct methods
.method public constructor <init>(Landroid/content/Context;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lijd;->a:J

    iput-wide p4, p0, Lijd;->b:J

    return-void
.end method


# virtual methods
.method public a()Lfkd;
    .locals 7

    new-instance v6, Lj6d;

    iget-wide v2, p0, Lijd;->a:J

    iget-wide v4, p0, Lijd;->b:J

    const/4 v1, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lj6d;-><init>(Ljava/io/File;JJ)V

    return-object v6
.end method
