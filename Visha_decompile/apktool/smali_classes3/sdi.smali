.class public final synthetic Lsdi;
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

    sget-object p0, Lbei;->a:Lwbi;

    new-instance p0, Ltbi;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ltbi;-><init>(Lvbi;)V

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Ltbi;->a(I)Ltbi;

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ltbi;->b(I)Ltbi;

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Ltbi;->c(I)Ltbi;

    sget-object v0, Lubi;->b:Lubi;

    invoke-virtual {p0, v0}, Ltbi;->d(Lubi;)Ltbi;

    invoke-virtual {p0}, Ltbi;->e()Lwbi;

    move-result-object p0

    return-object p0
.end method
