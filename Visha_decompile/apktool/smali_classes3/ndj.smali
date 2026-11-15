.class public final synthetic Lndj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Liog;


# instance fields
.field public final synthetic a:Lraj;

.field public final synthetic b:Lzhf;


# direct methods
.method public synthetic constructor <init>(Lraj;Lzhf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lndj;->a:Lraj;

    iput-object p2, p0, Lndj;->b:Lzhf;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Ltaj;

    iget-object v0, p0, Lndj;->a:Lraj;

    iget-object p0, p0, Lndj;->b:Lzhf;

    invoke-interface {p1, v0, p0}, Ltaj;->g(Lraj;Lzhf;)V

    iget p0, p0, Lzhf;->a:I

    return-void
.end method
