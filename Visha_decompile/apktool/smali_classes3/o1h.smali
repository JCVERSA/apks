.class public final synthetic Lo1h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkf;


# instance fields
.field public final synthetic b:Lxjg;

.field public final synthetic c:Lejf;


# direct methods
.method public synthetic constructor <init>(Lxjg;Lejf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo1h;->b:Lxjg;

    iput-object p2, p0, Lo1h;->c:Lejf;

    return-void
.end method


# virtual methods
.method public final zza(ZILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lo1h;->b:Lxjg;

    invoke-virtual {p1}, Lxjg;->b()V

    iget-object p0, p0, Lo1h;->c:Lejf;

    invoke-interface {p0}, Lejf;->zzab()V

    invoke-interface {p0}, Lejf;->zzN()Likf;

    move-result-object p0

    invoke-interface {p0}, Likf;->zzs()V

    return-void
.end method
