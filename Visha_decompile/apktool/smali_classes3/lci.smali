.class public final synthetic Llci;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgji;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lb9i;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkci;

    sget-object p0, Lnci;->a:Ljji;

    invoke-static {}, Lofi;->e()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1}, Lofi;->b(Lkci;)Lq8i;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ldqi;->b(Lkci;)Lq8i;

    move-result-object p0

    :goto_0
    return-object p0
.end method
