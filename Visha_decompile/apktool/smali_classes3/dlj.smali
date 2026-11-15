.class public final Ldlj;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final e:Ldlj;


# instance fields
.field public final a:J

.field public final b:J

.field public final c:J

.field public final d:Ldbh;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v7, Ldlj;

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, v7

    move-wide v1, v5

    move-wide v3, v5

    invoke-direct/range {v0 .. v6}, Ldlj;-><init>(JJJ)V

    sput-object v7, Ldlj;->e:Ldlj;

    return-void
.end method

.method public constructor <init>(JJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Ldlj;->a:J

    iput-wide p3, p0, Ldlj;->b:J

    iput-wide p5, p0, Ldlj;->c:J

    new-instance p1, Ldbh;

    const/16 p2, 0xa

    invoke-direct {p1, p2}, Ldbh;-><init>(I)V

    iput-object p1, p0, Ldlj;->d:Ldbh;

    return-void
.end method
