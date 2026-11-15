.class public final synthetic Ltpf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk7i;


# instance fields
.field public final synthetic a:Lwpf;

.field public final synthetic b:Landroid/net/Uri$Builder;


# direct methods
.method public synthetic constructor <init>(Lwpf;Landroid/net/Uri$Builder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltpf;->a:Lwpf;

    iput-object p2, p0, Ltpf;->b:Landroid/net/Uri$Builder;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lim5;
    .locals 1

    iget-object v0, p0, Ltpf;->a:Lwpf;

    iget-object p0, p0, Ltpf;->b:Landroid/net/Uri$Builder;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v0, p0, p1}, Lwpf;->d(Lwpf;Landroid/net/Uri$Builder;Ljava/lang/Throwable;)Lim5;

    move-result-object p0

    return-object p0
.end method
