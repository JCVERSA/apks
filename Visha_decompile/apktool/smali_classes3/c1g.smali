.class public final synthetic Lc1g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz5g;


# instance fields
.field public final synthetic a:Lbuf;


# direct methods
.method public synthetic constructor <init>(Lbuf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc1g;->a:Lbuf;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lf1g;

    iget-object p0, p0, Lc1g;->a:Lbuf;

    invoke-interface {p1, p0}, Lf1g;->s(Lbuf;)V

    return-void
.end method
