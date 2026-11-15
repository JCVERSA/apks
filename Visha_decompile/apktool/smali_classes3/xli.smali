.class public final synthetic Lxli;
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

    new-instance p0, Lfli;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lfli;-><init>(Lili;)V

    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Lfli;->b(I)Lfli;

    invoke-virtual {p0, v0}, Lfli;->c(I)Lfli;

    sget-object v0, Lhli;->b:Lhli;

    invoke-virtual {p0, v0}, Lfli;->d(Lhli;)Lfli;

    sget-object v0, Lgli;->f:Lgli;

    invoke-virtual {p0, v0}, Lfli;->a(Lgli;)Lfli;

    invoke-virtual {p0}, Lfli;->e()Ljli;

    move-result-object p0

    return-object p0
.end method
