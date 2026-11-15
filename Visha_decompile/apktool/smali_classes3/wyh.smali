.class public abstract Lwyh;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lwyh;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lmyh;

    invoke-direct {v0}, Lmyh;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Lmyh;->e(Ljava/lang/String;)Lvyh;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lvyh;->a(Z)Lvyh;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lvyh;->c(I)Lvyh;

    invoke-virtual {v0, v3}, Lvyh;->d(I)Lvyh;

    invoke-virtual {v0}, Lvyh;->b()Lwyh;

    move-result-object v0

    sput-object v0, Lwyh;->a:Lwyh;

    new-instance v0, Lmyh;

    invoke-direct {v0}, Lmyh;-><init>()V

    invoke-virtual {v0, v1}, Lmyh;->e(Ljava/lang/String;)Lvyh;

    invoke-virtual {v0, v2}, Lvyh;->a(Z)Lvyh;

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Lvyh;->c(I)Lvyh;

    invoke-virtual {v0, v3}, Lvyh;->d(I)Lvyh;

    invoke-virtual {v0}, Lvyh;->b()Lwyh;

    new-instance v0, Lmyh;

    invoke-direct {v0}, Lmyh;-><init>()V

    invoke-virtual {v0, v1}, Lmyh;->e(Ljava/lang/String;)Lvyh;

    invoke-virtual {v0, v2}, Lvyh;->a(Z)Lvyh;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lvyh;->c(I)Lvyh;

    invoke-virtual {v0, v3}, Lvyh;->d(I)Lvyh;

    invoke-virtual {v0}, Lvyh;->b()Lwyh;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Lkyh;
.end method

.method public abstract b()Llyh;
.end method

.method public abstract c()Ljava/lang/String;
.end method

.method public abstract d()Z
.end method

.method public abstract e()I
.end method

.method public abstract f()I
.end method
