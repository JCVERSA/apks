.class public final synthetic Lspf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk7i;


# instance fields
.field public final synthetic a:Lwpf;

.field public final synthetic b:Landroid/net/Uri$Builder;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Landroid/view/InputEvent;


# direct methods
.method public synthetic constructor <init>(Lwpf;Landroid/net/Uri$Builder;Ljava/lang/String;Landroid/view/InputEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lspf;->a:Lwpf;

    iput-object p2, p0, Lspf;->b:Landroid/net/Uri$Builder;

    iput-object p3, p0, Lspf;->c:Ljava/lang/String;

    iput-object p4, p0, Lspf;->d:Landroid/view/InputEvent;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lim5;
    .locals 3

    iget-object v0, p0, Lspf;->a:Lwpf;

    iget-object v1, p0, Lspf;->b:Landroid/net/Uri$Builder;

    iget-object v2, p0, Lspf;->c:Ljava/lang/String;

    iget-object p0, p0, Lspf;->d:Landroid/view/InputEvent;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, v1, v2, p0, p1}, Lwpf;->b(Lwpf;Landroid/net/Uri$Builder;Ljava/lang/String;Landroid/view/InputEvent;Ljava/lang/Integer;)Lim5;

    move-result-object p0

    return-object p0
.end method
