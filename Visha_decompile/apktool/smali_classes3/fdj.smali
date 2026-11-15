.class public final synthetic Lfdj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Liog;


# instance fields
.field public final synthetic a:Lraj;

.field public final synthetic b:Ld1j;


# direct methods
.method public synthetic constructor <init>(Lraj;Ld1j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfdj;->a:Lraj;

    iput-object p2, p0, Lfdj;->b:Ld1j;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Ltaj;

    iget-object v0, p0, Lfdj;->a:Lraj;

    iget-object p0, p0, Lfdj;->b:Ld1j;

    invoke-interface {p1, v0, p0}, Ltaj;->e(Lraj;Ld1j;)V

    return-void
.end method
