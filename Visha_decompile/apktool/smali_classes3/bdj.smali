.class public final synthetic Lbdj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Liog;


# instance fields
.field public final synthetic a:Lraj;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lraj;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbdj;->a:Lraj;

    iput p2, p0, Lbdj;->b:I

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Ltaj;

    iget-object v0, p0, Lbdj;->a:Lraj;

    iget p0, p0, Lbdj;->b:I

    invoke-interface {p1, v0, p0}, Ltaj;->o(Lraj;I)V

    return-void
.end method
