.class public final Lzc2;
.super Lo95;
.source "SourceFile"


# instance fields
.field public final f:Luc2;


# direct methods
.method public constructor <init>(Luc2;)V
    .locals 0

    invoke-direct {p0}, Lo95;-><init>()V

    iput-object p1, p0, Lzc2;->f:Luc2;

    return-void
.end method


# virtual methods
.method public u()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public v(Ljava/lang/Throwable;)V
    .locals 0

    iget-object p0, p0, Lzc2;->f:Luc2;

    invoke-interface {p0}, Luc2;->dispose()V

    return-void
.end method
