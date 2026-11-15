.class public final synthetic Lxpj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw2i;


# instance fields
.field public final synthetic b:Lrqj;

.field public final synthetic c:Lhqj;


# direct methods
.method public synthetic constructor <init>(Lrqj;Lhqj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxpj;->b:Lrqj;

    iput-object p2, p0, Lxpj;->c:Lhqj;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lxpj;->b:Lrqj;

    iget-object p0, p0, Lxpj;->c:Lhqj;

    check-cast p1, Lerj;

    invoke-static {v0, p0, p1}, Lrqj;->s(Lrqj;Lhqj;Lerj;)Z

    move-result p0

    return p0
.end method
