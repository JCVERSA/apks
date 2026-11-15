.class public final synthetic Ls5j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Liog;


# instance fields
.field public final synthetic a:Lo9j;


# direct methods
.method public synthetic constructor <init>(Lo9j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls5j;->a:Lo9j;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lqze;

    sget v0, Ll6j;->X:I

    iget-object p0, p0, Ls5j;->a:Lo9j;

    iget-object p0, p0, Lo9j;->i:Larj;

    iget-object p0, p0, Larj;->d:Lnaf;

    invoke-interface {p1, p0}, Lqze;->H(Lnaf;)V

    return-void
.end method
