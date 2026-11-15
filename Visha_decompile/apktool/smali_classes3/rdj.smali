.class public final synthetic Lrdj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Liog;


# instance fields
.field public final synthetic a:Lraj;

.field public final synthetic b:Lerj;

.field public final synthetic c:Lg1j;


# direct methods
.method public synthetic constructor <init>(Lraj;Lerj;Lg1j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrdj;->a:Lraj;

    iput-object p2, p0, Lrdj;->b:Lerj;

    iput-object p3, p0, Lrdj;->c:Lg1j;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Ltaj;

    iget-object v0, p0, Lrdj;->a:Lraj;

    iget-object v1, p0, Lrdj;->b:Lerj;

    iget-object p0, p0, Lrdj;->c:Lg1j;

    invoke-interface {p1, v0, v1, p0}, Ltaj;->m(Lraj;Lerj;Lg1j;)V

    return-void
.end method
