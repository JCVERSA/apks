.class public final synthetic Lt5f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lje8;


# instance fields
.field public final synthetic a:Ln3f;


# direct methods
.method public synthetic constructor <init>(Ln3f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt5f;->a:Ln3f;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Ln3f;

    instance-of v0, p1, Lv5f;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lt5f;->a:Ln3f;

    check-cast p1, Lv5f;

    invoke-static {p1}, Lv5f;->b(Lv5f;)Ln3f;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
