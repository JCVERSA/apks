.class public abstract Lxbe;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lrae;


# direct methods
.method public constructor <init>(Lrae;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxbe;->a:Lrae;

    return-void
.end method


# virtual methods
.method public abstract a(Lu4h;)Z
.end method

.method public abstract b(Lu4h;J)Z
.end method

.method public final c(Lu4h;J)Z
    .locals 1

    invoke-virtual {p0, p1}, Lxbe;->a(Lu4h;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lxbe;->b(Lu4h;J)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
