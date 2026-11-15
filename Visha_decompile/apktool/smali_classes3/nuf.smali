.class public final Lnuf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv7i;


# instance fields
.field public final synthetic a:Lv7i;

.field public final synthetic b:Louf;


# direct methods
.method public constructor <init>(Louf;Lv7i;)V
    .locals 0

    iput-object p2, p0, Lnuf;->a:Lv7i;

    iput-object p1, p0, Lnuf;->b:Louf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lnuf;->b:Louf;

    invoke-static {v0}, Louf;->d(Louf;)V

    iget-object p0, p0, Lnuf;->a:Lv7i;

    invoke-interface {p0, p1}, Lv7i;->zza(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lnuf;->b:Louf;

    check-cast p1, Lbuf;

    invoke-static {v0}, Louf;->d(Louf;)V

    iget-object p0, p0, Lnuf;->a:Lv7i;

    invoke-interface {p0, p1}, Lv7i;->zzb(Ljava/lang/Object;)V

    return-void
.end method
