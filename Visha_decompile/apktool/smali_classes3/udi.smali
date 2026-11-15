.class public final synthetic Ludi;
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

    new-instance p0, Libi;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Libi;-><init>(Lkbi;)V

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Libi;->a(I)Libi;

    const/16 v1, 0x20

    invoke-virtual {p0, v1}, Libi;->b(I)Libi;

    invoke-virtual {p0, v0}, Libi;->c(I)Libi;

    sget-object v0, Ljbi;->b:Ljbi;

    invoke-virtual {p0, v0}, Libi;->d(Ljbi;)Libi;

    invoke-virtual {p0}, Libi;->e()Llbi;

    move-result-object p0

    return-object p0
.end method
