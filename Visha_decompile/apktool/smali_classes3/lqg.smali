.class public final synthetic Llqg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:Lfre;

.field public final synthetic c:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lfre;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llqg;->b:Lfre;

    iput-object p2, p0, Llqg;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Llqg;->b:Lfre;

    invoke-virtual {v0}, Lfre;->c()Lare;

    move-result-object v0

    iget-object p0, p0, Llqg;->c:Landroid/content/Context;

    invoke-interface {v0, p0}, Lare;->zzg(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
