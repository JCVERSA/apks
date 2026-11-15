.class public final synthetic Lirg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk7i;


# instance fields
.field public final synthetic a:Llrg;


# direct methods
.method public synthetic constructor <init>(Llrg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lirg;->a:Llrg;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lim5;
    .locals 0

    iget-object p0, p0, Lirg;->a:Llrg;

    check-cast p1, Lmsg;

    invoke-static {p0, p1}, Llrg;->c(Llrg;Lmsg;)Lim5;

    move-result-object p0

    return-object p0
.end method
