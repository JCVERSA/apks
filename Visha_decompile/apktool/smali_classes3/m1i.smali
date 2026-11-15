.class public abstract Lm1i;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static l()Ll1i;
    .locals 2

    new-instance v0, Lj0i;

    invoke-direct {v0}, Lj0i;-><init>()V

    const v1, 0x800053

    invoke-virtual {v0, v1}, Lj0i;->d(I)Ll1i;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {v0, v1}, Ll1i;->e(F)Ll1i;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ll1i;->c(I)Ll1i;

    invoke-virtual {v0, v1}, Ll1i;->f(I)Ll1i;

    return-object v0
.end method


# virtual methods
.method public abstract a()F
.end method

.method public abstract b()I
.end method

.method public abstract c()I
.end method

.method public abstract d()I
.end method

.method public abstract e()I
.end method

.method public abstract f()Landroid/os/IBinder;
.end method

.method public abstract g()Ljava/lang/String;
.end method

.method public abstract h()Ljava/lang/String;
.end method

.method public abstract i()Ljava/lang/String;
.end method

.method public abstract j()Ljava/lang/String;
.end method

.method public abstract k()Ljava/lang/String;
.end method
