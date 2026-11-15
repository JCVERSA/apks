.class public final Lx7e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:I

.field public c:I

.field public d:Z

.field public e:I

.field public f:I


# direct methods
.method public synthetic constructor <init>(Lz7e;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lx7e;->a:Z

    const/4 v0, -0x1

    iput v0, p0, Lx7e;->b:I

    iput v0, p0, Lx7e;->c:I

    iput-boolean p1, p0, Lx7e;->d:Z

    const/4 p1, 0x2

    iput p1, p0, Lx7e;->e:I

    const/4 p1, 0x0

    iput p1, p0, Lx7e;->f:I

    return-void
.end method
