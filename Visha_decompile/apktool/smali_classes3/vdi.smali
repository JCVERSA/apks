.class public final synthetic Lvdi;
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
    .locals 2

    sget-object p0, Lbei;->a:Lwbi;

    new-instance p0, Lxai;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lxai;-><init>(Labi;)V

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lxai;->a(I)Lxai;

    const/16 v1, 0x20

    invoke-virtual {p0, v1}, Lxai;->c(I)Lxai;

    invoke-virtual {p0, v0}, Lxai;->e(I)Lxai;

    invoke-virtual {p0, v0}, Lxai;->d(I)Lxai;

    sget-object v0, Lyai;->d:Lyai;

    invoke-virtual {p0, v0}, Lxai;->b(Lyai;)Lxai;

    sget-object v0, Lzai;->b:Lzai;

    invoke-virtual {p0, v0}, Lxai;->f(Lzai;)Lxai;

    invoke-virtual {p0}, Lxai;->g()Lbbi;

    move-result-object p0

    return-object p0
.end method
