.class public Lzda;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Leoj;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Leoj;

    invoke-direct {v0}, Leoj;-><init>()V

    iput-object v0, p0, Lzda;->a:Leoj;

    return-void
.end method


# virtual methods
.method public a()Lxda;
    .locals 0

    iget-object p0, p0, Lzda;->a:Leoj;

    return-object p0
.end method

.method public b(Ljava/lang/Exception;)V
    .locals 0

    iget-object p0, p0, Lzda;->a:Leoj;

    invoke-virtual {p0, p1}, Leoj;->s(Ljava/lang/Exception;)V

    return-void
.end method

.method public c(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lzda;->a:Leoj;

    invoke-virtual {p0, p1}, Leoj;->t(Ljava/lang/Object;)V

    return-void
.end method

.method public d(Ljava/lang/Exception;)Z
    .locals 0

    iget-object p0, p0, Lzda;->a:Leoj;

    invoke-virtual {p0, p1}, Leoj;->v(Ljava/lang/Exception;)Z

    move-result p0

    return p0
.end method

.method public e(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lzda;->a:Leoj;

    invoke-virtual {p0, p1}, Leoj;->w(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
