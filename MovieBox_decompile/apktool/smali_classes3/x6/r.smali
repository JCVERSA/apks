.class public final Lx6/r;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field public a:J

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lx6/r;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lx6/r;->a:J

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lx6/r;->b:Ljava/lang/String;

    return-void
.end method
