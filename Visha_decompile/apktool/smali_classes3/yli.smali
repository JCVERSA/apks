.class public final synthetic Lyli;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leki;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .locals 1

    sget-object p0, Lzli;->a:Ljli;

    new-instance p0, Lpki;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lpki;-><init>(Lrki;)V

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lpki;->a(I)Lpki;

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lpki;->b(I)Lpki;

    sget-object v0, Lqki;->b:Lqki;

    invoke-virtual {p0, v0}, Lpki;->c(Lqki;)Lpki;

    invoke-virtual {p0}, Lpki;->d()Lski;

    move-result-object p0

    return-object p0
.end method
