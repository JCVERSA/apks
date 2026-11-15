.class public final synthetic Lfai;
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

    check-cast p1, Liei;

    sget-object p0, Lhai;->a:Lbhi;

    invoke-static {}, Llgi;->c()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1}, Llgi;->b(Liei;)Lq8i;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ldri;->b(Liei;)Lq8i;

    move-result-object p0

    :goto_0
    return-object p0
.end method
