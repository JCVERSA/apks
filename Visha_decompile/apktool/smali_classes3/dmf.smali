.class public final Ldmf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhhh;


# instance fields
.field public final a:Lzlf;

.field public b:Landroid/content/Context;

.field public c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lzlf;Ldnf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldmf;->a:Lzlf;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Landroid/content/Context;)Lhhh;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Ldmf;->b:Landroid/content/Context;

    return-object p0
.end method

.method public final bridge synthetic zza(Ljava/lang/String;)Lhhh;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Ldmf;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final zzc()Lihh;
    .locals 3

    iget-object v0, p0, Ldmf;->b:Landroid/content/Context;

    const-class v1, Landroid/content/Context;

    invoke-static {v0, v1}, Lpyi;->c(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Ldmf;->c:Ljava/lang/String;

    const-class v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lpyi;->c(Ljava/lang/Object;Ljava/lang/Class;)V

    new-instance v0, Lgmf;

    iget-object v1, p0, Ldmf;->a:Lzlf;

    iget-object v2, p0, Ldmf;->b:Landroid/content/Context;

    iget-object p0, p0, Ldmf;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p0}, Lgmf;-><init>(Lzlf;Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method
