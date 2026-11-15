.class Lcom/pgl/ssdk/h0$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pgl/ssdk/h0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field public a:J

.field public b:[F

.field public c:[F

.field public d:[F


# direct methods
.method public constructor <init>(J)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/pgl/ssdk/h0$a;->b:[F

    .line 6
    .line 7
    iput-object v0, p0, Lcom/pgl/ssdk/h0$a;->c:[F

    .line 8
    .line 9
    iput-object v0, p0, Lcom/pgl/ssdk/h0$a;->d:[F

    .line 10
    .line 11
    iput-wide p1, p0, Lcom/pgl/ssdk/h0$a;->a:J

    .line 12
    .line 13
    return-void
.end method
