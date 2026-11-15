.class public final synthetic Lrcj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Liog;


# instance fields
.field public final synthetic a:Lraj;

.field public final synthetic b:Lxmj;


# direct methods
.method public synthetic constructor <init>(Lraj;Lxmj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrcj;->a:Lraj;

    iput-object p2, p0, Lrcj;->b:Lxmj;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Ltaj;

    iget-object v0, p0, Lrcj;->a:Lraj;

    iget-object p0, p0, Lrcj;->b:Lxmj;

    invoke-interface {p1, v0, p0}, Ltaj;->l(Lraj;Lxmj;)V

    return-void
.end method
