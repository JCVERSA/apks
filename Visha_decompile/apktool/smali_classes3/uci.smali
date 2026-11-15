.class public final synthetic Luci;
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

    check-cast p1, Lgdi;

    sget-object p0, Lvci;->a:Lc9i;

    invoke-virtual {p1}, Lgdi;->d()Lldi;

    move-result-object p0

    invoke-virtual {p0}, Lldi;->d()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lgdi;->d()Lldi;

    move-result-object p1

    invoke-virtual {p1}, Lldi;->b()Ljai;

    invoke-static {p0}, Ln9i;->a(Ljava/lang/String;)Lm9i;

    const/4 p0, 0x0

    throw p0
.end method
