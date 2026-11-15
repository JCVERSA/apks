.class public final synthetic Lsxg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm2i;


# instance fields
.field public final synthetic a:Lejf;

.field public final synthetic b:Lhmh;

.field public final synthetic c:Lfrf;


# direct methods
.method public synthetic constructor <init>(Ltxg;Lejf;Lhmh;Lfrf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lsxg;->a:Lejf;

    iput-object p3, p0, Lsxg;->b:Lhmh;

    iput-object p4, p0, Lsxg;->c:Lfrf;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object p1, p0, Lsxg;->a:Lejf;

    iget-object v0, p0, Lsxg;->b:Lhmh;

    iget-boolean v0, v0, Lhmh;->M:Z

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lejf;->zzah()V

    :cond_0
    iget-object p0, p0, Lsxg;->c:Lfrf;

    invoke-interface {p1}, Lejf;->zzab()V

    invoke-interface {p1}, Lejf;->onPause()V

    invoke-virtual {p0}, Lfrf;->h()Lnrf;

    move-result-object p0

    return-object p0
.end method
