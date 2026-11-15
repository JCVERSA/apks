.class public final Lxmf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbmh;


# instance fields
.field public final a:Lzlf;

.field public b:Landroid/content/Context;

.field public c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lzlf;Ldnf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxmf;->a:Lzlf;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Landroid/content/Context;)Lbmh;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lxmf;->b:Landroid/content/Context;

    return-object p0
.end method

.method public final synthetic zza(Ljava/lang/String;)Lbmh;
    .locals 0

    iput-object p1, p0, Lxmf;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final zzc()Lcmh;
    .locals 3

    iget-object v0, p0, Lxmf;->b:Landroid/content/Context;

    const-class v1, Landroid/content/Context;

    invoke-static {v0, v1}, Lpyi;->c(Ljava/lang/Object;Ljava/lang/Class;)V

    new-instance v0, Lymf;

    iget-object v1, p0, Lxmf;->a:Lzlf;

    iget-object v2, p0, Lxmf;->b:Landroid/content/Context;

    iget-object p0, p0, Lxmf;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p0}, Lymf;-><init>(Lzlf;Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method
