.class public final Lbrh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv7i;


# instance fields
.field public final synthetic a:Lrqh;

.field public final synthetic b:Lcrh;


# direct methods
.method public constructor <init>(Lcrh;Lrqh;)V
    .locals 0

    iput-object p2, p0, Lbrh;->a:Lrqh;

    iput-object p1, p0, Lbrh;->b:Lcrh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lbrh;->b:Lcrh;

    iget-object v0, v0, Lcrh;->f:Lerh;

    invoke-static {v0}, Lerh;->c(Lerh;)Lfrh;

    move-result-object v0

    iget-object p0, p0, Lbrh;->a:Lrqh;

    invoke-interface {v0, p0, p1}, Lfrh;->n(Lrqh;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzb(Ljava/lang/Object;)V
    .locals 0

    iget-object p1, p0, Lbrh;->b:Lcrh;

    iget-object p1, p1, Lcrh;->f:Lerh;

    invoke-static {p1}, Lerh;->c(Lerh;)Lfrh;

    move-result-object p1

    iget-object p0, p0, Lbrh;->a:Lrqh;

    invoke-interface {p1, p0}, Lfrh;->k(Lrqh;)V

    return-void
.end method
